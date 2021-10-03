package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1180:Boolean;
      
      private var var_1179:Boolean;
      
      private var var_1428:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return this.var_1180;
      }
      
      public function get hasChangedName() : Boolean
      {
         return this.var_1179;
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return this.var_1428;
      }
      
      public function flush() : Boolean
      {
         this.var_1180 = false;
         this.var_1179 = false;
         this.var_1428 = false;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1180 = param1.readBoolean();
         this.var_1179 = param1.readBoolean();
         this.var_1428 = param1.readBoolean();
         return true;
      }
   }
}
