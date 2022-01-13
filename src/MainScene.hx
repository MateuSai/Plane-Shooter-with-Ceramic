package;

import ceramic.Point;
import ceramic.Scene;

class MainScene extends Scene {
	var player:Player;

	override function preload() {
		// Add any asset you want to load here

		assets.add(Images.KENNEY_PIXELSHMUP__SHIPS__SHIP_0000);
	}

	override function create() {
		// Called when scene has finished preloading

		// Display player
		player = new Player(assets.texture(Images.KENNEY_PIXELSHMUP__SHIPS__SHIP_0000), new Point(width / 2, height / 2), 300);
		add(player);

		// Create some logo scale "in" animation
		/*logo.tween(ELASTIC_EASE_IN_OUT, 0.75, 0.0001, 1.0, function(value, time) {
			logo.alpha = value;
			logo.scale(value);
		});*/

		// Print some log
		log.success('Hello from ceramic :)');
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
