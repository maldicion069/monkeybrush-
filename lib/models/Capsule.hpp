/*
 * Copyright (c) 2016 maldicion069
 *
 * Authors: Cristian Rodríguez Bernal <ccrisrober@gmail.com>
 *
 * This file is part of MonkeyBrushPlusPlus
 * <https://github.com/maldicion069/monkeybrushplusplus>
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

#ifndef __MB_CAPSULE__
#define __MB_CAPSULE__

#include <mb/api.h>

#include <functional>
#include "Drawable.hpp"
#include "../maths/Mathf.hpp"
#include "../core/BufferAttribute.hpp"

namespace mb
{
  class Capsule: public Drawable
  {
  public:
	MB_API
    Capsule(float radius = 0.5f, float height = 1.0f,
        unsigned int subHeight = 12, unsigned int numSegm = 12);
  };
}

#endif /* __MB_CAPSULE__ */
