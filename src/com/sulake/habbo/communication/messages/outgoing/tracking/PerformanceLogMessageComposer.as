package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2456:int = 0;
      
      private var var_1367:String = "";
      
      private var var_1682:String = "";
      
      private var var_2358:String = "";
      
      private var var_2596:String = "";
      
      private var var_1854:int = 0;
      
      private var var_2599:int = 0;
      
      private var var_2597:int = 0;
      
      private var var_1365:int = 0;
      
      private var var_2598:int = 0;
      
      private var var_1366:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2456 = param1;
         this.var_1367 = param2;
         this.var_1682 = param3;
         this.var_2358 = param4;
         this.var_2596 = param5;
         if(param6)
         {
            this.var_1854 = 1;
         }
         else
         {
            this.var_1854 = 0;
         }
         this.var_2599 = param7;
         this.var_2597 = param8;
         this.var_1365 = param9;
         this.var_2598 = param10;
         this.var_1366 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2456,this.var_1367,this.var_1682,this.var_2358,this.var_2596,this.var_1854,this.var_2599,this.var_2597,this.var_1365,this.var_2598,this.var_1366];
      }
   }
}
