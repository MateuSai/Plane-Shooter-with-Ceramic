package;

import ceramic.Point;
import ceramic.Texture;

class ShootingPlane extends Plane {
	var bulletTexture:Texture;

	public function new(texture:Texture, pos:Point, speed:Int, bulletTexture:Texture) {
		super(texture, pos, speed);
		this.bulletTexture = bulletTexture;
	}

	function shoot(startPoint:Point, dir:Vector2, speed:Int) {
		parent.add(new Bullet(bulletTexture, startPoint, dir, speed));
	}
}
