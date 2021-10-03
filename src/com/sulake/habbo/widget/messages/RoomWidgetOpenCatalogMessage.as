package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_400:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_1116:String = "RWOCM_CLUB_MAIN";
      
      public static const const_1105:String = "RWOCM_PIXELS";
      
      public static const const_1193:String = "RWOCM_CREDITS";
       
      
      private var var_2206:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_400);
         this.var_2206 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2206;
      }
   }
}
