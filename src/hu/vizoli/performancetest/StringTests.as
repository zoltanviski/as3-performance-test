package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CInts;
	import hu.vizoli.performancetest.constant.CStrings;
	
	/**
	 * Test the String
	 * 
	 * @author vizoli
	 */
	public class StringTests 
	{
		{
			public static var testVar:String;
		}
		
		/**
		 * Concat with plus character test
		 */
		public static function stringsWithPlusConcat():void 
		{
			testVar = CStrings.INIT_STRING;
			
			var l:int = CStrings.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar += CStrings.INIT_STRING;
			}
		}
		
		/**
		 * Concat with concat method character test
		 */
		public static function stringsWithConcatMethod():void 
		{
			testVar = CStrings.INIT_STRING;
			
			var l:int = CStrings.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar = testVar.concat( CStrings.INIT_STRING );
			}
		}
		
	}

}