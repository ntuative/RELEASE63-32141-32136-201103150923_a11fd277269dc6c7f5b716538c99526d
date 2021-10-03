package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1055:int = 1;
      
      public static const const_748:int = 2;
      
      public static const const_812:int = 3;
      
      public static const const_1673:int = 4;
       
      
      private var _index:int;
      
      private var var_2205:String;
      
      private var var_2203:String;
      
      private var var_2204:Boolean;
      
      private var var_2202:String;
      
      private var var_863:String;
      
      private var var_2201:int;
      
      private var var_2200:int;
      
      private var _type:int;
      
      private var var_2098:String;
      
      private var var_858:GuestRoomData;
      
      private var var_859:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2205 = param1.readString();
         this.var_2203 = param1.readString();
         this.var_2204 = param1.readInteger() == 1;
         this.var_2202 = param1.readString();
         this.var_863 = param1.readString();
         this.var_2201 = param1.readInteger();
         this.var_2200 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1055)
         {
            this.var_2098 = param1.readString();
         }
         else if(this._type == const_812)
         {
            this.var_859 = new PublicRoomData(param1);
         }
         else if(this._type == const_748)
         {
            this.var_858 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_858 != null)
         {
            this.var_858.dispose();
            this.var_858 = null;
         }
         if(this.var_859 != null)
         {
            this.var_859.dispose();
            this.var_859 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2205;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2203;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2204;
      }
      
      public function get picText() : String
      {
         return this.var_2202;
      }
      
      public function get picRef() : String
      {
         return this.var_863;
      }
      
      public function get folderId() : int
      {
         return this.var_2201;
      }
      
      public function get tag() : String
      {
         return this.var_2098;
      }
      
      public function get userCount() : int
      {
         return this.var_2200;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_858;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_859;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1055)
         {
            return 0;
         }
         if(this.type == const_748)
         {
            return this.var_858.maxUserCount;
         }
         if(this.type == const_812)
         {
            return this.var_859.maxUsers;
         }
         return 0;
      }
   }
}
