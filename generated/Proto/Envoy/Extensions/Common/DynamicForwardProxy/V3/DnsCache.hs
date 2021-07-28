{- This file was auto-generated from envoy/extensions/common/dynamic_forward_proxy/v3/dns_cache.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache (
        DnsCacheCircuitBreakers(), DnsCacheConfig()
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
import qualified Proto.Envoy.Annotations.Deprecation
import qualified Proto.Envoy.Config.Cluster.V3.Cluster
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Resolver
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.maxPendingRequests' @:: Lens' DnsCacheCircuitBreakers Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.maybe'maxPendingRequests' @:: Lens' DnsCacheCircuitBreakers (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data DnsCacheCircuitBreakers
  = DnsCacheCircuitBreakers'_constructor {_DnsCacheCircuitBreakers'maxPendingRequests :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                          _DnsCacheCircuitBreakers'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsCacheCircuitBreakers where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsCacheCircuitBreakers "maxPendingRequests" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheCircuitBreakers'maxPendingRequests
           (\ x__ y__
              -> x__ {_DnsCacheCircuitBreakers'maxPendingRequests = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsCacheCircuitBreakers "maybe'maxPendingRequests" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheCircuitBreakers'maxPendingRequests
           (\ x__ y__
              -> x__ {_DnsCacheCircuitBreakers'maxPendingRequests = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsCacheCircuitBreakers where
  messageName _
    = Data.Text.pack
        "envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheCircuitBreakers"
  packedMessageDescriptor _
    = "\n\
      \\ETBDnsCacheCircuitBreakers\DC2N\n\
      \\DC4max_pending_requests\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxPendingRequests"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxPendingRequests__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_pending_requests"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxPendingRequests")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheCircuitBreakers
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxPendingRequests__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsCacheCircuitBreakers'_unknownFields
        (\ x__ y__ -> x__ {_DnsCacheCircuitBreakers'_unknownFields = y__})
  defMessage
    = DnsCacheCircuitBreakers'_constructor
        {_DnsCacheCircuitBreakers'maxPendingRequests = Prelude.Nothing,
         _DnsCacheCircuitBreakers'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsCacheCircuitBreakers
          -> Data.ProtoLens.Encoding.Bytes.Parser DnsCacheCircuitBreakers
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
                                       "max_pending_requests"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxPendingRequests") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DnsCacheCircuitBreakers"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxPendingRequests") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData DnsCacheCircuitBreakers where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsCacheCircuitBreakers'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsCacheCircuitBreakers'maxPendingRequests x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.name' @:: Lens' DnsCacheConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.dnsLookupFamily' @:: Lens' DnsCacheConfig Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'DnsLookupFamily@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.dnsRefreshRate' @:: Lens' DnsCacheConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.maybe'dnsRefreshRate' @:: Lens' DnsCacheConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.hostTtl' @:: Lens' DnsCacheConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.maybe'hostTtl' @:: Lens' DnsCacheConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.maxHosts' @:: Lens' DnsCacheConfig Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.maybe'maxHosts' @:: Lens' DnsCacheConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.dnsFailureRefreshRate' @:: Lens' DnsCacheConfig Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'RefreshRate@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.maybe'dnsFailureRefreshRate' @:: Lens' DnsCacheConfig (Prelude.Maybe Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'RefreshRate)@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.dnsCacheCircuitBreaker' @:: Lens' DnsCacheConfig DnsCacheCircuitBreakers@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.maybe'dnsCacheCircuitBreaker' @:: Lens' DnsCacheConfig (Prelude.Maybe DnsCacheCircuitBreakers)@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.useTcpForDnsLookups' @:: Lens' DnsCacheConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.dnsResolutionConfig' @:: Lens' DnsCacheConfig Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.maybe'dnsResolutionConfig' @:: Lens' DnsCacheConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig)@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.preresolveHostnames' @:: Lens' DnsCacheConfig [Proto.Envoy.Config.Core.V3.Address.SocketAddress]@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.vec'preresolveHostnames' @:: Lens' DnsCacheConfig (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.SocketAddress)@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.dnsQueryTimeout' @:: Lens' DnsCacheConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields.maybe'dnsQueryTimeout' @:: Lens' DnsCacheConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data DnsCacheConfig
  = DnsCacheConfig'_constructor {_DnsCacheConfig'name :: !Data.Text.Text,
                                 _DnsCacheConfig'dnsLookupFamily :: !Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'DnsLookupFamily,
                                 _DnsCacheConfig'dnsRefreshRate :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                 _DnsCacheConfig'hostTtl :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                 _DnsCacheConfig'maxHosts :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                 _DnsCacheConfig'dnsFailureRefreshRate :: !(Prelude.Maybe Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'RefreshRate),
                                 _DnsCacheConfig'dnsCacheCircuitBreaker :: !(Prelude.Maybe DnsCacheCircuitBreakers),
                                 _DnsCacheConfig'useTcpForDnsLookups :: !Prelude.Bool,
                                 _DnsCacheConfig'dnsResolutionConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig),
                                 _DnsCacheConfig'preresolveHostnames :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.SocketAddress),
                                 _DnsCacheConfig'dnsQueryTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                 _DnsCacheConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DnsCacheConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DnsCacheConfig "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'name
           (\ x__ y__ -> x__ {_DnsCacheConfig'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsCacheConfig "dnsLookupFamily" Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'DnsLookupFamily where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsLookupFamily
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsLookupFamily = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsCacheConfig "dnsRefreshRate" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsRefreshRate
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsRefreshRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsCacheConfig "maybe'dnsRefreshRate" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsRefreshRate
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsRefreshRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsCacheConfig "hostTtl" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'hostTtl
           (\ x__ y__ -> x__ {_DnsCacheConfig'hostTtl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsCacheConfig "maybe'hostTtl" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'hostTtl
           (\ x__ y__ -> x__ {_DnsCacheConfig'hostTtl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsCacheConfig "maxHosts" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'maxHosts
           (\ x__ y__ -> x__ {_DnsCacheConfig'maxHosts = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsCacheConfig "maybe'maxHosts" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'maxHosts
           (\ x__ y__ -> x__ {_DnsCacheConfig'maxHosts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsCacheConfig "dnsFailureRefreshRate" Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'RefreshRate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsFailureRefreshRate
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsFailureRefreshRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsCacheConfig "maybe'dnsFailureRefreshRate" (Prelude.Maybe Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'RefreshRate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsFailureRefreshRate
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsFailureRefreshRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsCacheConfig "dnsCacheCircuitBreaker" DnsCacheCircuitBreakers where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsCacheCircuitBreaker
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsCacheCircuitBreaker = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsCacheConfig "maybe'dnsCacheCircuitBreaker" (Prelude.Maybe DnsCacheCircuitBreakers) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsCacheCircuitBreaker
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsCacheCircuitBreaker = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsCacheConfig "useTcpForDnsLookups" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'useTcpForDnsLookups
           (\ x__ y__ -> x__ {_DnsCacheConfig'useTcpForDnsLookups = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsCacheConfig "dnsResolutionConfig" Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsResolutionConfig
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsResolutionConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsCacheConfig "maybe'dnsResolutionConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsResolutionConfig
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsResolutionConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsCacheConfig "preresolveHostnames" [Proto.Envoy.Config.Core.V3.Address.SocketAddress] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'preresolveHostnames
           (\ x__ y__ -> x__ {_DnsCacheConfig'preresolveHostnames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField DnsCacheConfig "vec'preresolveHostnames" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.SocketAddress) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'preresolveHostnames
           (\ x__ y__ -> x__ {_DnsCacheConfig'preresolveHostnames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DnsCacheConfig "dnsQueryTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsQueryTimeout
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsQueryTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField DnsCacheConfig "maybe'dnsQueryTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DnsCacheConfig'dnsQueryTimeout
           (\ x__ y__ -> x__ {_DnsCacheConfig'dnsQueryTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Message DnsCacheConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheConfig"
  packedMessageDescriptor _
    = "\n\
      \\SODnsCacheConfig\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2f\n\
      \\DC1dns_lookup_family\CAN\STX \SOH(\SO20.envoy.config.cluster.v3.Cluster.DnsLookupFamilyR\SIdnsLookupFamilyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2Q\n\
      \\DLEdns_refresh_rate\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SOdnsRefreshRateB\f\250B\t\170\SOH\ACK2\EOT\DLE\192\132=\DC2>\n\
      \\bhost_ttl\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\ahostTtlB\b\250B\ENQ\170\SOH\STX*\NUL\DC2B\n\
      \\tmax_hosts\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\bmaxHostsB\a\250B\EOT*\STX \NUL\DC2e\n\
      \\CANdns_failure_refresh_rate\CAN\ACK \SOH(\v2,.envoy.config.cluster.v3.Cluster.RefreshRateR\NAKdnsFailureRefreshRate\DC2\132\SOH\n\
      \\EMdns_cache_circuit_breaker\CAN\a \SOH(\v2I.envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheCircuitBreakersR\SYNdnsCacheCircuitBreaker\DC2A\n\
      \\ETBuse_tcp_for_dns_lookups\CAN\b \SOH(\bR\DC3useTcpForDnsLookupsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2]\n\
      \\NAKdns_resolution_config\CAN\t \SOH(\v2).envoy.config.core.v3.DnsResolutionConfigR\DC3dnsResolutionConfig\DC2V\n\
      \\DC4preresolve_hostnames\CAN\n\
      \ \ETX(\v2#.envoy.config.core.v3.SocketAddressR\DC3preresolveHostnames\DC2O\n\
      \\DC1dns_query_timeout\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\SIdnsQueryTimeoutB\b\250B\ENQ\170\SOH\STX*\NUL:G\154\197\136\RSB\n\
      \@envoy.config.common.dynamic_forward_proxy.v2alpha.DnsCacheConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
        dnsLookupFamily__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_lookup_family"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'DnsLookupFamily)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dnsLookupFamily")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
        dnsRefreshRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_refresh_rate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsRefreshRate")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
        hostTtl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_ttl"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hostTtl")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
        maxHosts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_hosts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxHosts")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
        dnsFailureRefreshRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_failure_refresh_rate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Cluster.V3.Cluster.Cluster'RefreshRate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsFailureRefreshRate")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
        dnsCacheCircuitBreaker__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_cache_circuit_breaker"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor DnsCacheCircuitBreakers)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsCacheCircuitBreaker")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
        useTcpForDnsLookups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_tcp_for_dns_lookups"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useTcpForDnsLookups")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
        dnsResolutionConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_resolution_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsResolutionConfig")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
        preresolveHostnames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "preresolve_hostnames"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.SocketAddress)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"preresolveHostnames")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
        dnsQueryTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_query_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsQueryTimeout")) ::
              Data.ProtoLens.FieldDescriptor DnsCacheConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, dnsLookupFamily__field_descriptor),
           (Data.ProtoLens.Tag 3, dnsRefreshRate__field_descriptor),
           (Data.ProtoLens.Tag 4, hostTtl__field_descriptor),
           (Data.ProtoLens.Tag 5, maxHosts__field_descriptor),
           (Data.ProtoLens.Tag 6, dnsFailureRefreshRate__field_descriptor),
           (Data.ProtoLens.Tag 7, dnsCacheCircuitBreaker__field_descriptor),
           (Data.ProtoLens.Tag 8, useTcpForDnsLookups__field_descriptor),
           (Data.ProtoLens.Tag 9, dnsResolutionConfig__field_descriptor),
           (Data.ProtoLens.Tag 10, preresolveHostnames__field_descriptor),
           (Data.ProtoLens.Tag 11, dnsQueryTimeout__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DnsCacheConfig'_unknownFields
        (\ x__ y__ -> x__ {_DnsCacheConfig'_unknownFields = y__})
  defMessage
    = DnsCacheConfig'_constructor
        {_DnsCacheConfig'name = Data.ProtoLens.fieldDefault,
         _DnsCacheConfig'dnsLookupFamily = Data.ProtoLens.fieldDefault,
         _DnsCacheConfig'dnsRefreshRate = Prelude.Nothing,
         _DnsCacheConfig'hostTtl = Prelude.Nothing,
         _DnsCacheConfig'maxHosts = Prelude.Nothing,
         _DnsCacheConfig'dnsFailureRefreshRate = Prelude.Nothing,
         _DnsCacheConfig'dnsCacheCircuitBreaker = Prelude.Nothing,
         _DnsCacheConfig'useTcpForDnsLookups = Data.ProtoLens.fieldDefault,
         _DnsCacheConfig'dnsResolutionConfig = Prelude.Nothing,
         _DnsCacheConfig'preresolveHostnames = Data.Vector.Generic.empty,
         _DnsCacheConfig'dnsQueryTimeout = Prelude.Nothing,
         _DnsCacheConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DnsCacheConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Address.SocketAddress
             -> Data.ProtoLens.Encoding.Bytes.Parser DnsCacheConfig
        loop x mutable'preresolveHostnames
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'preresolveHostnames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'preresolveHostnames)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'preresolveHostnames")
                              frozen'preresolveHostnames
                              x))
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
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'preresolveHostnames
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "dns_lookup_family"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsLookupFamily") y x)
                                  mutable'preresolveHostnames
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_refresh_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsRefreshRate") y x)
                                  mutable'preresolveHostnames
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "host_ttl"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"hostTtl") y x)
                                  mutable'preresolveHostnames
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_hosts"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxHosts") y x)
                                  mutable'preresolveHostnames
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_failure_refresh_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsFailureRefreshRate") y x)
                                  mutable'preresolveHostnames
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_cache_circuit_breaker"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsCacheCircuitBreaker") y x)
                                  mutable'preresolveHostnames
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_tcp_for_dns_lookups"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useTcpForDnsLookups") y x)
                                  mutable'preresolveHostnames
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_resolution_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsResolutionConfig") y x)
                                  mutable'preresolveHostnames
                        82
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "preresolve_hostnames"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'preresolveHostnames y)
                                loop x v
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_query_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsQueryTimeout") y x)
                                  mutable'preresolveHostnames
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'preresolveHostnames
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'preresolveHostnames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'preresolveHostnames)
          "DnsCacheConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"dnsLookupFamily") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'dnsRefreshRate") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'hostTtl") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'maxHosts") _x
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
                                   (Data.ProtoLens.Field.field @"maybe'dnsFailureRefreshRate") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'dnsCacheCircuitBreaker")
                                      _x
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
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"useTcpForDnsLookups") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (\ b -> if b then 1 else 0)
                                              _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'dnsResolutionConfig")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  _v))
                                     ((Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                           (\ _v
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                   ((Prelude..)
                                                      (\ bs
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 (Prelude.fromIntegral
                                                                    (Data.ByteString.length bs)))
                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                 bs))
                                                      Data.ProtoLens.encodeMessage
                                                      _v))
                                           (Lens.Family2.view
                                              (Data.ProtoLens.Field.field
                                                 @"vec'preresolveHostnames")
                                              _x))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'dnsQueryTimeout")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage
                                                        _v))
                                           (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                              (Lens.Family2.view
                                                 Data.ProtoLens.unknownFields _x))))))))))))
instance Control.DeepSeq.NFData DnsCacheConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DnsCacheConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DnsCacheConfig'name x__)
                (Control.DeepSeq.deepseq
                   (_DnsCacheConfig'dnsLookupFamily x__)
                   (Control.DeepSeq.deepseq
                      (_DnsCacheConfig'dnsRefreshRate x__)
                      (Control.DeepSeq.deepseq
                         (_DnsCacheConfig'hostTtl x__)
                         (Control.DeepSeq.deepseq
                            (_DnsCacheConfig'maxHosts x__)
                            (Control.DeepSeq.deepseq
                               (_DnsCacheConfig'dnsFailureRefreshRate x__)
                               (Control.DeepSeq.deepseq
                                  (_DnsCacheConfig'dnsCacheCircuitBreaker x__)
                                  (Control.DeepSeq.deepseq
                                     (_DnsCacheConfig'useTcpForDnsLookups x__)
                                     (Control.DeepSeq.deepseq
                                        (_DnsCacheConfig'dnsResolutionConfig x__)
                                        (Control.DeepSeq.deepseq
                                           (_DnsCacheConfig'preresolveHostnames x__)
                                           (Control.DeepSeq.deepseq
                                              (_DnsCacheConfig'dnsQueryTimeout x__) ())))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \@envoy/extensions/common/dynamic_forward_proxy/v3/dns_cache.proto\DC20envoy.extensions.common.dynamic_forward_proxy.v3\SUB%envoy/config/cluster/v3/cluster.proto\SUB\"envoy/config/core/v3/address.proto\SUB#envoy/config/core/v3/resolver.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"i\n\
    \\ETBDnsCacheCircuitBreakers\DC2N\n\
    \\DC4max_pending_requests\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxPendingRequests\"\238\a\n\
    \\SODnsCacheConfig\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2f\n\
    \\DC1dns_lookup_family\CAN\STX \SOH(\SO20.envoy.config.cluster.v3.Cluster.DnsLookupFamilyR\SIdnsLookupFamilyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2Q\n\
    \\DLEdns_refresh_rate\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SOdnsRefreshRateB\f\250B\t\170\SOH\ACK2\EOT\DLE\192\132=\DC2>\n\
    \\bhost_ttl\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\ahostTtlB\b\250B\ENQ\170\SOH\STX*\NUL\DC2B\n\
    \\tmax_hosts\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\bmaxHostsB\a\250B\EOT*\STX \NUL\DC2e\n\
    \\CANdns_failure_refresh_rate\CAN\ACK \SOH(\v2,.envoy.config.cluster.v3.Cluster.RefreshRateR\NAKdnsFailureRefreshRate\DC2\132\SOH\n\
    \\EMdns_cache_circuit_breaker\CAN\a \SOH(\v2I.envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheCircuitBreakersR\SYNdnsCacheCircuitBreaker\DC2A\n\
    \\ETBuse_tcp_for_dns_lookups\CAN\b \SOH(\bR\DC3useTcpForDnsLookupsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2]\n\
    \\NAKdns_resolution_config\CAN\t \SOH(\v2).envoy.config.core.v3.DnsResolutionConfigR\DC3dnsResolutionConfig\DC2V\n\
    \\DC4preresolve_hostnames\CAN\n\
    \ \ETX(\v2#.envoy.config.core.v3.SocketAddressR\DC3preresolveHostnames\DC2O\n\
    \\DC1dns_query_timeout\CAN\v \SOH(\v2\EM.google.protobuf.DurationR\SIdnsQueryTimeoutB\b\250B\ENQ\170\SOH\STX*\NUL:G\154\197\136\RSB\n\
    \@envoy.config.common.dynamic_forward_proxy.v2alpha.DnsCacheConfigBY\n\
    \>io.envoyproxy.envoy.extensions.common.dynamic_forward_proxy.v3B\rDnsCacheProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\228(\n\
    \\ACK\DC2\EOT\NUL\NULz\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL9\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL/\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL,\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL-\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL-\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL'\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULW\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NULW\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC2\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC3\NULF\n\
    \~\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL\FS\SOH\SUB1 Configuration of circuit breakers for resolver.\n\
    \2? [#protodoc-title: Dynamic forward proxy common configuration]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\US\n\
    \\132\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STX7\SUBw The maximum number of pending requests that Envoy will allow to the\n\
    \ resolver. If not specified, the default is 1024.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ESC\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\RS2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC56\n\
    \\196\SOH\n\
    \\STX\EOT\SOH\DC2\EOT!\NULz\SOH\SUB\183\SOH Configuration for the dynamic forward proxy DNS cache. See the :ref:`architecture overview\n\
    \ <arch_overview_http_dynamic_forward_proxy>` for more information.\n\
    \ [#next-free-field: 12]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX!\b\SYN\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT\"\STX#I\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT\"\STX#I\n\
    \\128\ETX\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX*\STX;\SUB\242\STX The name of the cache. Multiple named caches allow independent dynamic forward proxy\n\
    \ configurations to operate within a single Envoy process using different configurations. All\n\
    \ configurations with the same name *must* otherwise have the same settings when referenced\n\
    \ from different configuration components. Configuration will fail to load if this is not\n\
    \ the case.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX*\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX*\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX*\DC2:\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\SO\DC2\ETX*\DC39\n\
    \\163\EOT\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT4\STX55\SUB\148\EOT The DNS lookup family to use during resolution.\n\
    \\n\
    \ [#comment:TODO(mattklein123): Figure out how to support IPv4/IPv6 \"happy eyeballs\" mode. The\n\
    \ way this might work is a new lookup family which returns both IPv4 and IPv6 addresses, and\n\
    \ then configures a host to have a primary and fall back address. With this, we could very\n\
    \ likely build a \"happy eyeballs\" connection pool which would race the primary / fall back\n\
    \ address and return the one that wins. This same method could potentially also be used for\n\
    \ QUIC to TCP fall back.]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX4\STX+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX4,=\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX4@A\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX5\ACK4\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\DLE\DC2\ETX5\a3\n\
    \\203\STX\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOTA\STXB;\SUB\188\STX The DNS refresh rate for currently cached DNS hosts. If not specified defaults to 60s.\n\
    \\n\
    \ .. note:\n\
    \\n\
    \  The returned DNS TTL is not currently used to alter the refresh rate. This feature will be\n\
    \  added in a future change.\n\
    \\n\
    \ .. note:\n\
    \\n\
    \ The refresh rate is rounded to the closest millisecond, and must be at least 1ms.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETXA\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXA\ESC+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXA./\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETXB\ACK:\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\175\b\NAK\DC2\ETXB\a9\n\
    \\230\ETX\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXP\STXN\SUB\216\ETX The TTL for hosts that are unused. Hosts that have not been used in the configured time\n\
    \ interval will be purged. If not specified defaults to 5m.\n\
    \\n\
    \ .. note:\n\
    \\n\
    \   The TTL is only checked at the time of DNS refresh, as specified by *dns_refresh_rate*. This\n\
    \   means that if the configured TTL is shorter than the refresh rate the host may not be removed\n\
    \   immediately.\n\
    \\n\
    \  .. note:\n\
    \\n\
    \   The TTL has no relation to DNS TTL and is only used to control Envoy's resource usage.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETXP\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXP\ESC#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXP&'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\ETXP(M\n\
    \\SI\n\
    \\b\EOT\SOH\STX\ETX\b\175\b\NAK\DC2\ETXP)L\n\
    \\251\STX\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXY\STXP\SUB\237\STX The maximum number of hosts that the cache will hold. If not specified defaults to 1024.\n\
    \\n\
    \ .. note:\n\
    \\n\
    \   The implementation is approximate and enforced independently on each worker thread, thus\n\
    \   it is possible for the maximum hosts in the cache to go slightly above the configured\n\
    \   value depending on timing. This is similar to how other circuit breakers work.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETXY\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXY\RS'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXY*+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\b\DC2\ETXY,O\n\
    \\SI\n\
    \\b\EOT\SOH\STX\EOT\b\175\b\ENQ\DC2\ETXY-N\n\
    \\232\SOH\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX^\STXE\SUB\218\SOH If the DNS failure refresh rate is specified,\n\
    \ this is used as the cache's DNS refresh rate when DNS requests are failing. If this setting is\n\
    \ not specified, the failure refresh rate defaults to the dns_refresh_rate.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\ETX^\STX'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX^(@\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX^CD\n\
    \\194\SOH\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETXb\STX8\SUB\180\SOH The config of circuit breakers for resolver. It provides a configurable threshold.\n\
    \ Envoy will use dns cache circuit breakers with default settings even if this value is not set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\ETXb\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETXb\SUB3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETXb67\n\
    \\153\ETX\n\
    \\EOT\EOT\SOH\STX\a\DC2\EOTj\STXkS\SUB\138\ETX Always use TCP queries instead of UDP queries for DNS lookups.\n\
    \ Setting this value causes failure if the\n\
    \ ``envoy.restart_features.use_apple_api_for_dns_lookups`` runtime value is true during\n\
    \ server startup. Apple' API only uses UDP for DNS resolution.\n\
    \ This field is deprecated in favor of *dns_resolution_config*\n\
    \ which aggregates all of the DNS resolver configuration in a single message.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETXj\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETXj\a\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETXj!\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\b\DC2\ETXk\ACKR\n\
    \\r\n\
    \\ACK\EOT\SOH\STX\a\b\ETX\DC2\ETXk\a\CAN\n\
    \\DLE\n\
    \\t\EOT\SOH\STX\a\b\242\232\128K\DC2\ETXk\SUBQ\n\
    \m\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETXn\STX?\SUB` DNS resolution configuration which includes the underlying dns resolver addresses and options.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\ETXn\STX$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETXn%:\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETXn=>\n\
    \\128\STX\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETXs\STXB\SUB\242\SOH Hostnames that should be preresolved into the cache upon creation. This might provide a\n\
    \ performance improvement, in the form of cache hits, for hostnames that are going to be\n\
    \ resolved during steady state and are known at config load time.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\EOT\DC2\ETXs\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ACK\DC2\ETXs\v'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETXs(<\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETXs?A\n\
    \\250\STX\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\ETXy\STXX\SUB\236\STX The timeout used for DNS queries. This timeout is independent of any timeout and retry policy\n\
    \ used by the underlying DNS implementation (e.g., c-areas and Apple DNS) which are opaque.\n\
    \ Setting this timeout will ensure that queries succeed or fail within the specified time frame\n\
    \ and are then retried using the standard refresh rates. Defaults to 5s if not set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ACK\DC2\ETXy\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\ETXy\ESC,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\ETXy/1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\b\DC2\ETXy2W\n\
    \\SI\n\
    \\b\EOT\SOH\STX\n\
    \\b\175\b\NAK\DC2\ETXy3Vb\ACKproto3"