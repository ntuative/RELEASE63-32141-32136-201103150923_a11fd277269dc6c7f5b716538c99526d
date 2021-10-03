package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_882:Array;
      
      private var var_2072:String;
      
      private var var_2071:String;
      
      private var var_2073:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_882 = param1;
         this.var_2072 = param2;
         this.var_2071 = param3;
         this.var_2073 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_882;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2072;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2071;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2073;
      }
   }
}
