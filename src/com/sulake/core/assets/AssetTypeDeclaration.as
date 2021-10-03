package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2291:String;
      
      private var var_2290:Class;
      
      private var var_2289:Class;
      
      private var var_1643:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2291 = param1;
         this.var_2290 = param2;
         this.var_2289 = param3;
         if(rest == null)
         {
            this.var_1643 = new Array();
         }
         else
         {
            this.var_1643 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2291;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2290;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2289;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1643;
      }
   }
}
