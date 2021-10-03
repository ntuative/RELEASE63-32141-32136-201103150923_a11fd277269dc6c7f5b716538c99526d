package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1436:Boolean;
      
      private var var_2162:int;
      
      private var var_1591:int;
      
      private var var_1590:int;
      
      private var var_2159:int;
      
      private var var_2160:int;
      
      private var var_2161:int;
      
      private var var_2158:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1436;
      }
      
      public function get commission() : int
      {
         return this.var_2162;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1591;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1590;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2160;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2159;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2161;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2158;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1436 = param1.readBoolean();
         this.var_2162 = param1.readInteger();
         this.var_1591 = param1.readInteger();
         this.var_1590 = param1.readInteger();
         this.var_2160 = param1.readInteger();
         this.var_2159 = param1.readInteger();
         this.var_2161 = param1.readInteger();
         this.var_2158 = param1.readInteger();
         return true;
      }
   }
}
