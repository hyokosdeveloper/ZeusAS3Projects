package com.littlepenguinsoftware.components
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
 
   public class StatusComponentTutorial extends Sprite
   {
      public static const STATUS_UNSET:String = "status_unset";
      public static const STATUS_OK:String = "status_ok";
      public static const STATUS_ERROR:String = "status_error";
 
      [Embed(source="../../../../assets/accept.png")]
      private static var iconOK:Class;
      [Embed(source="../../../../assets/exclamation.png")]
      private static var iconError:Class;
 
      private var _status:String;
      private var _statusIcon:Bitmap;
 
      public function StatusComponentTutorial()
      {
         _status = STATUS_UNSET;
      }
 
      public function get status():String
      {
         return _status;
      }
 
      public function set status( status:String ):void
      {
         _status = status;
 
         if (_statusIcon)
         {
            removeChild(_statusIcon);
         }
 
         switch(_status)
         {
            case STATUS_OK:
               _statusIcon = new iconOK();
               addChild(_statusIcon);
               break;
            case STATUS_ERROR:
               _statusIcon = new iconError();
               addChild(_statusIcon);
               break;
         }
      }
   }
 
}