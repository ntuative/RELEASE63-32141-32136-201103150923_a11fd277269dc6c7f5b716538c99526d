package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1710:int;
      
      private var var_1708:int;
      
      private var var_1709:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get current() : int
      {
         return this.var_1710;
      }
      
      public function get next() : int
      {
         return this.var_1708;
      }
      
      public function get syncCount() : int
      {
         return this.var_1709;
      }
      
      public function flush() : Boolean
      {
         this.var_1710 = -1;
         this.var_1708 = -1;
         this.var_1709 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1710 = param1.readInteger();
         this.var_1708 = param1.readInteger();
         this.var_1709 = param1.readInteger();
         return true;
      }
   }
}
