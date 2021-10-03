package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1829:int;
      
      private var var_2288:String;
      
      private var var_958:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1829 = param1.readInteger();
         this.var_2288 = param1.readString();
         this.var_958 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1829;
      }
      
      public function get figureString() : String
      {
         return this.var_2288;
      }
      
      public function get gender() : String
      {
         return this.var_958;
      }
   }
}
