package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_688:String = "";
      
      public static const const_557:int = 0;
      
      public static const const_577:int = 255;
      
      public static const const_881:Boolean = false;
      
      public static const const_569:int = 0;
      
      public static const const_496:int = 0;
      
      public static const const_382:int = 0;
      
      public static const const_1029:int = 1;
      
      public static const const_1003:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2098:String = "";
      
      private var var_1835:int = 0;
      
      private var var_2097:int = 255;
      
      private var var_2096:Boolean = false;
      
      private var var_2100:int = 0;
      
      private var var_2101:int = 0;
      
      private var var_2099:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2098 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2098;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1835 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1835;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2097 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2097;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2096 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2096;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2100 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2100;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2101 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2101;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2099 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2099;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
