package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2051:int;
      
      private var var_1316:String;
      
      private var var_2112:int;
      
      private var var_2106:int;
      
      private var _category:int;
      
      private var var_2024:String;
      
      private var var_1354:int;
      
      private var var_2111:int;
      
      private var var_2108:int;
      
      private var var_2110:int;
      
      private var var_2109:int;
      
      private var var_2107:Boolean;
      
      private var var_2857:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2051 = param1;
         this.var_1316 = param2;
         this.var_2112 = param3;
         this.var_2106 = param4;
         this._category = param5;
         this.var_2024 = param6;
         this.var_1354 = param7;
         this.var_2111 = param8;
         this.var_2108 = param9;
         this.var_2110 = param10;
         this.var_2109 = param11;
         this.var_2107 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2051;
      }
      
      public function get itemType() : String
      {
         return this.var_1316;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2112;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2106;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2024;
      }
      
      public function get extra() : int
      {
         return this.var_1354;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2111;
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
      
      public function get groupable() : Boolean
      {
         return this.var_2107;
      }
      
      public function get songID() : int
      {
         return this.var_1354;
      }
   }
}
