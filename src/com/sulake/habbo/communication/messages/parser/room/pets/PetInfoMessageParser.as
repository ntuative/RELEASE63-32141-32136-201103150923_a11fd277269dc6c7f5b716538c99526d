package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1618:int;
      
      private var _name:String;
      
      private var var_1333:int;
      
      private var var_2265:int;
      
      private var var_2266:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var _figure:String;
      
      private var var_2270:int;
      
      private var var_2269:int;
      
      private var var_2268:int;
      
      private var var_2267:int;
      
      private var var_2271:int;
      
      private var _ownerName:String;
      
      private var var_471:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1618;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1333;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2265;
      }
      
      public function get experience() : int
      {
         return this.var_2266;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2270;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2269;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2268;
      }
      
      public function get respect() : int
      {
         return this.var_2267;
      }
      
      public function get ownerId() : int
      {
         return this.var_2271;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_471;
      }
      
      public function flush() : Boolean
      {
         this.var_1618 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1618 = param1.readInteger();
         this._name = param1.readString();
         this.var_1333 = param1.readInteger();
         this.var_2265 = param1.readInteger();
         this.var_2266 = param1.readInteger();
         this.var_2270 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2269 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2268 = param1.readInteger();
         this._figure = param1.readString();
         this.var_2267 = param1.readInteger();
         this.var_2271 = param1.readInteger();
         this.var_471 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
