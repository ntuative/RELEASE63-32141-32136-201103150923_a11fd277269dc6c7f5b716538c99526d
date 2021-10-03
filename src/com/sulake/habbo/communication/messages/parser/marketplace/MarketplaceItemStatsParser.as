package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_2294:int;
      
      private var var_2668:int;
      
      private var var_2671:int;
      
      private var _dayOffsets:Array;
      
      private var var_1973:Array;
      
      private var var_1972:Array;
      
      private var var_2669:int;
      
      private var var_2670:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2294 = param1.readInteger();
         this.var_2668 = param1.readInteger();
         this.var_2671 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1973 = [];
         this.var_1972 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1973.push(param1.readInteger());
            this.var_1972.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2670 = param1.readInteger();
         this.var_2669 = param1.readInteger();
         return true;
      }
   }
}
