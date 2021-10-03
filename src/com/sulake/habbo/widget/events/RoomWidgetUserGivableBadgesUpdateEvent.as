package com.sulake.habbo.widget.events
{
   public class RoomWidgetUserGivableBadgesUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_634:String = "RWUGBUE_USER_GIVABLE_BADGES";
       
      
      private var var_244:Array;
      
      public function RoomWidgetUserGivableBadgesUpdateEvent(param1:Array, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_244 = [];
         super(const_634,param2,param3);
         this.var_244 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_244;
      }
   }
}
