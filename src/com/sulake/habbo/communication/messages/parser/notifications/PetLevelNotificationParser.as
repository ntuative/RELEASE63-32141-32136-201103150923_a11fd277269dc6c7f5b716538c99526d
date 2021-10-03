package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1618:int;
      
      private var var_2057:String;
      
      private var var_1333:int;
      
      private var var_1073:int;
      
      private var var_1596:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1618 = param1.readInteger();
         this.var_2057 = param1.readString();
         this.var_1333 = param1.readInteger();
         this.var_1073 = param1.readInteger();
         this.var_1596 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1618;
      }
      
      public function get petName() : String
      {
         return this.var_2057;
      }
      
      public function get level() : int
      {
         return this.var_1333;
      }
      
      public function get petType() : int
      {
         return this.var_1073;
      }
      
      public function get breed() : int
      {
         return this.var_1596;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
