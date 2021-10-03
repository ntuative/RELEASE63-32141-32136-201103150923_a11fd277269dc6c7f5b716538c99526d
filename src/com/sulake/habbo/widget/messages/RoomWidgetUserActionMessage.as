package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_764:String = "RWUAM_WHISPER_USER";
      
      public static const const_649:String = "RWUAM_IGNORE_USER";
      
      public static const const_855:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_548:String = "RWUAM_KICK_USER";
      
      public static const const_702:String = "RWUAM_BAN_USER";
      
      public static const const_736:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_759:String = "RWUAM_RESPECT_USER";
      
      public static const const_899:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_642:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_740:String = "RWUAM_START_TRADING";
      
      public static const const_772:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_550:String = "RWUAM_KICK_BOT";
      
      public static const const_839:String = "RWUAM_REPORT";
      
      public static const const_567:String = "RWUAM_PICKUP_PET";
      
      public static const const_1640:String = "RWUAM_TRAIN_PET";
      
      public static const const_566:String = " RWUAM_RESPECT_PET";
      
      public static const const_381:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_636:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
