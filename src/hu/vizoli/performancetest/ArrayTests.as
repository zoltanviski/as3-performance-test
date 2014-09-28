package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CArrays;
	
	/**
	 * Test the Array
	 * 
	 * @author vizoli
	 */
	public class ArrayTests 
	{
		{
			public static var testVar:Array;
		}
		
		/**
		 * Normal instantiate test
		 */
		public static function instantiateNormal():void 
		{
			var l:int = CArrays.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar = new Array();
			}
		}
		
		/**
		 * Short instantiate test
		 */
		public static function instantiateShort():void 
		{
			var l:int = CArrays.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar = [ ];
			}
		}
		
		/**
		 * Push test
		 */
		public static function push():void 
		{
			testVar = [ ];
			
			var l:int = CArrays.LOOPS;
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
			testVar = [ ];
			
			var l:int = CArrays.LOOPS;
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
			testVar = [ ];
			
			var l:int = CArrays.LOOPS;
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
			testVar = [ ];
			
			var l:int = CArrays.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar.push( i );
			}
			
			testVar.indexOf( CArrays.LOOPS / 2 )
		}
		
	}

}