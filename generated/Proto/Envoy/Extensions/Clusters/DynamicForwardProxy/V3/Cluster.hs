{- This file was auto-generated from envoy/extensions/clusters/dynamic_forward_proxy/v3/cluster.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Clusters.DynamicForwardProxy.V3.Cluster (
        ClusterConfig()
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
import qualified Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Clusters.DynamicForwardProxy.V3.Cluster_Fields.dnsCacheConfig' @:: Lens' ClusterConfig Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig@
         * 'Proto.Envoy.Extensions.Clusters.DynamicForwardProxy.V3.Cluster_Fields.maybe'dnsCacheConfig' @:: Lens' ClusterConfig (Prelude.Maybe Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig)@
         * 'Proto.Envoy.Extensions.Clusters.DynamicForwardProxy.V3.Cluster_Fields.allowInsecureClusterOptions' @:: Lens' ClusterConfig Prelude.Bool@ -}
data ClusterConfig
  = ClusterConfig'_constructor {_ClusterConfig'dnsCacheConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig),
                                _ClusterConfig'allowInsecureClusterOptions :: !Prelude.Bool,
                                _ClusterConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterConfig "dnsCacheConfig" Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterConfig'dnsCacheConfig
           (\ x__ y__ -> x__ {_ClusterConfig'dnsCacheConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterConfig "maybe'dnsCacheConfig" (Prelude.Maybe Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterConfig'dnsCacheConfig
           (\ x__ y__ -> x__ {_ClusterConfig'dnsCacheConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClusterConfig "allowInsecureClusterOptions" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterConfig'allowInsecureClusterOptions
           (\ x__ y__
              -> x__ {_ClusterConfig'allowInsecureClusterOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.clusters.dynamic_forward_proxy.v3.ClusterConfig"
  packedMessageDescriptor _
    = "\n\
      \\rClusterConfig\DC2t\n\
      \\DLEdns_cache_config\CAN\SOH \SOH(\v2@.envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheConfigR\SOdnsCacheConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2C\n\
      \\RSallow_insecure_cluster_options\CAN\STX \SOH(\bR\ESCallowInsecureClusterOptions:G\154\197\136\RSB\n\
      \@envoy.config.cluster.dynamic_forward_proxy.v2alpha.ClusterConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dnsCacheConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_cache_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsCacheConfig")) ::
              Data.ProtoLens.FieldDescriptor ClusterConfig
        allowInsecureClusterOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_insecure_cluster_options"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allowInsecureClusterOptions")) ::
              Data.ProtoLens.FieldDescriptor ClusterConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dnsCacheConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            allowInsecureClusterOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterConfig'_unknownFields
        (\ x__ y__ -> x__ {_ClusterConfig'_unknownFields = y__})
  defMessage
    = ClusterConfig'_constructor
        {_ClusterConfig'dnsCacheConfig = Prelude.Nothing,
         _ClusterConfig'allowInsecureClusterOptions = Data.ProtoLens.fieldDefault,
         _ClusterConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterConfig -> Data.ProtoLens.Encoding.Bytes.Parser ClusterConfig
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
                                       "dns_cache_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsCacheConfig") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "allow_insecure_cluster_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowInsecureClusterOptions")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ClusterConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'dnsCacheConfig") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"allowInsecureClusterOptions") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ClusterConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClusterConfig'dnsCacheConfig x__)
                (Control.DeepSeq.deepseq
                   (_ClusterConfig'allowInsecureClusterOptions x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \@envoy/extensions/clusters/dynamic_forward_proxy/v3/cluster.proto\DC22envoy.extensions.clusters.dynamic_forward_proxy.v3\SUB@envoy/extensions/common/dynamic_forward_proxy/v3/dns_cache.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\147\STX\n\
    \\rClusterConfig\DC2t\n\
    \\DLEdns_cache_config\CAN\SOH \SOH(\v2@.envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheConfigR\SOdnsCacheConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2C\n\
    \\RSallow_insecure_cluster_options\CAN\STX \SOH(\bR\ESCallowInsecureClusterOptions:G\154\197\136\RSB\n\
    \@envoy.config.cluster.dynamic_forward_proxy.v2alpha.ClusterConfigBZ\n\
    \@io.envoyproxy.envoy.extensions.clusters.dynamic_forward_proxy.v3B\fClusterProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\254\b\n\
    \\ACK\DC2\EOT\NUL\NUL\"\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL;\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NULJ\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULY\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULY\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\160\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL\"\SOH\SUB\209\SOH Configuration for the dynamic forward proxy cluster. See the :ref:`architecture overview\n\
    \ <arch_overview_http_dynamic_forward_proxy>` for more information.\n\
    \ [#extension: envoy.clusters.dynamic_forward_proxy]\n\
    \2@ [#protodoc-title: Dynamic forward proxy cluster configuration]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\NAK\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\NAK\STX\SYNI\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\NAK\STX\SYNI\n\
    \\161\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\ESC\STX\FS4\SUB\146\STX The DNS cache configuration that the cluster will attach to. Note this configuration must\n\
    \ match that of associated :ref:`dynamic forward proxy HTTP filter configuration\n\
    \ <envoy_v3_api_field_extensions.filters.http.dynamic_forward_proxy.v3.FilterConfig.dns_cache_config>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ESC\STX0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC1A\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESCDE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\FS\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\FS\a2\n\
    \\246\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX!\STX*\SUB\232\SOH If true allow the cluster configuration to disable the auto_sni and auto_san_validation options\n\
    \ in the :ref:`cluster's upstream_http_protocol_options\n\
    \ <envoy_v3_api_field_config.cluster.v3.Cluster.upstream_http_protocol_options>`\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX!\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX!\a%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX!()b\ACKproto3"