package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestListMessageParser implements IMessageParser
   {
       
      
      private var var_1603:String;
      
      private var var_1602:int;
      
      private var var_349:Array;
      
      public function QuestListMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var _loc1_:* = null;
         this.var_1603 = "";
         this.var_1602 = 2;
         if(this.var_349)
         {
            for each(_loc1_ in this.var_349)
            {
               _loc1_.dispose();
            }
         }
         this.var_349 = [];
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1603 = param1.readString();
         this.var_1602 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this.var_349.push(new QuestMessageData(param1));
            _loc3_++;
         }
         return true;
      }
      
      public function get quests() : Array
      {
         return this.var_349;
      }
      
      public function get campaignCode() : String
      {
         return this.var_1603;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1602;
      }
   }
}
