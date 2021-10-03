package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_883:BigInteger;
      
      private var var_2686:BigInteger;
      
      private var var_1911:BigInteger;
      
      private var var_2687:BigInteger;
      
      private var var_1485:BigInteger;
      
      private var var_1910:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1485 = param1;
         this.var_1910 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1485.toString() + ",generator: " + this.var_1910.toString() + ",secret: " + param1);
         this.var_883 = new BigInteger();
         this.var_883.fromRadix(param1,param2);
         this.var_2686 = this.var_1910.modPow(this.var_883,this.var_1485);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1911 = new BigInteger();
         this.var_1911.fromRadix(param1,param2);
         this.var_2687 = this.var_1911.modPow(this.var_883,this.var_1485);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2686.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2687.toRadix(param1);
      }
   }
}
