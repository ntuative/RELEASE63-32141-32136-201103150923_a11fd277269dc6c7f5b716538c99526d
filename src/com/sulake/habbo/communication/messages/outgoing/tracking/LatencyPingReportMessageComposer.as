package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2623:int;
      
      private var var_2624:int;
      
      private var var_2625:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2623 = param1;
         this.var_2624 = param2;
         this.var_2625 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2623,this.var_2624,this.var_2625];
      }
      
      public function dispose() : void
      {
      }
   }
}
