package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_112:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_137:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_1107:int = 2;
      
      public static const const_1128:int = 3;
      
      public static const const_1391:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1748:String = "";
      
      private var var_2190:int;
      
      private var var_2443:int = 0;
      
      private var var_2439:int = 0;
      
      private var _figure:String = "";
      
      private var var_46:BitmapData = null;
      
      private var var_244:Array;
      
      private var var_1914:Array;
      
      private var var_1444:int = 0;
      
      private var var_2694:String = "";
      
      private var var_2692:int = 0;
      
      private var var_2693:int = 0;
      
      private var var_1553:Boolean = false;
      
      private var var_1746:String = "";
      
      private var var_2753:Boolean = false;
      
      private var var_2751:Boolean = true;
      
      private var var_1193:int = 0;
      
      private var var_2758:Boolean = false;
      
      private var var_2755:Boolean = false;
      
      private var var_2757:Boolean = false;
      
      private var var_2754:Boolean = false;
      
      private var var_2756:Boolean = false;
      
      private var var_2752:Boolean = false;
      
      private var var_2759:int = 0;
      
      private var var_1552:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_244 = [];
         this.var_1914 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1748 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1748;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2190 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2190;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2443 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2443;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2439 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2439;
      }
      
      public function set figure(param1:String) : void
      {
         this._figure = param1;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_46 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_244 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_244;
      }
      
      public function get givableBadges() : Array
      {
         return this.var_1914;
      }
      
      public function set givableBadges(param1:Array) : void
      {
         this.var_1914 = param1;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1444 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1444;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2694 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2694;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2753 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2753;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1193 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1193;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2758 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2758;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2755 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2755;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2757 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2757;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2754 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2754;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2756 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2756;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2752 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2752;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2759 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2759;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2751 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2751;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1552 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1552;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2692 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2692;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2693 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2693;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1553 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1553;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1746 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1746;
      }
   }
}
