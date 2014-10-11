package 
{
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
			this.numberTests();
			this.intTests();
			this.uintTests();
			this.arrayTests();
			this.vectorTests();
			this.loopTests();
			this.objectTests();
			this.asteriskTests();
			this.stringTests();
			this.castsTests();
			this.conditionsTests();
			this.accessPropertyTests();
			
			this._startTestButton.setLabelToStartTheTest();
		}
		
		/**
		 * Tests of Number
		 */
		private function numberTests():void
		{
			var testClass:NumberTests = new NumberTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.instantiate, null, "Number instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.addition, null, "Number addition", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.subtraction, null, "Number subtraction", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.multiplication, null, "Number multiplication", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.division, null, "Number division", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
		/**
		 * Tests of int
		 */
		private function intTests():void
		{
			var testClass:IntTests = new IntTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.instantiate, null, "int instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.addition, null, "int addition", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.subtraction, null, "int subtraction", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.multiplication, null, "int multiplication", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.division, null, "int division", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
		/**
		 * Tests of int
		 */
		private function uintTests():void
		{
			var testClass:UintTests = new UintTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.instantiate, null, "uint instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.addition, null, "uint addition", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.subtraction, null, "uint subtraction", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.multiplication, null, "uint multiplication", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.division, null, "uint division", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
		/**
		 * Tests of Array
		 */
		private function arrayTests():void
		{
			var testClass:ArrayTests = new ArrayTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.instantiateNormal, null, "Array normal instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.instantiateShort, null, "Array short instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.push, null, "Array push", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.unshift, null, "Array unshift", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.shift, null, "Array shift", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.indexOf, null, "Array indexOf", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
		/**
		 * Tests of Vector
		 */
		private function vectorTests():void
		{
			var testClass:VectorTests = new VectorTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.instantiateNormal, null, "Vector normal instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.instantiateShort, null, "Vector short instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.push, null, "Vector push", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.unshift, null, "Vector unshift", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.shift, null, "Vector shift", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.indexOf, null, "Vector indexOf", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
		/**
		 * Tests of Vector
		 */
		private function loopTests():void
		{
			var testClass:LoopTests = new LoopTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.whileLoop, null, "Loop while", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.doWhileLoop, null, "Loop doWhile", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.forLoop, null, "Loop for", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.forInLoop, null, "Loop forInLoop", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.forEachInLoop, null, "Loop forEachInLoop", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
		/**
		 * Tests of Object
		 */
		private function objectTests():void
		{
			var testClass:ObjectTests = new ObjectTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.instantiateNormal, null, "Object normal instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.instantiateShort, null, "Object short instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.useWithNumber, null, "Object use with Number", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.useWithString, null, "Object use with String", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
		/**
		 * Tests of Asterisk (*)
		 */
		private function asteriskTests():void
		{
			var testClass:AsteriskTests = new AsteriskTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.instatiateNormal, null, "Asterisk normal instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.instatiateShort, null, "Asterisk short instantiate", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.useWithNumber, null, "Asterisk use with Number", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.useWithString, null, "Asterisk use with String", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
		/**
		 * Tests of String
		 */
		private function stringTests():void
		{
			var testClass:StringTests = new StringTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.concatWithPlusCharacter, null, "String concat with plus", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.concatWithConcatMethod, null, "String concat with concat method", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.replaceWithReplaceMethod, null, "String replace with replace method", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.replaceWithSplitJoin, null, "String replace with split join", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
		/**
		 * Tests of Casts
		 */
		private function castsTests():void
		{
			var testClass:CastTests = new CastTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.stringToNumberWithAs, null, "Casts String to Number with as", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.stringToNumberWithParas, null, "Casts String to Number with paras", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.dummyClassCastWithAs, null, "Casts Dummy class cast with as operator", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.dummyClassCastWithParas, null, "Casts Dummy class cast with Type( x )", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
		/**
		 * Tests of Conditions
		 */
		private function conditionsTests():void
		{
			var testClass:ConditionTests = new ConditionTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.ternarySimple, null, "Conditions ternary simple", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.ternarySimpleWithElse, null, "Conditions ternary simple with else", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.ternaryComplexWithElse, null, "Conditions ternary complex with else", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.ifSimple, null, "Conditions if simple", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.ifSimpleWithElse, null, "Conditions if simple with else", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.ifComplexWithElse, null, "Conditions if complex with else", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.switchSimple, null, "Conditions switch simple", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.switchSimpleWithDefault, null, "Conditions switch simple with default", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.switchComplexWithdefault, null, "Conditions switch complex with default", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
	
		/**
		 * Tests of Accessing property
		 */
		private function accessPropertyTests():void
		{
			var testClass:PropertyAccessingTests = new PropertyAccessingTests();
			
			this._textViewer.log( String( testClass.description ) );
			this._textViewer.log( String( ptest( testClass.accessConst, null, "PropertyAccessingTests const", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.accessVariable, null, "PropertyAccessingTests variable", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.accessGetter, null, "PropertyAccessingTests getter", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( testClass.accessSetter, null, "PropertyAccessingTests setter", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( PropertyAccessingTests.accessStaticConst, null, "PropertyAccessingTests static const", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( PropertyAccessingTests.accessStaticVar, null, "PropertyAccessingTests static var", CTests.iteration ) ) );
			this._textViewer.log( String( ptest( PropertyAccessingTests.accessStaticMethod, null, "PropertyAccessingTests static method", CTests.iteration ) ) );
			this._textViewer.log( String( "**************************************************************************************************** \n" ) );
		}
		
	}
	
}