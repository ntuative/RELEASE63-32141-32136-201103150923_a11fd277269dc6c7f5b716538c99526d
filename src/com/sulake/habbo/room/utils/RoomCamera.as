package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_985:int = 3;
       
      
      private var var_2730:int = -1;
      
      private var var_2729:int = -2;
      
      private var var_379:Vector3d = null;
      
      private var var_444:Vector3d = null;
      
      private var var_2728:Boolean = false;
      
      private var var_2725:Boolean = false;
      
      private var var_2726:Boolean = false;
      
      private var var_2732:Boolean = false;
      
      private var var_2727:int = 0;
      
      private var var_2724:int = 0;
      
      private var var_2733:int = 0;
      
      private var var_2731:int = 0;
      
      private var var_1498:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_444;
      }
      
      public function get targetId() : int
      {
         return this.var_2730;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2729;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2728;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2725;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2726;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2732;
      }
      
      public function get screenWd() : int
      {
         return this.var_2727;
      }
      
      public function get screenHt() : int
      {
         return this.var_2724;
      }
      
      public function get roomWd() : int
      {
         return this.var_2733;
      }
      
      public function get roomHt() : int
      {
         return this.var_2731;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2730 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2729 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2728 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2725 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2726 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2732 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2727 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2724 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2733 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2731 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_379 == null)
         {
            this.var_379 = new Vector3d();
         }
         if(this.var_379.x != param1.x || this.var_379.y != param1.y || this.var_379.z != param1.z)
         {
            this.var_379.assign(param1);
            this.var_1498 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_379 = null;
         this.var_444 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_444 != null)
         {
            return;
         }
         this.var_444 = new Vector3d();
         this.var_444.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_379 != null && this.var_444 != null)
         {
            ++this.var_1498;
            _loc4_ = Vector3d.dif(this.var_379,this.var_444);
            if(_loc4_.length <= param2)
            {
               this.var_444 = this.var_379;
               this.var_379 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_985 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1498 <= const_985)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_444 = Vector3d.sum(this.var_444,_loc4_);
            }
         }
      }
   }
}
