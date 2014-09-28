package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CUints;
	
	/**
	 * Test the uint primitive
	 * 
	 * @author vizoli
	 */
	public class UintTest 
	{
		{
			public static var testVar:uint;
		}
		
		/**
		 * Instantiate test
		 */
		public static function instantiate():void 
		{
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				testVar = CUints.INIT_NUMBER;
			}
		}
		
		/**
		 * Addition test
		 */
		public static function addition():void 
		{
			testVar = CUints.INIT_NUMBER;
			
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				testVar += testVar;
			}
		}
		
		/**
		 * Subtraction test
		 */
		public static function subtraction():void 
		{
			testVar = CUints.INIT_NUMBER;
			
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				testVar -= testVar;
			}
		}
		
		/**
		 * Multiplication test
		 */
		public static function multiplication():void 
		{
			testVar = CUints.INIT_NUMBER;
			
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				testVar *= testVar;
			}
		}
		
		/**
		 * Division test
		 */
		public static function division():void 
		{
			testVar = CUints.INIT_NUMBER;
			
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				testVar /= testVar;
			}
		}
		
	}

}