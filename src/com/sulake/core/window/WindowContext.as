package com.sulake.core.window
{
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.localization.ILocalizable;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.window.components.DesktopController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.SubstituteParentController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.graphics.IGraphicContextHost;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import com.sulake.core.window.services.IInternalWindowServices;
   import com.sulake.core.window.services.ServiceManager;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventProcessor;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.IWindowParser;
   import com.sulake.core.window.utils.MouseEventProcessor;
   import com.sulake.core.window.utils.MouseEventQueue;
   import com.sulake.core.window.utils.WindowParser;
   import com.sulake.core.window.utils.tablet.TabletEventProcessor;
   import com.sulake.core.window.utils.tablet.TabletEventQueue;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class WindowContext implements IWindowContext, IDisposable, IUpdateReceiver
   {
      
      public static const const_514:uint = 0;
      
      public static const const_1538:uint = 1;
      
      public static const const_1965:int = 0;
      
      public static const const_1752:int = 1;
      
      public static const const_1912:int = 2;
      
      public static const const_1919:int = 3;
      
      public static const const_1521:int = 4;
      
      public static const const_391:int = 5;
      
      public static var var_387:IEventQueue;
      
      private static var var_637:IEventProcessor;
      
      private static var var_1876:uint = const_514;
      
      private static var stage:Stage;
      
      private static var var_158:IWindowRenderer;
       
      
      private var var_2619:EventProcessorState;
      
      private var var_2620:IWindowContextStateListener;
      
      protected var _localization:ICoreLocalizationManager;
      
      protected var var_208:DisplayObjectContainer;
      
      protected var var_2854:Boolean = true;
      
      protected var var_1258:Error;
      
      protected var var_2040:int = -1;
      
      protected var var_1273:IInternalWindowServices;
      
      protected var var_1525:IWindowParser;
      
      protected var var_2803:IWindowFactory;
      
      protected var var_144:IDesktopWindow;
      
      protected var var_1524:SubstituteParentController;
      
      private var _disposed:Boolean = false;
      
      private var var_538:Boolean = false;
      
      private var var_2618:Boolean = false;
      
      private var _name:String;
      
      public function WindowContext(param1:String, param2:IWindowRenderer, param3:IWindowFactory, param4:ICoreLocalizationManager, param5:DisplayObjectContainer, param6:Rectangle, param7:IWindowContextStateListener)
      {
         super();
         this._name = param1;
         var_158 = param2;
         this._localization = param4;
         this.var_208 = param5;
         this.var_1273 = new ServiceManager(this,param5);
         this.var_2803 = param3;
         this.var_1525 = new WindowParser(this);
         this.var_2620 = param7;
         if(!stage)
         {
            if(this.var_208 is Stage)
            {
               stage = this.var_208 as Stage;
            }
            else if(this.var_208.stage)
            {
               stage = this.var_208.stage;
            }
         }
         Classes.init();
         if(param6 == null)
         {
            param6 = new Rectangle(0,0,800,600);
         }
         this.var_144 = new DesktopController("_CONTEXT_DESKTOP_" + this._name,this,param6);
         this.var_208.addChild(this.var_144.getDisplayObject());
         this.var_208.doubleClickEnabled = true;
         this.var_208.addEventListener(Event.RESIZE,this.stageResizedHandler);
         this.var_2619 = new EventProcessorState(var_158,this.var_144,this.var_144,null,this.var_2620);
         inputMode = const_514;
         this.var_1524 = new SubstituteParentController(this);
      }
      
      public static function get inputMode() : uint
      {
         return var_1876;
      }
      
      public static function set inputMode(param1:uint) : void
      {
         var value:uint = param1;
         if(var_387)
         {
            if(var_387 is IDisposable)
            {
               IDisposable(var_387).dispose();
            }
         }
         if(var_637)
         {
            if(var_637 is IDisposable)
            {
               IDisposable(var_637).dispose();
            }
         }
         switch(value)
         {
            case const_514:
               var_387 = new MouseEventQueue(stage);
               var_637 = new MouseEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            case const_1538:
               var_387 = new TabletEventQueue(stage);
               var_637 = new TabletEventProcessor();
               try
               {
               }
               catch(e:Error)
               {
               }
               break;
            default:
               inputMode = const_514;
               throw new Error("Unknown input mode " + value);
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
            this.var_208.removeEventListener(Event.RESIZE,this.stageResizedHandler);
            this.var_208.removeChild(IGraphicContextHost(this.var_144).getGraphicContext(true) as DisplayObject);
            this.var_144.destroy();
            this.var_144 = null;
            this.var_1524.destroy();
            this.var_1524 = null;
            if(this.var_1273 is IDisposable)
            {
               IDisposable(this.var_1273).dispose();
            }
            this.var_1273 = null;
            this.var_1525.dispose();
            this.var_1525 = null;
            var_158 = null;
         }
      }
      
      public function getLastError() : Error
      {
         return this.var_1258;
      }
      
      public function getLastErrorCode() : int
      {
         return this.var_2040;
      }
      
      public function handleError(param1:int, param2:Error) : void
      {
         this.var_1258 = param2;
         this.var_2040 = param1;
         if(this.var_2854)
         {
            throw param2;
         }
      }
      
      public function flushError() : void
      {
         this.var_1258 = null;
         this.var_2040 = -1;
      }
      
      public function getWindowServices() : IInternalWindowServices
      {
         return this.var_1273;
      }
      
      public function getWindowParser() : IWindowParser
      {
         return this.var_1525;
      }
      
      public function getWindowFactory() : IWindowFactory
      {
         return this.var_2803;
      }
      
      public function getDesktopWindow() : IDesktopWindow
      {
         return this.var_144;
      }
      
      public function findWindowByName(param1:String) : IWindow
      {
         return this.var_144.findChildByName(param1);
      }
      
      public function registerLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.registerListener(param1,param2 as ILocalizable);
      }
      
      public function removeLocalizationListener(param1:String, param2:IWindow) : void
      {
         this._localization.removeListener(param1,param2 as ILocalizable);
      }
      
      public function create(param1:String, param2:String, param3:uint, param4:uint, param5:uint, param6:Rectangle, param7:Function, param8:IWindow, param9:uint, param10:Array = null, param11:Array = null) : IWindow
      {
         var _loc12_:* = null;
         var _loc13_:Class = Classes.getWindowClassByType(param3);
         if(_loc13_ == null)
         {
            this.handleError(WindowContext.const_1521,new Error("Failed to solve implementation for window \"" + param1 + "\"!"));
            return null;
         }
         if(param8 == null)
         {
            if(param5 & 0)
            {
               param8 = this.var_1524;
            }
         }
         _loc12_ = new _loc13_(param1,param3,param4,param5,this,param6,param8 != null ? param8 : this.var_144,param7,param10,param11,param9);
         if(param2 && param2.length)
         {
            _loc12_.caption = param2;
         }
         return _loc12_;
      }
      
      public function destroy(param1:IWindow) : Boolean
      {
         if(param1 == this.var_144)
         {
            this.var_144 = null;
         }
         if(param1.state != WindowState.const_493)
         {
            param1.destroy();
         }
         return true;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : void
      {
         if(!this.disposed)
         {
            var_158.addToRenderQueue(WindowController(param1),param2,param3);
         }
      }
      
      public function update(param1:uint) : void
      {
         this.var_538 = true;
         if(this.var_1258)
         {
            throw this.var_1258;
         }
         var_637.process(this.var_2619,var_387);
         this.var_538 = false;
      }
      
      public function render(param1:uint) : void
      {
         this.var_2618 = true;
         var_158.update(param1);
         this.var_2618 = false;
      }
      
      private function stageResizedHandler(param1:Event) : void
      {
         if(this.var_144 != null && !this.var_144.disposed)
         {
            if(this.var_208 is Stage)
            {
               this.var_144.width = Stage(this.var_208).stageWidth;
               this.var_144.height = Stage(this.var_208).stageHeight;
            }
            else
            {
               this.var_144.width = this.var_208.width;
               this.var_144.height = this.var_208.height;
            }
         }
      }
   }
}
