package 
{
	import com.gskinner.performance.AbstractTest;
	import com.gskinner.performance.PerformanceTest;
	import com.gskinner.performance.ptest;
	import flash.accessibility.AccessibilityProperties;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import hu.vizoli.performancetest.ArrayTests;
	import hu.vizoli.performancetest.AsteriskTests;
	import hu.vizoli.performancetest.CastTests;
	import hu.vizoli.performancetest.ConditionTests;
	import hu.vizoli.performancetest.constant.CTests;
	import hu.vizoli.performancetest.DescribeTypeTests;
	import hu.vizoli.performancetest.IntTests;
	import hu.vizoli.performancetest.IntTests;
	import hu.vizoli.performancetest.LoopTests;
	import hu.vizoli.performancetest.NumberTests;
	import hu.vizoli.performancetest.ObjectTests;
	import hu.vizoli.performancetest.PropertyAccessingTests;
	import hu.vizoli.performancetest.StringTests;
	import hu.vizoli.performancetest.UintTests;
	import hu.vizoli.performancetest.VectorTests;
	import hu.vizoli.performancetest.view.constant.CStartTestButton;
	import hu.vizoli.performancetest.view.constant.CTestViewer;
	import hu.vizoli.performancetest.view.StartTestButton;
	import hu.vizoli.performancetest.view.TestViewer;
	
	/**
	 * The main of the flash performance test project
	 * 
	 * @author vizoli
	 */
	public class Main extends Sprite 
	{
		private var _textViewer:TestViewer;
		private var _startTestButton:StartTestButton;
		private var _timer:Timer;
		
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
			
			this._timer = new Timer( 100, 1 );
			this._timer.addEventListener( TimerEvent.TIMER, this.runTests );
			
			this.createChildren();
		}
		
		/**
		 * Create children
		 */
		private function createChildren():void
		{
			this._startTestButton = new StartTestButton();
			this._startTestButton.x = ( this.stage.stageWidth - CStartTestButton.WIDTH ) / 2;
			this._startTestButton.y = CStartTestButton.Y;
			this._startTestButton.addEventListener( MouseEvent.CLICK, this.startTestButtonClickHandler );
			this.addChild( this._startTestButton );
			
			this._textViewer = new TestViewer();
			this._textViewer.x = ( this.stage.stageWidth - CTestViewer.WIDTH ) / 2;
			this._textViewer.y = CTestViewer.Y;
			this.addChild( this._textViewer );
		}
		
		/**
		 * Start the tests
		 * 
		 * @param	e
		 */
		private function startTestButtonClickHandler( e:MouseEvent ):void 
		{
			this._startTestButton.setLabelToProcessing();
			
			this._textViewer.clear();
			
			this._timer.reset();
			this._timer.start();
		}
		
		/**
		 * Run tests
		 * 
		 * @param	e
		 */
		private function runTests( e:TimerEvent ):void 
		{
			this.numbersInstantiateTests();
			this.numbersAdditionTests();
			this.numbersSubtractionTests();
			this.numbersDivisionTests();
			this.numbersMultiplicationTests();
			
			this.listsInstantiateTests();
			this.listsPushTests();
			this.listsUnshiftTests();
			this.listsShiftTests();
			this.listsIndexOfTests();
			
			this.instantiateNonSPecificTypedTest();
			this.useWithNumberNonSPecificTypedTest();
			this.useWithStringNonSPecificTypedTest();
			
			this.loopTests();
			this.stringTests();
			this.castsTests();
			this.conditionsTests();
			this.accessPropertyTests();
			this.describeTypeTests();
			
			this._startTestButton.setLabelToStartTheTest();
		}
		
		/**
		 * Instantiate numbers test
		 */
		private function numbersInstantiateTests():void
		{
			var numberTests:NumberTests = new NumberTests();
			var intTests:IntTests = new IntTests();
			var uintTests:UintTests = new UintTests();
			
			this._textViewer.log( "Instantiate numbers test" );
			this._textViewer.log( this.getTestResult( "Number instantiate", numberTests.instantiate ) );
			this._textViewer.log( this.getTestResult( "int instantiate", intTests.instantiate ) );
			this._textViewer.log( this.getTestResult( "uint instantiate", uintTests.instantiate ) );
			this._textViewer.log( "*********************************************** \n" );
		}
		
		/**
		 *  Addition numbers tests
		 */
		private function numbersAdditionTests():void
		{
			var numberTests:NumberTests = new NumberTests();
			var intTests:IntTests = new IntTests();
			var uintTests:UintTests = new UintTests();
			
			this._textViewer.log( "Addition numbers tests" );
			this._textViewer.log( this.getTestResult( "Number addition", numberTests.addition ) );
			this._textViewer.log( this.getTestResult( "int addition", intTests.addition ) );
			this._textViewer.log( this.getTestResult( "uint addition", uintTests.addition ) );
			this._textViewer.log( "*********************************************** \n" );
		}
		
		/**
		 *  Subtraction numbers tests
		 */
		private function numbersSubtractionTests():void
		{
			var numberTests:NumberTests = new NumberTests();
			var intTests:IntTests = new IntTests();
			var uintTests:UintTests = new UintTests();
			
			this._textViewer.log( "Subtraction numbers tests" );
			this._textViewer.log( this.getTestResult( "Number subtraction", numberTests.subtraction ) );
			this._textViewer.log( this.getTestResult( "int subtraction", intTests.subtraction ) );
			this._textViewer.log( this.getTestResult( "uint subtraction", uintTests.subtraction ) );
			this._textViewer.log( "*********************************************** \n" );
		}
		
		/**
		 *  Multiplication numbers tests
		 */
		private function numbersMultiplicationTests():void
		{
			var numberTests:NumberTests = new NumberTests();
			var intTests:IntTests = new IntTests();
			var uintTests:UintTests = new UintTests();
			
			this._textViewer.log( "Multiplication numbers tests" );
			this._textViewer.log( this.getTestResult( "Number multiplication", numberTests.multiplication ) );
			this._textViewer.log( this.getTestResult( "int multiplication", intTests.multiplication ) );
			this._textViewer.log( this.getTestResult( "uint multiplication", uintTests.multiplication ) );
			this._textViewer.log( "*********************************************** \n" );
		}
		
		/**
		 *  Division numbers tests
		 */
		private function numbersDivisionTests():void
		{
			var numberTests:NumberTests = new NumberTests();
			var intTests:IntTests = new IntTests();
			var uintTests:UintTests = new UintTests();
			
			this._textViewer.log( "Division numbers tests" );
			this._textViewer.log( this.getTestResult( "Number division", numberTests.division ) );
			this._textViewer.log( this.getTestResult( "int division", intTests.division ) );
			this._textViewer.log( this.getTestResult( "uint division", uintTests.division ) );
			this._textViewer.log( "*********************************************** \n" );
		}
		
		/**
		 * Instantiate lists tests
		 */
		private function listsInstantiateTests():void
		{
			var arrayTests:ArrayTests = new ArrayTests();
			var vectorTests:VectorTests = new VectorTests();
			
			this._textViewer.log( "Instantiate lists tests" );
			this._textViewer.log( this.getTestResult( "Array normal instantiate", arrayTests.instantiateNormal ) );
			this._textViewer.log( this.getTestResult( "Vector normal instantiate", vectorTests.instantiateNormal ) );
			this._textViewer.log( this.getTestResult( "Array short instantiate", arrayTests.instantiateShort ) );
			this._textViewer.log( this.getTestResult( "Vector short instantiate", vectorTests.instantiateShort ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Push lists tests
		 */
		private function listsPushTests():void
		{
			var arrayTests:ArrayTests = new ArrayTests();
			var vectorTests:VectorTests = new VectorTests();
			
			this._textViewer.log( "Push lists tests" );
			this._textViewer.log( this.getTestResult( "Array push", arrayTests.push ) );
			this._textViewer.log( this.getTestResult( "Vector push", vectorTests.push ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Unshift lists tests
		 */
		private function listsUnshiftTests():void
		{
			var arrayTests:ArrayTests = new ArrayTests();
			var vectorTests:VectorTests = new VectorTests();
			
			this._textViewer.log( "Unshift lists tests" );
			this._textViewer.log( this.getTestResult( "Array unshift", arrayTests.unshift ) );
			this._textViewer.log( this.getTestResult( "Vector unshift", vectorTests.unshift ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Shift lists tests
		 */
		private function listsShiftTests():void
		{
			var arrayTests:ArrayTests = new ArrayTests();
			var vectorTests:VectorTests = new VectorTests();
			
			this._textViewer.log( "Shift lists tests" );
			this._textViewer.log( this.getTestResult( "Array shift", arrayTests.shift ) );
			this._textViewer.log( this.getTestResult( "Vector shift", vectorTests.shift ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * indexOf lists tests
		 */
		private function listsIndexOfTests():void
		{
			var arrayTests:ArrayTests = new ArrayTests();
			var vectorTests:VectorTests = new VectorTests();
			
			this._textViewer.log( "indexOf lists tests" );
			this._textViewer.log( this.getTestResult( "Array indexOf", arrayTests.indexOf ) );
			this._textViewer.log( this.getTestResult( "Vector indexOf", vectorTests.indexOf ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Tests of Vector
		 */
		private function loopTests():void
		{
			var testClass:LoopTests = new LoopTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( this.getTestResult( "Loop while", testClass.whileLoop ) );
			this._textViewer.log( this.getTestResult( "Loop doWhile", testClass.doWhileLoop ) );
			this._textViewer.log( this.getTestResult( "Loop for", testClass.forLoop ) );
			this._textViewer.log( this.getTestResult( "Loop forInLoop", testClass.forInLoop ) );
			this._textViewer.log( this.getTestResult( "Loop forEachInLoop", testClass.forEachInLoop ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Non specific typed instantiate
		 */
		private function instantiateNonSPecificTypedTest():void
		{
			var objectTests:ObjectTests = new ObjectTests();
			var asteriskTests:AsteriskTests = new AsteriskTests();
			
			this._textViewer.log( String( "Non specific typed instantiate" ) );
			this._textViewer.log( this.getTestResult( "Object normal instantiate", objectTests.instantiateNormal ) );
			this._textViewer.log( this.getTestResult( "Asterisk normal instantiate", asteriskTests.instatiateNormal ) );
			this._textViewer.log( this.getTestResult( "Object short instantiate", objectTests.instantiateShort ) );
			this._textViewer.log( this.getTestResult( "Asterisk short instantiate", asteriskTests.instatiateShort ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Non specific typed use with Number
		 */
		private function useWithNumberNonSPecificTypedTest():void
		{
			var objectTests:ObjectTests = new ObjectTests();
			var asteriskTests:AsteriskTests = new AsteriskTests();
			
			this._textViewer.log( String( "Non specific typed use with Number" ) );
			this._textViewer.log( this.getTestResult( "Object normal instantiate", objectTests.useWithNumber ) );
			this._textViewer.log( this.getTestResult( "Asterisk normal instantiate", asteriskTests.useWithNumber ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Non specific typed use with String
		 */
		private function useWithStringNonSPecificTypedTest():void
		{
			var objectTests:ObjectTests = new ObjectTests();
			var asteriskTests:AsteriskTests = new AsteriskTests();
			
			this._textViewer.log( String( "Non specific typed use with Number" ) );
			this._textViewer.log( this.getTestResult( "Object normal instantiate", objectTests.useWithString ) );
			this._textViewer.log( this.getTestResult( "Asterisk normal instantiate", asteriskTests.useWithString ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Tests of String
		 */
		private function stringTests():void
		{
			var testClass:StringTests = new StringTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( this.getTestResult( "String concat with plus", testClass.concatWithPlusCharacter ) );
			this._textViewer.log( this.getTestResult( "String concat with concat method", testClass.concatWithConcatMethod ) );
			this._textViewer.log( this.getTestResult( "String replace with replace method", testClass.replaceWithReplaceMethod ) );
			this._textViewer.log( this.getTestResult( "String replace with split join", testClass.replaceWithSplitJoin ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Tests of Casts
		 */
		private function castsTests():void
		{
			var testClass:CastTests = new CastTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( this.getTestResult( "Casts String to Number with as", testClass.stringToNumberWithAs ) );
			this._textViewer.log( this.getTestResult( "Casts String to Number with paras", testClass.stringToNumberWithParas ) );
			this._textViewer.log( this.getTestResult( "Casts Dummy class cast with as operator", testClass.dummyClassCastWithAs ) );
			this._textViewer.log( this.getTestResult( "Casts Dummy class cast with Type( x )", testClass.dummyClassCastWithParas ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Tests of Conditions
		 */
		private function conditionsTests():void
		{
			var testClass:ConditionTests = new ConditionTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( this.getTestResult( "Conditions ternary simple", testClass.ternarySimple ) );
			this._textViewer.log( this.getTestResult( "Conditions ternary simple with else", testClass.ternarySimpleWithElse ) );
			this._textViewer.log( this.getTestResult( "Conditions ternary complex with else", testClass.ternaryComplexWithElse ) );
			this._textViewer.log( this.getTestResult( "Conditions if simple", testClass.ifSimple ) );
			this._textViewer.log( this.getTestResult( "Conditions if simple with else", testClass.ifSimpleWithElse ) );
			this._textViewer.log( this.getTestResult( "Conditions if complex with else", testClass.ifComplexWithElse ) );
			this._textViewer.log( this.getTestResult( "Conditions switch simple", testClass.switchSimple ) );
			this._textViewer.log( this.getTestResult( "Conditions switch simple with default", testClass.switchSimpleWithDefault ) );
			this._textViewer.log( this.getTestResult( "Conditions switch complex with default", testClass.switchComplexWithdefault ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
	
		/**
		 * Tests of Accessing property
		 */
		private function accessPropertyTests():void
		{
			var testClass:PropertyAccessingTests = new PropertyAccessingTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( this.getTestResult( "PropertyAccessingTests const", testClass.accessConst ) );
			this._textViewer.log( this.getTestResult( "PropertyAccessingTests variable", testClass.accessVariable ) );
			this._textViewer.log( this.getTestResult( "PropertyAccessingTests getter", testClass.accessGetter ) );
			this._textViewer.log( this.getTestResult( "PropertyAccessingTests setter", testClass.accessSetter ) );
			this._textViewer.log( this.getTestResult( "PropertyAccessingTests static const", PropertyAccessingTests.accessStaticConst ) );
			this._textViewer.log( this.getTestResult( "PropertyAccessingTests static var", PropertyAccessingTests.accessStaticVar ) );
			this._textViewer.log( this.getTestResult( "PropertyAccessingTests static method", PropertyAccessingTests.accessStaticMethod ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Describe type tests
		 */
		private function describeTypeTests():void
		{
			var objectTests:DescribeTypeTests = new DescribeTypeTests();
			
			this._textViewer.log( String( "Describet type tests" ) );
			this._textViewer.log( this.getTestResult( "Describe type", objectTests.describeTypeTest ) );
			this._textViewer.log( this.getTestResult( "Describe type to JSON", objectTests.describeTypeToJSONTest ) );
			this._textViewer.log( String( "*********************************************** \n" ) );
		}
		
		/**
		 * Get test in String
		 * 
		 * @param	testName
		 * @param	testFunction
		 */
		private function getTestResult( testName:String, testFunction:Function ):String
		{
			var abstractTest:AbstractTest = ptest( testFunction, null, testName, CTests.iteration );
			
			return String( testName + " " + this.trim( abstractTest.time, 2 ) );
		}
		
		/**
		 * Trim the number
		 * 
		 * @param	theNumber
		 * @param	decPlaces
		 */
		public function trim( theNumber:Number, decPlaces:Number ):Number 
		{
			if ( decPlaces >= 0 ) 
			{
				var temp:Number = Math.pow( 10, decPlaces );
				return Math.round( theNumber * temp ) / temp;
			}

			return theNumber;
		} 
		
	}
	
}