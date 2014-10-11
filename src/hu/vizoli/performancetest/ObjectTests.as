package hu.vizoli.performancetest 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.constant.CObjects;
	
	/**
	 * Test the Object
	 * 
	 * @author vizoli
	 */
	public class ObjectTests extends AbstractTest
	{
		private var testVar:Object;
		
		public function ObjectTests():void 
		{
			this.description = CObjects.DESCRIPTION;
		}
		
		/**
		 * Normal instantiate test
		 */
		public function instantiateNormal():void 
		{
			var l:int = CObjects.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar = new Object();
			}
		}
		
		/**
		 * Short instantiate test
		 */
		public function instantiateShort():void 
		{
			var l:int = CObjects.LOOPS;
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
			this.testVar = CObjects.INIT_INT;
			
			var l:int = CObjects.LOOPS;
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
			this.testVar = CObjects.INIT_STRING;
			
			var l:int = CObjects.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar += CObjects.INIT_STRING;
			}
		}
		
	}

}