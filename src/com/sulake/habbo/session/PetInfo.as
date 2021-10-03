package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1618:int;
      
      private var var_1333:int;
      
      private var var_2583:int;
      
      private var var_2266:int;
      
      private var var_2582:int;
      
      private var _energy:int;
      
      private var var_2580:int;
      
      private var _nutrition:int;
      
      private var var_2581:int;
      
      private var var_2271:int;
      
      private var _ownerName:String;
      
      private var var_2267:int;
      
      private var var_471:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1618;
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
      
      public function get ownerId() : int
      {
         return this.var_2271;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get respect() : int
      {
         return this.var_2267;
      }
      
      public function get age() : int
      {
         return this.var_471;
      }
      
      public function set petId(param1:int) : void
      {
         this.var_1618 = param1;
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
      
      public function set ownerId(param1:int) : void
      {
         this.var_2271 = param1;
      }
      
      public function set ownerName(param1:String) : void
      {
         this._ownerName = param1;
      }
      
      public function set respect(param1:int) : void
      {
         this.var_2267 = param1;
      }
      
      public function set age(param1:int) : void
      {
         this.var_471 = param1;
      }
   }
}
