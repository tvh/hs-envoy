{- This file was auto-generated from envoy/admin/v3/tap.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.Tap (
        TapRequest()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Envoy.Config.Tap.V3.Common
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Admin.V3.Tap_Fields.configId' @:: Lens' TapRequest Data.Text.Text@
         * 'Proto.Envoy.Admin.V3.Tap_Fields.tapConfig' @:: Lens' TapRequest Proto.Envoy.Config.Tap.V3.Common.TapConfig@
         * 'Proto.Envoy.Admin.V3.Tap_Fields.maybe'tapConfig' @:: Lens' TapRequest (Prelude.Maybe Proto.Envoy.Config.Tap.V3.Common.TapConfig)@ -}
data TapRequest
  = TapRequest'_constructor {_TapRequest'configId :: !Data.Text.Text,
                             _TapRequest'tapConfig :: !(Prelude.Maybe Proto.Envoy.Config.Tap.V3.Common.TapConfig),
                             _TapRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TapRequest where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TapRequest "configId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapRequest'configId
           (\ x__ y__ -> x__ {_TapRequest'configId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TapRequest "tapConfig" Proto.Envoy.Config.Tap.V3.Common.TapConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapRequest'tapConfig
           (\ x__ y__ -> x__ {_TapRequest'tapConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TapRequest "maybe'tapConfig" (Prelude.Maybe Proto.Envoy.Config.Tap.V3.Common.TapConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TapRequest'tapConfig
           (\ x__ y__ -> x__ {_TapRequest'tapConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message TapRequest where
  messageName _ = Data.Text.pack "envoy.admin.v3.TapRequest"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \TapRequest\DC2$\n\
      \\tconfig_id\CAN\SOH \SOH(\tR\bconfigIdB\a\250B\EOTr\STX\DLE\SOH\DC2G\n\
      \\n\
      \tap_config\CAN\STX \SOH(\v2\RS.envoy.config.tap.v3.TapConfigR\ttapConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH:%\154\197\136\RS \n\
      \\RSenvoy.admin.v2alpha.TapRequest"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        configId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"configId")) ::
              Data.ProtoLens.FieldDescriptor TapRequest
        tapConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tap_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Tap.V3.Common.TapConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tapConfig")) ::
              Data.ProtoLens.FieldDescriptor TapRequest
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, configId__field_descriptor),
           (Data.ProtoLens.Tag 2, tapConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TapRequest'_unknownFields
        (\ x__ y__ -> x__ {_TapRequest'_unknownFields = y__})
  defMessage
    = TapRequest'_constructor
        {_TapRequest'configId = Data.ProtoLens.fieldDefault,
         _TapRequest'tapConfig = Prelude.Nothing,
         _TapRequest'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TapRequest -> Data.ProtoLens.Encoding.Bytes.Parser TapRequest
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "config_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"configId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tap_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tapConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TapRequest"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"configId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'tapConfig") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData TapRequest where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TapRequest'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TapRequest'configId x__)
                (Control.DeepSeq.deepseq (_TapRequest'tapConfig x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\CANenvoy/admin/v3/tap.proto\DC2\SOenvoy.admin.v3\SUB envoy/config/tap/v3/common.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\162\SOH\n\
    \\n\
    \TapRequest\DC2$\n\
    \\tconfig_id\CAN\SOH \SOH(\tR\bconfigIdB\a\250B\EOTr\STX\DLE\SOH\DC2G\n\
    \\n\
    \tap_config\CAN\STX \SOH(\v2\RS.envoy.config.tap.v3.TapConfigR\ttapConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH:%\154\197\136\RS \n\
    \\RSenvoy.admin.v2alpha.TapRequestB2\n\
    \\FSio.envoyproxy.envoy.admin.v3B\bTapProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\172\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\ESC\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\ETB\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL*\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \t\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL\ESC\SOH\SUBN The /tap admin request body that is used to configure an active tap session.\n\
    \2\CAN [#protodoc-title: Tap]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC3\STX`\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC3\STX`\n\
    \\169\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STX@\SUB\155\SOH The opaque configuration ID used to match the configuration to a loaded extension.\n\
    \ A tap extension configures a similar opaque ID that is used to match.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ETB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ETB\ETB?\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\ETB\CAN>\n\
    \-\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SUB\STXW\SUB  The tap configuration to load.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\SUB\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SUB\SUB$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SUB'(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\SUB)V\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\ETX\SUB*Ub\ACKproto3"