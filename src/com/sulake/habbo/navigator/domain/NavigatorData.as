package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1705:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_193:MsgWithRequestId;
      
      private var var_565:RoomEventData;
      
      private var var_2222:Boolean;
      
      private var var_2225:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      private var var_2048:int;
      
      private var var_242:GuestRoomData;
      
      private var var_860:PublicRoomShortData;
      
      private var var_2227:int;
      
      private var var_2224:Boolean;
      
      private var var_2223:int;
      
      private var var_2217:Boolean;
      
      private var var_1599:int;
      
      private var var_2226:Boolean;
      
      private var var_1322:Array;
      
      private var var_1321:Array;
      
      private var var_2218:int;
      
      private var var_1320:int;
      
      private var _favouriteIds:Dictionary;
      
      private var var_1075:Boolean;
      
      private var var_2219:int;
      
      private var var_2220:Boolean;
      
      private var var_2221:int = 0;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         this.var_1322 = new Array();
         this.var_1321 = new Array();
         this._favouriteIds = new Dictionary();
         super();
         this._navigator = param1;
      }
      
      public function get method_4() : Boolean
      {
         return this.var_242 != null && !this._currentRoomOwner;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return this.var_242 != null && this._currentRoomOwner;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         this.var_860 = null;
         this.var_242 = null;
         this._currentRoomOwner = false;
         if(param1.guestRoom)
         {
            this._currentRoomOwner = param1.owner;
         }
         else
         {
            this.var_860 = param1.publicSpace;
            this.var_565 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(this.var_565 != null)
         {
            this.var_565.dispose();
            this.var_565 = null;
         }
         if(this.var_860 != null)
         {
            this.var_860.dispose();
            this.var_860 = null;
         }
         if(this.var_242 != null)
         {
            this.var_242.dispose();
            this.var_242 = null;
         }
         this._currentRoomOwner = false;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(this.var_242 != null)
         {
            this.var_242.dispose();
         }
         this.var_242 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(this.var_565 != null)
         {
            this.var_565.dispose();
         }
         this.var_565 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return this.var_193 != null && this.var_193 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return this.var_193 != null && this.var_193 as GuestRoomSearchResultData != null;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return this.var_193 != null && this.var_193 as OfficialRoomsData != null;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         this.disposeCurrentMsg();
         this.var_193 = param1;
         this.var_1075 = false;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         this.disposeCurrentMsg();
         this.var_193 = param1;
         this.var_1075 = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         this.disposeCurrentMsg();
         this.var_193 = param1;
         this.var_1075 = false;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(this.var_193 == null)
         {
            return;
         }
         this.var_193.dispose();
         this.var_193 = null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return this.var_193 as GuestRoomSearchResultData;
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return this.var_193 as PopularRoomTagsData;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return this.var_193 as OfficialRoomsData;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return this.var_565;
      }
      
      public function get avatarId() : int
      {
         return this.var_2048;
      }
      
      public function get eventMod() : Boolean
      {
         return this.var_2222;
      }
      
      public function get roomPicker() : Boolean
      {
         return this.var_2225;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return this._currentRoomOwner;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return this.var_242;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return this.var_860;
      }
      
      public function get hcMember() : Boolean
      {
         return this.var_2224;
      }
      
      public function get createdFlatId() : int
      {
         return this.var_2223;
      }
      
      public function get homeRoomId() : int
      {
         return this.var_1599;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return this.var_2217;
      }
      
      public function get currentRoomRating() : int
      {
         return this.var_2219;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return this.var_2227;
      }
      
      public function get settingsReceived() : Boolean
      {
         return this.var_2226;
      }
      
      public function get adIndex() : int
      {
         return this.var_2221;
      }
      
      public function get currentRoomIsStaffPick() : Boolean
      {
         return this.var_2220;
      }
      
      public function set avatarId(param1:int) : void
      {
         this.var_2048 = param1;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         this.var_2223 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         this.var_2224 = param1;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         this.var_2222 = param1;
      }
      
      public function set roomPicker(param1:Boolean) : void
      {
         this.var_2225 = param1;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         this.var_2217 = param1;
      }
      
      public function set homeRoomId(param1:int) : void
      {
         this.var_1599 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         this.var_2219 = param1;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         this.var_2227 = param1;
      }
      
      public function set settingsReceived(param1:Boolean) : void
      {
         this.var_2226 = param1;
      }
      
      public function set adIndex(param1:int) : void
      {
         this.var_2221 = param1;
      }
      
      public function set currentRoomIsStaffPick(param1:Boolean) : void
      {
         this.var_2220 = param1;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         this.var_1322 = param1;
         this.var_1321 = new Array();
         for each(_loc2_ in this.var_1322)
         {
            if(_loc2_.visible)
            {
               this.var_1321.push(_loc2_);
            }
         }
      }
      
      public function get allCategories() : Array
      {
         return this.var_1322;
      }
      
      public function get visibleCategories() : Array
      {
         return this.var_1321;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2218 = param1.limit;
         this.var_1320 = param1.favouriteRoomIds.length;
         this._favouriteIds = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this._favouriteIds[_loc2_] = "yes";
         }
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         this._favouriteIds[param1] = !!param2 ? "yes" : null;
         this.var_1320 += !!param2 ? 1 : -1;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = this.var_242.flatId;
         return this._favouriteIds[_loc1_] != null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(this.var_242 == null)
         {
            return false;
         }
         var _loc1_:int = this.var_242.flatId;
         return this.var_1599 == _loc1_;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return this._favouriteIds[param1] != null;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return this.var_1320 >= this.var_2218;
      }
      
      public function startLoading() : void
      {
         this.var_1075 = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_1075;
      }
   }
}
