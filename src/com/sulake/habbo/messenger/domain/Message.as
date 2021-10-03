package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_838:int = 1;
      
      public static const const_697:int = 2;
      
      public static const const_789:int = 3;
      
      public static const const_1169:int = 4;
      
      public static const const_715:int = 5;
      
      public static const const_1031:int = 6;
       
      
      private var _type:int;
      
      private var var_1253:int;
      
      private var var_2140:String;
      
      private var var_2242:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1253 = param2;
         this.var_2140 = param3;
         this.var_2242 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2140;
      }
      
      public function get time() : String
      {
         return this.var_2242;
      }
      
      public function get senderId() : int
      {
         return this.var_1253;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
