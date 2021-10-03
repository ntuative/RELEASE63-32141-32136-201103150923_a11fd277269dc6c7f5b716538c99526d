package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1697:String;
      
      private var var_2412:int;
      
      private var _password:String;
      
      private var var_1352:int;
      
      private var var_2408:int;
      
      private var var_828:Array;
      
      private var var_2409:Array;
      
      private var var_2413:Boolean;
      
      private var var_2414:Boolean;
      
      private var var_2410:Boolean;
      
      private var var_2411:Boolean;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2413;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2413 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2414;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2414 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2410;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2410 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2411;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2411 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1697;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1697 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2412;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2412 = param1;
      }
      
      public function get password() : String
      {
         return this._password;
      }
      
      public function set password(param1:String) : void
      {
         this._password = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1352;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1352 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2408;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2408 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_828;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_828 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2409;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2409 = param1;
      }
   }
}
