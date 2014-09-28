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
		
		/**
		 * Addition test
		 */
		public static function addition():void 
		{
			var testVar:uint = CUints.INIT_NUMBER;
			
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
			var testVar:uint = CUints.INIT_NUMBER;
			
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
			var testVar:uint = CUints.INIT_NUMBER;
			
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
			var testVar:uint = CUints.INIT_NUMBER;
			
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				testVar /= testVar;
			}
		}
	}

}