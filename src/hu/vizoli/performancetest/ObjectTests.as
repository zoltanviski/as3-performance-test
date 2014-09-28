package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CObjects;
	
	/**
	 * Test the Object
	 * 
	 * @author vizoli
	 */
	public class ObjectTests 
	{
		{
			public static var testVar:Object;
		}
		
		/**
		 * Normal instantiate test
		 */
		public static function instantiateNormal():void 
		{
			var l:int = CObjects.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar = new Object();
			}
		}
		
		/**
		 * Short instantiate test
		 */
		public static function instantiateShort():void 
		{
			var l:int = CObjects.LOOPS;
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
			testVar = CObjects.INIT_INT;
			
			var l:int = CObjects.LOOPS;
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
			testVar = CObjects.INIT_STRING;
			
			var l:int = CObjects.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar += CObjects.INIT_STRING;
			}
		}
		
	}

}