package com.sulake.habbo.quest
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IHTMLTextWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IScrollableListWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.enum.LinkTarget;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.quest.enum.QuestStatusEnum;
   import com.sulake.habbo.quest.enum.QuestTypeEnum;
   import com.sulake.habbo.room.IGetImageListener;
   import com.sulake.habbo.room.ImageResult;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.room.utils.Vector3d;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class QuestView implements IGetImageListener, IDisposable
   {
       
      
      private var var_59:QuestCampaign;
      
      private var var_90:Quest;
      
      private var var_16:IWindow;
      
      private var var_1652:int;
      
      private var var_1653:IScrollableListWindow;
      
      private var var_702:Boolean = false;
      
      private var var_572:Timer;
      
      public function QuestView(param1:QuestCampaign, param2:Quest)
      {
         super();
         this.var_59 = param1;
         this.var_90 = param2;
         this.createView();
      }
      
      public function dispose() : void
      {
         this.var_16.dispose();
         this.var_702 = true;
         if(this.var_572)
         {
            this.var_572.stop();
            this.var_572 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_702;
      }
      
      public function init() : void
      {
         var _loc1_:IWindow = this.find("quest.button.accept");
         if(_loc1_)
         {
            _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onActivateQuest);
         }
         var _loc2_:IWindow = this.find("quest.reward.desc");
         if(_loc2_)
         {
            _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onRewardInfo);
         }
         this.localize();
      }
      
      private function createView() : void
      {
         switch(this.var_90.type)
         {
            case QuestTypeEnum.FIND_STUFF:
            case QuestTypeEnum.FIND_HIDDEN_STUFF:
               this.var_16 = this.var_59.controller.questEngine.getXmlWindow("QuestTypeFindStuff");
               this.var_1653 = this.find("quest.content.itemlist") as IScrollableListWindow;
               break;
            case QuestTypeEnum.GIVE_BADGE:
               this.var_16 = this.var_59.controller.questEngine.getXmlWindow("QuestTypeGiveBadge");
               this.var_1653 = this.find("quest.content.itemlist") as IScrollableListWindow;
               break;
            default:
               throw new Error("[QuestView] View not defined for quest type: " + this.var_90.type + " !");
         }
         if(!this.var_16)
         {
            throw new Error("[QuestView] Could not create view for quest type: " + this.var_90.type + " !");
         }
         this.var_16.addEventListener(WindowEvent.const_50,this.onResized);
      }
      
      public function get view() : IWindow
      {
         return this.var_16;
      }
      
      public function onActivateQuest(param1:Event, param2:IWindow = null) : void
      {
         if(this.var_90)
         {
            this.var_59.controller.activateQuest(this.var_90);
         }
      }
      
      public function onRewardInfo(param1:Event, param2:IWindow = null) : void
      {
         var _loc3_:* = null;
         if(this.var_90)
         {
            _loc3_ = "catalog.page.quest." + this.var_59.code;
            Logger.log("Questing->Open Catalog: " + _loc3_);
            this.var_59.controller.questEngine.openCatalog(_loc3_);
         }
         param1.stopPropagation();
         param1.stopImmediatePropagation();
      }
      
      public function find(param1:String) : IWindow
      {
         var _loc2_:* = null;
         if(this.var_702)
         {
            return null;
         }
         if(this.var_16 is IWindowContainer)
         {
            _loc2_ = IWindowContainer(this.var_16).findChildByName(param1);
         }
         else if(this.var_16 is IItemListWindow)
         {
            _loc2_ = IItemListWindow(this.var_16).getListItemByName(param1);
         }
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function localize() : void
      {
         var _loc34_:* = null;
         var _loc35_:* = null;
         var _loc36_:int = 0;
         var _loc37_:* = null;
         var _loc38_:* = null;
         var _loc39_:* = null;
         var _loc1_:String = ["quest",this.var_59.code,this.var_90.localizationCode].join("_");
         var _loc2_:String = ["quest_" + this.var_59.code,"type_" + this.var_90.type.toLowerCase()].join(".");
         var _loc3_:String = "quest_" + this.var_59.code;
         var _loc4_:* = _loc1_ + ".title";
         var _loc5_:* = _loc1_ + ".short";
         var _loc6_:* = _loc1_ + ".desc";
         var _loc7_:* = _loc2_ + ".requirement";
         var _loc8_:* = _loc2_ + ".success";
         var _loc13_:* = _loc3_ + ".reward.title";
         var _loc14_:* = _loc3_ + ".reward.desc";
         var _loc15_:IBitmapWrapperWindow = this.find("quest.image") as IBitmapWrapperWindow;
         if(this.var_90.type == QuestTypeEnum.FIND_STUFF)
         {
            _loc34_ = this.var_90.roomItemTypeName.split("*");
            _loc35_ = _loc34_.length > 0 ? _loc34_[0] : "";
            _loc36_ = _loc34_.length > 1 ? int(parseInt(_loc34_[1])) : 0;
            _loc37_ = this.var_59.controller.questEngine.sessionDataManager.getFloorItemDataByName(_loc35_,_loc36_);
            if(_loc37_)
            {
               _loc39_ = "";
               _loc38_ = this.var_59.controller.questEngine.roomEngine.getFurnitureImage(_loc37_.id,new Vector3d(90,0,0),64,this,_loc36_,_loc39_);
               this.var_1652 = _loc38_.id;
               if(_loc38_ && _loc38_.data)
               {
                  this.imageReady(_loc38_.id,_loc38_.data);
               }
               this.var_59.controller.questEngine.localization.registerParameter(_loc7_,"name",_loc37_.title);
            }
         }
         else if(this.var_90.type == QuestTypeEnum.FIND_HIDDEN_STUFF)
         {
            this.var_59.controller.questEngine.setImageFromAsset(_loc15_,"icon_quest_hidden",this.onPreviewImageReady);
         }
         else if(this.var_90.type == QuestTypeEnum.GIVE_BADGE)
         {
            this.var_59.controller.questEngine.setImageFromAsset(_loc15_,this.var_90.questBadgeAchievementTypeId,this.onPreviewImageReady);
         }
         else
         {
            this.var_1652 = -1;
            QuestUtils.setElementImage(this.find("quest.image") as IBitmapWrapperWindow,new BitmapData(1,1,true));
         }
         this.setText("quest.header.title",_loc4_);
         this.setText("quest.header.short",_loc5_);
         this.setText("quest.description",_loc6_);
         var _loc16_:IWindow = this.find("quest.button.accept");
         var _loc17_:IWindow = this.find("quest.status");
         _loc16_.visible = false;
         _loc17_.visible = false;
         var _loc18_:IWindow = this.find("quest.status.container");
         var _loc19_:int = 4287150640;
         switch(this.var_90.status)
         {
            case QuestStatusEnum.const_531:
               _loc16_.visible = true;
               break;
            case QuestStatusEnum.const_47:
               this.setText("quest.status","quest.accepted");
               _loc17_.visible = true;
               break;
            case QuestStatusEnum.const_200:
               this.setText("quest.status","quest.expired");
               _loc17_.visible = true;
               _loc19_ = 4290822336;
               break;
            case QuestStatusEnum.const_841:
               this.setText("quest.status","quest.completed");
               _loc17_.visible = true;
               _loc19_ = 4290822336;
               break;
            case QuestStatusEnum.const_175:
               this.setText("quest.status","quest.preview");
               _loc17_.visible = true;
               _loc19_ = 4292927712;
         }
         if(_loc18_)
         {
            _loc18_.color = _loc19_;
         }
         this.setText("quest.requirement",_loc7_);
         this.var_59.controller.questEngine.localization.registerParameter(_loc14_,"amount",this.var_90.rewardCurrencyAmount.toString());
         this.setText("quest.reward.title",_loc13_);
         this.setText("quest.reward.desc",_loc14_,true,true);
         var _loc20_:int = this.var_90.endDate.date;
         var _loc21_:int = this.var_90.endDate.month + 1;
         var _loc22_:int = this.var_90.endDate.fullYear;
         var _loc23_:int = this.var_90.endDate.minutes;
         var _loc24_:int = this.var_90.endDate.hours;
         var _loc25_:int = _loc24_ > 11 ? int(_loc24_ - 12) : int(_loc24_);
         var _loc26_:String = _loc24_ < 12 ? "am" : "pm";
         this.var_59.controller.questEngine.localization.registerParameter("quest.available","day",_loc20_.toString());
         this.var_59.controller.questEngine.localization.registerParameter("quest.available","month",_loc21_.toString());
         this.var_59.controller.questEngine.localization.registerParameter("quest.available","year",_loc22_.toString());
         this.var_59.controller.questEngine.localization.registerParameter("quest.available","12h",this.pad(_loc25_));
         this.var_59.controller.questEngine.localization.registerParameter("quest.available","24h",this.pad(_loc24_));
         this.var_59.controller.questEngine.localization.registerParameter("quest.available","ampm",_loc26_);
         this.var_59.controller.questEngine.localization.registerParameter("quest.available","minute",this.pad(_loc23_));
         this.setText("quest.available","quest.available");
         var _loc27_:String = [_loc20_,_loc21_,_loc22_].join(".");
         var _loc28_:String = [this.pad(_loc24_),this.pad(_loc23_)].join(":");
         var _loc29_:IBitmapWrapperWindow = this.find("quest.header.img") as IBitmapWrapperWindow;
         var _loc30_:String = "header_" + this.var_59.code;
         this.var_59.controller.questEngine.setImageFromAsset(_loc29_,_loc30_,this.onHeaderImageReady);
         var _loc31_:IBitmapWrapperWindow = this.find("quest.reward.icon") as IBitmapWrapperWindow;
         var _loc32_:String = "icon_" + this.var_59.code + "_reward_" + this.var_90.rewardCurrencyAmount;
         this.var_59.controller.questEngine.setImageFromAsset(_loc31_,_loc32_,this.onRewardImageReady);
         this.updateMargins();
         var _loc33_:IWindow = this.find("quest.reward.desc");
         if(_loc33_)
         {
            this.var_572 = new Timer(20,1);
            this.var_572.addEventListener(TimerEvent.TIMER,this.onShowReward);
            this.var_572.start();
            _loc33_.visible = false;
         }
      }
      
      private function onShowReward(param1:TimerEvent) : void
      {
         var _loc2_:IWindow = this.find("quest.reward.desc");
         if(_loc2_)
         {
            _loc2_.visible = true;
         }
         this.var_572.stop();
         this.var_572 = null;
      }
      
      private function pad(param1:int, param2:int = 2) : String
      {
         var _loc3_:String = param1.toString();
         while(_loc3_.length < param2)
         {
            _loc3_ = "0" + _loc3_;
         }
         return _loc3_;
      }
      
      private function setText(param1:String, param2:String, param3:Boolean = true, param4:Boolean = false) : void
      {
         var _loc5_:IWindow = this.find(param1);
         if(_loc5_)
         {
            if(param3)
            {
               param2 = "${" + param2 + "}";
            }
            _loc5_.caption = param2;
            if(param4 && _loc5_ is IHTMLTextWindow)
            {
               (_loc5_ as IHTMLTextWindow).htmlText = "<a href=\"event:\" >" + (_loc5_ as IHTMLTextWindow).text + "</a>";
               (_loc5_ as IHTMLTextWindow).linkTarget = LinkTarget.const_670;
            }
         }
      }
      
      private function onRewardImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         if(this.var_702)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ != null)
         {
            _loc3_ = this.find("quest.reward.icon") as IBitmapWrapperWindow;
            this.var_59.controller.questEngine.setImageFromAsset(_loc3_,_loc2_.assetName,this.onRewardImageReady);
         }
      }
      
      private function onHeaderImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         if(this.var_702)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ != null)
         {
            _loc3_ = this.find("quest.header.img") as IBitmapWrapperWindow;
            this.var_59.controller.questEngine.setImageFromAsset(_loc3_,_loc2_.assetName,this.onHeaderImageReady);
         }
      }
      
      private function onPreviewImageReady(param1:AssetLoaderEvent) : void
      {
         var _loc3_:* = null;
         if(this.var_702)
         {
            return;
         }
         var _loc2_:AssetLoaderStruct = param1.target as AssetLoaderStruct;
         if(_loc2_ != null)
         {
            _loc3_ = this.find("quest.image") as IBitmapWrapperWindow;
            this.var_59.controller.questEngine.setImageFromAsset(_loc3_,_loc2_.assetName,this.onPreviewImageReady);
         }
      }
      
      public function imageReady(param1:int, param2:BitmapData) : void
      {
         var _loc3_:* = null;
         if(this.var_702)
         {
            return;
         }
         if(this.var_1652 == param1)
         {
            _loc3_ = this.find("quest.image") as IBitmapWrapperWindow;
            if(_loc3_)
            {
               _loc3_.height = param2.height + 5;
               QuestUtils.setElementImage(_loc3_,param2,_loc3_.height);
               this.updateMargins();
            }
         }
      }
      
      private function updateMargins() : void
      {
         var _loc1_:ITextWindow = this.find("quest.requirement") as ITextWindow;
         var _loc2_:ITextWindow = this.find("quest.description") as ITextWindow;
         _loc1_.height = _loc1_.textHeight + 5;
         _loc2_.height = _loc2_.textHeight + 5;
         if(this.var_1653.maxScrollV > 0)
         {
            _loc1_.margins.right = 20;
            _loc2_.margins.right = 20;
         }
         else
         {
            _loc1_.margins.right = 5;
            _loc2_.margins.right = 5;
         }
         _loc1_.height = _loc1_.textHeight + 5;
         _loc2_.height = _loc2_.textHeight + 5;
      }
      
      private function onResized(param1:WindowEvent, param2:IWindow = null) : void
      {
         this.updateMargins();
      }
   }
}
