package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1619:String = "WN_CRETAE";
      
      public static const const_1520:String = "WN_CREATED";
      
      public static const const_1208:String = "WN_DESTROY";
      
      public static const const_1063:String = "WN_DESTROYED";
      
      public static const const_1005:String = "WN_OPEN";
      
      public static const const_1187:String = "WN_OPENED";
      
      public static const const_1077:String = "WN_CLOSE";
      
      public static const const_1118:String = "WN_CLOSED";
      
      public static const const_1090:String = "WN_FOCUS";
      
      public static const const_1162:String = "WN_FOCUSED";
      
      public static const const_1236:String = "WN_UNFOCUS";
      
      public static const const_1064:String = "WN_UNFOCUSED";
      
      public static const const_1146:String = "WN_ACTIVATE";
      
      public static const const_370:String = "WN_ACTVATED";
      
      public static const const_1126:String = "WN_DEACTIVATE";
      
      public static const const_1237:String = "WN_DEACTIVATED";
      
      public static const const_576:String = "WN_SELECT";
      
      public static const const_345:String = "WN_SELECTED";
      
      public static const const_632:String = "WN_UNSELECT";
      
      public static const const_905:String = "WN_UNSELECTED";
      
      public static const const_1015:String = "WN_LOCK";
      
      public static const const_1018:String = "WN_LOCKED";
      
      public static const const_1230:String = "WN_UNLOCK";
      
      public static const const_1032:String = "WN_UNLOCKED";
      
      public static const const_1219:String = "WN_ENABLE";
      
      public static const const_729:String = "WN_ENABLED";
      
      public static const const_1214:String = "WN_DISABLE";
      
      public static const const_888:String = "WN_DISABLED";
      
      public static const const_797:String = "WN_RESIZE";
      
      public static const const_183:String = "WN_RESIZED";
      
      public static const const_1131:String = "WN_RELOCATE";
      
      public static const const_439:String = "WN_RELOCATED";
      
      public static const const_1120:String = "WN_MINIMIZE";
      
      public static const const_1038:String = "WN_MINIMIZED";
      
      public static const const_1019:String = "WN_MAXIMIZE";
      
      public static const const_1068:String = "WN_MAXIMIZED";
      
      public static const const_1134:String = "WN_RESTORE";
      
      public static const const_1155:String = "WN_RESTORED";
      
      public static const const_351:String = "WN_CHILD_ADDED";
      
      public static const const_685:String = "WN_CHILD_REMOVED";
      
      public static const const_276:String = "WN_CHILD_RESIZED";
      
      public static const const_310:String = "WN_CHILD_RELOCATED";
      
      public static const WINDOW_NOTIFY_CHILD_ACTIVATED:String = "WN_CHILD_ACTIVATED";
      
      public static const const_549:String = "WN_PARENT_ADDED";
      
      public static const const_1173:String = "WN_PARENT_REMOVED";
      
      public static const const_505:String = "WN_PARENT_RESIZED";
      
      public static const const_1023:String = "WN_PARENT_RELOCATED";
      
      public static const const_668:String = "WN_PARENT_ACTIVATED";
      
      public static const const_532:String = "WN_STATE_UPDATED";
      
      public static const const_535:String = "WN_STYLE_UPDATED";
      
      public static const const_431:String = "WN_PARAM_UPDATED";
      
      public static const UNKNOWN:String = "UNKNOWN";
      
      private static const POOL:Array = [];
       
      
      private var var_1741:Boolean;
      
      public function WindowNotifyEvent()
      {
         super("",null,null);
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowNotifyEvent
      {
         var _loc5_:WindowNotifyEvent = false ? POOL.pop() : new WindowNotifyEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_666 = param3;
         _loc5_.var_2037 = param4;
         _loc5_.var_1741 = false;
         return _loc5_;
      }
      
      public function recycle() : void
      {
         if(this.var_1741)
         {
            throw new Error("Event already recycled!");
         }
         _type = null;
         var_666 = null;
         _window = null;
         this.var_1741 = true;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(type,_window,var_666,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
