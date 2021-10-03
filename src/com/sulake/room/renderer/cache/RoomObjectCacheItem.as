package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_492:RoomObjectLocationCacheItem = null;
      
      private var var_196:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_492 = new RoomObjectLocationCacheItem(param1);
         this.var_196 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_492;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_196;
      }
      
      public function dispose() : void
      {
         if(this.var_492 != null)
         {
            this.var_492.dispose();
            this.var_492 = null;
         }
         if(this.var_196 != null)
         {
            this.var_196.dispose();
            this.var_196 = null;
         }
      }
   }
}
