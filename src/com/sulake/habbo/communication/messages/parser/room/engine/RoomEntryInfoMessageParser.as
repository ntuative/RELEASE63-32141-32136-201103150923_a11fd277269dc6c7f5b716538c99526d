package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1819:Boolean;
      
      private var var_2540:int;
      
      private var var_419:Boolean;
      
      private var var_1181:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1819;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2540;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1181;
      }
      
      public function get owner() : Boolean
      {
         return this.var_419;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1181 != null)
         {
            this.var_1181.dispose();
            this.var_1181 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1819 = param1.readBoolean();
         if(this.var_1819)
         {
            this.var_2540 = param1.readInteger();
            this.var_419 = param1.readBoolean();
         }
         else
         {
            this.var_1181 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
