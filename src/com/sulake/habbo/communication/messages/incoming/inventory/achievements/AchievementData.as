package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1333:int;
      
      private var var_286:String;
      
      private var var_2196:int;
      
      private var var_2198:int;
      
      private var var_1617:int;
      
      private var var_2197:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1333 = param1.readInteger();
         this.var_286 = param1.readString();
         this.var_2196 = param1.readInteger();
         this.var_2198 = param1.readInteger();
         this.var_1617 = param1.readInteger();
         this.var_2197 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_286;
      }
      
      public function get level() : int
      {
         return this.var_1333;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2196;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2198;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1617;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2197;
      }
   }
}
