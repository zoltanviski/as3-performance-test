package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CCasts;
	
	/**
	 * Test the Casts
	 * 
	 * @author vizoli
	 */
	public class CastTests 
	{
		
		/**
		 * String casting to Number with as operator
		 */
		public static function stringToNumberWithAs():void 
		{
			var testVar:String = CCasts.STRING_TO_NUMBER;
			
			var l:int = CCasts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				( testVar as Number );
			}
		}
		
		/**
		 * String casting to Number with as Type( x )
		 */
		public static function stringToNumberWithParas():void 
		{
			var testVar:String = CCasts.STRING_TO_NUMBER;
			
			var l:int = CCasts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				Number( testVar );
			}
		}
	
	}

}