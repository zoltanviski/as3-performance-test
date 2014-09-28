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
		public static function instatiateNormal():void 
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
		public static function instatiateShort():void 
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
				testVar.push( 10 );
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
				testVar.unshift( 10 );
			}
		}
		
		/**
		 * Shift test
		 */
		public static function shift():void 
		{
			testVar = [ ];
			
			var l:int = CArrays.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar.push( 10 );
			}
			
			for ( var i:int = 0; i < l; i++ )
			{
				testVar.shift();
			}
		}
		
	}

}