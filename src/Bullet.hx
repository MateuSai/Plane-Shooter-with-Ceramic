package;

import ceramic.Quad;
import ceramic.Texture;
import ceramic.Point;

class Bullet extends Quad {
	var direction:Vector2;
	var speed:Int;

	public function new(texture:Texture, startPos:Point, dir:Vector2, speed:Int) {
		super();

		this.texture = texture;
		pos(startPos.x, startPos.y);
		direction = dir;
		this.speed = speed;

		anchor(0.5, 0.5);

		rotation = 90;

		app.onUpdate(this, update);
	}

	function update(delta:Float) {
		x += direction.x * speed * delta;
		y += direction.y * speed * delta;
		// log.debug(x + " " + y); // Print bullet position to the terminal

		// Destroy the bullet when she exits the screen
		if (x + width * anchorX < 0 || x - width * anchorX > screen.width || y + height * anchorY < 0 || y - height * anchorY > screen.height) {
			destroy();
		}
	}
}
