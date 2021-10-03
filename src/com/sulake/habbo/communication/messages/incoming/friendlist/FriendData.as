package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_958:int;
      
      private var var_746:Boolean;
      
      private var var_1670:Boolean;
      
      private var _figure:String;
      
      private var var_1352:int;
      
      private var var_1748:String;
      
      private var var_1747:String;
      
      private var var_1746:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_958 = param1.readInteger();
         this.var_746 = param1.readBoolean();
         this.var_1670 = param1.readBoolean();
         this._figure = param1.readString();
         this.var_1352 = param1.readInteger();
         this.var_1748 = param1.readString();
         this.var_1747 = param1.readString();
         this.var_1746 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_958;
      }
      
      public function get online() : Boolean
      {
         return this.var_746;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1670;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get categoryId() : int
      {
         return this.var_1352;
      }
      
      public function get motto() : String
      {
         return this.var_1748;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1747;
      }
      
      public function get realName() : String
      {
         return this.var_1746;
      }
   }
}
