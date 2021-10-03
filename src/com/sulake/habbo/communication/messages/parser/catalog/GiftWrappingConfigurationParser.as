package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2588:Boolean;
      
      private var var_2587:int;
      
      private var var_1850:Array;
      
      private var var_798:Array;
      
      private var var_799:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2588;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2587;
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1850 = [];
         this.var_798 = [];
         this.var_799 = [];
         this.var_2588 = param1.readBoolean();
         this.var_2587 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1850.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_798.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_799.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
