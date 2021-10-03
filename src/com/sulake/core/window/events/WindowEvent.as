package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1660:String = "WE_CREATE";
      
      public static const const_1581:String = "WE_CREATED";
      
      public static const const_1485:String = "WE_DESTROY";
      
      public static const const_300:String = "WE_DESTROYED";
      
      public static const const_1465:String = "WE_OPEN";
      
      public static const const_1572:String = "WE_OPENED";
      
      public static const const_1473:String = "WE_CLOSE";
      
      public static const const_1458:String = "WE_CLOSED";
      
      public static const const_1668:String = "WE_FOCUS";
      
      public static const const_326:String = "WE_FOCUSED";
      
      public static const const_1615:String = "WE_UNFOCUS";
      
      public static const const_1455:String = "WE_UNFOCUSED";
      
      public static const const_1613:String = "WE_ACTIVATE";
      
      public static const const_1665:String = "WE_ACTIVATED";
      
      public static const const_1621:String = "WE_DEACTIVATE";
      
      public static const const_626:String = "WE_DEACTIVATED";
      
      public static const const_499:String = "WE_SELECT";
      
      public static const const_64:String = "WE_SELECTED";
      
      public static const const_669:String = "WE_UNSELECT";
      
      public static const const_771:String = "WE_UNSELECTED";
      
      public static const const_1852:String = "WE_ATTACH";
      
      public static const const_1897:String = "WE_ATTACHED";
      
      public static const const_1959:String = "WE_DETACH";
      
      public static const const_1885:String = "WE_DETACHED";
      
      public static const const_1537:String = "WE_LOCK";
      
      public static const const_1649:String = "WE_LOCKED";
      
      public static const const_1594:String = "WE_UNLOCK";
      
      public static const const_1434:String = "WE_UNLOCKED";
      
      public static const const_707:String = "WE_ENABLE";
      
      public static const const_304:String = "WE_ENABLED";
      
      public static const const_799:String = "WE_DISABLE";
      
      public static const const_259:String = "WE_DISABLED";
      
      public static const const_1478:String = "WE_RELOCATE";
      
      public static const const_385:String = "WE_RELOCATED";
      
      public static const const_1553:String = "WE_RESIZE";
      
      public static const const_50:String = "WE_RESIZED";
      
      public static const const_1438:String = "WE_MINIMIZE";
      
      public static const const_1617:String = "WE_MINIMIZED";
      
      public static const const_1565:String = "WE_MAXIMIZE";
      
      public static const const_1453:String = "WE_MAXIMIZED";
      
      public static const const_1490:String = "WE_RESTORE";
      
      public static const const_1439:String = "WE_RESTORED";
      
      public static const const_1853:String = "WE_ARRANGE";
      
      public static const const_1838:String = "WE_ARRANGED";
      
      public static const const_106:String = "WE_UPDATE";
      
      public static const const_1954:String = "WE_UPDATED";
      
      public static const const_1891:String = "WE_CHILD_RELOCATE";
      
      public static const const_450:String = "WE_CHILD_RELOCATED";
      
      public static const const_1847:String = "WE_CHILD_RESIZE";
      
      public static const const_284:String = "WE_CHILD_RESIZED";
      
      public static const const_1900:String = "WE_CHILD_REMOVE";
      
      public static const const_466:String = "WE_CHILD_REMOVED";
      
      public static const const_1811:String = "WE_PARENT_RELOCATE";
      
      public static const const_1876:String = "WE_PARENT_RELOCATED";
      
      public static const const_1949:String = "WE_PARENT_RESIZE";
      
      public static const const_1644:String = "WE_PARENT_RESIZED";
      
      public static const const_180:String = "WE_OK";
      
      public static const const_633:String = "WE_CANCEL";
      
      public static const const_105:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_438:String = "WE_SCROLL";
      
      public static const const_168:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_666:IWindow;
      
      protected var var_2036:Boolean;
      
      protected var var_2037:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_666 = param3;
         this.var_2036 = false;
         this.var_2037 = param5;
         super(param1,param4);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_666;
      }
      
      override public function get cancelable() : Boolean
      {
         return this.var_2037;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,this.cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_2036 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_2036;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
