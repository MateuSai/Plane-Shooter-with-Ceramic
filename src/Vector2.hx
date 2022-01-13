package;

import ceramic.Point;

/**
 * Class representing a 2 dimensional vector.
 * 
 * It's an abstraction of the `Point` class with extra functions like
 * `length()` or `normalise()` that can be useful when dealing with
 * vectors.
 */
@:forward(x, y)
@:forward.new
abstract Vector2(Point) from Point to Point {
	/**
	 * @return The length of the vector
	 */
	public inline function length():Float {
		return Math.sqrt(this.x * this.x + this.y * this.y);
	}

	/**
	 * Sets the vector to an empty vector: `(0, 0)`
	 */
	public inline function reset():Void {
		this.x = 0;
		this.y = 0;
	}

	/**
	 * Normalises the vector.
	 */
	public inline function normalise():Void {
		var length:Float = length();

		if (length < 0.01) {
			reset();
		} else {
			this.x /= length;
			this.y /= length;
		}
	}

	/**
	 * Returns a new `Vector2` with the normalized direction of the vector
	 * @return Vector2
	 */
	public inline function getDirection():Vector2 {
		var direction:Vector2 = Point.get(this.x, this.y);
		direction.normalise();
		return direction;
	}

	/**
	 * Checks if the vector is components are equal to 0.
	 * @return `true` if the vector is (0, 0). Otherwise returns `false`
	 */
	public inline function isZero():Bool {
		return this.x == 0 && this.y == 0;
	}

	/**
	 * Lineally interpolates the vector toward a `Point` using the
	 * specified weight.
	 * @param to The desired future value of the vector
	 * @param weight The amount of interpolation. It must be between 0 (no interpolation) and 1 (immediately interpolation)
	 */
	public inline function linInterp(to:Point, weight:Float):Void {
		this.x = Utils.lerp(this.x, to.x, weight);
		this.y = Utils.lerp(this.y, to.y, weight);
	}
}
