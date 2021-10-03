package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1814:IID;
      
      private var var_702:Boolean;
      
      private var var_1175:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1814 = param1;
         this.var_1175 = new Array();
         this.var_702 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1814;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_702;
      }
      
      public function get receivers() : Array
      {
         return this.var_1175;
      }
      
      public function dispose() : void
      {
         if(!this.var_702)
         {
            this.var_702 = true;
            this.var_1814 = null;
            while(this.var_1175.length > 0)
            {
               this.var_1175.pop();
            }
            this.var_1175 = null;
         }
      }
   }
}
