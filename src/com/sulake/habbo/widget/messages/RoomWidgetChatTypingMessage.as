package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_825:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_581:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_825);
         this.var_581 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_581;
      }
   }
}
