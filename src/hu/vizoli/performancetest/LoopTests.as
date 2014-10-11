package hu.vizoli.performancetest 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.constant.CLoops;
	/**
	 * ...
	 * @author vizoli
	 */
	public class LoopTests extends AbstractTest
	{
		private var testVar:Object;
		private var j:int;
			
		public function LoopTests() 
		{
			this.description = CLoops.DESCRIPTION;
			
			this.testVar = {};
			
			for ( this.j = 0; this.j < CLoops.LOOPS; this.j++ ) 
			{ 
				this.testVar[ this.j ] = this.j; 
			}
		}
		
		/**
		 * While test
		 */
		public function whileLoop():void 
		{
			var i:int = 0;
			while ( i < CLoops.LOOPS ) 
			{
				i++;
			}
		}
		
		/**
		 * Do While test
		 */
		public function doWhileLoop():void 
		{
			var i:int = 0;
			do
			{
				i++;
			} while ( i < CLoops.LOOPS ) 
		}
		
		/**
		 * For test
		 */
		public function forLoop():void 
		{
			for ( var i:int = 0; i < CLoops.LOOPS; i++ ) 
			{
				
			}
		}
		
		/**
		 * For in test
		 */
		public function forInLoop():void 
		{
			for ( var o:String in this.testVar )
			{ 
				
			}
		}
		
		/**
		 * For each in test
		 */
		public function forEachInLoop():void 
		{
			for each( var o:int in this.testVar )
			{ 
				 
			}
		}
		
	}

}