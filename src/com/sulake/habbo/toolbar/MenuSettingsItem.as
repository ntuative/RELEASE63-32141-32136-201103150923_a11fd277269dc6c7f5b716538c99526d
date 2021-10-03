package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2076:String;
      
      private var var_2074:Array;
      
      private var var_2077:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2076 = param1;
         this.var_2074 = param2;
         this.var_2077 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2076;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2074;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2077;
      }
   }
}
