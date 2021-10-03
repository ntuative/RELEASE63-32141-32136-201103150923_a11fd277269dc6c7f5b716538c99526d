package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1409:String = "pricing_model_unknown";
      
      public static const const_528:String = "pricing_model_single";
      
      public static const const_489:String = "pricing_model_multi";
      
      public static const const_445:String = "pricing_model_bundle";
      
      public static const const_1522:String = "price_type_none";
      
      public static const const_876:String = "price_type_credits";
      
      public static const const_1224:String = "price_type_activitypoints";
      
      public static const const_1053:String = "price_type_credits_and_activitypoints";
       
      
      private var var_700:String;
      
      private var var_1101:String;
      
      private var _offerId:int;
      
      private var var_1645:String;
      
      private var var_1103:int;
      
      private var var_1102:int;
      
      private var var_1602:int;
      
      private var var_429:ICatalogPage;
      
      private var var_699:IProductContainer;
      
      private var var_2299:int;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         this._offerId = param1.offerId;
         this.var_1645 = param1.localizationId;
         this.var_1103 = param1.priceInCredits;
         this.var_1102 = param1.priceInActivityPoints;
         this.var_1602 = param1.activityPointType;
         this.var_429 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         this.analyzePricingModel(_loc3_);
         this.analyzePriceType();
         this.createProductContainer(_loc3_);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_429;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_1645;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1103;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1102;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1602;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_699;
      }
      
      public function get pricingModel() : String
      {
         return this.var_700;
      }
      
      public function get priceType() : String
      {
         return this.var_1101;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2299;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2299 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_1645 = "";
         this.var_1103 = 0;
         this.var_1102 = 0;
         this.var_1602 = 0;
         this.var_429 = null;
         if(this.var_699 != null)
         {
            this.var_699.dispose();
            this.var_699 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_700)
         {
            case const_528:
               this.var_699 = new SingleProductContainer(this,param1);
               break;
            case const_489:
               this.var_699 = new MultiProductContainer(this,param1);
               break;
            case const_445:
               this.var_699 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_700);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_700 = const_528;
            }
            else
            {
               this.var_700 = const_489;
            }
         }
         else if(param1.length > 1)
         {
            this.var_700 = const_445;
         }
         else
         {
            this.var_700 = const_1409;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1103 > 0 && this.var_1102 > 0)
         {
            this.var_1101 = const_1053;
         }
         else if(this.var_1103 > 0)
         {
            this.var_1101 = const_876;
         }
         else if(this.var_1102 > 0)
         {
            this.var_1101 = const_1224;
         }
         else
         {
            this.var_1101 = const_1522;
         }
      }
   }
}
