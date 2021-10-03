package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1367:int = 2;
      
      private static const const_1366:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_299:Array;
      
      private var var_1199:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_299 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1367)
         {
            this.var_299 = new Array();
            this.var_299.push(const_1366);
            this.var_1199 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_1199 > 0)
         {
            --this.var_1199;
         }
         if(this.var_1199 == 0)
         {
            if(this.var_299.length > 0)
            {
               super.setAnimation(this.var_299.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
