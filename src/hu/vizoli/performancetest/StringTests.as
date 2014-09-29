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
		public static function concatWithPlusCharacter():void 
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
		public static function concatWithConcatMethod():void 
		{
			testVar = CStrings.INIT_STRING;
			
			var l:int = CStrings.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar = testVar.concat( CStrings.INIT_STRING );
			}
		}
		
		/**
		 * Replace with replace method
		 */
		public static function replaceWithReplaceMethod():void 
		{
			testVar = CStrings.INIT_STRING;
			
			var l:int = CStrings.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar += CStrings.INIT_STRING;
			}
			
			testVar.replace( String( CStrings.INIT_STRING ).charAt( 0 ), String( CStrings.INIT_STRING ).charAt( 1 ) ); 
		}
		
		/**
		 * Replace with split..join
		 */
		public static function replaceWithSplitJoin():void 
		{
			testVar = CStrings.INIT_STRING;
			
			var l:int = CStrings.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar += CStrings.INIT_STRING;
			}
			
			testVar.split( String( CStrings.INIT_STRING ).charAt( 0 ) ).join( String( CStrings.INIT_STRING ).charAt( 1 ) ); 
		}
		
	}

}