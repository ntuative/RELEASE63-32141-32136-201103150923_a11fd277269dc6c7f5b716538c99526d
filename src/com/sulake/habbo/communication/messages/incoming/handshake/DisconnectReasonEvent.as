package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1758:int = 0;
      
      public static const const_1441:int = 1;
      
      public static const const_1460:int = 2;
      
      public static const const_1803:int = 3;
      
      public static const const_1926:int = 4;
      
      public static const const_1957:int = 5;
      
      public static const const_1598:int = 10;
      
      public static const const_1870:int = 11;
      
      public static const const_1790:int = 12;
      
      public static const const_1935:int = 13;
      
      public static const const_1755:int = 16;
      
      public static const const_1817:int = 17;
      
      public static const const_1850:int = 18;
      
      public static const const_1843:int = 19;
      
      public static const const_1879:int = 20;
      
      public static const const_1911:int = 22;
      
      public static const const_1826:int = 23;
      
      public static const const_1863:int = 24;
      
      public static const const_1941:int = 25;
      
      public static const const_1851:int = 26;
      
      public static const const_1848:int = 27;
      
      public static const const_1890:int = 28;
      
      public static const const_1886:int = 29;
      
      public static const const_1878:int = 100;
      
      public static const const_1906:int = 101;
      
      public static const const_1846:int = 102;
      
      public static const const_1800:int = 103;
      
      public static const const_1951:int = 104;
      
      public static const const_1966:int = 105;
      
      public static const const_1864:int = 106;
      
      public static const const_1928:int = 107;
      
      public static const const_1973:int = 108;
      
      public static const const_1931:int = 109;
      
      public static const const_1913:int = 110;
      
      public static const const_1837:int = 111;
      
      public static const const_1932:int = 112;
      
      public static const const_1782:int = 113;
      
      public static const const_1815:int = 114;
      
      public static const const_1958:int = 115;
      
      public static const const_1972:int = 116;
      
      public static const const_1779:int = 117;
      
      public static const const_1781:int = 118;
      
      public static const const_1895:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1441:
            case const_1598:
               return "banned";
            case const_1460:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
