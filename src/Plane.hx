package;

import ceramic.Texture;
import ceramic.Quad;
import ceramic.Point;

class Plane extends Quad {
	final ACCERELATION:Float = 0.25;
	final FRICTION:Float = 0.15;

	var speed:Int;
	var direction:Vector2;
	var velocity:Vector2;

	public function new(texture:Texture, pos:Point, speed:Int) {
		super();
		this.texture = texture;
		this.pos(pos.x, pos.y);
		this.speed = speed;
		anchor(0.5, 0.5);
		direction = new Vector2();
		velocity = new Vector2();

		app.onUpdate(this, update);
	}

	function update(delta:Float) {
		if (!direction.isZero()) {
			direction.normalise();
			velocity.linInterp(new Vector2(direction.x * speed, direction.y * speed), ACCERELATION);
		}

		x += velocity.x * delta;
		y += velocity.y * delta;

		velocity.linInterp(new Vector2(), FRICTION);
	}
}
