package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2130:Number = 0.0;
      
      private var var_2128:Number = 0.0;
      
      private var var_2129:Number = 0.0;
      
      private var var_2127:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2130 = param1;
         this.var_2128 = param2;
         this.var_2129 = param3;
         this.var_2127 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2130;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2128;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2129;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2127;
      }
   }
}
