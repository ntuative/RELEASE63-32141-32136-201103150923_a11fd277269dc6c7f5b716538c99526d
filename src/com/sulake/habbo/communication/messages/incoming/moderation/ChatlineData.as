package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2494:int;
      
      private var var_2495:int;
      
      private var var_2496:int;
      
      private var var_2493:String;
      
      private var var_1634:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2494 = param1.readInteger();
         this.var_2495 = param1.readInteger();
         this.var_2496 = param1.readInteger();
         this.var_2493 = param1.readString();
         this.var_1634 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2494;
      }
      
      public function get minute() : int
      {
         return this.var_2495;
      }
      
      public function get chatterId() : int
      {
         return this.var_2496;
      }
      
      public function get chatterName() : String
      {
         return this.var_2493;
      }
      
      public function get msg() : String
      {
         return this.var_1634;
      }
   }
}
