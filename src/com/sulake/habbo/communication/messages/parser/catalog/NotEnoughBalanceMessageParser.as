package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NotEnoughBalanceMessageParser implements IMessageParser
   {
       
      
      private var var_1534:int = 0;
      
      private var var_1533:int = 0;
      
      private var var_1602:int = 0;
      
      public function NotEnoughBalanceMessageParser()
      {
         super();
      }
      
      public function get notEnoughCredits() : int
      {
         return this.var_1534;
      }
      
      public function get notEnoughActivityPoints() : int
      {
         return this.var_1533;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1602;
      }
      
      public function flush() : Boolean
      {
         this.var_1534 = 0;
         this.var_1533 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1534 = param1.readInteger();
         this.var_1533 = param1.readInteger();
         this.var_1602 = param1.readInteger();
         return true;
      }
   }
}
