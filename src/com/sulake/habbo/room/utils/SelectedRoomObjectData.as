package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var _id:int = 0;
      
      private var _category:int = 0;
      
      private var var_2720:String = "";
      
      private var var_91:Vector3d = null;
      
      private var var_348:Vector3d = null;
      
      private var var_2150:int = 0;
      
      private var var_2721:String = null;
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         this._id = param1;
         this._category = param2;
         this.var_2720 = param3;
         this.var_91 = new Vector3d();
         this.var_91.assign(param4);
         this.var_348 = new Vector3d();
         this.var_348.assign(param5);
         this.var_2150 = param6;
         this.var_2721 = param7;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get operation() : String
      {
         return this.var_2720;
      }
      
      public function get loc() : Vector3d
      {
         return this.var_91;
      }
      
      public function get dir() : Vector3d
      {
         return this.var_348;
      }
      
      public function get typeId() : int
      {
         return this.var_2150;
      }
      
      public function get instanceData() : String
      {
         return this.var_2721;
      }
      
      public function dispose() : void
      {
         this.var_91 = null;
         this.var_348 = null;
      }
   }
}
