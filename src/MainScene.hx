package;

import ceramic.Point;
import ceramic.Scene;

class MainScene extends Scene {
	var player:Player;

	override function preload() {
		// Add any asset you want to load here

		assets.add(Images.KENNEY_PIXELSHMUP__SHIPS__SHIP_0000);
		assets.add(Images.KENNEY_PIXELSHMUP__TILES__TILE_0000);
	}

	override function create() {
		// Called when scene has finished preloading

		// Display player
		player = new Player(assets.texture(Images.KENNEY_PIXELSHMUP__SHIPS__SHIP_0000), new Point(width / 2, height / 2), 300,
			assets.texture(Images.KENNEY_PIXELSHMUP__TILES__TILE_0000));
		add(player);
	}

	override function update(delta:Float) {
		// Here, you can add code that will be executed at every frame
	}

	override function resize(width:Float, height:Float) {
		// Called everytime the scene size has changed
	}

	override function destroy() {
		// Perform any cleanup before final destroy

		super.destroy();
	}
}
