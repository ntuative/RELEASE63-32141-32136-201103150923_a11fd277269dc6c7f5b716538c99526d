package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_355:int;
      
      private var var_2200:int;
      
      private var var_2466:Boolean;
      
      private var var_2271:int;
      
      private var _ownerName:String;
      
      private var var_113:RoomData;
      
      private var var_765:RoomData;
      
      private var _disposed:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         this.var_355 = param1.readInteger();
         this.var_2200 = param1.readInteger();
         this.var_2466 = param1.readBoolean();
         this.var_2271 = param1.readInteger();
         this._ownerName = param1.readString();
         this.var_113 = new RoomData(param1);
         this.var_765 = new RoomData(param1);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_113 != null)
         {
            this.var_113.dispose();
            this.var_113 = null;
         }
         if(this.var_765 != null)
         {
            this.var_765.dispose();
            this.var_765 = null;
         }
      }
      
      public function get flatId() : int
      {
         return this.var_355;
      }
      
      public function get userCount() : int
      {
         return this.var_2200;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return this.var_2466;
      }
      
      public function get ownerId() : int
      {
         return this.var_2271;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get room() : RoomData
      {
         return this.var_113;
      }
      
      public function get event() : RoomData
      {
         return this.var_765;
      }
   }
}
