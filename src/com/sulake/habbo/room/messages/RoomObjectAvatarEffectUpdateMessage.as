package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarEffectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_188:int;
      
      private var var_2340:int;
      
      public function RoomObjectAvatarEffectUpdateMessage(param1:int = 0, param2:int = 0)
      {
         super();
         this.var_188 = param1;
         this.var_2340 = param2;
      }
      
      public function get effect() : int
      {
         return this.var_188;
      }
      
      public function get delayMilliSeconds() : int
      {
         return this.var_2340;
      }
   }
}
