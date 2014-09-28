package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CVectors;
	import hu.vizoli.performancetest.constant.CVectors;
	
	/**
	 * Test the Vector
	 * 
	 * @author vizoli
	 */
	public class VectorTests 
	{
		{
			public static var testVar:Vector.<int>;
		}
		
		/**
		 * Normal instantiate test
		 */
		public static function instantiateNormal():void 
		{
			var l:int = CVectors.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar = new Vector.<int>;
			}
		}
		
		/**
		 * Short instantiate test
		 */
		public static function instantiateShort():void 
		{
			var l:int = CVectors.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar = new <int>[];
			}
		}
		
		/**
		 * Push test
		 */
		public static function push():void 
		{
			testVar = new <int>[];
			
			var l:int = CVectors.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar.push( i );
			}
		}
		
		/**
		 * Unshift test
		 */
		public static function unshift():void 
		{
			testVar = new <int>[];
			
			var l:int = CVectors.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar.unshift( i );
			}
		}
		
		/**
		 * Shift test
		 */
		public static function shift():void 
		{
			testVar = new <int>[];
			
			var l:int = CVectors.LOOPS;
			var i:int;
			for ( i = 0; i < l; i++ )
			{
				testVar.push( i );
			}
			
			for ( i = 0; i < l; i++ )
			{
				testVar.shift();
			}
		}
		
		/**
		 * indexOf test
		 */
		public static function indexOf():void 
		{
			testVar = new <int>[];
			
			var l:int = CVectors.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar.push( i );
			}
			
			testVar.indexOf( CVectors.LOOPS / 2 );
		}
		
	}

}