package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_81:String = "i";
      
      public static const const_86:String = "s";
      
      public static const const_236:String = "e";
       
      
      private var var_1778:String;
      
      private var var_2644:int;
      
      private var var_1412:String;
      
      private var var_1413:int;
      
      private var var_1779:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1778 = param1.readString();
         this.var_2644 = param1.readInteger();
         this.var_1412 = param1.readString();
         this.var_1413 = param1.readInteger();
         this.var_1779 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1778;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2644;
      }
      
      public function get extraParam() : String
      {
         return this.var_1412;
      }
      
      public function get productCount() : int
      {
         return this.var_1413;
      }
      
      public function get expiration() : int
      {
         return this.var_1779;
      }
   }
}
