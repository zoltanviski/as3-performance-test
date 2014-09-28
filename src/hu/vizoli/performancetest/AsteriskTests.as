package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CAsterisks;
	
	/**
	 * Test the Asterisk (*)
	 * 
	 * @author vizoli
	 */
	public class AsteriskTests 
	{
		{
			public static var testVar:*;
		}
		
		/**
		 * Normal instantiate test
		 */
		public static function instatiateNormal():void 
		{
			var l:int = CAsterisks.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar = new Object();
			}
		}
		
		/**
		 * Short instantiate test
		 */
		public static function instatiateShort():void 
		{
			var l:int = CAsterisks.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar = {};
			}
		}
		
		/**
		 * Use with Number test
		 */
		public static function useWithNumber():void 
		{
			testVar = CAsterisks.INIT_INT;
			
			var l:int = CAsterisks.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar = Number( testVar ) * Number( testVar );
				testVar = Number( testVar ) + Number( testVar );
				testVar = Number( testVar ) / Number( testVar );
				testVar = Number( testVar ) - Number( testVar );
			}
		}
		
		/**
		 * Use with String test
		 */
		public static function useWithString():void 
		{
			testVar = CAsterisks.INIT_STRING;
			
			var l:int = CAsterisks.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar += CAsterisks.INIT_STRING;
			}
		}
		
	}

}