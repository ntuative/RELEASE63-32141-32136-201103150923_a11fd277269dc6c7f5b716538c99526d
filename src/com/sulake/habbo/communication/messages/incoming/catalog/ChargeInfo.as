package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChargeInfo
   {
       
      
      private var var_2115:int;
      
      private var var_2114:int;
      
      private var var_1103:int;
      
      private var var_1102:int;
      
      private var var_1602:int;
      
      private var var_2116:int;
      
      public function ChargeInfo(param1:IMessageDataWrapper)
      {
         super();
         this.var_2115 = param1.readInteger();
         this.var_2114 = param1.readInteger();
         this.var_1103 = param1.readInteger();
         this.var_1102 = param1.readInteger();
         this.var_1602 = param1.readInteger();
         this.var_2116 = param1.readInteger();
      }
      
      public function get stuffId() : int
      {
         return this.var_2115;
      }
      
      public function get charges() : int
      {
         return this.var_2114;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1103;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1102;
      }
      
      public function get chargePatchSize() : int
      {
         return this.var_2116;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1602;
      }
   }
}
