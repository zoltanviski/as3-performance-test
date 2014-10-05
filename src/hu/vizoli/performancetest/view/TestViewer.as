package hu.vizoli.performancetest.view 
{
	import com.bit101.components.TextArea;
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
		private var _textArea:TextArea;
		
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
			this._textArea.text += log + "\n";
		}
		
		/**
		 * Create children
		 */
		private function createChildren():void
		{
			this._textArea = new TextArea();
			this._textArea.width = 500;
			this.addChild( this._textArea );
		}
		
	}

}