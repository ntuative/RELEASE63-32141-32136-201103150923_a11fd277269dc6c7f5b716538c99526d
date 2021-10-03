package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2557:Number;
      
      private var var_1828:Number;
      
      private var var_959:Number;
      
      private var var_492:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2557 = param1;
         this.var_1828 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_959 = param1;
         this.var_492 = 0;
      }
      
      public function update() : void
      {
         this.var_959 += this.var_1828;
         this.var_492 += this.var_959;
         if(this.var_492 > 0)
         {
            this.var_492 = 0;
            this.var_959 = this.var_2557 * -1 * this.var_959;
         }
      }
      
      public function get location() : Number
      {
         return this.var_492;
      }
   }
}
