package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_28:String = "AssetLoaderEventComplete";
      
      public static const const_1191:String = "AssetLoaderEventProgress";
      
      public static const const_1010:String = "AssetLoaderEventUnload";
      
      public static const const_1112:String = "AssetLoaderEventStatus";
      
      public static const const_48:String = "AssetLoaderEventError";
      
      public static const const_1204:String = "AssetLoaderEventOpen";
       
      
      private var var_389:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         this.var_389 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_389;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,this.var_389);
      }
      
      override public function toString() : String
      {
         return formatToString("AssetLoaderEvent","type","status");
      }
   }
}
