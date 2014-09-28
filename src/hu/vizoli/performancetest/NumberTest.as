package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CNumbers;
	/**
	 * Test the Number primitive
	 * 
	 * @author vizoli
	 */
	public class NumberTest 
	{
		{
			public static var testVar:Number;
		}
		
		/**
		 * Addition test
		 */
		public static function addition():void 
		{
			testVar = CNumbers.INIT_NUMBER;
			
			var l:Number = 1000000;
			for ( var i:Number = 0; i < l; i++ )
			{
				testVar += testVar;
			}
		}
		
		/**
		 * Subtraction test
		 */
		public static function subtraction():void 
		{
			testVar = CNumbers.INIT_NUMBER;
			
			var l:Number = 1000000;
			for ( var i:Number = 0; i < l; i++ )
			{
				testVar -= testVar;
			}
		}
		
		/**
		 * Multiplication test
		 */
		public static function multiplication():void 
		{
			testVar = CNumbers.INIT_NUMBER;
			
			var l:Number = 1000000;
			for ( var i:Number = 0; i < l; i++ )
			{
				testVar *= testVar;
			}
		}
		
		/**
		 * Division test
		 */
		public static function division():void 
		{
			testVar = CNumbers.INIT_NUMBER;
			
			var l:Number = 1000000;
			for ( var i:Number = 0; i < l; i++ )
			{
				testVar /= testVar;
			}
		}
		
	}

}