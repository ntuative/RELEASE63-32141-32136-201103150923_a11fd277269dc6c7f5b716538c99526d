package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var _category:int;
      
      protected var _type:int;
      
      protected var var_2024:String;
      
      protected var var_1354:Number;
      
      protected var var_2791:Boolean;
      
      protected var var_2792:Boolean;
      
      protected var var_2107:Boolean;
      
      protected var var_2326:Boolean;
      
      protected var var_2800:int;
      
      protected var var_2108:int;
      
      protected var var_2110:int;
      
      protected var var_2109:int;
      
      protected var var_1829:String;
      
      protected var var_2026:int;
      
      protected var var_846:Boolean;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         this._id = param1;
         this._type = param2;
         this._ref = param3;
         this._category = param4;
         this.var_2107 = param5;
         this.var_2792 = param6;
         this.var_2791 = param7;
         this.var_2326 = param8;
         this.var_2024 = param9;
         this.var_1354 = param10;
         this.var_2800 = param11;
         this.var_2108 = param12;
         this.var_2110 = param13;
         this.var_2109 = param14;
         this.var_1829 = param15;
         this.var_2026 = param16;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get ref() : int
      {
         return this._ref;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get stuffData() : String
      {
         return this.var_2024;
      }
      
      public function get extra() : Number
      {
         return this.var_1354;
      }
      
      public function get recyclable() : Boolean
      {
         return this.var_2791;
      }
      
      public function get tradeable() : Boolean
      {
         return this.var_2792;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2107;
      }
      
      public function get sellable() : Boolean
      {
         return this.var_2326;
      }
      
      public function get expires() : int
      {
         return this.var_2800;
      }
      
      public function get creationDay() : int
      {
         return this.var_2108;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2110;
      }
      
      public function get creationYear() : int
      {
         return this.var_2109;
      }
      
      public function get slotId() : String
      {
         return this.var_1829;
      }
      
      public function get songId() : int
      {
         return this.var_2026;
      }
      
      public function set locked(param1:Boolean) : void
      {
         this.var_846 = param1;
      }
      
      public function get locked() : Boolean
      {
         return this.var_846;
      }
   }
}
