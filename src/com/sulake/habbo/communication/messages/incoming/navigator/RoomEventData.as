package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1244:Boolean;
      
      private var var_2313:int;
      
      private var var_2314:String;
      
      private var var_355:int;
      
      private var var_2316:int;
      
      private var var_2152:String;
      
      private var var_2315:String;
      
      private var var_2317:String;
      
      private var var_828:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_828 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1244 = false;
            return;
         }
         this.var_1244 = true;
         this.var_2313 = int(_loc2_);
         this.var_2314 = param1.readString();
         this.var_355 = int(param1.readString());
         this.var_2316 = param1.readInteger();
         this.var_2152 = param1.readString();
         this.var_2315 = param1.readString();
         this.var_2317 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_828.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_828 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2313;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2314;
      }
      
      public function get flatId() : int
      {
         return this.var_355;
      }
      
      public function get eventType() : int
      {
         return this.var_2316;
      }
      
      public function get eventName() : String
      {
         return this.var_2152;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2315;
      }
      
      public function get creationTime() : String
      {
         return this.var_2317;
      }
      
      public function get tags() : Array
      {
         return this.var_828;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1244;
      }
   }
}
