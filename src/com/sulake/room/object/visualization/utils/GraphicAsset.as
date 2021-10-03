package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_1543:String;
      
      private var var_2543:String;
      
      private var var_432:BitmapDataAsset;
      
      private var var_1467:Boolean;
      
      private var var_1468:Boolean;
      
      private var var_2544:Boolean;
      
      private var _offsetX:int;
      
      private var var_1050:int;
      
      private var _width:int;
      
      private var _height:int;
      
      private var var_669:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_1543 = param1;
         this.var_2543 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_432 = _loc9_;
            this.var_669 = false;
         }
         else
         {
            this.var_432 = null;
            this.var_669 = true;
         }
         this.var_1467 = param4;
         this.var_1468 = param5;
         this._offsetX = param6;
         this.var_1050 = param7;
         this.var_2544 = param8;
      }
      
      public function dispose() : void
      {
         this.var_432 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_669 && this.var_432 != null)
         {
            _loc1_ = this.var_432.content as BitmapData;
            if(_loc1_ != null)
            {
               this._width = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_669 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1468;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1467;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this._width;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_1543;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2543;
      }
      
      public function get asset() : IAsset
      {
         return this.var_432;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2544;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1467)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1468)
         {
            return this.var_1050;
         }
         return -(this.height + this.var_1050);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1050;
      }
   }
}
