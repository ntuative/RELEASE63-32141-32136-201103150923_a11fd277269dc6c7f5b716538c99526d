package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2293:int;
      
      private var var_2024:String;
      
      private var var_1836:int;
      
      private var var_389:int;
      
      private var var_2292:int = -1;
      
      private var var_2294:int;
      
      private var var_1837:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2293 = param3;
         this.var_2024 = param4;
         this.var_1836 = param5;
         this.var_389 = param6;
         this.var_2292 = param7;
         this.var_2294 = param8;
         this.var_1837 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2293;
      }
      
      public function get stuffData() : String
      {
         return this.var_2024;
      }
      
      public function get price() : int
      {
         return this.var_1836;
      }
      
      public function get status() : int
      {
         return this.var_389;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2292;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2294;
      }
      
      public function get offerCount() : int
      {
         return this.var_1837;
      }
   }
}
