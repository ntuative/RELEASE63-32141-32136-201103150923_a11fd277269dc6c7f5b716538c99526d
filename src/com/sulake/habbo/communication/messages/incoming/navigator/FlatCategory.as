package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1859:int;
      
      private var var_2367:String;
      
      private var var_310:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1859 = param1.readInteger();
         this.var_2367 = param1.readString();
         this.var_310 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1859;
      }
      
      public function get nodeName() : String
      {
         return this.var_2367;
      }
      
      public function get visible() : Boolean
      {
         return this.var_310;
      }
   }
}
