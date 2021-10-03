package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1436:Boolean = false;
      
      private var var_1836:int;
      
      private var var_1850:Array;
      
      private var var_798:Array;
      
      private var var_799:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1436 = _loc2_.isWrappingEnabled;
         this.var_1836 = _loc2_.wrappingPrice;
         this.var_1850 = _loc2_.stuffTypes;
         this.var_798 = _loc2_.boxTypes;
         this.var_799 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1436;
      }
      
      public function get price() : int
      {
         return this.var_1836;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1850;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_798;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_799;
      }
   }
}
