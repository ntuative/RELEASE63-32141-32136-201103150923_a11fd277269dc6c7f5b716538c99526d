package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1627:int;
      
      private var var_2275:int;
      
      private var var_1081:int;
      
      private var var_479:Number;
      
      private var var_2273:Boolean;
      
      private var var_2274:int;
      
      private var var_1628:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2275 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2274 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2273 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1081;
         if(this.var_1081 == 1)
         {
            this.var_479 = param1;
            this.var_1627 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_1081);
            this.var_479 = this.var_479 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2273 && param3 - this.var_1627 >= this.var_2275 && this.var_1628 < this.var_2274)
         {
            _loc5_ = 1000 / this.var_479;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1628;
            this.var_1627 = param3;
            this.var_1081 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
