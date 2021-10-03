package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_771:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_702)
         {
            _structure = null;
            _assets = null;
            var_263 = null;
            var_279 = null;
            _figure = null;
            var_542 = null;
            var_323 = null;
            if(!var_1269 && var_46)
            {
               var_46.dispose();
            }
            var_46 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_789 = null;
            var_702 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_771[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_771[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_348:
               switch(_loc3_)
               {
                  case AvatarAction.const_821:
                  case AvatarAction.const_501:
                  case AvatarAction.const_388:
                  case AvatarAction.const_850:
                  case AvatarAction.const_402:
                  case AvatarAction.const_696:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_315:
            case AvatarAction.const_914:
            case AvatarAction.const_253:
            case AvatarAction.const_721:
            case AvatarAction.const_747:
            case AvatarAction.const_910:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
