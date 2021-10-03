package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_963:int = 20;
      
      private static const const_602:int = 9;
      
      private static const ANIMATION_ID_ROLL:int = -1;
       
      
      private var var_299:Array;
      
      private var var_782:Boolean = false;
      
      public function FurnitureBottleVisualization()
      {
         this.var_299 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_782)
            {
               this.var_782 = true;
               this.var_299 = new Array();
               this.var_299.push(ANIMATION_ID_ROLL);
               return;
            }
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(this.var_782)
            {
               this.var_782 = false;
               this.var_299 = new Array();
               this.var_299.push(const_963);
               this.var_299.push(const_602 + param1);
               this.var_299.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(super.getLastFramePlayed(0))
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
