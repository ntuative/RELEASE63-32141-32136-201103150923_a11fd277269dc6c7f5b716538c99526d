package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_376:int = 1;
      
      public static const const_217:int = 2;
      
      public static const const_299:int = 3;
      
      public static const const_359:int = 4;
      
      public static const const_267:int = 5;
      
      public static const const_397:int = 1;
      
      public static const const_823:int = 2;
      
      public static const const_663:int = 3;
      
      public static const const_918:int = 4;
      
      public static const const_241:int = 5;
      
      public static const const_856:int = 6;
      
      public static const const_904:int = 7;
      
      public static const const_263:int = 8;
      
      public static const const_375:int = 9;
      
      public static const const_1942:int = 10;
      
      public static const const_854:int = 11;
      
      public static const const_512:int = 12;
       
      
      private var var_402:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_402 = new Array();
         this.var_402.push(new Tab(this._navigator,const_376,const_512,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_442));
         this.var_402.push(new Tab(this._navigator,const_217,const_397,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_442));
         this.var_402.push(new Tab(this._navigator,const_359,const_854,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1087));
         this.var_402.push(new Tab(this._navigator,const_299,const_241,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_442));
         this.var_402.push(new Tab(this._navigator,const_267,const_263,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_718));
         this.setSelectedTab(const_376);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_359;
      }
      
      public function get tabs() : Array
      {
         return this.var_402;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_402)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_402)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_402)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
