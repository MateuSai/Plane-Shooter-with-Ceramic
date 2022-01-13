package;

class Utils {
	public static inline function lerp(from:Float, to:Float, weight:Float, precision:Float = 0.01):Float {
		var result:Float = from + (to - from) * weight;

		if (Math.abs(result) < precision) {
			result = 0;
		}

		return result;
	}
}
