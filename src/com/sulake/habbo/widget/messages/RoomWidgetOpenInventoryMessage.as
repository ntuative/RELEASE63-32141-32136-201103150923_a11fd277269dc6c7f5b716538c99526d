package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_795:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1197:String = "inventory_effects";
      
      public static const const_1229:String = "inventory_badges";
      
      public static const const_1556:String = "inventory_clothes";
      
      public static const const_1500:String = "inventory_furniture";
       
      
      private var var_2713:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_795);
         this.var_2713 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2713;
      }
   }
}
