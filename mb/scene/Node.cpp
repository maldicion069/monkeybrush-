/*
 * Copyright (c) 2016 maldicion069
 *
 * Authors: Cristian Rodríguez Bernal <ccrisrober@gmail.com>
 *
 * This file is part of MonkeyBrushPlusPlus <https://github.com/maldicion069/monkeybrushplusplus>
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License version 3.0 as published
 * by the Free Software Foundation.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this library; if not, write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 */

#include "Node.hpp"

namespace MB
{
	Node::Node(const std::string& name, const std::string& tag)
	: _name(name)
	, _id(_generateUUID())
	, _parent(nullptr)
	, _tag(tag)
    , _visible(true)
	, _transform(Transform())
	{
	}
	bool Node::isVisible() const
	{
		return this->_visible;
	}
	bool Node::hasParent() const
	{
		return this->_parent != nullptr;
	}
	Node* Node::parent() const
	{
		return this->_parent;
	}
	void Node::setParent(Node* p)
	{
        // TODO: Check parent in p node (addChild or removeChild in p.parent)
		this->_parent = p;
	}
	void Node::addChild(Node* node)
	{
		if (node == this)
		{
			throw "TODO: ERROR";
		}
		for (const auto& n: _children)
		{
			if (node == n)
			{
				return;
			}
		}
		node->setParent(this);
		this->_children.push_back(node);
	}
    void Node::removeChild(Node* n) {
		auto it = std::find(_children.begin(), _children.end(), n);
		if (it != _children.end())
		{
			_children.erase(it);
		}
	}
	void Node::removeChild(unsigned int index)
	{
		_children.erase(_children.begin() + index);
	}
    void Node::addComponent(Component* c)
	{
		c->setNode(this);
		c->start();
		// TODO: http://gamedev.stackexchange.com/questions/55950/entity-component-systems-with-c-accessing-components
		//this->_components[&typeid(*c)] = c;
		for (const auto& comp : _components)
		{
			if (comp == c) {
				return;
			}
		}
		this->_components.push_back(c);
	}
	void Node::setVisible(const bool flag, const bool applyToChildren)
	{
		this->_visible = flag;
		if (applyToChildren)
		{
			for (auto& c : this->_children)
			{
				c->setVisible(flag, applyToChildren);
			}
		}
	}
	void Node::removeAll()
	{
        // TODO: Clear Nodes ...
		this->_children.clear( );
	}
	std::vector<Node*> Node::children() const
	{
		return this->_children;
	}
	Transform& Node::transform()
	{
		return this->_transform;
	}
	void Node::_updateMatrixWorld(bool force)
	{
		if (this->_transform._autoUpdate)
		{
			this->_transform.updateMatrix();
		}
		if (this->_transform._matrixWorldNeedUpdate || force)
		{
			if (!hasParent())
			{
                this->transform()._matrixWorld = this->transform().matrix();
			}
			else
			{
				this->transform()._matrixWorld = Mat4::mult2(this->_parent->transform().matrixWorld(), this->transform().matrix());
				//this->_parent->transform()._matrixWorld.mult(this.transform._matrix, this.transform._matrixWorld);
			}

			this->_transform._matrixWorldNeedUpdate = false;
			force = true;
		}

		for (auto& child : _children)
		{
			child->_updateMatrixWorld(force);
		}
	}
	std::string Node::_generateUUID() const
	{
        char GUID[40];
        int t = 0;
        std::string szTemp = "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx";
        std::string szHex = "0123456789ABCDEF-";
        int nLen = szTemp.size();

        for (t=0; t<nLen+1; t++)
        {
            int r = rand () % 16;
            char c = ' ';

            switch (szTemp[t])
            {
                case 'x' : { c = szHex [r]; } break;
                case 'y' : { c = szHex [(r & 0x03) | 0x08]; } break;
                case '-' : { c = '-'; } break;
                case '4' : { c = '4'; } break;
            }

            GUID[t] = ( t < nLen ) ? c : 0x00;
        }

        return std::string(GUID);
	}
	std::string Node::name() const
	{
		return this->_name;
	}
	void Node::name(const std::string& n)
	{
		_name = n;
	}
	std::string Node::tag() const
	{
		return this->_tag;
	}
	void Node::tag(const std::string& t)
	{
		this->_tag = t;
	}
	template<typename ComponentType>
	ComponentType* Node::getComponent()
	{
		/*if (_components.count(&typeid(ComponentType)) != 0)
		{
			return static_cast<ComponentType*>(_components[&typeid(ComponentType)]);
		}
		else
		{
			return nullptr;
		}*/
		for (const auto& comp: _components)
		{
			if (typeid(comp) == typeid(ComponentType))
			{
				return comp;
			}
		}
		return nullptr;
	}
	std::vector<MB::Component*> Node::getComponents() const
	{
		//std::vector<MB::Component*> values(_components.size());
		//auto value_selector = [](std::pair<const std::type_info*, MB::Component*> pair) {return pair.second; };
		//std::transform(_components.begin(), _components.end(), values.begin(), value_selector);
		//return values;
		return _components;
	}
}

/* TODO template<typename T, bool = std::is_base_of<Component, T>::value>*/