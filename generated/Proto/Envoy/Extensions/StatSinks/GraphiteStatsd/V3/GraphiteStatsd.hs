{- This file was auto-generated from envoy/extensions/stat_sinks/graphite_statsd/v3/graphite_statsd.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.StatSinks.GraphiteStatsd.V3.GraphiteStatsd (
        GraphiteStatsdSink(), GraphiteStatsdSink'StatsdSpecifier(..),
        _GraphiteStatsdSink'Address
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.StatSinks.GraphiteStatsd.V3.GraphiteStatsd_Fields.prefix' @:: Lens' GraphiteStatsdSink Data.Text.Text@
         * 'Proto.Envoy.Extensions.StatSinks.GraphiteStatsd.V3.GraphiteStatsd_Fields.maxBytesPerDatagram' @:: Lens' GraphiteStatsdSink Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Extensions.StatSinks.GraphiteStatsd.V3.GraphiteStatsd_Fields.maybe'maxBytesPerDatagram' @:: Lens' GraphiteStatsdSink (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@
         * 'Proto.Envoy.Extensions.StatSinks.GraphiteStatsd.V3.GraphiteStatsd_Fields.maybe'statsdSpecifier' @:: Lens' GraphiteStatsdSink (Prelude.Maybe GraphiteStatsdSink'StatsdSpecifier)@
         * 'Proto.Envoy.Extensions.StatSinks.GraphiteStatsd.V3.GraphiteStatsd_Fields.maybe'address' @:: Lens' GraphiteStatsdSink (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Extensions.StatSinks.GraphiteStatsd.V3.GraphiteStatsd_Fields.address' @:: Lens' GraphiteStatsdSink Proto.Envoy.Config.Core.V3.Address.Address@ -}
data GraphiteStatsdSink
  = GraphiteStatsdSink'_constructor {_GraphiteStatsdSink'prefix :: !Data.Text.Text,
                                     _GraphiteStatsdSink'maxBytesPerDatagram :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                                     _GraphiteStatsdSink'statsdSpecifier :: !(Prelude.Maybe GraphiteStatsdSink'StatsdSpecifier),
                                     _GraphiteStatsdSink'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GraphiteStatsdSink where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data GraphiteStatsdSink'StatsdSpecifier
  = GraphiteStatsdSink'Address !Proto.Envoy.Config.Core.V3.Address.Address
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField GraphiteStatsdSink "prefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GraphiteStatsdSink'prefix
           (\ x__ y__ -> x__ {_GraphiteStatsdSink'prefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GraphiteStatsdSink "maxBytesPerDatagram" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GraphiteStatsdSink'maxBytesPerDatagram
           (\ x__ y__ -> x__ {_GraphiteStatsdSink'maxBytesPerDatagram = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GraphiteStatsdSink "maybe'maxBytesPerDatagram" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GraphiteStatsdSink'maxBytesPerDatagram
           (\ x__ y__ -> x__ {_GraphiteStatsdSink'maxBytesPerDatagram = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GraphiteStatsdSink "maybe'statsdSpecifier" (Prelude.Maybe GraphiteStatsdSink'StatsdSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GraphiteStatsdSink'statsdSpecifier
           (\ x__ y__ -> x__ {_GraphiteStatsdSink'statsdSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GraphiteStatsdSink "maybe'address" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GraphiteStatsdSink'statsdSpecifier
           (\ x__ y__ -> x__ {_GraphiteStatsdSink'statsdSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GraphiteStatsdSink'Address x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap GraphiteStatsdSink'Address y__))
instance Data.ProtoLens.Field.HasField GraphiteStatsdSink "address" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GraphiteStatsdSink'statsdSpecifier
           (\ x__ y__ -> x__ {_GraphiteStatsdSink'statsdSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GraphiteStatsdSink'Address x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap GraphiteStatsdSink'Address y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message GraphiteStatsdSink where
  messageName _
    = Data.Text.pack
        "envoy.extensions.stat_sinks.graphite_statsd.v3.GraphiteStatsdSink"
  packedMessageDescriptor _
    = "\n\
      \\DC2GraphiteStatsdSink\DC29\n\
      \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressH\NULR\aaddress\DC2\SYN\n\
      \\ACKprefix\CAN\ETX \SOH(\tR\ACKprefix\DC2Z\n\
      \\SYNmax_bytes_per_datagram\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt64ValueR\DC3maxBytesPerDatagramB\a\250B\EOT2\STX \NULB\ETB\n\
      \\DLEstatsd_specifier\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        prefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"prefix")) ::
              Data.ProtoLens.FieldDescriptor GraphiteStatsdSink
        maxBytesPerDatagram__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_bytes_per_datagram"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxBytesPerDatagram")) ::
              Data.ProtoLens.FieldDescriptor GraphiteStatsdSink
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor GraphiteStatsdSink
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, prefix__field_descriptor),
           (Data.ProtoLens.Tag 4, maxBytesPerDatagram__field_descriptor),
           (Data.ProtoLens.Tag 1, address__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GraphiteStatsdSink'_unknownFields
        (\ x__ y__ -> x__ {_GraphiteStatsdSink'_unknownFields = y__})
  defMessage
    = GraphiteStatsdSink'_constructor
        {_GraphiteStatsdSink'prefix = Data.ProtoLens.fieldDefault,
         _GraphiteStatsdSink'maxBytesPerDatagram = Prelude.Nothing,
         _GraphiteStatsdSink'statsdSpecifier = Prelude.Nothing,
         _GraphiteStatsdSink'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GraphiteStatsdSink
          -> Data.ProtoLens.Encoding.Bytes.Parser GraphiteStatsdSink
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
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "prefix"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prefix") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_bytes_per_datagram"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxBytesPerDatagram") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "address"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GraphiteStatsdSink"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"prefix") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
                       (Data.ProtoLens.Field.field @"maybe'maxBytesPerDatagram") _x
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
                          (Data.ProtoLens.Field.field @"maybe'statsdSpecifier") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (GraphiteStatsdSink'Address v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData GraphiteStatsdSink where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GraphiteStatsdSink'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GraphiteStatsdSink'prefix x__)
                (Control.DeepSeq.deepseq
                   (_GraphiteStatsdSink'maxBytesPerDatagram x__)
                   (Control.DeepSeq.deepseq
                      (_GraphiteStatsdSink'statsdSpecifier x__) ())))
instance Control.DeepSeq.NFData GraphiteStatsdSink'StatsdSpecifier where
  rnf (GraphiteStatsdSink'Address x__) = Control.DeepSeq.rnf x__
_GraphiteStatsdSink'Address ::
  Data.ProtoLens.Prism.Prism' GraphiteStatsdSink'StatsdSpecifier Proto.Envoy.Config.Core.V3.Address.Address
_GraphiteStatsdSink'Address
  = Data.ProtoLens.Prism.prism'
      GraphiteStatsdSink'Address
      (\ p__
         -> case p__ of {
              (GraphiteStatsdSink'Address p__val) -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Denvoy/extensions/stat_sinks/graphite_statsd/v3/graphite_statsd.proto\DC2.envoy.extensions.stat_sinks.graphite_statsd.v3\SUB\"envoy/config/core/v3/address.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\220\SOH\n\
    \\DC2GraphiteStatsdSink\DC29\n\
    \\aaddress\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressH\NULR\aaddress\DC2\SYN\n\
    \\ACKprefix\CAN\ETX \SOH(\tR\ACKprefix\DC2Z\n\
    \\SYNmax_bytes_per_datagram\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt64ValueR\DC3maxBytesPerDatagramB\a\250B\EOT2\STX \NULB\ETB\n\
    \\DLEstatsd_specifier\DC2\ETX\248B\SOHB]\n\
    \<io.envoyproxy.envoy.extensions.stat_sinks.graphite_statsd.v3B\DC3GraphiteStatsdProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\175\v\n\
    \\ACK\DC2\EOT\NUL\NUL+\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL7\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULU\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULU\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL4\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\129\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL+\SOH2\244\STX [#protodoc-title: Graphite+Statsd]\n\
    \ Stats configuration proto schema for ``envoy.stat_sinks.graphite_statsd`` sink.\n\
    \ The sink emits stats with `Graphite <https://graphite.readthedocs.io/en/latest/tags.html>`_\n\
    \ compatible tags. Tags are configurable via :ref:`StatsConfig\n\
    \ <envoy_v3_api_msg_config.metrics.v3.StatsConfig>`.\n\
    \ [#extension: envoy.stat_sinks.graphite_statsd]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\SUB\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\CAN\STX\RS\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\CAN\b\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX\EM\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX\EM\EOT&\n\
    \\131\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\GS\EOT'\SUBv The UDP address of a running Graphite-compliant listener. If specified,\n\
    \ statistics will be flushed to this address.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\GS\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\ESC\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\GS%&\n\
    \\164\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STX\DC4\SUB\150\SOH Optional custom metric name prefix. See :ref:`StatsdSink's prefix field\n\
    \ <envoy_v3_api_field_config.metrics.v3.StatsdSink.prefix>` for more details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\"\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"\DC2\DC3\n\
    \\248\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX*\STX]\SUB\234\STX Optional max datagram size to use when sending UDP messages. By default Envoy\n\
    \ will emit one metric per datagram. By specifying a max-size larger than a single\n\
    \ metric, Envoy will emit multiple, new-line separated metrics. The max datagram\n\
    \ size should not exceed your network's MTU.\n\
    \\n\
    \ Note that this value may not be respected if smaller than a single metric.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX*\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX*\RS4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX*78\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX*9\\\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\ACK\DC2\ETX*:[b\ACKproto3"