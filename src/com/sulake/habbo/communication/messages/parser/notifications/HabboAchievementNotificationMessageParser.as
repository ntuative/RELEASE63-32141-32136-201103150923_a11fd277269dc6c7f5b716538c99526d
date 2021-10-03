package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1333:int;
      
      private var var_1607:int;
      
      private var var_2198:int;
      
      private var var_1617:int;
      
      private var var_1332:int;
      
      private var var_2492:String = "";
      
      private var var_2761:String = "";
      
      private var var_2762:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1333 = param1.readInteger();
         this.var_2492 = param1.readString();
         this.var_1607 = param1.readInteger();
         this.var_2198 = param1.readInteger();
         this.var_1617 = param1.readInteger();
         this.var_1332 = param1.readInteger();
         this.var_2762 = param1.readInteger();
         this.var_2761 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1333;
      }
      
      public function get points() : int
      {
         return this.var_1607;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2198;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1617;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1332;
      }
      
      public function get badgeID() : String
      {
         return this.var_2492;
      }
      
      public function get achievementID() : int
      {
         return this.var_2762;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2761;
      }
   }
}
