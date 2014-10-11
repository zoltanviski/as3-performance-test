package hu.vizoli.performancetest 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.constant.CConditions;
	
	/**
	 * Test the Conditions
	 * 
	 * @author vizoli
	 */
	public class ConditionTests extends AbstractTest
	{
		private var testVar:int;
		
		public function ConditionTests():void 
		{
			this.description = CConditions.DESCRIPTION;
			
			this.testVar = 5;
		}
		
		/**
		 * Ternary simple
		 */
		public function ternarySimple():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar == 1
								? this.testVar++ 
								: null; 
			}
		}
		
		/**
		 * Ternary simple with else
		 */
		public function ternarySimpleWithElse():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar == 1
								? this.testVar++ 
								: this.testVar++; 
			}
		}
		
		/**
		 * Ternary complex with else
		 */
		public function ternaryComplexWithElse():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.testVar == 1
								? ( this.testVar == 2
												? ( this.testVar == 3
																? this.testVar++
																: this.testVar++ )
												: this.testVar++ )
								: this.testVar++; 
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public function ifSimple():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				if ( this.testVar == 1 )
				{
					this.testVar++;
				}
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public function ifSimpleWithElse():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				if ( this.testVar == 1 )
				{
					this.testVar++;
				}
				else
				{
					this.testVar++;
				}
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public function ifComplexWithElse():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				if ( this.testVar == 1 )
				{
					this.testVar++;
				}
				else if ( this.testVar == 2 )
				{
					this.testVar++;
				}
				else if ( this.testVar == 3 )
				{
					this.testVar++;
				}
				else
				{
					this.testVar++;
				}
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public function switchSimple():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				switch ( this.testVar )
				{
					case 1:
						this.testVar++;
					break;
				}
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public function switchSimpleWithDefault():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				switch ( this.testVar )
				{
					case 1:
						this.testVar++;
					break;
					
					default:
						this.testVar++;
					break;
				}
			}
		}
		
		/**
		 * String casting to Number with as operator
		 */
		public function switchComplexWithdefault():void 
		{
			var l:int = CConditions.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				switch ( this.testVar )
				{
					case 1:
						this.testVar++;
					break;
					
					case 2:
						this.testVar++;
					break;
					
					case 3:
						this.testVar++;
					break;
					
					default:
						this.testVar++;
					break;
				}
			}
		}
		
	}

}