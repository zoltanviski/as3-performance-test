package 
{
	import com.gskinner.performance.PerformanceTest;
	import com.gskinner.performance.ptest;
	import flash.display.Sprite;
	import flash.events.Event;
	import hu.vizoli.performancetest.ArrayTests;
	import hu.vizoli.performancetest.IntTests;
	import hu.vizoli.performancetest.IntTests;
	import hu.vizoli.performancetest.NumberTest;
	import hu.vizoli.performancetest.UintTest;
	
	/**
	 * The main of the flash performance test project
	 * 
	 * @author vizoli
	 */
	public class Main extends Sprite 
	{
		
		public function Main():void 
		{
			if ( this.stage ) 
			{
				this.init();
			}
			else 
			{
				this.addEventListener( Event.ADDED_TO_STAGE, this.init );
			}
		}
		
		/**
		 * Init the application
		 * 
		 * @param	e
		 */
		private function init( e:Event = null ):void 
		{
			this.removeEventListener( Event.ADDED_TO_STAGE, this.init );
			
			this.numbersTests();
			this.listsTests();
		}
		
		/**
		 * Tests of numbers
		 */
		private function numbersTests():void
		{
			trace( ptest( IntTests.addition, null, "int addition", 10 ) );
			trace( ptest( UintTest.addition, null, "uint addition", 10 ) );
			trace( ptest( NumberTest.addition, null, "Number addition", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" )
			
			trace( ptest( IntTests.subtraction, null, "int subtraction", 10 ) );
			trace( ptest( UintTest.subtraction, null, "uint subtraction", 10 ) );
			trace( ptest( NumberTest.subtraction, null, "Number subtraction", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" )
			
			trace( ptest( IntTests.multiplication, null, "int multiplication", 10 ) );
			trace( ptest( UintTest.multiplication, null, "uint multiplication", 10 ) );
			trace( ptest( NumberTest.multiplication, null, "Number multiplication", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" )
			
			trace( ptest( IntTests.division, null, "int division", 10 ) );
			trace( ptest( UintTest.division, null, "uint division", 10 ) );
			trace( ptest( NumberTest.division, null, "Number division", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" )
		}
		
		/**
		 * Tests of numbers
		 */
		private function listsTests():void
		{
			trace( ptest( ArrayTests.push, null, "Array push", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" )
		}
		
	}
	
}