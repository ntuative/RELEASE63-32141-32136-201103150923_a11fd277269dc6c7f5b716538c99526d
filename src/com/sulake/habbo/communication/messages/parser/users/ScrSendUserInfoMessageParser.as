package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1812:int = 1;
      
      public static const const_1607:int = 2;
       
      
      private var var_970:String;
      
      private var var_2180:int;
      
      private var var_2177:int;
      
      private var var_2183:int;
      
      private var var_2181:int;
      
      private var var_2185:Boolean;
      
      private var var_2182:Boolean;
      
      private var var_2179:int;
      
      private var var_2184:int;
      
      private var var_2186:Boolean;
      
      private var var_2176:int;
      
      private var var_2178:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_970 = param1.readString();
         this.var_2180 = param1.readInteger();
         this.var_2177 = param1.readInteger();
         this.var_2183 = param1.readInteger();
         this.var_2181 = param1.readInteger();
         this.var_2185 = param1.readBoolean();
         this.var_2182 = param1.readBoolean();
         this.var_2179 = param1.readInteger();
         this.var_2184 = param1.readInteger();
         this.var_2186 = param1.readBoolean();
         this.var_2176 = param1.readInteger();
         this.var_2178 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_970;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2180;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2177;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2183;
      }
      
      public function get responseType() : int
      {
         return this.var_2181;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2185;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2182;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2179;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2184;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2186;
      }
      
      public function get method_7() : int
      {
         return this.var_2176;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2178;
      }
   }
}
