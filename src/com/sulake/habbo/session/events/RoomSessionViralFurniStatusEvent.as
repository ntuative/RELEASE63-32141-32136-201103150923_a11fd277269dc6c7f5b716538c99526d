package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionViralFurniStatusEvent extends RoomSessionEvent
   {
      
      public static const const_534:String = "RSVFS_STATUS";
      
      public static const const_516:String = "RSVFS_RECEIVED";
       
      
      private var var_178:String;
      
      private var var_358:int;
      
      private var var_389:int = -1;
      
      private var _shareId:String;
      
      private var var_2124:String;
      
      private var var_2125:Boolean;
      
      private var var_1336:int = 0;
      
      public function RoomSessionViralFurniStatusEvent(param1:String, param2:IRoomSession, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
         this.var_389 = this.status;
         this._shareId = this.shareId;
      }
      
      public function get objectId() : int
      {
         return this.var_358;
      }
      
      public function get status() : int
      {
         return this.var_389;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2124;
      }
      
      public function get giftWasReceived() : Boolean
      {
         return this.var_2125;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1336;
      }
      
      public function set objectId(param1:int) : void
      {
         this.var_358 = param1;
      }
      
      public function set status(param1:int) : void
      {
         this.var_389 = param1;
      }
      
      public function set shareId(param1:String) : void
      {
         this._shareId = param1;
      }
      
      public function set firstClickUserName(param1:String) : void
      {
         this.var_2124 = param1;
      }
      
      public function set giftWasReceived(param1:Boolean) : void
      {
         this.var_2125 = param1;
      }
      
      public function set itemCategory(param1:int) : void
      {
         this.var_1336 = param1;
      }
      
      public function get campaignID() : String
      {
         return this.var_178;
      }
      
      public function set campaignID(param1:String) : void
      {
         this.var_178 = param1;
      }
   }
}
