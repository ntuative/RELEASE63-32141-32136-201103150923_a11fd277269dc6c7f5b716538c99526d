package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowDisposeEvent extends WindowEvent
   {
      
      public static const const_765:String = "WINDOW_DISPOSE_EVENT";
      
      private static const POOL:Array = [];
       
      
      private var var_1741:Boolean;
      
      public function WindowDisposeEvent()
      {
         super(const_765,null,null);
      }
      
      public static function allocate(param1:IWindow) : WindowDisposeEvent
      {
         var _loc2_:WindowDisposeEvent = false ? POOL.pop() : new WindowDisposeEvent();
         _loc2_._window = param1;
         _loc2_.var_1741 = false;
         return _loc2_;
      }
      
      public function recycle() : void
      {
         if(this.var_1741)
         {
            throw new Error("Event already recycled!");
         }
         var_666 = null;
         _window = null;
         this.var_1741 = true;
         POOL.push(this);
      }
      
      override public function clone() : Event
      {
         return allocate(window);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowDisposeEvent");
      }
   }
}
