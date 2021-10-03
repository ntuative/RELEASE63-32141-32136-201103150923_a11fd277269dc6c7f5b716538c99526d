package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2069:String;
      
      private var var_2460:int;
      
      private var var_2068:int;
      
      private var var_2461:String;
      
      private var var_2657:int;
      
      private var var_1859:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2069 = param1.readString();
         this.var_2460 = param1.readInteger();
         this.var_2068 = param1.readInteger();
         this.var_2461 = param1.readString();
         this.var_2657 = param1.readInteger();
         this.var_1859 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2069;
      }
      
      public function get unitPort() : int
      {
         return this.var_2460;
      }
      
      public function get worldId() : int
      {
         return this.var_2068;
      }
      
      public function get castLibs() : String
      {
         return this.var_2461;
      }
      
      public function get maxUsers() : int
      {
         return this.var_2657;
      }
      
      public function get nodeId() : int
      {
         return this.var_1859;
      }
   }
}
