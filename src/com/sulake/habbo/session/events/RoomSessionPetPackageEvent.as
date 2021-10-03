package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_473:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_572:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var var_358:int = -1;
      
      private var var_1073:int = -1;
      
      private var var_1596:int = -1;
      
      private var _color:String = "";
      
      private var var_1536:int = 0;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:int, param5:int, param6:String, param7:int, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param8,param9);
         this.var_358 = param3;
         this.var_1073 = param4;
         this.var_1596 = param5;
         this._color = param6;
         this.var_1536 = param7;
      }
      
      public function get objectId() : int
      {
         return this.var_358;
      }
      
      public function get petType() : int
      {
         return this.var_1073;
      }
      
      public function get breed() : int
      {
         return this.var_1596;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1536;
      }
   }
}
