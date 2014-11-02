package hu.vizoli.performancetest.view 
{
	import com.bit101.components.TextArea;
	import flash.display.Sprite;
	import hu.vizoli.performancetest.view.constant.CTestViewer;
	
	/**
	 * Logger
	 * 
	 * @author vizoli
	 */
	public class TestViewer extends Sprite 
	{
		private var _textArea:TextArea;
		
		public function TestViewer() 
		{
			super();
			
			this.createChildren();
		}
		
		/**
		 * Clear the textField
		 */
		public function clear():void
		{
			this._textArea.text = "";
		}
		
		/**
		 * Log the parameter string
		 * 
		 * @param	log
		 */
		public function log( log:String ):void
		{
			this._textArea.text += log + "\n";
		}
		
		/**
		 * Create children
		 */
		private function createChildren():void
		{
			this._textArea = new TextArea();
			this._textArea.width = CTestViewer.WIDTH;
			this._textArea.height = CTestViewer.HEIGHT;
			this.addChild( this._textArea );
		}
		
	}

}