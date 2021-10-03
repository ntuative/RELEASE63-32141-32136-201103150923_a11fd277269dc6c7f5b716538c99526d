package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var _figure:String;
      
      private var var_919:String;
      
      private var var_2734:String;
      
      private var var_1746:String;
      
      private var var_2735:int;
      
      private var var_2736:String;
      
      private var var_2737:int;
      
      private var var_2738:int;
      
      private var var_2230:int;
      
      private var var_1193:int;
      
      private var var_767:int;
      
      private var var_2574:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this._figure = param1.readString();
         this.var_919 = param1.readString();
         this.var_2734 = param1.readString();
         this.var_1746 = param1.readString();
         this.var_2735 = param1.readInteger();
         this.var_2736 = param1.readString();
         this.var_2737 = param1.readInteger();
         this.var_2738 = param1.readInteger();
         this.var_2230 = param1.readInteger();
         this.var_1193 = param1.readInteger();
         this.var_767 = param1.readInteger();
         this.var_2574 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this._figure;
      }
      
      public function get sex() : String
      {
         return this.var_919;
      }
      
      public function get customData() : String
      {
         return this.var_2734;
      }
      
      public function get realName() : String
      {
         return this.var_1746;
      }
      
      public function get tickets() : int
      {
         return this.var_2735;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2736;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2737;
      }
      
      public function get directMail() : int
      {
         return this.var_2738;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2230;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1193;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_767;
      }
      
      public function get identityId() : int
      {
         return this.var_2574;
      }
   }
}
