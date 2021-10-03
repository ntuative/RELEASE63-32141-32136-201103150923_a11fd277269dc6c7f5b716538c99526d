package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2878:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_144 = param1.desktop;
         var_73 = param1.var_1254 as WindowController;
         var_172 = param1.var_1256 as WindowController;
         var_158 = param1.renderer;
         var_819 = param1.var_1257;
         param2.begin();
         param2.end();
         param1.desktop = var_144;
         param1.var_1254 = var_73;
         param1.var_1256 = var_172;
         param1.renderer = var_158;
         param1.var_1257 = var_819;
      }
   }
}
