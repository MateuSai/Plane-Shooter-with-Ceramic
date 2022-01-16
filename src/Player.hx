package;

import ceramic.Timer;
import ceramic.Texture;
import ceramic.Point;

class Player extends ShootingPlane {
	var canShoot:Bool = true;

	public function new(texture:Texture, pos:Point, speed:Int, bulletTexture:Texture) {
		super(texture, pos, speed, bulletTexture);
		rotation = 90;
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

		if (input.keyPressed(SPACE) && canShoot) {
			canShoot = false;
			shoot(new Point(x, y), new Vector2(1, 0), 200);
			Timer.delay(this, 0.6, function() {
				canShoot = true;
			});
		}

		super.update(delta);
	}
}
