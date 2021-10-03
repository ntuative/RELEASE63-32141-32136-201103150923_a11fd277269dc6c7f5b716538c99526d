package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1712:String = "";
      
      private var var_1545:String = "";
      
      private var var_2251:String = "";
      
      private var var_2250:Number = 0;
      
      private var var_2252:Number = 0;
      
      private var var_2245:Number = 0;
      
      private var var_2249:Number = 0;
      
      private var var_2247:Boolean = false;
      
      private var var_2246:Boolean = false;
      
      private var var_2248:Boolean = false;
      
      private var var_2244:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1712 = param2;
         this.var_1545 = param3;
         this.var_2251 = param4;
         this.var_2250 = param5;
         this.var_2252 = param6;
         this.var_2245 = param7;
         this.var_2249 = param8;
         this.var_2247 = param9;
         this.var_2246 = param10;
         this.var_2248 = param11;
         this.var_2244 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1712;
      }
      
      public function get canvasId() : String
      {
         return this.var_1545;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2251;
      }
      
      public function get screenX() : Number
      {
         return this.var_2250;
      }
      
      public function get screenY() : Number
      {
         return this.var_2252;
      }
      
      public function get localX() : Number
      {
         return this.var_2245;
      }
      
      public function get localY() : Number
      {
         return this.var_2249;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2247;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2246;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2248;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2244;
      }
   }
}
