package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1598:int;
      
      private var var_2215:int;
      
      private var var_1331:int;
      
      private var var_2216:int;
      
      private var var_113:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1598 = param1.readInteger();
         this.var_2215 = param1.readInteger();
         this.var_1331 = param1.readInteger();
         this.var_2216 = param1.readInteger();
         this.var_113 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1598);
      }
      
      public function get callId() : int
      {
         return this.var_1598;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2215;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1331;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2216;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_113;
      }
   }
}
