package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_103:String = "RWPIUE_PET_INFO";
       
      
      private var var_1333:int;
      
      private var var_2583:int;
      
      private var var_2266:int;
      
      private var var_2582:int;
      
      private var _energy:int;
      
      private var var_2580:int;
      
      private var _nutrition:int;
      
      private var var_2581:int;
      
      private var var_767:int;
      
      private var _petRespect:int;
      
      private var var_471:int;
      
      private var _name:String;
      
      private var _id:int;
      
      private var var_46:BitmapData;
      
      private var var_1073:int;
      
      private var var_2714:int;
      
      private var var_2579:Boolean;
      
      private var var_2271:int;
      
      private var _ownerName:String;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var var_2238:int;
      
      public function RoomWidgetPetInfoUpdateEvent(param1:int, param2:int, param3:String, param4:int, param5:BitmapData, param6:Boolean, param7:int, param8:String, param9:int, param10:Boolean = false, param11:Boolean = false)
      {
         super(RoomWidgetPetInfoUpdateEvent.const_103,param10,param11);
         this.var_1073 = param1;
         this.var_2714 = param2;
         this._name = param3;
         this._id = param4;
         this.var_46 = param5;
         this.var_2579 = param6;
         this.var_2271 = param7;
         this._ownerName = param8;
         this.var_2238 = param9;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get image() : BitmapData
      {
         return this.var_46;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get petType() : int
      {
         return this.var_1073;
      }
      
      public function get petRace() : int
      {
         return this.var_2714;
      }
      
      public function get isOwnPet() : Boolean
      {
         return this.var_2579;
      }
      
      public function get ownerId() : int
      {
         return this.var_2271;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return this._canOwnerBeKicked;
      }
      
      public function get roomIndex() : int
      {
         return this.var_2238;
      }
      
      public function get age() : int
      {
         return this.var_471;
      }
      
      public function get level() : int
      {
         return this.var_1333;
      }
      
      public function get levelMax() : int
      {
         return this.var_2583;
      }
      
      public function get experience() : int
      {
         return this.var_2266;
      }
      
      public function get experienceMax() : int
      {
         return this.var_2582;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get energyMax() : int
      {
         return this.var_2580;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get nutritionMax() : int
      {
         return this.var_2581;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_767;
      }
      
      public function get petRespect() : int
      {
         return this._petRespect;
      }
      
      public function set level(param1:int) : void
      {
         this.var_1333 = param1;
      }
      
      public function set levelMax(param1:int) : void
      {
         this.var_2583 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         this.var_2266 = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         this.var_2582 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         this._energy = param1;
      }
      
      public function set energyMax(param1:int) : void
      {
         this.var_2580 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         this._nutrition = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         this.var_2581 = param1;
      }
      
      public function set petRespectLeft(param1:int) : void
      {
         this.var_767 = param1;
      }
      
      public function set canOwnerBeKicked(param1:Boolean) : void
      {
         this._canOwnerBeKicked = param1;
      }
      
      public function set petRespect(param1:int) : void
      {
         this._petRespect = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_471 = param1;
      }
   }
}
