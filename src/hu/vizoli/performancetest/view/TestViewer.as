package hu.vizoli.performancetest.view 
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	
	/**
	 * Logger
	 * 
	 * @author vizoli
	 */
	public class TestViewer extends Sprite 
	{
		private var _textField:TextField;
		
		public function TestViewer() 
		{
			super();
			
			this.createChildren();
		}
		
		/**
		 * Log the parameter string
		 * 
		 * @param	log
		 */
		public function log( log:String ):void
		{
			this._textField.appendText( log + "\n" );
		}
		
		/**
		 * Create children
		 */
		private function createChildren():void
		{
			this._textField = new TextField();
			this._textField.multiline = true;
			this._textField.autoSize = TextFieldAutoSize.LEFT;
			this.addChild( this._textField );
		}
		
	}

}