package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_355:int;
      
      private var var_765:Boolean;
      
      private var var_849:String;
      
      private var _ownerName:String;
      
      private var var_2412:int;
      
      private var var_2200:int;
      
      private var var_2718:int;
      
      private var var_1697:String;
      
      private var var_2716:int;
      
      private var var_2635:Boolean;
      
      private var var_681:int;
      
      private var var_1352:int;
      
      private var var_2717:String;
      
      private var var_828:Array;
      
      private var var_2719:RoomThumbnailData;
      
      private var var_2413:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_828 = new Array();
         super();
         this.var_355 = param1.readInteger();
         this.var_765 = param1.readBoolean();
         this.var_849 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2412 = param1.readInteger();
         this.var_2200 = param1.readInteger();
         this.var_2718 = param1.readInteger();
         this.var_1697 = param1.readString();
         this.var_2716 = param1.readInteger();
         this.var_2635 = param1.readBoolean();
         this.var_681 = param1.readInteger();
         this.var_1352 = param1.readInteger();
         this.var_2717 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_828.push(_loc4_);
            _loc3_++;
         }
         this.var_2719 = new RoomThumbnailData(param1);
         this.var_2413 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_355;
      }
      
      public function get event() : Boolean
      {
         return this.var_765;
      }
      
      public function get roomName() : String
      {
         return this.var_849;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2412;
      }
      
      public function get userCount() : int
      {
         return this.var_2200;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2718;
      }
      
      public function get description() : String
      {
         return this.var_1697;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2716;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2635;
      }
      
      public function get score() : int
      {
         return this.var_681;
      }
      
      public function get categoryId() : int
      {
         return this.var_1352;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2717;
      }
      
      public function get tags() : Array
      {
         return this.var_828;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2719;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2413;
      }
   }
}
