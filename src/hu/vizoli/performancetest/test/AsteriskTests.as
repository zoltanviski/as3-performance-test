package hu.vizoli.performancetest.test 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.test.constant.CAsterisks;
	
	/**
	 * Test the Asterisk (*)
	 * 
	 * @author vizoli
	 */
	public class AsteriskTests extends AbstractTest
	{
		private var testVar:*;
		
		public function AsteriskTests():void 
		{
			this.description = CAsterisks.DESCRIPTION;
		}
		
		/**
		 * Normal instantiate test
		 */
		public function instatiateNormal():void 
		{
			var l:int = CAsterisks.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar = new Object();
			}
		}
		
		/**
		 * Short instantiate test
		 */
		public function instatiateShort():void 
		{
			var l:int = CAsterisks.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar = {};
			}
		}
		
		/**
		 * Use with Number test
		 */
		public function useWithNumber():void 
		{
			this.testVar = CAsterisks.INIT_INT;
			
			var l:int = CAsterisks.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar = Number( this.testVar ) * Number( this.testVar );
				this.testVar = Number( this.testVar ) + Number( this.testVar );
				this.testVar = Number( this.testVar ) / Number( this.testVar );
				this.testVar = Number( this.testVar ) - Number( this.testVar );
			}
		}
		
		/**
		 * Use with String test
		 */
		public function useWithString():void 
		{
			this.testVar = CAsterisks.INIT_STRING;
			
			var l:int = CAsterisks.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar += CAsterisks.INIT_STRING;
			}
		}
		
	}

}