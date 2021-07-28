{- This file was auto-generated from envoy/extensions/filters/network/zookeeper_proxy/v3/zookeeper_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.ZookeeperProxy.V3.ZookeeperProxy (
        ZooKeeperProxy()
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ZookeeperProxy.V3.ZookeeperProxy_Fields.statPrefix' @:: Lens' ZooKeeperProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ZookeeperProxy.V3.ZookeeperProxy_Fields.accessLog' @:: Lens' ZooKeeperProxy Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ZookeeperProxy.V3.ZookeeperProxy_Fields.maxPacketBytes' @:: Lens' ZooKeeperProxy Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Network.ZookeeperProxy.V3.ZookeeperProxy_Fields.maybe'maxPacketBytes' @:: Lens' ZooKeeperProxy (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data ZooKeeperProxy
  = ZooKeeperProxy'_constructor {_ZooKeeperProxy'statPrefix :: !Data.Text.Text,
                                 _ZooKeeperProxy'accessLog :: !Data.Text.Text,
                                 _ZooKeeperProxy'maxPacketBytes :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                 _ZooKeeperProxy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZooKeeperProxy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ZooKeeperProxy "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZooKeeperProxy'statPrefix
           (\ x__ y__ -> x__ {_ZooKeeperProxy'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ZooKeeperProxy "accessLog" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZooKeeperProxy'accessLog
           (\ x__ y__ -> x__ {_ZooKeeperProxy'accessLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ZooKeeperProxy "maxPacketBytes" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZooKeeperProxy'maxPacketBytes
           (\ x__ y__ -> x__ {_ZooKeeperProxy'maxPacketBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ZooKeeperProxy "maybe'maxPacketBytes" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZooKeeperProxy'maxPacketBytes
           (\ x__ y__ -> x__ {_ZooKeeperProxy'maxPacketBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message ZooKeeperProxy where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.zookeeper_proxy.v3.ZooKeeperProxy"
  packedMessageDescriptor _
    = "\n\
      \\SOZooKeeperProxy\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
      \\n\
      \access_log\CAN\STX \SOH(\tR\taccessLog\DC2F\n\
      \\DLEmax_packet_bytes\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOmaxPacketBytes:J\154\197\136\RSE\n\
      \Cenvoy.config.filter.network.zookeeper_proxy.v1alpha1.ZooKeeperProxy"
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
              Data.ProtoLens.FieldDescriptor ZooKeeperProxy
        accessLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "access_log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"accessLog")) ::
              Data.ProtoLens.FieldDescriptor ZooKeeperProxy
        maxPacketBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_packet_bytes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxPacketBytes")) ::
              Data.ProtoLens.FieldDescriptor ZooKeeperProxy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, accessLog__field_descriptor),
           (Data.ProtoLens.Tag 3, maxPacketBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ZooKeeperProxy'_unknownFields
        (\ x__ y__ -> x__ {_ZooKeeperProxy'_unknownFields = y__})
  defMessage
    = ZooKeeperProxy'_constructor
        {_ZooKeeperProxy'statPrefix = Data.ProtoLens.fieldDefault,
         _ZooKeeperProxy'accessLog = Data.ProtoLens.fieldDefault,
         _ZooKeeperProxy'maxPacketBytes = Prelude.Nothing,
         _ZooKeeperProxy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ZooKeeperProxy
          -> Data.ProtoLens.Encoding.Bytes.Parser ZooKeeperProxy
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "access_log"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"accessLog") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_packet_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxPacketBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ZooKeeperProxy"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"accessLog") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
                          (Data.ProtoLens.Field.field @"maybe'maxPacketBytes") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ZooKeeperProxy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ZooKeeperProxy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ZooKeeperProxy'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_ZooKeeperProxy'accessLog x__)
                   (Control.DeepSeq.deepseq (_ZooKeeperProxy'maxPacketBytes x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Ienvoy/extensions/filters/network/zookeeper_proxy/v3/zookeeper_proxy.proto\DC23envoy.extensions.filters.network.zookeeper_proxy.v3\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\237\SOH\n\
    \\SOZooKeeperProxy\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
    \\n\
    \access_log\CAN\STX \SOH(\tR\taccessLog\DC2F\n\
    \\DLEmax_packet_bytes\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOmaxPacketBytes:J\154\197\136\RSE\n\
    \Cenvoy.config.filter.network.zookeeper_proxy.v1alpha1.ZooKeeperProxyBb\n\
    \Aio.envoyproxy.envoy.extensions.filters.network.zookeeper_proxy.v3B\DC3ZookeeperProxyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\223\t\n\
    \\ACK\DC2\EOT\NUL\NUL(\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL<\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULZ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULZ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL4\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\191\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL(\SOH2\178\SOH [#protodoc-title: ZooKeeper proxy]\n\
    \ ZooKeeper Proxy :ref:`configuration overview <config_network_filters_zookeeper_proxy>`.\n\
    \ [#extension: envoy.filters.network.zookeeper_proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\SYN\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAKL\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAKL\n\
    \\128\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\STXB\SUBs The human readable prefix to use when emitting :ref:`statistics\n\
    \ <config_network_filters_zookeeper_proxy_stats>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\EM\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\EM\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\EM\SUB@\n\
    \\168\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\STX\CAN\SUB\154\SOH [#not-implemented-hide:] The optional path to use for writing ZooKeeper access logs.\n\
    \ If the access log field is empty, access logs will not be written.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS\SYN\ETB\n\
    \\132\ETX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX'\STX3\SUB\246\STX Messages \226\128\148 requests, responses and events \226\128\148 that are bigger than this value will\n\
    \ be ignored. If it is not set, the default value is 1Mb.\n\
    \\n\
    \ The value here should match the jute.maxbuffer property in your cluster configuration:\n\
    \\n\
    \ https://zookeeper.apache.org/doc/r3.4.10/zookeeperAdmin.html#Unsafe+Options\n\
    \\n\
    \ if that is set. If it isn't, ZooKeeper's default is also 1Mb.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX'\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX'\RS.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX'12b\ACKproto3"