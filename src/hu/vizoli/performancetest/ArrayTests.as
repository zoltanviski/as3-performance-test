package hu.vizoli.performancetest 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.constant.CArrays;
	
	/**
	 * Test the Array
	 * 
	 * @author vizoli
	 */
	public class ArrayTests extends AbstractTest
	{
		private var testVar:Array;
		
		public function ArrayTests() 
		{
			this.description = CArrays.DESCRIPTION;
		}
		
		/**
		 * Normal instantiate test
		 */
		public function instantiateNormal():void 
		{
			var l:int = CArrays.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar = new Array();
			}
		}
		
		/**
		 * Short instantiate test
		 */
		public function instantiateShort():void 
		{
			var l:int = CArrays.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar = [ ];
			}
		}
		
		/**
		 * Push test
		 */
		public function push():void 
		{
			this.testVar = [ ];
			
			var l:int = CArrays.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar.push( i );
			}
		}
		
		/**
		 * Unshift test
		 */
		public function unshift():void 
		{
			this.testVar = [ ];
			
			var l:int = CArrays.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar.unshift( i );
			}
		}
		
		/**
		 * Shift test
		 */
		public function shift():void 
		{
			this.testVar = [ ];
			
			var l:int = CArrays.LOOPS;
			var i:int;
			for ( i = 0; i < l; i++ )
			{
				this.testVar.push( i );
			}
			
			for ( i = 0; i < l; i++ )
			{
				this.testVar.shift();
			}
		}
		
		/**
		 * indexOf test
		 */
		public function indexOf():void 
		{
			this.testVar = [ ];
			
			var l:int = CArrays.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar.push( i );
			}
			
			this.testVar.indexOf( CArrays.LOOPS / 2 )
		}
		
	}

}