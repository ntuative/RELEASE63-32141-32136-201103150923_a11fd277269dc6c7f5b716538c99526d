package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_240:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2664:int = 0;
      
      private var var_2663:int = 0;
      
      private var var_2661:int = 0;
      
      private var var_2662:Boolean = false;
      
      private var var_2365:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_240,param6,param7);
         this.var_2664 = param1;
         this.var_2663 = param2;
         this.var_2661 = param3;
         this.var_2662 = param4;
         this.var_2365 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2664;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2663;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2661;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2662;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2365;
      }
   }
}
