package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1255:int = 80;
       
      
      private var var_465:Map;
      
      private var var_849:String = "";
      
      private var var_1299:Array;
      
      public function UserRegistry()
      {
         this.var_465 = new Map();
         this.var_1299 = new Array();
         super();
      }
      
      public function getRegistry() : Map
      {
         return this.var_465;
      }
      
      public function registerRoom(param1:String) : void
      {
         this.var_849 = param1;
         if(this.var_849 != "")
         {
            this.addRoomNameForMissing();
         }
      }
      
      public function unregisterRoom() : void
      {
         this.var_849 = "";
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(this.var_465.getValue(param1) != null)
         {
            this.var_465.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,this.var_849);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && this.var_849 == "")
         {
            this.var_1299.push(param1);
         }
         this.var_465.add(param1,_loc4_);
         this.purgeUserIndex();
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(this.var_465.length > const_1255)
         {
            _loc1_ = this.var_465.getKey(0);
            this.var_465.remove(_loc1_);
         }
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(this.var_1299.length > 0)
         {
            _loc1_ = this.var_465.getValue(this.var_1299.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = this.var_849;
            }
         }
      }
   }
}
