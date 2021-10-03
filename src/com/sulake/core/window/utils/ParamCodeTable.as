package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_193;
         param1["bound_to_parent_rect"] = const_95;
         param1["child_window"] = const_996;
         param1["embedded_controller"] = const_1008;
         param1["resize_to_accommodate_children"] = const_69;
         param1["input_event_processor"] = const_29;
         param1["internal_event_handling"] = const_828;
         param1["mouse_dragging_target"] = const_269;
         param1["mouse_dragging_trigger"] = const_338;
         param1["mouse_scaling_target"] = const_318;
         param1["mouse_scaling_trigger"] = const_426;
         param1["horizontal_mouse_scaling_trigger"] = const_242;
         param1["vertical_mouse_scaling_trigger"] = const_247;
         param1["observe_parent_input_events"] = const_1202;
         param1["optimize_region_to_layout_size"] = const_458;
         param1["parent_window"] = const_1171;
         param1["relative_horizontal_scale_center"] = const_187;
         param1["relative_horizontal_scale_fixed"] = const_154;
         param1["relative_horizontal_scale_move"] = const_378;
         param1["relative_horizontal_scale_strech"] = const_371;
         param1["relative_scale_center"] = const_1097;
         param1["relative_scale_fixed"] = const_857;
         param1["relative_scale_move"] = const_1203;
         param1["relative_scale_strech"] = const_1007;
         param1["relative_vertical_scale_center"] = const_196;
         param1["relative_vertical_scale_fixed"] = const_136;
         param1["relative_vertical_scale_move"] = const_358;
         param1["relative_vertical_scale_strech"] = const_321;
         param1["on_resize_align_left"] = const_817;
         param1["on_resize_align_right"] = const_449;
         param1["on_resize_align_center"] = const_521;
         param1["on_resize_align_top"] = const_679;
         param1["on_resize_align_bottom"] = const_460;
         param1["on_resize_align_middle"] = const_487;
         param1["on_accommodate_align_left"] = const_1048;
         param1["on_accommodate_align_right"] = const_575;
         param1["on_accommodate_align_center"] = const_662;
         param1["on_accommodate_align_top"] = const_1025;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_790;
         param1["route_input_events_to_parent"] = const_586;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1232;
         param1["scalable_with_mouse"] = const_1028;
         param1["reflect_horizontal_resize_to_parent"] = const_497;
         param1["reflect_vertical_resize_to_parent"] = const_476;
         param1["reflect_resize_to_parent"] = const_295;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1099;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
