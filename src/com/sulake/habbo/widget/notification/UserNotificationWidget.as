package com.sulake.habbo.widget.notification
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.localization.ILocalization;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetUserNotificationEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   
   public class UserNotificationWidget extends RoomWidgetBase
   {
       
      
      private var var_16:UserNotificationView;
      
      public function UserNotificationWidget(param1:IHabboWindowManager, param2:IAssetLibrary = null, param3:IHabboLocalizationManager = null)
      {
         super(param1,param2,param3);
      }
      
      override public function dispose() : void
      {
         if(this.var_16 != null)
         {
            this.var_16.dispose();
            this.var_16 = null;
         }
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetUserNotificationEvent.const_467,this.onDisplayNotification);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetUserNotificationEvent.const_467,this.onDisplayNotification);
         super.unregisterUpdateEvents(param1);
      }
      
      protected function onDisplayNotification(param1:RoomWidgetUserNotificationEvent) : void
      {
         var _loc2_:* = null;
         Logger.log("Notification: " + param1.title + " " + param1.message);
         if(!this.var_16)
         {
            this.var_16 = new UserNotificationView(this);
         }
         _loc2_ = var_79.getLocalization(param1.title);
         var _loc3_:String = !!_loc2_ ? _loc2_.raw : param1.title;
         _loc2_ = var_79.getLocalization(param1.message);
         var _loc4_:String = !!_loc2_ ? _loc2_.raw : param1.message;
         var _loc5_:Array = param1.parameters;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_.length)
         {
            _loc4_ = _loc4_.replace(_loc5_[_loc6_],_loc5_[_loc6_ + 1]);
            _loc6_ += 2;
         }
         this.var_16.showNotification(_loc3_,_loc4_);
      }
   }
}