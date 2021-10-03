package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var var_1287:Array;
      
      private var var_1286:Array;
      
      private var _issues:Array;
      
      private var var_1037:Array;
      
      private var var_2084:Boolean;
      
      private var var_2082:Boolean;
      
      private var var_2087:Boolean;
      
      private var var_2083:Boolean;
      
      private var var_2088:Boolean;
      
      private var var_2085:Boolean;
      
      private var var_2086:Boolean;
      
      private var _disposed:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         this._issues = [];
         this.var_1287 = [];
         this.var_1286 = [];
         this.var_1037 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               this._issues.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1287.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1037.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         this.var_2084 = param1.readBoolean();
         this.var_2082 = param1.readBoolean();
         this.var_2087 = param1.readBoolean();
         this.var_2083 = param1.readBoolean();
         this.var_2088 = param1.readBoolean();
         this.var_2085 = param1.readBoolean();
         this.var_2086 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1286.push(param1.readString());
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1287 = null;
         this.var_1286 = null;
         this._issues = null;
         for each(_loc1_ in this.var_1037)
         {
            _loc1_.dispose();
         }
         this.var_1037 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get messageTemplates() : Array
      {
         return this.var_1287;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return this.var_1286;
      }
      
      public function get issues() : Array
      {
         return this._issues;
      }
      
      public function get offenceCategories() : Array
      {
         return this.var_1037;
      }
      
      public function get cfhPermission() : Boolean
      {
         return this.var_2084;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return this.var_2082;
      }
      
      public function get alertPermission() : Boolean
      {
         return this.var_2087;
      }
      
      public function get kickPermission() : Boolean
      {
         return this.var_2083;
      }
      
      public function get banPermission() : Boolean
      {
         return this.var_2088;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return this.var_2085;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return this.var_2086;
      }
   }
}
