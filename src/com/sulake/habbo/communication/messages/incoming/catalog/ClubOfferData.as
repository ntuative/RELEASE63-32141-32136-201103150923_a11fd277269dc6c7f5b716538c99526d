package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1594:String;
      
      private var var_1836:int;
      
      private var var_2490:Boolean;
      
      private var var_2486:Boolean;
      
      private var var_2484:int;
      
      private var var_2489:int;
      
      private var var_2487:int;
      
      private var var_2488:int;
      
      private var var_2485:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1594 = param1.readString();
         this.var_1836 = param1.readInteger();
         this.var_2490 = param1.readBoolean();
         this.var_2486 = param1.readBoolean();
         this.var_2484 = param1.readInteger();
         this.var_2489 = param1.readInteger();
         this.var_2487 = param1.readInteger();
         this.var_2488 = param1.readInteger();
         this.var_2485 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1594;
      }
      
      public function get price() : int
      {
         return this.var_1836;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2490;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2486;
      }
      
      public function get periods() : int
      {
         return this.var_2484;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2489;
      }
      
      public function get year() : int
      {
         return this.var_2487;
      }
      
      public function get month() : int
      {
         return this.var_2488;
      }
      
      public function get day() : int
      {
         return this.var_2485;
      }
   }
}
