{- This file was auto-generated from envoy/extensions/filters/network/connection_limit/v3/connection_limit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.ConnectionLimit.V3.ConnectionLimit (
        ConnectionLimit()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ConnectionLimit.V3.ConnectionLimit_Fields.statPrefix' @:: Lens' ConnectionLimit Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ConnectionLimit.V3.ConnectionLimit_Fields.maxConnections' @:: Lens' ConnectionLimit Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Extensions.Filters.Network.ConnectionLimit.V3.ConnectionLimit_Fields.maybe'maxConnections' @:: Lens' ConnectionLimit (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@
         * 'Proto.Envoy.Extensions.Filters.Network.ConnectionLimit.V3.ConnectionLimit_Fields.delay' @:: Lens' ConnectionLimit Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.ConnectionLimit.V3.ConnectionLimit_Fields.maybe'delay' @:: Lens' ConnectionLimit (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.ConnectionLimit.V3.ConnectionLimit_Fields.runtimeEnabled' @:: Lens' ConnectionLimit Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag@
         * 'Proto.Envoy.Extensions.Filters.Network.ConnectionLimit.V3.ConnectionLimit_Fields.maybe'runtimeEnabled' @:: Lens' ConnectionLimit (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)@ -}
data ConnectionLimit
  = ConnectionLimit'_constructor {_ConnectionLimit'statPrefix :: !Data.Text.Text,
                                  _ConnectionLimit'maxConnections :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                                  _ConnectionLimit'delay :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ConnectionLimit'runtimeEnabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag),
                                  _ConnectionLimit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConnectionLimit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConnectionLimit "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConnectionLimit'statPrefix
           (\ x__ y__ -> x__ {_ConnectionLimit'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConnectionLimit "maxConnections" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConnectionLimit'maxConnections
           (\ x__ y__ -> x__ {_ConnectionLimit'maxConnections = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConnectionLimit "maybe'maxConnections" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConnectionLimit'maxConnections
           (\ x__ y__ -> x__ {_ConnectionLimit'maxConnections = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConnectionLimit "delay" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConnectionLimit'delay
           (\ x__ y__ -> x__ {_ConnectionLimit'delay = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConnectionLimit "maybe'delay" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConnectionLimit'delay
           (\ x__ y__ -> x__ {_ConnectionLimit'delay = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConnectionLimit "runtimeEnabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConnectionLimit'runtimeEnabled
           (\ x__ y__ -> x__ {_ConnectionLimit'runtimeEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConnectionLimit "maybe'runtimeEnabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConnectionLimit'runtimeEnabled
           (\ x__ y__ -> x__ {_ConnectionLimit'runtimeEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message ConnectionLimit where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.connection_limit.v3.ConnectionLimit"
  packedMessageDescriptor _
    = "\n\
      \\SIConnectionLimit\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2N\n\
      \\SImax_connections\CAN\STX \SOH(\v2\FS.google.protobuf.UInt64ValueR\SOmaxConnectionsB\a\250B\EOT2\STX(\SOH\DC2/\n\
      \\ENQdelay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ENQdelay\DC2Q\n\
      \\SIruntime_enabled\CAN\EOT \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\SOruntimeEnabled"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor ConnectionLimit
        maxConnections__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_connections"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxConnections")) ::
              Data.ProtoLens.FieldDescriptor ConnectionLimit
        delay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'delay")) ::
              Data.ProtoLens.FieldDescriptor ConnectionLimit
        runtimeEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'runtimeEnabled")) ::
              Data.ProtoLens.FieldDescriptor ConnectionLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, maxConnections__field_descriptor),
           (Data.ProtoLens.Tag 3, delay__field_descriptor),
           (Data.ProtoLens.Tag 4, runtimeEnabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConnectionLimit'_unknownFields
        (\ x__ y__ -> x__ {_ConnectionLimit'_unknownFields = y__})
  defMessage
    = ConnectionLimit'_constructor
        {_ConnectionLimit'statPrefix = Data.ProtoLens.fieldDefault,
         _ConnectionLimit'maxConnections = Prelude.Nothing,
         _ConnectionLimit'delay = Prelude.Nothing,
         _ConnectionLimit'runtimeEnabled = Prelude.Nothing,
         _ConnectionLimit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConnectionLimit
          -> Data.ProtoLens.Encoding.Bytes.Parser ConnectionLimit
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_connections"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxConnections") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "delay"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"delay") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "runtime_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"runtimeEnabled") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConnectionLimit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
                       (Data.ProtoLens.Field.field @"maybe'maxConnections") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'delay") _x
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
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'runtimeEnabled") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ConnectionLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConnectionLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConnectionLimit'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_ConnectionLimit'maxConnections x__)
                   (Control.DeepSeq.deepseq
                      (_ConnectionLimit'delay x__)
                      (Control.DeepSeq.deepseq
                         (_ConnectionLimit'runtimeEnabled x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Kenvoy/extensions/filters/network/connection_limit/v3/connection_limit.proto\DC24envoy.extensions.filters.network.connection_limit.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\143\STX\n\
    \\SIConnectionLimit\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2N\n\
    \\SImax_connections\CAN\STX \SOH(\v2\FS.google.protobuf.UInt64ValueR\SOmaxConnectionsB\a\250B\EOT2\STX(\SOH\DC2/\n\
    \\ENQdelay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\ENQdelay\DC2Q\n\
    \\SIruntime_enabled\CAN\EOT \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\SOruntimeEnabledBd\n\
    \Bio.envoyproxy.envoy.extensions.filters.network.connection_limit.v3B\DC4ConnectionLimitProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\150\v\n\
    \\ACK\DC2\EOT\NUL\NUL(\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL=\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL[\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL[\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL5\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\195\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL(\SOH2\182\SOH [#protodoc-title: Connection limit]\n\
    \ Connection limit :ref:`configuration overview <config_network_filters_connection_limit>`.\n\
    \ [#extension: envoy.filters.network.connection_limit]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\ETB\n\
    \r\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STXB\SUBe The prefix to use when emitting :ref:`statistics\n\
    \ <config_network_filters_connection_limit_stats>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\CAN\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\CAN\SUB@\n\
    \\229\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\STXW\SUB\215\SOH The max connections configuration to use for new incoming connections that are processed\n\
    \ by the filter's filter chain. When max_connection is reached, the incoming connection\n\
    \ will be closed after delay duration.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\GS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\RS-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS01\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\GS2V\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\ACK\DC2\ETX\GS3U\n\
    \\219\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX#\STX%\SUB\205\STX The delay configuration to use for rejecting the connection after some specified time duration\n\
    \ instead of immediately rejecting the connection. That way, a malicious user is not able to\n\
    \ retry as fast as possible which provides a better DoS protection for Envoy. If this is not present,\n\
    \ the connection will be closed immediately.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX#\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX#\ESC \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX##$\n\
    \w\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX'\STX8\SUBj Runtime flag that controls whether the filter is enabled or not. If not specified, defaults\n\
    \ to enabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX'\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX'$3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX'67b\ACKproto3"