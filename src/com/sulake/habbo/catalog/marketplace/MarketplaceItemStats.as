package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2294:int;
      
      private var var_2668:int;
      
      private var var_2671:int;
      
      private var _dayOffsets:Array;
      
      private var var_1973:Array;
      
      private var var_1972:Array;
      
      private var var_2669:int;
      
      private var var_2670:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2294;
      }
      
      public function get offerCount() : int
      {
         return this.var_2668;
      }
      
      public function get historyLength() : int
      {
         return this.var_2671;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1973;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1972;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2669;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2670;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2294 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2668 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2671 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1973 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1972 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2669 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2670 = param1;
      }
   }
}
