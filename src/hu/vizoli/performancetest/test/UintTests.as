package hu.vizoli.performancetest.test 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.test.constant.CUints;
	
	/**
	 * Test the uint primitive
	 * 
	 * @author vizoli
	 */
	public class UintTests extends AbstractTest
	{
		private var testVar:uint;
		
		public function UintTests():void 
		{
			this.description = CUints.DESCRIPTION;
		}
		
		/**
		 * Instantiate test
		 */
		public function instantiate():void 
		{
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				this.testVar = CUints.INIT_NUMBER;
			}
		}
		
		/**
		 * Addition test
		 */
		public function addition():void 
		{
			this.testVar = CUints.INIT_NUMBER;
			
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				this.testVar += this.testVar;
			}
		}
		
		/**
		 * Subtraction test
		 */
		public function subtraction():void 
		{
			this.testVar = CUints.INIT_NUMBER;
			
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				this.testVar -= this.testVar;
			}
		}
		
		/**
		 * Multiplication test
		 */
		public function multiplication():void 
		{
			this.testVar = CUints.INIT_NUMBER;
			
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				this.testVar *= this.testVar;
			}
		}
		
		/**
		 * Division test
		 */
		public function division():void 
		{
			this.testVar = CUints.INIT_NUMBER;
			
			var l:uint = CUints.LOOPS;
			for ( var i:uint = 0; i < l; i++ )
			{
				this.testVar /= this.testVar;
			}
		}
		
	}

}