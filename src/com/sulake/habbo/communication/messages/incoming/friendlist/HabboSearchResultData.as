package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2048:int;
      
      private var var_1756:String;
      
      private var var_2469:String;
      
      private var var_2639:Boolean;
      
      private var var_2638:Boolean;
      
      private var var_2640:int;
      
      private var var_2468:String;
      
      private var var_2637:String;
      
      private var var_1746:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2048 = param1.readInteger();
         this.var_1756 = param1.readString();
         this.var_2469 = param1.readString();
         this.var_2639 = param1.readBoolean();
         this.var_2638 = param1.readBoolean();
         param1.readString();
         this.var_2640 = param1.readInteger();
         this.var_2468 = param1.readString();
         this.var_2637 = param1.readString();
         this.var_1746 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2048;
      }
      
      public function get avatarName() : String
      {
         return this.var_1756;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2469;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2639;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2638;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2640;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2468;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2637;
      }
      
      public function get realName() : String
      {
         return this.var_1746;
      }
   }
}
