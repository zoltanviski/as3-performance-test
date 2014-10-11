package hu.vizoli.performancetest 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.constant.CInts;
	import hu.vizoli.performancetest.constant.CStrings;
	
	/**
	 * Test the String
	 * 
	 * @author vizoli
	 */
	public class StringTests extends AbstractTest
	{
		private var testVar:String;
		
		public function StringTests():void 
		{
			this.description = CStrings.DESCRIPTION;
			
			this.testVar = CStrings.INIT_STRING;
		}
		
		/**
		 * Concat with plus character test
		 */
		public function concatWithPlusCharacter():void 
		{
			this.testVar = CStrings.INIT_STRING;
			
			var l:int = CStrings.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar += CStrings.INIT_STRING;
			}
		}
		
		/**
		 * Concat with concat method character test
		 */
		public function concatWithConcatMethod():void 
		{
			this.testVar = CStrings.INIT_STRING;
			
			var l:int = CStrings.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar = this.testVar.concat( CStrings.INIT_STRING );
			}
		}
		
		/**
		 * Replace with replace method
		 */
		public function replaceWithReplaceMethod():void 
		{
			this.testVar = CStrings.INIT_STRING;
			
			var l:int = CStrings.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar += CStrings.INIT_STRING;
			}
			
			this.testVar.replace( String( CStrings.INIT_STRING ).charAt( 0 ), String( CStrings.INIT_STRING ).charAt( 1 ) ); 
		}
		
		/**
		 * Replace with split..join
		 */
		public function replaceWithSplitJoin():void 
		{
			this.testVar = CStrings.INIT_STRING;
			
			var l:int = CStrings.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar += CStrings.INIT_STRING;
			}
			
			this.testVar.split( String( CStrings.INIT_STRING ).charAt( 0 ) ).join( String( CStrings.INIT_STRING ).charAt( 1 ) ); 
		}
		
	}

}