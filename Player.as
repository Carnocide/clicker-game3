package  {
	
	import flash.display.MovieClip;
	
	
	public class Player extends MovieClip {
		
		
		public function Player() {
			// constructor code
		}
		
		
		public function update(): void {
			var tx:Number = this.parent.mouseX - this.x;
			var ty:Number = this.parent.mouseY - this.y;
			
			var angle = Math.atan2(ty, tx);
			angle = (angle / Math.PI) * 180;
			
			this.rotation = angle + 90;
		}
	}
	
}
