package {

	import flash.display.MovieClip;
	import flash.events.MouseEvent;

	/**
	 *	Bullet object
	 */
	public class Bullet extends MovieClip {

		private const SPEED:Number = 10;
		private var velocityX: Number = 0;
		private var velocityY: Number = 0;

		public var isDead: Boolean = false;

		public var radius: Number = 10;

		public function Bullet(player:Player) {
			this.x = player.x;
			this.y = player.y;
			
			var angle:Number = (player.rotation - 90) * Math.PI / 180;
			this.velocityY = SPEED * Math.sin(angle);
			this.velocityX = SPEED * Math.cos(angle);
		}

		/**
		 * The update function for the bullet
		 * Updates the position of the bullet based on the velocityX and velocityY
		 */

		public function update(): void {
			this.x += velocityX;
			this.y += velocityY;
			if (y > this.stage.stageHeight + radius) this.isDead = true;
			if (y < 0 - radius) this.isDead = true;
			if (x > this.stage.stageWidth + radius) this.isDead = true;
			if (x < 0 - radius) this.isDead = true;
			

		}
		
		
				/**
		 * This function's job is to prepare the object for removal.
		 * In this case, we need to remove any event-listeners on this object.
		 */
		public function dispose():void {
			
		}
	} // ends bullet class

} // ends package