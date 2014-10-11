package hu.vizoli.performancetest 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.constant.CNumbers;
	
	/**
	 * Test the Number primitive
	 * 
	 * @author vizoli
	 */
	public class NumberTests extends AbstractTest
	{
		private var testVar:Number;
		
		public function NumberTests() 
		{
			this.description = CNumbers.DESCRIPTION;
		}
		
		/**
		 * Instantiate test
		 */
		public function instantiate():void 
		{
			var l:int = CNumbers.LOOPS;
			for ( var i:Number = 0; i < l; i++ )
			{
				this.testVar = CNumbers.INIT_NUMBER;
			}
		}
		
		/**
		 * Addition test
		 */
		public function addition():void 
		{
			this.testVar = CNumbers.INIT_NUMBER;
			
			var l:Number = 1000000;
			for ( var i:Number = 0; i < l; i++ )
			{
				this.testVar += this.testVar;
			}
		}
		
		/**
		 * Subtraction test
		 */
		public function subtraction():void 
		{
			this.testVar = CNumbers.INIT_NUMBER;
			
			var l:Number = 1000000;
			for ( var i:Number = 0; i < l; i++ )
			{
				this.testVar -= this.testVar;
			}
		}
		
		/**
		 * Multiplication test
		 */
		public function multiplication():void 
		{
			this.testVar = CNumbers.INIT_NUMBER;
			
			var l:Number = 1000000;
			for ( var i:Number = 0; i < l; i++ )
			{
				this.testVar *= this.testVar;
			}
		}
		
		/**
		 * Division test
		 */
		public function division():void 
		{
			this.testVar = CNumbers.INIT_NUMBER;
			
			var l:Number = 1000000;
			for ( var i:Number = 0; i < l; i++ )
			{
				this.testVar /= this.testVar;
			}
		}
		
	}

}