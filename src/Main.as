package 
{
	import com.gskinner.performance.PerformanceTest;
	import com.gskinner.performance.ptest;
	import flash.display.Sprite;
	import flash.events.Event;
	import hu.vizoli.performancetest.ArrayTests;
	import hu.vizoli.performancetest.IntTests;
	import hu.vizoli.performancetest.IntTests;
	import hu.vizoli.performancetest.LoopTests;
	import hu.vizoli.performancetest.NumberTest;
	import hu.vizoli.performancetest.UintTest;
	import hu.vizoli.performancetest.VectorTests;
	
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
			
			//this.numberTests();
			//this.intTests();
			//this.uintTests();
			//this.arrayTests();
			//this.vectorTests();
			this.loopTests();
		}
		
		/**
		 * Tests of Number
		 */
		private function numberTests():void
		{
			trace( "-------------------------------------------------- NUMBER TESTS ----------------------------------------------" );
			trace( ptest( NumberTest.addition, null, "Number addition", 10 ) );
			trace( ptest( NumberTest.subtraction, null, "Number subtraction", 10 ) );
			trace( ptest( NumberTest.multiplication, null, "Number multiplication", 10 ) );
			trace( ptest( NumberTest.division, null, "Number division", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" );
		}
		
		/**
		 * Tests of int
		 */
		private function intTests():void
		{
			trace( "--------------------------------------------------- INT TESTS ------------------------------------------------" );
			trace( ptest( IntTests.addition, null, "int addition", 10 ) );
			trace( ptest( IntTests.subtraction, null, "int subtraction", 10 ) );
			trace( ptest( IntTests.multiplication, null, "int multiplication", 10 ) );
			trace( ptest( IntTests.division, null, "int division", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" );
		}
		
		/**
		 * Tests of int
		 */
		private function uintTests():void
		{
			trace( "-------------------------------------------------- UINT TESTS ------------------------------------------------" );
			trace( ptest( UintTest.addition, null, "uint addition", 10 ) );
			trace( ptest( UintTest.subtraction, null, "uint subtraction", 10 ) );
			trace( ptest( UintTest.multiplication, null, "uint multiplication", 10 ) );
			trace( ptest( UintTest.division, null, "uint division", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" );
		}
		
		/**
		 * Tests of Array
		 */
		private function arrayTests():void
		{
			trace( "-------------------------------------------------- ARRAY TESTS -----------------------------------------------" );
			trace( ptest( ArrayTests.instatiateNormal, null, "Array normal instantiate", 10 ) );
			trace( ptest( ArrayTests.instatiateShort, null, "Array short instantiate", 10 ) );
			trace( ptest( ArrayTests.push, null, "Array push", 10 ) );
			trace( ptest( ArrayTests.unshift, null, "Array unshift", 10 ) );
			trace( ptest( ArrayTests.shift, null, "Array shift", 10 ) );
			trace( ptest( ArrayTests.indexOf, null, "Array indexOf", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" );
		}
		
		/**
		 * Tests of Vector
		 */
		private function vectorTests():void
		{
			trace( "------------------------------------------------- VECTOR TESTS -----------------------------------------------" );
			trace( ptest( VectorTests.instatiateNormal, null, "Vector normal instantiate", 10 ) );
			trace( ptest( VectorTests.instatiateShort, null, "Vector short instantiate", 10 ) );
			trace( ptest( VectorTests.push, null, "Vector push", 10 ) );
			trace( ptest( VectorTests.unshift, null, "Vector unshift", 10 ) );
			trace( ptest( VectorTests.shift, null, "Vector shift", 10 ) );
			trace( ptest( VectorTests.indexOf, null, "Vector indexOf", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" );
		}
		
		/**
		 * Tests of Vector
		 */
		private function loopTests():void
		{
			trace( "------------------------------------------------ LOOP TESTS --------------------------------------------------" );
			trace( ptest( LoopTests.whileLoop, null, "Loop while", 10 ) );
			trace( ptest( LoopTests.doWhileLoop, null, "Loop doWhile", 10 ) );
			trace( ptest( LoopTests.forLoop, null, "Loop for", 10 ) );
			trace( ptest( LoopTests.forInLoop, null, "Loop forInLoop", 10 ) );
			trace( ptest( LoopTests.forEachInLoop, null, "Loop forEachInLoop", 10 ) );
			trace( "--------------------------------------------------------------------------------------------------------------" );
		}
		
	}
	
}