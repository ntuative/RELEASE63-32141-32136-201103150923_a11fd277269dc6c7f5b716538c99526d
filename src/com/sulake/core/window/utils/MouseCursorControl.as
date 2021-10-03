package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_31;
      
      private static var var_138:Stage;
      
      private static var var_310:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_788:Boolean = true;
      
      private static var var_122:DisplayObject;
      
      private static var var_1481:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_138 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_122)
            {
               var_138.removeChild(var_122);
               var_138.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_138.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_138.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_138.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_788 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_310;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_310 = param1;
         if(var_310)
         {
            if(var_122)
            {
               var_122.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_122)
         {
            var_122.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_788)
         {
            _loc1_ = var_1481[_type];
            if(_loc1_)
            {
               if(var_122)
               {
                  var_138.removeChild(var_122);
               }
               else
               {
                  var_138.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_138.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_138.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_138.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_122 = _loc1_;
               var_138.addChild(var_122);
            }
            else
            {
               if(var_122)
               {
                  var_138.removeChild(var_122);
                  var_138.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_138.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_138.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_138.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_122 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_31:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_319:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_1432:
                  case MouseCursorType.const_205:
                  case MouseCursorType.const_1585:
                  case MouseCursorType.const_1601:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_788 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1481[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_122)
         {
            var_122.x = param1.stageX - 2;
            var_122.y = param1.stageY;
            if(_type == MouseCursorType.const_31)
            {
               var_310 = false;
               Mouse.show();
            }
            else
            {
               var_310 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_122 && _type != MouseCursorType.const_31)
         {
            Mouse.hide();
            var_310 = false;
         }
      }
   }
}
