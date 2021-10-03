package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_703;
         param1["bitmap"] = const_863;
         param1["border"] = const_908;
         param1["border_notify"] = const_1595;
         param1["button"] = const_432;
         param1["button_thick"] = const_744;
         param1["button_icon"] = const_1390;
         param1["button_group_left"] = const_690;
         param1["button_group_center"] = const_858;
         param1["button_group_right"] = const_829;
         param1["canvas"] = const_716;
         param1["checkbox"] = const_730;
         param1["closebutton"] = const_1002;
         param1["container"] = const_364;
         param1["container_button"] = const_903;
         param1["display_object_wrapper"] = const_896;
         param1["dropmenu"] = const_436;
         param1["dropmenu_item"] = const_468;
         param1["frame"] = const_342;
         param1["frame_notify"] = const_1635;
         param1["header"] = const_832;
         param1["html"] = const_1130;
         param1["icon"] = const_1076;
         param1["itemgrid"] = const_1086;
         param1["itemgrid_horizontal"] = const_448;
         param1["itemgrid_vertical"] = const_906;
         param1["itemlist"] = const_1194;
         param1["itemlist_horizontal"] = const_392;
         param1["itemlist_vertical"] = const_340;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1492;
         param1["menu"] = const_1624;
         param1["menu_item"] = const_1511;
         param1["submenu"] = const_1039;
         param1["minimizebox"] = const_1557;
         param1["notify"] = const_1523;
         param1["null"] = const_806;
         param1["password"] = const_719;
         param1["radiobutton"] = const_643;
         param1["region"] = const_495;
         param1["restorebox"] = const_1623;
         param1["scaler"] = const_917;
         param1["scaler_horizontal"] = const_1524;
         param1["scaler_vertical"] = const_1531;
         param1["scrollbar_horizontal"] = const_502;
         param1["scrollbar_vertical"] = const_811;
         param1["scrollbar_slider_button_up"] = const_1133;
         param1["scrollbar_slider_button_down"] = const_1159;
         param1["scrollbar_slider_button_left"] = const_1021;
         param1["scrollbar_slider_button_right"] = const_1195;
         param1["scrollbar_slider_bar_horizontal"] = const_1045;
         param1["scrollbar_slider_bar_vertical"] = const_1151;
         param1["scrollbar_slider_track_horizontal"] = const_1149;
         param1["scrollbar_slider_track_vertical"] = const_1006;
         param1["scrollable_itemlist"] = const_1544;
         param1["scrollable_itemlist_vertical"] = const_474;
         param1["scrollable_itemlist_horizontal"] = const_1072;
         param1["selector"] = const_680;
         param1["selector_list"] = const_623;
         param1["submenu"] = const_1039;
         param1["tab_button"] = const_511;
         param1["tab_container_button"] = const_1059;
         param1["tab_context"] = const_563;
         param1["tab_content"] = const_1095;
         param1["tab_selector"] = const_756;
         param1["text"] = const_459;
         param1["input"] = const_861;
         param1["toolbar"] = const_1671;
         param1["tooltip"] = const_366;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
