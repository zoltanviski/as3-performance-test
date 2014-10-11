package hu.vizoli.performancetest 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.constant.CVectors;
	import hu.vizoli.performancetest.constant.CVectors;
	
	/**
	 * Test the Vector
	 * 
	 * @author vizoli
	 */
	public class VectorTests extends AbstractTest
	{
		private var testVar:Vector.<int>;

		public function VectorTests() 
		{
			this.description = CVectors.DESCRIPTION;
		}
		
		/**
		 * Normal instantiate test
		 */
		public function instantiateNormal():void 
		{
			var l:int = CVectors.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar = new Vector.<int>;
			}
		}
		
		/**
		 * Short instantiate test
		 */
		public function instantiateShort():void 
		{
			var l:int = CVectors.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar = new <int>[];
			}
		}
		
		/**
		 * Push test
		 */
		public function push():void 
		{
			this.testVar = new <int>[];
			
			var l:int = CVectors.LOOPS;
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
			this.testVar = new <int>[];
			
			var l:int = CVectors.LOOPS;
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
			this.testVar = new <int>[];
			
			var l:int = CVectors.LOOPS;
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
			this.testVar = new <int>[];
			
			var l:int = CVectors.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar.push( i );
			}
			
			this.testVar.indexOf( CVectors.LOOPS / 2 );
		}
		
	}

}