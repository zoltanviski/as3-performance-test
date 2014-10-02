package hu.vizoli.performancetest 
{
	import hu.vizoli.performancetest.constant.CConditions;
	
	/**
	 * Test the Conditions
	 * 
	 * @author vizoli
	 */
	public class ConditionsTest 
	{
		{
			public static var testVar:int = 5;
		}
		
		/**
		 * Ternary simple
		 */
		public static function ternarySimple():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar == 1
							? testVar++ 
							: null; 
			}
		}
		
		/**
		 * Ternary simple with else
		 */
		public static function ternarySimpleWithElse():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar == 1
							? testVar++ 
							: testVar++; 
			}
		}
		
		/**
		 * Ternary complex with else
		 */
		public static function ternaryComplexWithElse():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				testVar == 1
							? ( testVar == 2
											? ( testVar == 3
															? testVar++
															: testVar++ )
											: testVar++ )
							: testVar++; 
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public static function ifSimple():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				if ( testVar == 1 )
				{
					testVar++;
				}
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public static function ifSimpleWithElse():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				if ( testVar == 1 )
				{
					testVar++;
				}
				else
				{
					testVar++;
				}
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public static function ifComplexWithElse():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				if ( testVar == 1 )
				{
					testVar++;
				}
				else if ( testVar == 2 )
				{
					testVar++;
				}
				else if ( testVar == 3 )
				{
					testVar++;
				}
				else
				{
					testVar++;
				}
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public static function switchSimple():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				switch ( testVar )
				{
					case 1:
						testVar++;
					break;
				}
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public static function switchSimpleWithDefault():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				switch ( testVar )
				{
					case 1:
						testVar++;
					break;
					
					default:
						testVar++;
					break;
				}
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public static function switchComplexWithdefault():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				switch ( testVar )
				{
					case 1:
						testVar++;
					break;
					
					case 2:
						testVar++;
					break;
					
					case 3:
						testVar++;
					break;
					
					default:
						testVar++;
					break;
				}
			}
		}
		
	}

}