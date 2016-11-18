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

#include "Scene.hpp"
#include <iostream>
#include "MeshRenderer.hpp"

namespace MB
{
	Scene::Scene()
	: _sceneGraph(new Node())
	{
	}
	void Scene::render(float dt)
	{
		_totalMeshes = 0;
		// Before render functions
		{
			auto i = std::begin(_beforeRender);
			while (i != std::end(_beforeRender))
			{
				i->first();
				if (i->second == false)
				{
					i = _beforeRender.erase(i);
				}
				else
				{
					++i;
				}
			}
		}
		for (const auto& child : this->_sceneGraph->children())
		{
			this->_subrender(child, dt);
		}
		// After render functions
		{
			auto i = std::begin(_afterRender);
			while (i != std::end(_afterRender))
			{
				i->first();
				if (i->second == false)
				{
					i = _afterRender.erase(i);
				}
				else
				{
					++i;
				}
			}
		}
	}
	Node* Scene::root() const
	{
		return this->_sceneGraph;
	}
	void Scene::_subrender(Node* n, float dt)
	{
		for (const auto& child : n->children())
		{
			this->_subrender(child, dt);
		}
		for (const auto& comp : n->components())
		{
			comp->update(dt);
			if (dynamic_cast<MeshRenderer*>(comp))
			{
				auto mr = (MeshRenderer*)comp;
				mr->getMaterial()->uniforms()["projection"]->value(this->camera->projectionMatrix(500, 500));
				mr->getMaterial()->uniforms()["view"]->value(this->camera->viewMatrix());
				mr->render();
                //Uniform* Uview = mr->getMaterial()->uniforms()["view"];
                //std::cout << Uview->value().cast<Mat4>() << std::endl;
				++this->_totalMeshes;
			}
		}
	}
}
