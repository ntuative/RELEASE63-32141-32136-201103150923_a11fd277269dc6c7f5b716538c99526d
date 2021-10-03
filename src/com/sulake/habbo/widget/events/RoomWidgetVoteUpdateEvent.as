package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_138:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_134:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1171:String;
      
      private var var_1446:Array;
      
      private var var_1074:Array;
      
      private var var_1924:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1171 = param2;
         this.var_1446 = param3;
         this.var_1074 = param4;
         if(this.var_1074 == null)
         {
            this.var_1074 = [];
         }
         this.var_1924 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1171;
      }
      
      public function get choices() : Array
      {
         return this.var_1446.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1074.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_1924;
      }
   }
}
