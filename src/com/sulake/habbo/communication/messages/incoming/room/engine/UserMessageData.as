package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1092:String = "M";
      
      public static const const_1493:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_153:Number = 0;
      
      private var var_152:Number = 0;
      
      private var var_348:int = 0;
      
      private var _name:String = "";
      
      private var _userType:int = 0;
      
      private var var_919:String = "";
      
      private var _figure:String = "";
      
      private var var_2438:String = "";
      
      private var var_2190:int;
      
      private var var_2443:int = 0;
      
      private var var_2441:String = "";
      
      private var var_2440:int = 0;
      
      private var var_2439:int = 0;
      
      private var var_2442:String = "";
      
      private var var_182:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_182 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_182)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_153;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_182)
         {
            this.var_153 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_152;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_182)
         {
            this.var_152 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_348;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_182)
         {
            this.var_348 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_182)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this._userType;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_182)
         {
            this._userType = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_919;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_182)
         {
            this.var_919 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_182)
         {
            this._figure = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2438;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_182)
         {
            this.var_2438 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2190;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_182)
         {
            this.var_2190 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2443;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_182)
         {
            this.var_2443 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2441;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_182)
         {
            this.var_2441 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2440;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_182)
         {
            this.var_2440 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2439;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_182)
         {
            this.var_2439 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2442;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_182)
         {
            this.var_2442 = param1;
         }
      }
   }
}
