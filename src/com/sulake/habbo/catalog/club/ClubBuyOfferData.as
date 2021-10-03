package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1594:String;
      
      private var var_1836:int;
      
      private var var_2490:Boolean;
      
      private var var_2486:Boolean;
      
      private var var_2484:int;
      
      private var var_2489:int;
      
      private var var_429:ICatalogPage;
      
      private var var_2487:int;
      
      private var var_2488:int;
      
      private var var_2485:int;
      
      private var var_2707:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1594 = param2;
         this.var_1836 = param3;
         this.var_2490 = param4;
         this.var_2486 = param5;
         this.var_2484 = param6;
         this.var_2489 = param7;
         this.var_2487 = param8;
         this.var_2488 = param9;
         this.var_2485 = param10;
      }
      
      public function dispose() : void
      {
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
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_204;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1836;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_429;
      }
      
      public function get priceType() : String
      {
         return Offer.const_876;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1594;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_429 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2707;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2707 = param1;
      }
   }
}
