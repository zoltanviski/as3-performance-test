package hu.vizoli.performancetest.test 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.test.constant.CInts;
	
	/**
	 * Test the int primitive
	 * 
	 * @author vizoli
	 */
	public class IntTests extends AbstractTest
	{
		private var testVar:int;
		
		public function IntTests() 
		{
			this.description = CInts.DESCRIPTION;
		}
		
		/**
		 * Instantiate test
		 */
		public function instantiate():void 
		{
			var l:int = CInts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar = CInts.INIT_NUMBER;
			}
		}
		
		/**
		 * Addition test
		 */
		public function addition():void 
		{
			this.testVar = CInts.INIT_NUMBER;
			
			var l:int = CInts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar += this.testVar;
			}
		}
		
		/**
		 * Subtraction test
		 */
		public function subtraction():void 
		{
			this.testVar = CInts.INIT_NUMBER;
			
			var l:int = CInts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar -= this.testVar;
			}
		}
		
		/**
		 * Multiplication test
		 */
		public function multiplication():void 
		{
			this.testVar = CInts.INIT_NUMBER;
			
			var l:int = CInts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar *= this.testVar;
			}
		}
		
		/**
		 * Division test
		 */
		public function division():void 
		{
			this.testVar = CInts.INIT_NUMBER;
			
			var l:int = CInts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar /= this.testVar;
			}
		}
		
	}

}