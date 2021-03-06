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

#include <iostream>
#include <mb/mb.h>
#include <assetsFiles.h>

mb::ScenePtr scene;

void renderFunc( float dt );

int main(void)
{
  mb::GLContext context(3, 3, 1024, 768, "Hello Mesh");

  auto engine = std::make_shared<mb::Engine>(&context, false);
  scene = std::make_shared<mb::Scene>(engine,
    new mb::SimpleCamera(mb::Vect3(0.2f, 0.18f, 8.44f)));

  mb::DrawablePtr mesh = std::make_shared<mb::Mesh>(
    MB_MODEL_ASSETS + std::string("/suzanne.obj_"));

  mb::SimpleShadingMaterialPtr material = std::make_shared<mb::SimpleShadingMaterial>();
  material->uniform("color")->value(mb::Vect3(mb::Color3::Green));

  mb::NodePtr mbNode = std::make_shared<mb::Node>(std::string("mesh"));
  mbNode->addComponent(std::make_shared<mb::MeshRenderer>(mesh, material));
  mbNode->addComponent(std::make_shared<mb::ChangeTransformationComponent>());
  mbNode->addComponent(std::make_shared<mb::MoveComponent>());
  mbNode->addComponent(std::make_shared<mb::RotateComponent>(mb::Axis::x, 0.75f, true));
  mbNode->addComponent(std::make_shared<mb::RotateComponent>(mb::Axis::z, 0.75f, true));

  scene->root( )->addChild(mb::NodePtr(mbNode));

  engine->run(renderFunc);

  return 0;
}

void renderFunc( float dt )
{
	glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT );
	scene->render( dt );
}
