package hu.vizoli.performancetest.test 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.test.constant.CBitwise;
	/**
	 * Test the Bitwise operations
	 * 
	 * @author vizoli
	 */
	public class BitwiseTests extends AbstractTest
	{
	
		public function BitwiseTests() 
		{
			this.description = CBitwise.DESCRIPTION;
		}
		
		/**
		 * Normal 8 multiplication test
		 */
		public function normal8Multiplication():void 
		{
			var testInt:int = CBitwise.INIT_NUMBER;

			var l:int = CBitwise.LOOPS;	
			for ( var i:int = 0; i < l; i++ )
			{
				testInt *=  8;
			}
		}
		
		/**
		 * Bitwise left shift test
		 */
		public function leftShift():void 
		{
			var testInt:int = CBitwise.INIT_NUMBER;

			var l:int = CBitwise.LOOPS;	
			for ( var i:int = 0; i < l; i++ )
			{
				testInt <<= 3;
			}
		}
		
		/**
		 * Normal 8 divide test
		 */
		public function normal8Divide():void 
		{
			var testInt:int = CBitwise.INIT_NUMBER;

			var l:int = CBitwise.LOOPS;	
			for ( var i:int = 0; i < l; i++ )
			{
				testInt /= 8;
			}
		}
		
		/**
		 * Bitwise right shift test
		 */
		public function rightShift():void 
		{
			var testInt:int = CBitwise.INIT_NUMBER;

			var l:int = CBitwise.LOOPS;	
			for ( var i:int = 0; i < l; i++ )
			{
				testInt >>= 3;
			}
		}
		
		/**
		 * Normal modulo test
		 */
		public function normalModulo():void 
		{
			var testInt:int = CBitwise.INIT_NUMBER;

			var l:int = CBitwise.LOOPS;	
			for ( var i:int = 0; i < l; i++ )
			{
				testInt %=  2;
			}
		}
		
		/**
		 * Bitwise and test
		 */
		public function bitwiseAnd():void 
		{
			var testInt:int = CBitwise.INIT_NUMBER;

			var l:int = CBitwise.LOOPS;	
			for ( var i:int = 0; i < l; i++ )
			{
				testInt &= 1;
			}
		}
		
		/**
		 * Normal complement test
		 */
		public function normalComplement():void 
		{
			var testInt:int = CBitwise.INIT_NUMBER;
			var testInt2:int;

			var l:int = CBitwise.LOOPS;	
			for ( var i:int = 0; i < l; i++ )
			{
				testInt2 = -testInt;
			}
		}
		
		/**
		 * Bitwise complement test
		 */
		public function bitwiseComplement():void 
		{
			var testInt:int = CBitwise.INIT_NUMBER;
			var testInt2:int;

			var l:int = CBitwise.LOOPS;	
			for ( var i:int = 0; i < l; i++ )
			{
				testInt2 = ~testInt + 1;
			}
		}
		
	}

}