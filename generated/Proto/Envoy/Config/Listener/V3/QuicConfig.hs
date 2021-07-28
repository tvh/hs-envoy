{- This file was auto-generated from envoy/config/listener/v3/quic_config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Listener.V3.QuicConfig (
        QuicProtocolOptions()
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Config.Core.V3.Protocol
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.quicProtocolOptions' @:: Lens' QuicProtocolOptions Proto.Envoy.Config.Core.V3.Protocol.QuicProtocolOptions@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.maybe'quicProtocolOptions' @:: Lens' QuicProtocolOptions (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.QuicProtocolOptions)@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.idleTimeout' @:: Lens' QuicProtocolOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.maybe'idleTimeout' @:: Lens' QuicProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.cryptoHandshakeTimeout' @:: Lens' QuicProtocolOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.maybe'cryptoHandshakeTimeout' @:: Lens' QuicProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.enabled' @:: Lens' QuicProtocolOptions Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.maybe'enabled' @:: Lens' QuicProtocolOptions (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.packetsToReadToConnectionCountRatio' @:: Lens' QuicProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.maybe'packetsToReadToConnectionCountRatio' @:: Lens' QuicProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.cryptoStreamConfig' @:: Lens' QuicProtocolOptions Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.maybe'cryptoStreamConfig' @:: Lens' QuicProtocolOptions (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.proofSourceConfig' @:: Lens' QuicProtocolOptions Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Config.Listener.V3.QuicConfig_Fields.maybe'proofSourceConfig' @:: Lens' QuicProtocolOptions (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@ -}
data QuicProtocolOptions
  = QuicProtocolOptions'_constructor {_QuicProtocolOptions'quicProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.QuicProtocolOptions),
                                      _QuicProtocolOptions'idleTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                      _QuicProtocolOptions'cryptoHandshakeTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                      _QuicProtocolOptions'enabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag),
                                      _QuicProtocolOptions'packetsToReadToConnectionCountRatio :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                      _QuicProtocolOptions'cryptoStreamConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                      _QuicProtocolOptions'proofSourceConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                      _QuicProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuicProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "quicProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.QuicProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'quicProtocolOptions
           (\ x__ y__
              -> x__ {_QuicProtocolOptions'quicProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maybe'quicProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.QuicProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'quicProtocolOptions
           (\ x__ y__
              -> x__ {_QuicProtocolOptions'quicProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "idleTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'idleTimeout
           (\ x__ y__ -> x__ {_QuicProtocolOptions'idleTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maybe'idleTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'idleTimeout
           (\ x__ y__ -> x__ {_QuicProtocolOptions'idleTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "cryptoHandshakeTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'cryptoHandshakeTimeout
           (\ x__ y__
              -> x__ {_QuicProtocolOptions'cryptoHandshakeTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maybe'cryptoHandshakeTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'cryptoHandshakeTimeout
           (\ x__ y__
              -> x__ {_QuicProtocolOptions'cryptoHandshakeTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "enabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'enabled
           (\ x__ y__ -> x__ {_QuicProtocolOptions'enabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maybe'enabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'enabled
           (\ x__ y__ -> x__ {_QuicProtocolOptions'enabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "packetsToReadToConnectionCountRatio" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'packetsToReadToConnectionCountRatio
           (\ x__ y__
              -> x__
                   {_QuicProtocolOptions'packetsToReadToConnectionCountRatio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maybe'packetsToReadToConnectionCountRatio" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'packetsToReadToConnectionCountRatio
           (\ x__ y__
              -> x__
                   {_QuicProtocolOptions'packetsToReadToConnectionCountRatio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "cryptoStreamConfig" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'cryptoStreamConfig
           (\ x__ y__ -> x__ {_QuicProtocolOptions'cryptoStreamConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maybe'cryptoStreamConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'cryptoStreamConfig
           (\ x__ y__ -> x__ {_QuicProtocolOptions'cryptoStreamConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "proofSourceConfig" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'proofSourceConfig
           (\ x__ y__ -> x__ {_QuicProtocolOptions'proofSourceConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maybe'proofSourceConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'proofSourceConfig
           (\ x__ y__ -> x__ {_QuicProtocolOptions'proofSourceConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuicProtocolOptions where
  messageName _
    = Data.Text.pack "envoy.config.listener.v3.QuicProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC3QuicProtocolOptions\DC2]\n\
      \\NAKquic_protocol_options\CAN\SOH \SOH(\v2).envoy.config.core.v3.QuicProtocolOptionsR\DC3quicProtocolOptions\DC2<\n\
      \\fidle_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\vidleTimeout\DC2S\n\
      \\CANcrypto_handshake_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SYNcryptoHandshakeTimeout\DC2B\n\
      \\aenabled\CAN\EOT \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabled\DC2}\n\
      \)packets_to_read_to_connection_count_ratio\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR#packetsToReadToConnectionCountRatioB\a\250B\EOT*\STX(\SOH\DC2\\\n\
      \\DC4crypto_stream_config\CAN\ACK \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DC2cryptoStreamConfig\DC2Z\n\
      \\DC3proof_source_config\CAN\a \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DC1proofSourceConfig:0\154\197\136\RS+\n\
      \)envoy.api.v2.listener.QuicProtocolOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        quicProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "quic_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.QuicProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'quicProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor QuicProtocolOptions
        idleTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idle_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idleTimeout")) ::
              Data.ProtoLens.FieldDescriptor QuicProtocolOptions
        cryptoHandshakeTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crypto_handshake_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cryptoHandshakeTimeout")) ::
              Data.ProtoLens.FieldDescriptor QuicProtocolOptions
        enabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'enabled")) ::
              Data.ProtoLens.FieldDescriptor QuicProtocolOptions
        packetsToReadToConnectionCountRatio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "packets_to_read_to_connection_count_ratio"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'packetsToReadToConnectionCountRatio")) ::
              Data.ProtoLens.FieldDescriptor QuicProtocolOptions
        cryptoStreamConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crypto_stream_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cryptoStreamConfig")) ::
              Data.ProtoLens.FieldDescriptor QuicProtocolOptions
        proofSourceConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proof_source_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proofSourceConfig")) ::
              Data.ProtoLens.FieldDescriptor QuicProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, quicProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 2, idleTimeout__field_descriptor),
           (Data.ProtoLens.Tag 3, cryptoHandshakeTimeout__field_descriptor),
           (Data.ProtoLens.Tag 4, enabled__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            packetsToReadToConnectionCountRatio__field_descriptor),
           (Data.ProtoLens.Tag 6, cryptoStreamConfig__field_descriptor),
           (Data.ProtoLens.Tag 7, proofSourceConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuicProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_QuicProtocolOptions'_unknownFields = y__})
  defMessage
    = QuicProtocolOptions'_constructor
        {_QuicProtocolOptions'quicProtocolOptions = Prelude.Nothing,
         _QuicProtocolOptions'idleTimeout = Prelude.Nothing,
         _QuicProtocolOptions'cryptoHandshakeTimeout = Prelude.Nothing,
         _QuicProtocolOptions'enabled = Prelude.Nothing,
         _QuicProtocolOptions'packetsToReadToConnectionCountRatio = Prelude.Nothing,
         _QuicProtocolOptions'cryptoStreamConfig = Prelude.Nothing,
         _QuicProtocolOptions'proofSourceConfig = Prelude.Nothing,
         _QuicProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuicProtocolOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser QuicProtocolOptions
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "quic_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"quicProtocolOptions") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "idle_timeout"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"idleTimeout") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "crypto_handshake_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cryptoHandshakeTimeout") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enabled"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"enabled") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "packets_to_read_to_connection_count_ratio"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"packetsToReadToConnectionCountRatio")
                                     y
                                     x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "crypto_stream_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cryptoStreamConfig") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "proof_source_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"proofSourceConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "QuicProtocolOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'quicProtocolOptions") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'idleTimeout") _x
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'cryptoHandshakeTimeout") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'enabled") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field
                                   @"maybe'packetsToReadToConnectionCountRatio")
                                _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'cryptoStreamConfig") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'proofSourceConfig") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData QuicProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuicProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuicProtocolOptions'quicProtocolOptions x__)
                (Control.DeepSeq.deepseq
                   (_QuicProtocolOptions'idleTimeout x__)
                   (Control.DeepSeq.deepseq
                      (_QuicProtocolOptions'cryptoHandshakeTimeout x__)
                      (Control.DeepSeq.deepseq
                         (_QuicProtocolOptions'enabled x__)
                         (Control.DeepSeq.deepseq
                            (_QuicProtocolOptions'packetsToReadToConnectionCountRatio x__)
                            (Control.DeepSeq.deepseq
                               (_QuicProtocolOptions'cryptoStreamConfig x__)
                               (Control.DeepSeq.deepseq
                                  (_QuicProtocolOptions'proofSourceConfig x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*envoy/config/listener/v3/quic_config.proto\DC2\CANenvoy.config.listener.v3\SUB\USenvoy/config/core/v3/base.proto\SUB$envoy/config/core/v3/extension.proto\SUB#envoy/config/core/v3/protocol.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\182\ENQ\n\
    \\DC3QuicProtocolOptions\DC2]\n\
    \\NAKquic_protocol_options\CAN\SOH \SOH(\v2).envoy.config.core.v3.QuicProtocolOptionsR\DC3quicProtocolOptions\DC2<\n\
    \\fidle_timeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\vidleTimeout\DC2S\n\
    \\CANcrypto_handshake_timeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SYNcryptoHandshakeTimeout\DC2B\n\
    \\aenabled\CAN\EOT \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabled\DC2}\n\
    \)packets_to_read_to_connection_count_ratio\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR#packetsToReadToConnectionCountRatioB\a\250B\EOT*\STX(\SOH\DC2\\\n\
    \\DC4crypto_stream_config\CAN\ACK \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DC2cryptoStreamConfig\DC2Z\n\
    \\DC3proof_source_config\CAN\a \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DC1proofSourceConfig:0\154\197\136\RS+\n\
    \)envoy.api.v2.listener.QuicProtocolOptionsBC\n\
    \&io.envoyproxy.envoy.config.listener.v3B\SIQuicConfigProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\241\DC1\n\
    \\ACK\DC2\EOT\NUL\NUL=\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL-\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL'\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL+\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SI\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DLE\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC1\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \\128\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL=\SOH\SUBI Configuration specific to the UDP QUIC listener.\n\
    \ [#next-free-field: 8]\n\
    \2) [#protodoc-title: QUIC listener config]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\ESC\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\EM\STX\SUB2\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\EM\STX\SUB2\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\STX8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\FS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\RS3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS67\n\
    \\138\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX \STX,\SUB} Maximum number of milliseconds that connection will be alive when there is\n\
    \ no network activity. 300000ms if not specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX \STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX \ESC'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX *+\n\
    \u\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX$\STX8\SUBh Connection timeout in milliseconds before the crypto handshake is finished.\n\
    \ 20000ms if not specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX$\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX$\ESC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX$67\n\
    \y\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX(\STX)\SUBl Runtime flag that controls whether the listener is enabled or not. If not specified, defaults\n\
    \ to enabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX(\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX(\GS$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX('(\n\
    \\189\EOT\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT1\STX2+\SUB\174\EOT A multiplier to number of connections which is used to determine how many packets to read per\n\
    \ event loop. A reasonable number should allow the listener to process enough payload but not\n\
    \ starve TCP and other UDP sockets and also prevent long event loop duration.\n\
    \ The default value is 32. This means if there are N QUIC connections, the total number of\n\
    \ packets to read in each read event will be 32 * N.\n\
    \ The actual number of packets to read in total by the UDP listener is also\n\
    \ bound by 6000, regardless of this field or how many connections there are.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX1\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX1\RSG\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX1JK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX2\ACK*\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\ENQ\DC2\ETX2\a)\n\
    \\195\STX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX7\STX8\SUB\181\STX Configure which implementation of `quic::QuicCryptoClientStreamBase` to be used for this listener.\n\
    \ If not specified the :ref:`QUICHE default one configured by <envoy_v3_api_msg_extensions.quic.crypto_stream.v3.CryptoServerStreamConfig>` will be used.\n\
    \ [#extension-category: envoy.quic.server.crypto_stream]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX7\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX7\US3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX767\n\
    \\157\STX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX<\STX7\SUB\143\STX Configure which implementation of `quic::ProofSource` to be used for this listener.\n\
    \ If not specified the :ref:`default one configured by <envoy_v3_api_msg_extensions.quic.proof_source.v3.ProofSourceConfig>` will be used.\n\
    \ [#extension-category: envoy.quic.proof_source]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX<\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX<\US2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX<56b\ACKproto3"