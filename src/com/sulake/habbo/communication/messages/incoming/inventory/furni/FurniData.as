package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2194:int;
      
      private var var_1316:String;
      
      private var _objId:int;
      
      private var var_1601:int;
      
      private var _category:int;
      
      private var var_2024:String;
      
      private var var_2191:Boolean;
      
      private var var_2195:Boolean;
      
      private var var_2192:Boolean;
      
      private var var_2193:Boolean;
      
      private var var_2149:int;
      
      private var var_1354:int;
      
      private var var_1829:String = "";
      
      private var var_2026:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2194 = param1;
         this.var_1316 = param2;
         this._objId = param3;
         this.var_1601 = param4;
         this._category = param5;
         this.var_2024 = param6;
         this.var_2191 = param7;
         this.var_2195 = param8;
         this.var_2192 = param9;
         this.var_2193 = param10;
         this.var_2149 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1829 = param1;
         this.var_1354 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2194;
      }
      
      public function get itemType() : String
      {
         return this.var_1316;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1601;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2024;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2191;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2195;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2192;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2193;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2149;
      }
      
      public function get slotId() : String
      {
         return this.var_1829;
      }
      
      public function get songId() : int
      {
         return this.var_2026;
      }
      
      public function get extra() : int
      {
         return this.var_1354;
      }
   }
}
