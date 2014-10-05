package 
{
	import com.gskinner.performance.PerformanceTest;
	import com.gskinner.performance.ptest;
	import flash.accessibility.AccessibilityProperties;
	import flash.display.Sprite;
	import flash.events.Event;
	import hu.vizoli.performancetest.ArrayTests;
	import hu.vizoli.performancetest.AsteriskTests;
	import hu.vizoli.performancetest.CastTests;
	import hu.vizoli.performancetest.ConditionTests;
	import hu.vizoli.performancetest.IntTests;
	import hu.vizoli.performancetest.IntTests;
	import hu.vizoli.performancetest.LoopTests;
	import hu.vizoli.performancetest.NumberTests;
	import hu.vizoli.performancetest.ObjectTests;
	import hu.vizoli.performancetest.PropertyAccessingTests;
	import hu.vizoli.performancetest.StringTests;
	import hu.vizoli.performancetest.UintTests;
	import hu.vizoli.performancetest.VectorTests;
	import hu.vizoli.performancetest.view.TestViewer;
	
	/**
	 * The main of the flash performance test project
	 * 
	 * @author vizoli
	 */
	public class Main extends Sprite 
	{
		private var _textViewer:TestViewer;
		
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
			
			this.createChildren();
			
			//this.numberTests();
			//this.intTests();
			//this.uintTests();
			//this.arrayTests();
			//this.vectorTests();
			//this.loopTests();
			//this.objectTests();
			//this.asteriskTests();
			//this.stringTests();
			//this.castsTests();
			//this.conditionsTests();
			this.accessPropertyTests();
		}
		
		/**
		 * Create children
		 */
		private function createChildren():void
		{
			this._textViewer = new TestViewer();
			this.addChild( this._textViewer );
		}
		
		/**
		 * Tests of Number
		 */
		private function numberTests():void
		{
			trace( "-------------------------------------------------- NUMBER TESTS ----------------------------------------------" );
			this._textViewer.log( String( ptest( NumberTests.instantiate, null, "Number instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( NumberTests.addition, null, "Number addition", 10 ) ) );
			this._textViewer.log( String( ptest( NumberTests.subtraction, null, "Number subtraction", 10 ) ) );
			this._textViewer.log( String( ptest( NumberTests.multiplication, null, "Number multiplication", 10 ) ) );
			this._textViewer.log( String( ptest( NumberTests.division, null, "Number division", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
		/**
		 * Tests of int
		 */
		private function intTests():void
		{
			trace( "--------------------------------------------------- INT TESTS ------------------------------------------------" );
			this._textViewer.log( String( ptest( IntTests.instantiate, null, "int instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( IntTests.addition, null, "int addition", 10 ) ) );
			this._textViewer.log( String( ptest( IntTests.subtraction, null, "int subtraction", 10 ) ) );
			this._textViewer.log( String( ptest( IntTests.multiplication, null, "int multiplication", 10 ) ) );
			this._textViewer.log( String( ptest( IntTests.division, null, "int division", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
		/**
		 * Tests of int
		 */
		private function uintTests():void
		{
			trace( "-------------------------------------------------- UINT TESTS ------------------------------------------------" );
			this._textViewer.log( String( ptest( UintTests.instantiate, null, "uint instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( UintTests.addition, null, "uint addition", 10 ) ) );
			this._textViewer.log( String( ptest( UintTests.subtraction, null, "uint subtraction", 10 ) ) );
			this._textViewer.log( String( ptest( UintTests.multiplication, null, "uint multiplication", 10 ) ) );
			this._textViewer.log( String( ptest( UintTests.division, null, "uint division", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
		/**
		 * Tests of Array
		 */
		private function arrayTests():void
		{
			trace( "-------------------------------------------------- ARRAY TESTS -----------------------------------------------" );
			this._textViewer.log( String( ptest( ArrayTests.instantiateNormal, null, "Array normal instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( ArrayTests.instantiateShort, null, "Array short instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( ArrayTests.push, null, "Array push", 10 ) ) );
			this._textViewer.log( String( ptest( ArrayTests.unshift, null, "Array unshift", 10 ) ) );
			this._textViewer.log( String( ptest( ArrayTests.shift, null, "Array shift", 10 ) ) );
			this._textViewer.log( String( ptest( ArrayTests.indexOf, null, "Array indexOf", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
		/**
		 * Tests of Vector
		 */
		private function vectorTests():void
		{
			trace( "------------------------------------------------- VECTOR TESTS -----------------------------------------------" );
			this._textViewer.log( String( ptest( VectorTests.instantiateNormal, null, "Vector normal instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( VectorTests.instantiateShort, null, "Vector short instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( VectorTests.push, null, "Vector push", 10 ) ) );
			this._textViewer.log( String( ptest( VectorTests.unshift, null, "Vector unshift", 10 ) ) );
			this._textViewer.log( String( ptest( VectorTests.shift, null, "Vector shift", 10 ) ) );
			this._textViewer.log( String( ptest( VectorTests.indexOf, null, "Vector indexOf", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
		/**
		 * Tests of Vector
		 */
		private function loopTests():void
		{
			trace( "------------------------------------------------ LOOP TESTS --------------------------------------------------" );
			this._textViewer.log( String( ptest( LoopTests.whileLoop, null, "Loop while", 10 ) ) );
			this._textViewer.log( String( ptest( LoopTests.doWhileLoop, null, "Loop doWhile", 10 ) ) );
			this._textViewer.log( String( ptest( LoopTests.forLoop, null, "Loop for", 10 ) ) );
			this._textViewer.log( String( ptest( LoopTests.forInLoop, null, "Loop forInLoop", 10 ) ) );
			this._textViewer.log( String( ptest( LoopTests.forEachInLoop, null, "Loop forEachInLoop", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
		/**
		 * Tests of Object
		 */
		private function objectTests():void
		{
			trace( "----------------------------------------------- OBJECT TESTS -------------------------------------------------" );
			this._textViewer.log( String( ptest( ObjectTests.instantiateNormal, null, "Object normal instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( ObjectTests.instantiateShort, null, "Object short instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( ObjectTests.useWithNumber, null, "Object use with Number", 10 ) ) );
			this._textViewer.log( String( ptest( ObjectTests.useWithString, null, "Object use with String", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
		/**
		 * Tests of Asterisk (*)
		 */
		private function asteriskTests():void
		{
			trace( "---------------------------------------------- ASTERISK TESTS ------------------------------------------------" );
			this._textViewer.log( String( ptest( AsteriskTests.instatiateNormal, null, "Asterisk normal instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( AsteriskTests.instatiateShort, null, "Asterisk short instantiate", 10 ) ) );
			this._textViewer.log( String( ptest( AsteriskTests.useWithNumber, null, "Asterisk use with Number", 10 ) ) );
			this._textViewer.log( String( ptest( AsteriskTests.useWithString, null, "Asterisk use with String", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
		/**
		 * Tests of String
		 */
		private function stringTests():void
		{
			trace( "----------------------------------------------- STRING TESTS -------------------------------------------------" );
			this._textViewer.log( String( ptest( StringTests.concatWithPlusCharacter, null, "String concat with plus", 10 ) ) );
			this._textViewer.log( String( ptest( StringTests.concatWithConcatMethod, null, "String concat with concat method", 10 ) ) );
			this._textViewer.log( String( ptest( StringTests.replaceWithReplaceMethod, null, "String replace with replace method", 10 ) ) );
			this._textViewer.log( String( ptest( StringTests.replaceWithSplitJoin, null, "String replace with split join", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
		/**
		 * Tests of Casts
		 */
		private function castsTests():void
		{
			trace( "----------------------------------------------- CASTS TESTS --------------------------------------------------" );
			this._textViewer.log( String( ptest( CastTests.stringToNumberWithAs, null, "Casts String to Number with as", 10 ) ) );
			this._textViewer.log( String( ptest( CastTests.stringToNumberWithParas, null, "Casts String to Number with paras", 10 ) ) );
			this._textViewer.log( String( ptest( CastTests.dummyClassCastWithAs, null, "Casts Dummy class cast with as operator", 10 ) ) );
			this._textViewer.log( String( ptest( CastTests.dummyClassCastWithParas, null, "Casts Dummy class cast with Type( x )", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
		/**
		 * Tests of Conditions
		 */
		private function conditionsTests():void
		{
			trace( "--------------------------------------------- CONDITIONS TESTS -----------------------------------------------" );
			this._textViewer.log( String( ptest( ConditionTests.ternarySimple, null, "Conditions ternary simple", 10 ) ) );
			this._textViewer.log( String( ptest( ConditionTests.ternarySimpleWithElse, null, "Conditions ternary simple with else", 10 ) ) );
			this._textViewer.log( String( ptest( ConditionTests.ternaryComplexWithElse, null, "Conditions ternary complex with else", 10 ) ) );
			this._textViewer.log( String( ptest( ConditionTests.ifSimple, null, "Conditions if simple", 10 ) ) );
			this._textViewer.log( String( ptest( ConditionTests.ifSimpleWithElse, null, "Conditions if simple with else", 10 ) ) );
			this._textViewer.log( String( ptest( ConditionTests.ifComplexWithElse, null, "Conditions if complex with else", 10 ) ) );
			this._textViewer.log( String( ptest( ConditionTests.switchSimple, null, "Conditions switch simple", 10 ) ) );
			this._textViewer.log( String( ptest( ConditionTests.switchSimpleWithDefault, null, "Conditions switch simple with default", 10 ) ) );
			this._textViewer.log( String( ptest( ConditionTests.switchComplexWithdefault, null, "Conditions switch complex with default", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
	
		/**
		 * Tests of Accessing property
		 */
		private function accessPropertyTests():void
		{
			var testClass:PropertyAccessingTests = new PropertyAccessingTests();
			
			trace( "----------------------------------------- PROPERTY ACCESSING TESTS -------------------------------------------" );
			this._textViewer.log( String( ptest( testClass.accessConst, null, "PropertyAccessingTests const", 10 ) ) );
			this._textViewer.log( String( ptest( testClass.accessVariable, null, "PropertyAccessingTests variable", 10 ) ) );
			this._textViewer.log( String( ptest( testClass.accessGetter, null, "PropertyAccessingTests getter", 10 ) ) );
			this._textViewer.log( String( ptest( testClass.accessSetter, null, "PropertyAccessingTests setter", 10 ) ) );
			this._textViewer.log( String( ptest( PropertyAccessingTests.accessStaticConst, null, "PropertyAccessingTests static const", 10 ) ) );
			this._textViewer.log( String( ptest( PropertyAccessingTests.accessStaticVar, null, "PropertyAccessingTests static var", 10 ) ) );
			this._textViewer.log( String( ptest( PropertyAccessingTests.accessStaticMethod, null, "PropertyAccessingTests static method", 10 ) ) );
			trace( "--------------------------------------------------------------------------------------------------------------\n" );
		}
		
	}
	
}