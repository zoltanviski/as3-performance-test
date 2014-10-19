package hu.vizoli.performancetest.test 
{
	import avmplus.describeType;
	import avmplus.describeTypeJSON;
	import com.gskinner.performance.AbstractTest;
	import flash.display.Sprite;
	import flash.events.Event;
	import hu.vizoli.performancetest.test.constant.CDescribeType;
	
	/**
	 * Test the DescribeType
	 * 
	 * @author vizoli
	 */
	public class DescribeTypeTests extends AbstractTest 
	{
		
		public function DescribeTypeTests() 
		{
			this.description = CDescribeType.DESCRIPTION;
		}
		
		/**
		 * Describe type test
		 */
		public function describeTypeTest():void 
		{
			var l:int = CDescribeType.LOOP;
			for ( var i:int = 0; i < l; i++ )
			{
				trace( describeType( Event, 0 ) );
			}
		}
		
		/**
		 * describeTypeToJSON type test
		 */
		public function describeTypeToJSONTest():void 
		{
			var l:int = CDescribeType.LOOP;
			for ( var i:int = 0; i < l; i++ )
			{
				//trace( describeTypeJSON( Event, 0 ) );
			}
		}
		
	}

}