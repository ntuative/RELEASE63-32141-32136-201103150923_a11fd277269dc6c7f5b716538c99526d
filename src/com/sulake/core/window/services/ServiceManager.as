package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2823:uint;
      
      private var var_142:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_270:IWindowContext;
      
      private var var_1097:IMouseDraggingService;
      
      private var var_1093:IMouseScalingService;
      
      private var var_1095:IMouseListenerService;
      
      private var var_1096:IFocusManagerService;
      
      private var var_1092:IToolTipAgentService;
      
      private var var_1094:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2823 = 0;
         this.var_142 = param2;
         this.var_270 = param1;
         this.var_1097 = new WindowMouseDragger(param2);
         this.var_1093 = new WindowMouseScaler(param2);
         this.var_1095 = new WindowMouseListener(param2);
         this.var_1096 = new FocusManager(param2);
         this.var_1092 = new WindowToolTipAgent(param2);
         this.var_1094 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1097 != null)
         {
            this.var_1097.dispose();
            this.var_1097 = null;
         }
         if(this.var_1093 != null)
         {
            this.var_1093.dispose();
            this.var_1093 = null;
         }
         if(this.var_1095 != null)
         {
            this.var_1095.dispose();
            this.var_1095 = null;
         }
         if(this.var_1096 != null)
         {
            this.var_1096.dispose();
            this.var_1096 = null;
         }
         if(this.var_1092 != null)
         {
            this.var_1092.dispose();
            this.var_1092 = null;
         }
         if(this.var_1094 != null)
         {
            this.var_1094.dispose();
            this.var_1094 = null;
         }
         this.var_142 = null;
         this.var_270 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1097;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1093;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1095;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1096;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1092;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1094;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
