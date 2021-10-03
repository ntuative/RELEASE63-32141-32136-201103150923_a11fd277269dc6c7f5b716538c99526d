package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2474:int;
      
      private var var_2473:int;
      
      private var var_746:Boolean;
      
      private var var_2472:int;
      
      private var var_2471:int;
      
      private var var_2475:int;
      
      private var var_2470:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2474 = param1.readInteger();
         this.var_2473 = param1.readInteger();
         this.var_746 = param1.readBoolean();
         this.var_2472 = param1.readInteger();
         this.var_2471 = param1.readInteger();
         this.var_2475 = param1.readInteger();
         this.var_2470 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2474;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2473;
      }
      
      public function get online() : Boolean
      {
         return this.var_746;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2472;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2471;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2475;
      }
      
      public function get banCount() : int
      {
         return this.var_2470;
      }
   }
}
