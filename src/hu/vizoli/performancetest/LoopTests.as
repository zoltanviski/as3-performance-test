package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CLoops;
	/**
	 * ...
	 * @author vizoli
	 */
	public class LoopTests 
	{
		{
			private static var testVar:Object = {};
			private static var j:int;
			
			for ( j = 0; j < CLoops.LOOPS; j++ ) 
			{ 
				testVar[ j ] = j; 
			}
		}
		
		/**
		 * While test
		 */
		public static function whileLoop():void 
		{
			var i:int = 0;
			while ( i < CLoops.LOOPS ) 
			{
				i++;
			}
		}
		
		/**
		 * Do While test
		 */
		public static function doWhileLoop():void 
		{
			var i:int = 0;
			do
			{
				i++;
			} while ( i < CLoops.LOOPS ) 
		}
		
		/**
		 * For test
		 */
		public static function forLoop():void 
		{
			for ( var i:int = 0; i < CLoops.LOOPS; i++ ) 
			{
				
			}
		}
		
		/**
		 * For in test
		 */
		public static function forInLoop():void 
		{
			for ( var o:String in testVar )
			{ 
				
			}
		}
		
		/**
		 * For each in test
		 */
		public static function forEachInLoop():void 
		{
			for each( var o:int in testVar )
			{ 
				 
			}
		}
		
	}

}