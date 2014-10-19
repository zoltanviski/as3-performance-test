package hu.vizoli.performancetest.test 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.test.constant.CCasts;
	import hu.vizoli.performancetest.helper.DummyVO;
	
	/**
	 * Test the Casts
	 * 
	 * @author vizoli
	 */
	public class CastTests extends AbstractTest
	{
		
		public function CastTests():void 
		{
			this.description = CCasts.DESCRIPTION;
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public function stringToNumberWithAs():void 
		{
			var testVar:String = CCasts.STRING_TO_NUMBER;
			
			var l:int = CCasts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				( testVar as Number );
			}
		}
		
		/**
		 * String casting to Number with Type( x )
		 */
		public function stringToNumberWithParas():void 
		{
			var testVar:String = CCasts.STRING_TO_NUMBER;
			
			var l:int = CCasts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				Number( testVar );
			}
		}
		
		/**
		 * Dummy class cast with as operator
		 */
		public function dummyClassCastWithAs():void 
		{
			var testVar:DummyVO = new DummyVO();
			
			var l:int = CCasts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				( testVar as DummyVO );
			}
		}
		
		/**
		 * Dummy class cast with Type( x )
		 */
		public function dummyClassCastWithParas():void 
		{
			var testVar:DummyVO = new DummyVO();
			
			var l:int = CCasts.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				DummyVO( testVar );
			}
		}
	
	}

}