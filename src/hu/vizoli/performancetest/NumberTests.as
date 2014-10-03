package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CNumbers;
	/**
	 * Test the Number primitive
	 * 
	 * @author vizoli
	 */
	public class NumberTests 
	{
		{
			public static var testVar:Number;
		}
		
		/**
		 * Instantiate test
		 */
		public static function instantiate():void 
		{
			var l:int = CNumbers.LOOPS;
			for ( var i:Number = 0; i < l; i++ )
			{
				testVar = CNumbers.INIT_NUMBER;
			}
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