package hu.vizoli.performancetest.view 
{
	import com.bit101.components.PushButton;
	import flash.display.Sprite;
	import hu.vizoli.performancetest.view.constant.CStartTestButton;
	
	/**
	 * The button which starts the tests.
	 * 
	 * @author vizoli
	 */
	public class StartTestButton extends Sprite 
	{
		private var _button:PushButton;
		
		public function StartTestButton() 
		{
			super();
			
			this.createChildren();
		}
		
		/**
		 * Set the button label to processing
		 */
		public function setLabelToProcessing():void
		{
			this._button.label = "Processing...";
		}
		
		/**
		 * Set the button label to start the test
		 */
		public function setLabelToStartTheTest():void
		{
			this._button.label = "Start the test";
		}
		
		/**
		 * Create children
		 */
		private function createChildren():void
		{
			this._button = new PushButton();
			this._button.width = CStartTestButton.WIDTH;
			
			this.setLabelToStartTheTest();
			
			this.addChild( this._button );
		}
	}

}