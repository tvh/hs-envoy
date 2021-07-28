{- This file was auto-generated from envoy/extensions/filters/network/sni_dynamic_forward_proxy/v3alpha/sni_dynamic_forward_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.SniDynamicForwardProxy.V3alpha.SniDynamicForwardProxy (
        FilterConfig(), FilterConfig'PortSpecifier(..),
        _FilterConfig'PortValue
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
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.SniDynamicForwardProxy.V3alpha.SniDynamicForwardProxy_Fields.dnsCacheConfig' @:: Lens' FilterConfig Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig@
         * 'Proto.Envoy.Extensions.Filters.Network.SniDynamicForwardProxy.V3alpha.SniDynamicForwardProxy_Fields.maybe'dnsCacheConfig' @:: Lens' FilterConfig (Prelude.Maybe Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig)@
         * 'Proto.Envoy.Extensions.Filters.Network.SniDynamicForwardProxy.V3alpha.SniDynamicForwardProxy_Fields.maybe'portSpecifier' @:: Lens' FilterConfig (Prelude.Maybe FilterConfig'PortSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Network.SniDynamicForwardProxy.V3alpha.SniDynamicForwardProxy_Fields.maybe'portValue' @:: Lens' FilterConfig (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Envoy.Extensions.Filters.Network.SniDynamicForwardProxy.V3alpha.SniDynamicForwardProxy_Fields.portValue' @:: Lens' FilterConfig Data.Word.Word32@ -}
data FilterConfig
  = FilterConfig'_constructor {_FilterConfig'dnsCacheConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig),
                               _FilterConfig'portSpecifier :: !(Prelude.Maybe FilterConfig'PortSpecifier),
                               _FilterConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data FilterConfig'PortSpecifier
  = FilterConfig'PortValue !Data.Word.Word32
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField FilterConfig "dnsCacheConfig" Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'dnsCacheConfig
           (\ x__ y__ -> x__ {_FilterConfig'dnsCacheConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterConfig "maybe'dnsCacheConfig" (Prelude.Maybe Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'dnsCacheConfig
           (\ x__ y__ -> x__ {_FilterConfig'dnsCacheConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterConfig "maybe'portSpecifier" (Prelude.Maybe FilterConfig'PortSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'portSpecifier
           (\ x__ y__ -> x__ {_FilterConfig'portSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FilterConfig "maybe'portValue" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'portSpecifier
           (\ x__ y__ -> x__ {_FilterConfig'portSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FilterConfig'PortValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FilterConfig'PortValue y__))
instance Data.ProtoLens.Field.HasField FilterConfig "portValue" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'portSpecifier
           (\ x__ y__ -> x__ {_FilterConfig'portSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FilterConfig'PortValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FilterConfig'PortValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message FilterConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.sni_dynamic_forward_proxy.v3alpha.FilterConfig"
  packedMessageDescriptor _
    = "\n\
      \\fFilterConfig\DC2t\n\
      \\DLEdns_cache_config\CAN\SOH \SOH(\v2@.envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheConfigR\SOdnsCacheConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2,\n\
      \\n\
      \port_value\CAN\STX \SOH(\rH\NULR\tportValueB\v\250B\b*\ACK\CAN\255\255\ETX \NULB\DLE\n\
      \\SOport_specifier"
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
              Data.ProtoLens.FieldDescriptor FilterConfig
        portValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "port_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'portValue")) ::
              Data.ProtoLens.FieldDescriptor FilterConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dnsCacheConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, portValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterConfig'_unknownFields
        (\ x__ y__ -> x__ {_FilterConfig'_unknownFields = y__})
  defMessage
    = FilterConfig'_constructor
        {_FilterConfig'dnsCacheConfig = Prelude.Nothing,
         _FilterConfig'portSpecifier = Prelude.Nothing,
         _FilterConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterConfig -> Data.ProtoLens.Encoding.Bytes.Parser FilterConfig
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
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "port_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"portValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FilterConfig"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'portSpecifier") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (FilterConfig'PortValue v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FilterConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FilterConfig'dnsCacheConfig x__)
                (Control.DeepSeq.deepseq (_FilterConfig'portSpecifier x__) ()))
instance Control.DeepSeq.NFData FilterConfig'PortSpecifier where
  rnf (FilterConfig'PortValue x__) = Control.DeepSeq.rnf x__
_FilterConfig'PortValue ::
  Data.ProtoLens.Prism.Prism' FilterConfig'PortSpecifier Data.Word.Word32
_FilterConfig'PortValue
  = Data.ProtoLens.Prism.prism'
      FilterConfig'PortValue
      (\ p__
         -> case p__ of {
              (FilterConfig'PortValue p__val) -> Prelude.Just p__val })
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \benvoy/extensions/filters/network/sni_dynamic_forward_proxy/v3alpha/sni_dynamic_forward_proxy.proto\DC2Benvoy.extensions.filters.network.sni_dynamic_forward_proxy.v3alpha\SUB@envoy/extensions/common/dynamic_forward_proxy/v3/dns_cache.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\196\SOH\n\
    \\fFilterConfig\DC2t\n\
    \\DLEdns_cache_config\CAN\SOH \SOH(\v2@.envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheConfigR\SOdnsCacheConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2,\n\
    \\n\
    \port_value\CAN\STX \SOH(\rH\NULR\tportValueB\v\250B\b*\ACK\CAN\255\255\ETX \NULB\DLE\n\
    \\SOport_specifierB\129\SOH\n\
    \Pio.envoyproxy.envoy.extensions.filters.network.sni_dynamic_forward_proxy.v3alphaB\ESCSniDynamicForwardProxyProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\238\b\n\
    \\ACK\DC2\EOT\NUL\NUL#\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NULK\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NULJ\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULi\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULi\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL<\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\f\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\170\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL#\SOH\SUB\237\STX Configuration for the SNI-based dynamic forward proxy filter. See the\n\
    \ :ref:`architecture overview <arch_overview_http_dynamic_forward_proxy>` for\n\
    \ more information. Note this filter must be configured along with\n\
    \ :ref:`TLS inspector listener filter <config_listener_filters_tls_inspector>`\n\
    \ to work.\n\
    \ [#extension: envoy.filters.network.sni_dynamic_forward_proxy]\n\
    \2. [#protodoc-title: SNI dynamic forward proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\DC4\n\
    \\154\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\FS\STX\GS4\SUB\139\STX The DNS cache configuration that the filter will attach to. Note this\n\
    \ configuration must match that of associated :ref:`dynamic forward proxy\n\
    \ cluster configuration\n\
    \ <envoy_v3_api_field_extensions.clusters.dynamic_forward_proxy.v3.ClusterConfig.dns_cache_config>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\FS\STX0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS1A\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FSDE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\GS\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\GS\a2\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\US\STX\"\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\US\b\SYN\n\
    \:\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX!\EOTI\SUB- The port number to connect to the upstream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX!\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX!\v\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX!\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX!\SUBH\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\ENQ\DC2\ETX!\ESCGb\ACKproto3"