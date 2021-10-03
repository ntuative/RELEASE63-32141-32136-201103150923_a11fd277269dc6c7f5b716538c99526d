package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1902:int = 1;
      
      public static const const_1805:int = 2;
      
      public static const const_1881:int = 3;
      
      public static const const_1830:int = 4;
      
      public static const const_1559:int = 5;
      
      public static const const_1952:int = 6;
      
      public static const const_1558:int = 7;
      
      public static const const_1593:int = 8;
      
      public static const const_1768:int = 9;
      
      public static const const_1430:int = 10;
      
      public static const const_1489:int = 11;
      
      public static const const_1605:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1567:int;
      
      private var var_1439:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1567 = param1.readInteger();
         this.var_1439 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1567;
      }
      
      public function get info() : String
      {
         return this.var_1439;
      }
   }
}
