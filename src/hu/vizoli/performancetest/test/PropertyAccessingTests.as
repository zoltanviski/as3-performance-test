package hu.vizoli.performancetest.test 
{
	import com.gskinner.performance.AbstractTest;
	import hu.vizoli.performancetest.test.constant.CPropertyAccessing;
	
	/**
	 * Test the Accessing properties
	 * 
	 * @author vizoli
	 */
	public class PropertyAccessingTests extends AbstractTest
	{
		public static const STATIC_CONST:int = 1;
		public static var STATIC_VAR:int = 1;
		
		public const CONST:int = 1;
		
		private var _getSetVar:int = 1;
		
		public function PropertyAccessingTests() 
		{
			this.description = CPropertyAccessing.DESCRIPTION;
		}
		
		/**
		 * Access static const
		 */
		public static function accessStaticConst():void 
		{
			var l:int = CPropertyAccessing.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				STATIC_CONST;
			}
		}
		
		/**
		 * Access static var
		 */
		public static function accessStaticVar():void 
		{
			var l:int = CPropertyAccessing.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				STATIC_VAR;
			}
		}
		
		/**
		 * Access static method
		 */
		public static function accessStaticMethod():void 
		{
			var l:int = CPropertyAccessing.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				staticMethod();
			}
		}
		
		/**
		 * Access static var
		 */
		public static function staticMethod():void 
		{
			
		}
		
		/**
		 * Access const
		 */
		public function accessConst():void 
		{
			var l:int = CPropertyAccessing.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				CONST;
			}
		}
		
		/**
		 * Get getSetVar
		 */
		public function accessVariable():void 
		{
			var l:int = CPropertyAccessing.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this._getSetVar;
			}
		}
		
		/**
		 * Get getSetVar
		 */
		public function accessGetter():void 
		{
			var l:int = CPropertyAccessing.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.getSetVar;
			}
		}
		
		/**
		 * Get getSetVar
		 */
		public function accessSetter():void 
		{
			var l:int = CPropertyAccessing.LOOPS;
			for ( var i:int = 0; i < l; i++ )
			{
				this.getSetVar = 2;
			}
		}
		
		/**
		 * Get getSetVar
		 */
		public function get getSetVar():int 
		{
			return this._getSetVar;
		}
		
		/**
		 * Set getSetVar
		 * 
		 * @param	value
		 */
		public function set getSetVar( value:int ):void 
		{
			this._getSetVar = value;
		}
		
	}

}