package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CInts;
	
	/**
	 * Test the int primitive
	 * 
	 * @author vizoli
	 */
	public class IntTests 
	{
		{
			public static var testVar:int;
		}
		
		/**
		 * Addition test
		 */
		public static function addition():void 
		{
			testVar = CInts.INIT_NUMBER;
			
			var l:int = CInts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar += testVar;
			}
		}
		
		/**
		 * Subtraction test
		 */
		public static function subtraction():void 
		{
			testVar = CInts.INIT_NUMBER;
			
			var l:int = CInts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar -= testVar;
			}
		}
		
		/**
		 * Multiplication test
		 */
		public static function multiplication():void 
		{
			testVar = CInts.INIT_NUMBER;
			
			var l:int = CInts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar *= testVar;
			}
		}
		
		/**
		 * Division test
		 */
		public static function division():void 
		{
			testVar = CInts.INIT_NUMBER;
			
			var l:int = CInts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar /= testVar;
			}
		}
	}

}