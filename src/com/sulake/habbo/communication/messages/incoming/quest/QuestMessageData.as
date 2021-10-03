package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var _id:int;
      
      private var var_389:int;
      
      private var _type:String;
      
      private var var_1970:String;
      
      private var var_1968:int;
      
      private var var_1969:String;
      
      private var var_809:String;
      
      private var var_1967:String;
      
      private var var_2673:String;
      
      private var var_2775:uint;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this.var_389 = param1.readInteger();
         this._type = param1.readString();
         this.var_1970 = param1.readString();
         this.var_1968 = param1.readInteger();
         this.var_1969 = param1.readString();
         this.var_809 = param1.readString();
         this.var_2673 = param1.readString();
         var _loc2_:String = "";
         var _loc3_:int = this.var_809.length - 1;
         while(_loc3_ > 0 && this.isNumber(this.var_809.charAt(_loc3_)))
         {
            _loc2_ = this.var_809.charAt(_loc3_) + _loc2_;
            _loc3_--;
         }
         if(_loc3_ > 0)
         {
            this.var_1967 = this.var_809.substring(0,_loc3_ + 1);
         }
         else
         {
            this.var_1967 = this.var_809;
         }
         this.var_2775 = uint(_loc2_);
      }
      
      private function getNumber(param1:String) : int
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ - 48;
      }
      
      private function isNumber(param1:String) : Boolean
      {
         var _loc2_:int = param1.charCodeAt(0);
         return _loc2_ >= 48 && _loc2_ <= 57;
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this.var_389 = 0;
         this._type = "";
         this.var_1970 = "";
         this.var_1968 = 0;
         this.var_1969 = "";
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get status() : int
      {
         return this.var_389;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get roomItemTypeName() : String
      {
         return this.var_1970;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_1968;
      }
      
      public function get endDateTimeStamp() : String
      {
         return this.var_1969;
      }
      
      public function get localizationCode() : String
      {
         return this.var_809;
      }
      
      public function get sortCode() : uint
      {
         return this.var_2775;
      }
      
      public function get localizationPrefix() : String
      {
         return this.var_1967;
      }
      
      public function get questBadgeAchievementTypeId() : String
      {
         return this.var_2673;
      }
   }
}
