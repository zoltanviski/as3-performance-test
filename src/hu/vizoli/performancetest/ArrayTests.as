package hu.vizoli.performancetest 
{
	/**
	 * ...
	 * @author vizoli
	 */
	public class ArrayTests 
	{
		
		/**
		 * Multiplication test
		 */
		public static function push():void 
		{
			var testVar:Array = [ ];
			
			var l:uint = 10000;
			for ( var i:uint = 0; i < l; i++ )
			{
				testVar.push( 10 );
			}
		}
		
	}

}