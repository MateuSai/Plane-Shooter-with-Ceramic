package;

import ceramic.Texture;
import ceramic.Point;

class Player extends Plane {
	public function new(texture:Texture, pos:Point, speed:Int) {
		super(texture, pos, speed);
	}

	override function update(delta) {
		direction.reset();
		if (input.keyPressed(LEFT)) {
			direction.x -= 1;
		}
		if (input.keyPressed(UP)) {
			direction.y -= 1;
		}
		if (input.keyPressed(RIGHT)) {
			direction.x += 1;
		}
		if (input.keyPressed(DOWN)) {
			direction.y += 1;
		}

		super.update(delta);
	}
}
