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

#ifndef __MB_FOG__
#define __MB_FOG__

#include "../core/Color3.hpp"

namespace mb
{
	class Fog
	{
	public:
		MB_API
		Color3 color() const
		{
			return _color;
		}
		MB_API
		void color(const Color3& c)
		{
			_color = c;
		}
	protected:
		Fog(const Color3& color)
			: _color(color)
		{

		}
		Color3 _color;
	};

	class FogLinear : public Fog
	{
	public:
		MB_API
		FogLinear(const Color3& color, const float& near = 1.0f,
      const float& far = 1000.0f)
			: Fog(color)
			, _near(near)
			, _far(far)
		{}
		MB_API
		float near() const
		{
			return _near;
		}
		MB_API
		void near(const float& n)
		{
			_near = n;
		}
		MB_API
		float far() const
		{
			return _far;
		}
		MB_API
		void far(const float& f)
		{
			_far = f;
		}
	protected:
		float _near;
		float _far;
	};

	class FogExp : public Fog
	{
	public:
		MB_API
		FogExp(const Color3& color, const float& density = 0.0001f)
			: Fog(color),
			_density(density)
		{}
		MB_API
		float density() const
		{
			return _density;
		}
		MB_API
		void density(const float& d)
		{
			_density = d;
		}
	protected:
		float _density;
	};

	class FogExp2 : public FogExp
	{
		MB_API
		FogExp2(const Color3& color, const float& density = 0.0001f)
			: FogExp(color, density)
		{}
	};
}

#endif /* __MB_FOG__ */
