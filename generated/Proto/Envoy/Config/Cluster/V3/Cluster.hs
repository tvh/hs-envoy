{- This file was auto-generated from envoy/config/cluster/v3/cluster.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Cluster.V3.Cluster (
        Cluster(), Cluster'ClusterDiscoveryType(..), Cluster'LbConfig(..),
        _Cluster'Type, _Cluster'ClusterType, _Cluster'RingHashLbConfig',
        _Cluster'MaglevLbConfig', _Cluster'OriginalDstLbConfig',
        _Cluster'LeastRequestLbConfig',
        Cluster'ClusterProtocolSelection(..),
        Cluster'ClusterProtocolSelection(),
        Cluster'ClusterProtocolSelection'UnrecognizedValue,
        Cluster'CommonLbConfig(),
        Cluster'CommonLbConfig'LocalityConfigSpecifier(..),
        _Cluster'CommonLbConfig'ZoneAwareLbConfig',
        _Cluster'CommonLbConfig'LocalityWeightedLbConfig',
        Cluster'CommonLbConfig'ConsistentHashingLbConfig(),
        Cluster'CommonLbConfig'LocalityWeightedLbConfig(),
        Cluster'CommonLbConfig'ZoneAwareLbConfig(),
        Cluster'CustomClusterType(), Cluster'DiscoveryType(..),
        Cluster'DiscoveryType(), Cluster'DiscoveryType'UnrecognizedValue,
        Cluster'DnsLookupFamily(..), Cluster'DnsLookupFamily(),
        Cluster'DnsLookupFamily'UnrecognizedValue,
        Cluster'EdsClusterConfig(), Cluster'LbPolicy(..),
        Cluster'LbPolicy(), Cluster'LbPolicy'UnrecognizedValue,
        Cluster'LbSubsetConfig(),
        Cluster'LbSubsetConfig'LbSubsetFallbackPolicy(..),
        Cluster'LbSubsetConfig'LbSubsetFallbackPolicy(),
        Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'UnrecognizedValue,
        Cluster'LbSubsetConfig'LbSubsetSelector(),
        Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy(..),
        Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy(),
        Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'UnrecognizedValue,
        Cluster'LeastRequestLbConfig(), Cluster'MaglevLbConfig(),
        Cluster'OriginalDstLbConfig(), Cluster'PreconnectPolicy(),
        Cluster'RefreshRate(), Cluster'RingHashLbConfig(),
        Cluster'RingHashLbConfig'HashFunction(..),
        Cluster'RingHashLbConfig'HashFunction(),
        Cluster'RingHashLbConfig'HashFunction'UnrecognizedValue,
        Cluster'TransportSocketMatch(),
        Cluster'TypedExtensionProtocolOptionsEntry(), ClusterCollection(),
        LoadBalancingPolicy(), LoadBalancingPolicy'Policy(),
        TrackClusterStats(), UpstreamBindConfig(),
        UpstreamConnectionOptions()
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
import qualified Proto.Envoy.Config.Cluster.V3.CircuitBreaker
import qualified Proto.Envoy.Config.Cluster.V3.Filter
import qualified Proto.Envoy.Config.Cluster.V3.OutlierDetection
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Config.Core.V3.HealthCheck
import qualified Proto.Envoy.Config.Core.V3.Protocol
import qualified Proto.Envoy.Config.Core.V3.Resolver
import qualified Proto.Envoy.Config.Endpoint.V3.Endpoint
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Security
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
import qualified Proto.Xds.Core.V3.CollectionEntry
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.transportSocketMatches' @:: Lens' Cluster [Cluster'TransportSocketMatch]@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.vec'transportSocketMatches' @:: Lens' Cluster (Data.Vector.Vector Cluster'TransportSocketMatch)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.name' @:: Lens' Cluster Data.Text.Text@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.altStatName' @:: Lens' Cluster Data.Text.Text@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.edsClusterConfig' @:: Lens' Cluster Cluster'EdsClusterConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'edsClusterConfig' @:: Lens' Cluster (Prelude.Maybe Cluster'EdsClusterConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.connectTimeout' @:: Lens' Cluster Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'connectTimeout' @:: Lens' Cluster (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.perConnectionBufferLimitBytes' @:: Lens' Cluster Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'perConnectionBufferLimitBytes' @:: Lens' Cluster (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.lbPolicy' @:: Lens' Cluster Cluster'LbPolicy@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.loadAssignment' @:: Lens' Cluster Proto.Envoy.Config.Endpoint.V3.Endpoint.ClusterLoadAssignment@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'loadAssignment' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Endpoint.V3.Endpoint.ClusterLoadAssignment)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.healthChecks' @:: Lens' Cluster [Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck]@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.vec'healthChecks' @:: Lens' Cluster (Data.Vector.Vector Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maxRequestsPerConnection' @:: Lens' Cluster Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'maxRequestsPerConnection' @:: Lens' Cluster (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.circuitBreakers' @:: Lens' Cluster Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'circuitBreakers' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.upstreamHttpProtocolOptions' @:: Lens' Cluster Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'upstreamHttpProtocolOptions' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.commonHttpProtocolOptions' @:: Lens' Cluster Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'commonHttpProtocolOptions' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.httpProtocolOptions' @:: Lens' Cluster Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'httpProtocolOptions' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.http2ProtocolOptions' @:: Lens' Cluster Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'http2ProtocolOptions' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.typedExtensionProtocolOptions' @:: Lens' Cluster (Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.dnsRefreshRate' @:: Lens' Cluster Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'dnsRefreshRate' @:: Lens' Cluster (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.dnsFailureRefreshRate' @:: Lens' Cluster Cluster'RefreshRate@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'dnsFailureRefreshRate' @:: Lens' Cluster (Prelude.Maybe Cluster'RefreshRate)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.respectDnsTtl' @:: Lens' Cluster Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.dnsLookupFamily' @:: Lens' Cluster Cluster'DnsLookupFamily@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.dnsResolvers' @:: Lens' Cluster [Proto.Envoy.Config.Core.V3.Address.Address]@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.vec'dnsResolvers' @:: Lens' Cluster (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.useTcpForDnsLookups' @:: Lens' Cluster Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.dnsResolutionConfig' @:: Lens' Cluster Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'dnsResolutionConfig' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.waitForWarmOnInit' @:: Lens' Cluster Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'waitForWarmOnInit' @:: Lens' Cluster (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.outlierDetection' @:: Lens' Cluster Proto.Envoy.Config.Cluster.V3.OutlierDetection.OutlierDetection@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'outlierDetection' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Cluster.V3.OutlierDetection.OutlierDetection)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.cleanupInterval' @:: Lens' Cluster Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'cleanupInterval' @:: Lens' Cluster (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.upstreamBindConfig' @:: Lens' Cluster Proto.Envoy.Config.Core.V3.Address.BindConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'upstreamBindConfig' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.BindConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.lbSubsetConfig' @:: Lens' Cluster Cluster'LbSubsetConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'lbSubsetConfig' @:: Lens' Cluster (Prelude.Maybe Cluster'LbSubsetConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.commonLbConfig' @:: Lens' Cluster Cluster'CommonLbConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'commonLbConfig' @:: Lens' Cluster (Prelude.Maybe Cluster'CommonLbConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.transportSocket' @:: Lens' Cluster Proto.Envoy.Config.Core.V3.Base.TransportSocket@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'transportSocket' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.metadata' @:: Lens' Cluster Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'metadata' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.protocolSelection' @:: Lens' Cluster Cluster'ClusterProtocolSelection@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.upstreamConnectionOptions' @:: Lens' Cluster UpstreamConnectionOptions@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'upstreamConnectionOptions' @:: Lens' Cluster (Prelude.Maybe UpstreamConnectionOptions)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.closeConnectionsOnHostHealthFailure' @:: Lens' Cluster Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.ignoreHealthOnHostRemoval' @:: Lens' Cluster Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.filters' @:: Lens' Cluster [Proto.Envoy.Config.Cluster.V3.Filter.Filter]@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.vec'filters' @:: Lens' Cluster (Data.Vector.Vector Proto.Envoy.Config.Cluster.V3.Filter.Filter)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.loadBalancingPolicy' @:: Lens' Cluster LoadBalancingPolicy@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'loadBalancingPolicy' @:: Lens' Cluster (Prelude.Maybe LoadBalancingPolicy)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.lrsServer' @:: Lens' Cluster Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'lrsServer' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.trackTimeoutBudgets' @:: Lens' Cluster Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.upstreamConfig' @:: Lens' Cluster Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'upstreamConfig' @:: Lens' Cluster (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.trackClusterStats' @:: Lens' Cluster TrackClusterStats@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'trackClusterStats' @:: Lens' Cluster (Prelude.Maybe TrackClusterStats)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.preconnectPolicy' @:: Lens' Cluster Cluster'PreconnectPolicy@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'preconnectPolicy' @:: Lens' Cluster (Prelude.Maybe Cluster'PreconnectPolicy)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.connectionPoolPerDownstreamConnection' @:: Lens' Cluster Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'clusterDiscoveryType' @:: Lens' Cluster (Prelude.Maybe Cluster'ClusterDiscoveryType)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'type'' @:: Lens' Cluster (Prelude.Maybe Cluster'DiscoveryType)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.type'' @:: Lens' Cluster Cluster'DiscoveryType@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'clusterType' @:: Lens' Cluster (Prelude.Maybe Cluster'CustomClusterType)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.clusterType' @:: Lens' Cluster Cluster'CustomClusterType@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'lbConfig' @:: Lens' Cluster (Prelude.Maybe Cluster'LbConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'ringHashLbConfig' @:: Lens' Cluster (Prelude.Maybe Cluster'RingHashLbConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.ringHashLbConfig' @:: Lens' Cluster Cluster'RingHashLbConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'maglevLbConfig' @:: Lens' Cluster (Prelude.Maybe Cluster'MaglevLbConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maglevLbConfig' @:: Lens' Cluster Cluster'MaglevLbConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'originalDstLbConfig' @:: Lens' Cluster (Prelude.Maybe Cluster'OriginalDstLbConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.originalDstLbConfig' @:: Lens' Cluster Cluster'OriginalDstLbConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'leastRequestLbConfig' @:: Lens' Cluster (Prelude.Maybe Cluster'LeastRequestLbConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.leastRequestLbConfig' @:: Lens' Cluster Cluster'LeastRequestLbConfig@ -}
data Cluster
  = Cluster'_constructor {_Cluster'transportSocketMatches :: !(Data.Vector.Vector Cluster'TransportSocketMatch),
                          _Cluster'name :: !Data.Text.Text,
                          _Cluster'altStatName :: !Data.Text.Text,
                          _Cluster'edsClusterConfig :: !(Prelude.Maybe Cluster'EdsClusterConfig),
                          _Cluster'connectTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                          _Cluster'perConnectionBufferLimitBytes :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                          _Cluster'lbPolicy :: !Cluster'LbPolicy,
                          _Cluster'loadAssignment :: !(Prelude.Maybe Proto.Envoy.Config.Endpoint.V3.Endpoint.ClusterLoadAssignment),
                          _Cluster'healthChecks :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck),
                          _Cluster'maxRequestsPerConnection :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                          _Cluster'circuitBreakers :: !(Prelude.Maybe Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers),
                          _Cluster'upstreamHttpProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions),
                          _Cluster'commonHttpProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions),
                          _Cluster'httpProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions),
                          _Cluster'http2ProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions),
                          _Cluster'typedExtensionProtocolOptions :: !(Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Any.Any),
                          _Cluster'dnsRefreshRate :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                          _Cluster'dnsFailureRefreshRate :: !(Prelude.Maybe Cluster'RefreshRate),
                          _Cluster'respectDnsTtl :: !Prelude.Bool,
                          _Cluster'dnsLookupFamily :: !Cluster'DnsLookupFamily,
                          _Cluster'dnsResolvers :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.Address),
                          _Cluster'useTcpForDnsLookups :: !Prelude.Bool,
                          _Cluster'dnsResolutionConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig),
                          _Cluster'waitForWarmOnInit :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                          _Cluster'outlierDetection :: !(Prelude.Maybe Proto.Envoy.Config.Cluster.V3.OutlierDetection.OutlierDetection),
                          _Cluster'cleanupInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                          _Cluster'upstreamBindConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.BindConfig),
                          _Cluster'lbSubsetConfig :: !(Prelude.Maybe Cluster'LbSubsetConfig),
                          _Cluster'commonLbConfig :: !(Prelude.Maybe Cluster'CommonLbConfig),
                          _Cluster'transportSocket :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket),
                          _Cluster'metadata :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                          _Cluster'protocolSelection :: !Cluster'ClusterProtocolSelection,
                          _Cluster'upstreamConnectionOptions :: !(Prelude.Maybe UpstreamConnectionOptions),
                          _Cluster'closeConnectionsOnHostHealthFailure :: !Prelude.Bool,
                          _Cluster'ignoreHealthOnHostRemoval :: !Prelude.Bool,
                          _Cluster'filters :: !(Data.Vector.Vector Proto.Envoy.Config.Cluster.V3.Filter.Filter),
                          _Cluster'loadBalancingPolicy :: !(Prelude.Maybe LoadBalancingPolicy),
                          _Cluster'lrsServer :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                          _Cluster'trackTimeoutBudgets :: !Prelude.Bool,
                          _Cluster'upstreamConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                          _Cluster'trackClusterStats :: !(Prelude.Maybe TrackClusterStats),
                          _Cluster'preconnectPolicy :: !(Prelude.Maybe Cluster'PreconnectPolicy),
                          _Cluster'connectionPoolPerDownstreamConnection :: !Prelude.Bool,
                          _Cluster'clusterDiscoveryType :: !(Prelude.Maybe Cluster'ClusterDiscoveryType),
                          _Cluster'lbConfig :: !(Prelude.Maybe Cluster'LbConfig),
                          _Cluster'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Cluster'ClusterDiscoveryType
  = Cluster'Type !Cluster'DiscoveryType |
    Cluster'ClusterType !Cluster'CustomClusterType
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data Cluster'LbConfig
  = Cluster'RingHashLbConfig' !Cluster'RingHashLbConfig |
    Cluster'MaglevLbConfig' !Cluster'MaglevLbConfig |
    Cluster'OriginalDstLbConfig' !Cluster'OriginalDstLbConfig |
    Cluster'LeastRequestLbConfig' !Cluster'LeastRequestLbConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Cluster "transportSocketMatches" [Cluster'TransportSocketMatch] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'transportSocketMatches
           (\ x__ y__ -> x__ {_Cluster'transportSocketMatches = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Cluster "vec'transportSocketMatches" (Data.Vector.Vector Cluster'TransportSocketMatch) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'transportSocketMatches
           (\ x__ y__ -> x__ {_Cluster'transportSocketMatches = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'name (\ x__ y__ -> x__ {_Cluster'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "altStatName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'altStatName
           (\ x__ y__ -> x__ {_Cluster'altStatName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "edsClusterConfig" Cluster'EdsClusterConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'edsClusterConfig
           (\ x__ y__ -> x__ {_Cluster'edsClusterConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'edsClusterConfig" (Prelude.Maybe Cluster'EdsClusterConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'edsClusterConfig
           (\ x__ y__ -> x__ {_Cluster'edsClusterConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "connectTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'connectTimeout
           (\ x__ y__ -> x__ {_Cluster'connectTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'connectTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'connectTimeout
           (\ x__ y__ -> x__ {_Cluster'connectTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "perConnectionBufferLimitBytes" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'perConnectionBufferLimitBytes
           (\ x__ y__ -> x__ {_Cluster'perConnectionBufferLimitBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'perConnectionBufferLimitBytes" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'perConnectionBufferLimitBytes
           (\ x__ y__ -> x__ {_Cluster'perConnectionBufferLimitBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "lbPolicy" Cluster'LbPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbPolicy (\ x__ y__ -> x__ {_Cluster'lbPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "loadAssignment" Proto.Envoy.Config.Endpoint.V3.Endpoint.ClusterLoadAssignment where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'loadAssignment
           (\ x__ y__ -> x__ {_Cluster'loadAssignment = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'loadAssignment" (Prelude.Maybe Proto.Envoy.Config.Endpoint.V3.Endpoint.ClusterLoadAssignment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'loadAssignment
           (\ x__ y__ -> x__ {_Cluster'loadAssignment = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "healthChecks" [Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'healthChecks
           (\ x__ y__ -> x__ {_Cluster'healthChecks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Cluster "vec'healthChecks" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'healthChecks
           (\ x__ y__ -> x__ {_Cluster'healthChecks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "maxRequestsPerConnection" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'maxRequestsPerConnection
           (\ x__ y__ -> x__ {_Cluster'maxRequestsPerConnection = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'maxRequestsPerConnection" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'maxRequestsPerConnection
           (\ x__ y__ -> x__ {_Cluster'maxRequestsPerConnection = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "circuitBreakers" Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'circuitBreakers
           (\ x__ y__ -> x__ {_Cluster'circuitBreakers = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'circuitBreakers" (Prelude.Maybe Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'circuitBreakers
           (\ x__ y__ -> x__ {_Cluster'circuitBreakers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "upstreamHttpProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'upstreamHttpProtocolOptions
           (\ x__ y__ -> x__ {_Cluster'upstreamHttpProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'upstreamHttpProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'upstreamHttpProtocolOptions
           (\ x__ y__ -> x__ {_Cluster'upstreamHttpProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "commonHttpProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'commonHttpProtocolOptions
           (\ x__ y__ -> x__ {_Cluster'commonHttpProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'commonHttpProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'commonHttpProtocolOptions
           (\ x__ y__ -> x__ {_Cluster'commonHttpProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "httpProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'httpProtocolOptions
           (\ x__ y__ -> x__ {_Cluster'httpProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'httpProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'httpProtocolOptions
           (\ x__ y__ -> x__ {_Cluster'httpProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "http2ProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'http2ProtocolOptions
           (\ x__ y__ -> x__ {_Cluster'http2ProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'http2ProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'http2ProtocolOptions
           (\ x__ y__ -> x__ {_Cluster'http2ProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "typedExtensionProtocolOptions" (Data.Map.Map Data.Text.Text Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'typedExtensionProtocolOptions
           (\ x__ y__ -> x__ {_Cluster'typedExtensionProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "dnsRefreshRate" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'dnsRefreshRate
           (\ x__ y__ -> x__ {_Cluster'dnsRefreshRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'dnsRefreshRate" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'dnsRefreshRate
           (\ x__ y__ -> x__ {_Cluster'dnsRefreshRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "dnsFailureRefreshRate" Cluster'RefreshRate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'dnsFailureRefreshRate
           (\ x__ y__ -> x__ {_Cluster'dnsFailureRefreshRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'dnsFailureRefreshRate" (Prelude.Maybe Cluster'RefreshRate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'dnsFailureRefreshRate
           (\ x__ y__ -> x__ {_Cluster'dnsFailureRefreshRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "respectDnsTtl" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'respectDnsTtl
           (\ x__ y__ -> x__ {_Cluster'respectDnsTtl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "dnsLookupFamily" Cluster'DnsLookupFamily where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'dnsLookupFamily
           (\ x__ y__ -> x__ {_Cluster'dnsLookupFamily = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "dnsResolvers" [Proto.Envoy.Config.Core.V3.Address.Address] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'dnsResolvers
           (\ x__ y__ -> x__ {_Cluster'dnsResolvers = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Cluster "vec'dnsResolvers" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'dnsResolvers
           (\ x__ y__ -> x__ {_Cluster'dnsResolvers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "useTcpForDnsLookups" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'useTcpForDnsLookups
           (\ x__ y__ -> x__ {_Cluster'useTcpForDnsLookups = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "dnsResolutionConfig" Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'dnsResolutionConfig
           (\ x__ y__ -> x__ {_Cluster'dnsResolutionConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'dnsResolutionConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'dnsResolutionConfig
           (\ x__ y__ -> x__ {_Cluster'dnsResolutionConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "waitForWarmOnInit" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'waitForWarmOnInit
           (\ x__ y__ -> x__ {_Cluster'waitForWarmOnInit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'waitForWarmOnInit" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'waitForWarmOnInit
           (\ x__ y__ -> x__ {_Cluster'waitForWarmOnInit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "outlierDetection" Proto.Envoy.Config.Cluster.V3.OutlierDetection.OutlierDetection where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'outlierDetection
           (\ x__ y__ -> x__ {_Cluster'outlierDetection = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'outlierDetection" (Prelude.Maybe Proto.Envoy.Config.Cluster.V3.OutlierDetection.OutlierDetection) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'outlierDetection
           (\ x__ y__ -> x__ {_Cluster'outlierDetection = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "cleanupInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'cleanupInterval
           (\ x__ y__ -> x__ {_Cluster'cleanupInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'cleanupInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'cleanupInterval
           (\ x__ y__ -> x__ {_Cluster'cleanupInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "upstreamBindConfig" Proto.Envoy.Config.Core.V3.Address.BindConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'upstreamBindConfig
           (\ x__ y__ -> x__ {_Cluster'upstreamBindConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'upstreamBindConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.BindConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'upstreamBindConfig
           (\ x__ y__ -> x__ {_Cluster'upstreamBindConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "lbSubsetConfig" Cluster'LbSubsetConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbSubsetConfig
           (\ x__ y__ -> x__ {_Cluster'lbSubsetConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'lbSubsetConfig" (Prelude.Maybe Cluster'LbSubsetConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbSubsetConfig
           (\ x__ y__ -> x__ {_Cluster'lbSubsetConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "commonLbConfig" Cluster'CommonLbConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'commonLbConfig
           (\ x__ y__ -> x__ {_Cluster'commonLbConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'commonLbConfig" (Prelude.Maybe Cluster'CommonLbConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'commonLbConfig
           (\ x__ y__ -> x__ {_Cluster'commonLbConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "transportSocket" Proto.Envoy.Config.Core.V3.Base.TransportSocket where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'transportSocket
           (\ x__ y__ -> x__ {_Cluster'transportSocket = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'transportSocket" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'transportSocket
           (\ x__ y__ -> x__ {_Cluster'transportSocket = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "metadata" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'metadata (\ x__ y__ -> x__ {_Cluster'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'metadata" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'metadata (\ x__ y__ -> x__ {_Cluster'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "protocolSelection" Cluster'ClusterProtocolSelection where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'protocolSelection
           (\ x__ y__ -> x__ {_Cluster'protocolSelection = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "upstreamConnectionOptions" UpstreamConnectionOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'upstreamConnectionOptions
           (\ x__ y__ -> x__ {_Cluster'upstreamConnectionOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'upstreamConnectionOptions" (Prelude.Maybe UpstreamConnectionOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'upstreamConnectionOptions
           (\ x__ y__ -> x__ {_Cluster'upstreamConnectionOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "closeConnectionsOnHostHealthFailure" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'closeConnectionsOnHostHealthFailure
           (\ x__ y__
              -> x__ {_Cluster'closeConnectionsOnHostHealthFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "ignoreHealthOnHostRemoval" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'ignoreHealthOnHostRemoval
           (\ x__ y__ -> x__ {_Cluster'ignoreHealthOnHostRemoval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "filters" [Proto.Envoy.Config.Cluster.V3.Filter.Filter] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'filters (\ x__ y__ -> x__ {_Cluster'filters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Cluster "vec'filters" (Data.Vector.Vector Proto.Envoy.Config.Cluster.V3.Filter.Filter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'filters (\ x__ y__ -> x__ {_Cluster'filters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "loadBalancingPolicy" LoadBalancingPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'loadBalancingPolicy
           (\ x__ y__ -> x__ {_Cluster'loadBalancingPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'loadBalancingPolicy" (Prelude.Maybe LoadBalancingPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'loadBalancingPolicy
           (\ x__ y__ -> x__ {_Cluster'loadBalancingPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "lrsServer" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lrsServer (\ x__ y__ -> x__ {_Cluster'lrsServer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'lrsServer" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lrsServer (\ x__ y__ -> x__ {_Cluster'lrsServer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "trackTimeoutBudgets" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'trackTimeoutBudgets
           (\ x__ y__ -> x__ {_Cluster'trackTimeoutBudgets = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "upstreamConfig" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'upstreamConfig
           (\ x__ y__ -> x__ {_Cluster'upstreamConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'upstreamConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'upstreamConfig
           (\ x__ y__ -> x__ {_Cluster'upstreamConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "trackClusterStats" TrackClusterStats where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'trackClusterStats
           (\ x__ y__ -> x__ {_Cluster'trackClusterStats = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'trackClusterStats" (Prelude.Maybe TrackClusterStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'trackClusterStats
           (\ x__ y__ -> x__ {_Cluster'trackClusterStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "preconnectPolicy" Cluster'PreconnectPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'preconnectPolicy
           (\ x__ y__ -> x__ {_Cluster'preconnectPolicy = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster "maybe'preconnectPolicy" (Prelude.Maybe Cluster'PreconnectPolicy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'preconnectPolicy
           (\ x__ y__ -> x__ {_Cluster'preconnectPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "connectionPoolPerDownstreamConnection" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'connectionPoolPerDownstreamConnection
           (\ x__ y__
              -> x__ {_Cluster'connectionPoolPerDownstreamConnection = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "maybe'clusterDiscoveryType" (Prelude.Maybe Cluster'ClusterDiscoveryType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'clusterDiscoveryType
           (\ x__ y__ -> x__ {_Cluster'clusterDiscoveryType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "maybe'type'" (Prelude.Maybe Cluster'DiscoveryType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'clusterDiscoveryType
           (\ x__ y__ -> x__ {_Cluster'clusterDiscoveryType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Cluster'Type x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Cluster'Type y__))
instance Data.ProtoLens.Field.HasField Cluster "type'" Cluster'DiscoveryType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'clusterDiscoveryType
           (\ x__ y__ -> x__ {_Cluster'clusterDiscoveryType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Cluster'Type x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Cluster'Type y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Cluster "maybe'clusterType" (Prelude.Maybe Cluster'CustomClusterType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'clusterDiscoveryType
           (\ x__ y__ -> x__ {_Cluster'clusterDiscoveryType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Cluster'ClusterType x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Cluster'ClusterType y__))
instance Data.ProtoLens.Field.HasField Cluster "clusterType" Cluster'CustomClusterType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'clusterDiscoveryType
           (\ x__ y__ -> x__ {_Cluster'clusterDiscoveryType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Cluster'ClusterType x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Cluster'ClusterType y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Cluster "maybe'lbConfig" (Prelude.Maybe Cluster'LbConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbConfig (\ x__ y__ -> x__ {_Cluster'lbConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster "maybe'ringHashLbConfig" (Prelude.Maybe Cluster'RingHashLbConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbConfig (\ x__ y__ -> x__ {_Cluster'lbConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Cluster'RingHashLbConfig' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Cluster'RingHashLbConfig' y__))
instance Data.ProtoLens.Field.HasField Cluster "ringHashLbConfig" Cluster'RingHashLbConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbConfig (\ x__ y__ -> x__ {_Cluster'lbConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Cluster'RingHashLbConfig' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Cluster'RingHashLbConfig' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Cluster "maybe'maglevLbConfig" (Prelude.Maybe Cluster'MaglevLbConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbConfig (\ x__ y__ -> x__ {_Cluster'lbConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Cluster'MaglevLbConfig' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Cluster'MaglevLbConfig' y__))
instance Data.ProtoLens.Field.HasField Cluster "maglevLbConfig" Cluster'MaglevLbConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbConfig (\ x__ y__ -> x__ {_Cluster'lbConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Cluster'MaglevLbConfig' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Cluster'MaglevLbConfig' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Cluster "maybe'originalDstLbConfig" (Prelude.Maybe Cluster'OriginalDstLbConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbConfig (\ x__ y__ -> x__ {_Cluster'lbConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Cluster'OriginalDstLbConfig' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Cluster'OriginalDstLbConfig' y__))
instance Data.ProtoLens.Field.HasField Cluster "originalDstLbConfig" Cluster'OriginalDstLbConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbConfig (\ x__ y__ -> x__ {_Cluster'lbConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Cluster'OriginalDstLbConfig' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Cluster'OriginalDstLbConfig' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Cluster "maybe'leastRequestLbConfig" (Prelude.Maybe Cluster'LeastRequestLbConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbConfig (\ x__ y__ -> x__ {_Cluster'lbConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Cluster'LeastRequestLbConfig' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Cluster'LeastRequestLbConfig' y__))
instance Data.ProtoLens.Field.HasField Cluster "leastRequestLbConfig" Cluster'LeastRequestLbConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'lbConfig (\ x__ y__ -> x__ {_Cluster'lbConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Cluster'LeastRequestLbConfig' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Cluster'LeastRequestLbConfig' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Cluster where
  messageName _ = Data.Text.pack "envoy.config.cluster.v3.Cluster"
  packedMessageDescriptor _
    = "\n\
      \\aCluster\DC2o\n\
      \\CANtransport_socket_matches\CAN+ \ETX(\v25.envoy.config.cluster.v3.Cluster.TransportSocketMatchR\SYNtransportSocketMatches\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2>\n\
      \\ralt_stat_name\CAN\FS \SOH(\tR\valtStatNameB\SUB\242\152\254\143\ENQ\DC4\n\
      \\DC2observability_name\DC2N\n\
      \\EOTtype\CAN\STX \SOH(\SO2..envoy.config.cluster.v3.Cluster.DiscoveryTypeH\NULR\EOTtypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2W\n\
      \\fcluster_type\CAN& \SOH(\v22.envoy.config.cluster.v3.Cluster.CustomClusterTypeH\NULR\vclusterType\DC2_\n\
      \\DC2eds_cluster_config\CAN\ETX \SOH(\v21.envoy.config.cluster.v3.Cluster.EdsClusterConfigR\DLEedsClusterConfig\DC2L\n\
      \\SIconnect_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\SOconnectTimeoutB\b\250B\ENQ\170\SOH\STX*\NUL\DC2o\n\
      \!per_connection_buffer_limit_bytes\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSperConnectionBufferLimitBytesB\a\138\147\183*\STX\DLE\SOH\DC2R\n\
      \\tlb_policy\CAN\ACK \SOH(\SO2).envoy.config.cluster.v3.Cluster.LbPolicyR\blbPolicyB\n\
      \\250B\a\130\SOH\EOT\DLE\SOH \a\DC2X\n\
      \\SIload_assignment\CAN! \SOH(\v2/.envoy.config.endpoint.v3.ClusterLoadAssignmentR\SOloadAssignment\DC2F\n\
      \\rhealth_checks\CAN\b \ETX(\v2!.envoy.config.core.v3.HealthCheckR\fhealthChecks\DC2[\n\
      \\ESCmax_requests_per_connection\CAN\t \SOH(\v2\FS.google.protobuf.UInt32ValueR\CANmaxRequestsPerConnection\DC2S\n\
      \\DLEcircuit_breakers\CAN\n\
      \ \SOH(\v2(.envoy.config.cluster.v3.CircuitBreakersR\SIcircuitBreakers\DC2\131\SOH\n\
      \\RSupstream_http_protocol_options\CAN. \SOH(\v21.envoy.config.core.v3.UpstreamHttpProtocolOptionsR\ESCupstreamHttpProtocolOptionsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2w\n\
      \\FScommon_http_protocol_options\CAN\GS \SOH(\v2).envoy.config.core.v3.HttpProtocolOptionsR\EMcommonHttpProtocolOptionsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2k\n\
      \\NAKhttp_protocol_options\CAN\r \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsR\DC3httpProtocolOptionsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2t\n\
      \\SYNhttp2_protocol_options\CAN\SO \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptionsB\DC2\CAN\SOH\138\147\183*\STX\DLE\SOH\146\199\134\216\EOT\ETX3.0\DC2\140\SOH\n\
      \ typed_extension_protocol_options\CAN$ \ETX(\v2C.envoy.config.cluster.v3.Cluster.TypedExtensionProtocolOptionsEntryR\GStypedExtensionProtocolOptions\DC2Q\n\
      \\DLEdns_refresh_rate\CAN\DLE \SOH(\v2\EM.google.protobuf.DurationR\SOdnsRefreshRateB\f\250B\t\170\SOH\ACK*\EOT\DLE\192\132=\DC2e\n\
      \\CANdns_failure_refresh_rate\CAN, \SOH(\v2,.envoy.config.cluster.v3.Cluster.RefreshRateR\NAKdnsFailureRefreshRate\DC2&\n\
      \\SIrespect_dns_ttl\CAN' \SOH(\bR\rrespectDnsTtl\DC2f\n\
      \\DC1dns_lookup_family\CAN\DC1 \SOH(\SO20.envoy.config.cluster.v3.Cluster.DnsLookupFamilyR\SIdnsLookupFamilyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2O\n\
      \\rdns_resolvers\CAN\DC2 \ETX(\v2\GS.envoy.config.core.v3.AddressR\fdnsResolversB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2A\n\
      \\ETBuse_tcp_for_dns_lookups\CAN- \SOH(\bR\DC3useTcpForDnsLookupsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2]\n\
      \\NAKdns_resolution_config\CAN5 \SOH(\v2).envoy.config.core.v3.DnsResolutionConfigR\DC3dnsResolutionConfig\DC2L\n\
      \\NAKwait_for_warm_on_init\CAN6 \SOH(\v2\SUB.google.protobuf.BoolValueR\DC1waitForWarmOnInit\DC2V\n\
      \\DC1outlier_detection\CAN\DC3 \SOH(\v2).envoy.config.cluster.v3.OutlierDetectionR\DLEoutlierDetection\DC2N\n\
      \\DLEcleanup_interval\CAN\DC4 \SOH(\v2\EM.google.protobuf.DurationR\SIcleanupIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2R\n\
      \\DC4upstream_bind_config\CAN\NAK \SOH(\v2 .envoy.config.core.v3.BindConfigR\DC2upstreamBindConfig\DC2Y\n\
      \\DLElb_subset_config\CAN\SYN \SOH(\v2/.envoy.config.cluster.v3.Cluster.LbSubsetConfigR\SOlbSubsetConfig\DC2b\n\
      \\DC3ring_hash_lb_config\CAN\ETB \SOH(\v21.envoy.config.cluster.v3.Cluster.RingHashLbConfigH\SOHR\DLEringHashLbConfig\DC2[\n\
      \\DLEmaglev_lb_config\CAN4 \SOH(\v2/.envoy.config.cluster.v3.Cluster.MaglevLbConfigH\SOHR\SOmaglevLbConfig\DC2k\n\
      \\SYNoriginal_dst_lb_config\CAN\" \SOH(\v24.envoy.config.cluster.v3.Cluster.OriginalDstLbConfigH\SOHR\DC3originalDstLbConfig\DC2n\n\
      \\ETBleast_request_lb_config\CAN% \SOH(\v25.envoy.config.cluster.v3.Cluster.LeastRequestLbConfigH\SOHR\DC4leastRequestLbConfig\DC2Y\n\
      \\DLEcommon_lb_config\CAN\ESC \SOH(\v2/.envoy.config.cluster.v3.Cluster.CommonLbConfigR\SOcommonLbConfig\DC2P\n\
      \\DLEtransport_socket\CAN\CAN \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocket\DC2:\n\
      \\bmetadata\CAN\EM \SOH(\v2\RS.envoy.config.core.v3.MetadataR\bmetadata\DC2u\n\
      \\DC2protocol_selection\CAN\SUB \SOH(\SO29.envoy.config.cluster.v3.Cluster.ClusterProtocolSelectionR\DC1protocolSelectionB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2r\n\
      \\ESCupstream_connection_options\CAN\RS \SOH(\v22.envoy.config.cluster.v3.UpstreamConnectionOptionsR\EMupstreamConnectionOptions\DC2U\n\
      \(close_connections_on_host_health_failure\CAN\US \SOH(\bR#closeConnectionsOnHostHealthFailure\DC2@\n\
      \\GSignore_health_on_host_removal\CAN  \SOH(\bR\EMignoreHealthOnHostRemoval\DC29\n\
      \\afilters\CAN( \ETX(\v2\US.envoy.config.cluster.v3.FilterR\afilters\DC2`\n\
      \\NAKload_balancing_policy\CAN) \SOH(\v2,.envoy.config.cluster.v3.LoadBalancingPolicyR\DC3loadBalancingPolicy\DC2A\n\
      \\n\
      \lrs_server\CAN* \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tlrsServer\DC2?\n\
      \\NAKtrack_timeout_budgets\CAN/ \SOH(\bR\DC3trackTimeoutBudgetsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2S\n\
      \\SIupstream_config\CAN0 \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\SOupstreamConfig\DC2Z\n\
      \\DC3track_cluster_stats\CAN1 \SOH(\v2*.envoy.config.cluster.v3.TrackClusterStatsR\DC1trackClusterStats\DC2^\n\
      \\DC1preconnect_policy\CAN2 \SOH(\v21.envoy.config.cluster.v3.Cluster.PreconnectPolicyR\DLEpreconnectPolicy\DC2X\n\
      \)connection_pool_per_downstream_connection\CAN3 \SOH(\bR%connectionPoolPerDownstreamConnection\SUB\230\SOH\n\
      \\DC4TransportSocketMatch\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2-\n\
      \\ENQmatch\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQmatch\DC2P\n\
      \\DLEtransport_socket\CAN\ETX \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocket:0\154\197\136\RS+\n\
      \)envoy.api.v2.Cluster.TransportSocketMatch\SUB\152\SOH\n\
      \\DC1CustomClusterType\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC27\n\
      \\ftyped_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfig:-\154\197\136\RS(\n\
      \&envoy.api.v2.Cluster.CustomClusterType\SUB\166\SOH\n\
      \\DLEEdsClusterConfig\DC2A\n\
      \\n\
      \eds_config\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tedsConfig\DC2!\n\
      \\fservice_name\CAN\STX \SOH(\tR\vserviceName:,\154\197\136\RS'\n\
      \%envoy.api.v2.Cluster.EdsClusterConfig\SUB\192\b\n\
      \\SOLbSubsetConfig\DC2y\n\
      \\SIfallback_policy\CAN\SOH \SOH(\SO2F.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetFallbackPolicyR\SOfallbackPolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2>\n\
      \\SOdefault_subset\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\rdefaultSubset\DC2k\n\
      \\DLEsubset_selectors\CAN\ETX \ETX(\v2@.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelectorR\SIsubsetSelectors\DC22\n\
      \\NAKlocality_weight_aware\CAN\EOT \SOH(\bR\DC3localityWeightAware\DC22\n\
      \\NAKscale_locality_weight\CAN\ENQ \SOH(\bR\DC3scaleLocalityWeight\DC2$\n\
      \\SOpanic_mode_any\CAN\ACK \SOH(\bR\fpanicModeAny\DC2\RS\n\
      \\vlist_as_any\CAN\a \SOH(\bR\tlistAsAny\SUB\218\ETX\n\
      \\DLELbSubsetSelector\DC2\DC2\n\
      \\EOTkeys\CAN\SOH \ETX(\tR\EOTkeys\DC23\n\
      \\SYNsingle_host_per_subset\CAN\EOT \SOH(\bR\DC3singleHostPerSubset\DC2\146\SOH\n\
      \\SIfallback_policy\CAN\STX \SOH(\SO2_.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicyR\SOfallbackPolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC20\n\
      \\DC4fallback_keys_subset\CAN\ETX \ETX(\tR\DC2fallbackKeysSubset\"y\n\
      \\RSLbSubsetSelectorFallbackPolicy\DC2\SI\n\
      \\vNOT_DEFINED\DLE\NUL\DC2\SI\n\
      \\vNO_FALLBACK\DLE\SOH\DC2\DLE\n\
      \\fANY_ENDPOINT\DLE\STX\DC2\DC2\n\
      \\SODEFAULT_SUBSET\DLE\ETX\DC2\SI\n\
      \\vKEYS_SUBSET\DLE\EOT:;\154\197\136\RS6\n\
      \4envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector\"O\n\
      \\SYNLbSubsetFallbackPolicy\DC2\SI\n\
      \\vNO_FALLBACK\DLE\NUL\DC2\DLE\n\
      \\fANY_ENDPOINT\DLE\SOH\DC2\DC2\n\
      \\SODEFAULT_SUBSET\DLE\STX:*\154\197\136\RS%\n\
      \#envoy.api.v2.Cluster.LbSubsetConfig\SUB\231\SOH\n\
      \\DC4LeastRequestLbConfig\DC2H\n\
      \\fchoice_count\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\vchoiceCountB\a\250B\EOT*\STX(\STX\DC2S\n\
      \\DC3active_request_bias\CAN\STX \SOH(\v2#.envoy.config.core.v3.RuntimeDoubleR\DC1activeRequestBias:0\154\197\136\RS+\n\
      \)envoy.api.v2.Cluster.LeastRequestLbConfig\SUB\145\ETX\n\
      \\DLERingHashLbConfig\DC2T\n\
      \\DC1minimum_ring_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt64ValueR\SIminimumRingSizeB\n\
      \\250B\a2\ENQ\CAN\128\128\128\EOT\DC2m\n\
      \\rhash_function\CAN\ETX \SOH(\SO2>.envoy.config.cluster.v3.Cluster.RingHashLbConfig.HashFunctionR\fhashFunctionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2T\n\
      \\DC1maximum_ring_size\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt64ValueR\SImaximumRingSizeB\n\
      \\250B\a2\ENQ\CAN\128\128\128\EOT\".\n\
      \\fHashFunction\DC2\v\n\
      \\aXX_HASH\DLE\NUL\DC2\DC1\n\
      \\rMURMUR_HASH_2\DLE\SOH:,\154\197\136\RS'\n\
      \%envoy.api.v2.Cluster.RingHashLbConfigJ\EOT\b\STX\DLE\ETX\SUBY\n\
      \\SOMaglevLbConfig\DC2G\n\
      \\n\
      \table_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt64ValueR\ttableSizeB\n\
      \\250B\a2\ENQ\CAN\203\150\177\STX\SUBn\n\
      \\DC3OriginalDstLbConfig\DC2&\n\
      \\SIuse_http_header\CAN\SOH \SOH(\bR\ruseHttpHeader:/\154\197\136\RS*\n\
      \(envoy.api.v2.Cluster.OriginalDstLbConfig\SUB\252\n\
      \\n\
      \\SOCommonLbConfig\DC2N\n\
      \\ETBhealthy_panic_threshold\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\NAKhealthyPanicThreshold\DC2t\n\
      \\DC4zone_aware_lb_config\CAN\STX \SOH(\v2A.envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfigH\NULR\DC1zoneAwareLbConfig\DC2\137\SOH\n\
      \\ESClocality_weighted_lb_config\CAN\ETX \SOH(\v2H.envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfigH\NULR\CANlocalityWeightedLbConfig\DC2I\n\
      \\DC3update_merge_window\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC1updateMergeWindow\DC2C\n\
      \\USignore_new_hosts_until_first_hc\CAN\ENQ \SOH(\bR\SUBignoreNewHostsUntilFirstHc\DC2M\n\
      \$close_connections_on_host_set_change\CAN\ACK \SOH(\bR\UScloseConnectionsOnHostSetChange\DC2\138\SOH\n\
      \\FSconsistent_hashing_lb_config\CAN\a \SOH(\v2I.envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfigR\EMconsistentHashingLbConfig\SUB\141\STX\n\
      \\DC1ZoneAwareLbConfig\DC2?\n\
      \\SIrouting_enabled\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\SOroutingEnabled\DC2F\n\
      \\DLEmin_cluster_size\CAN\STX \SOH(\v2\FS.google.protobuf.UInt64ValueR\SOminClusterSize\DC21\n\
      \\NAKfail_traffic_on_panic\CAN\ETX \SOH(\bR\DC2failTrafficOnPanic:<\154\197\136\RS7\n\
      \5envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig\SUB_\n\
      \\CANLocalityWeightedLbConfig:C\154\197\136\RS>\n\
      \<envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig\SUB\241\SOH\n\
      \\EMConsistentHashingLbConfig\DC27\n\
      \\CANuse_hostname_for_hashing\CAN\SOH \SOH(\bR\NAKuseHostnameForHashing\DC2U\n\
      \\DC3hash_balance_factor\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC1hashBalanceFactorB\a\250B\EOT*\STX(d:D\154\197\136\RS?\n\
      \=envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfigB\ESC\n\
      \\EMlocality_config_specifier:*\154\197\136\RS%\n\
      \#envoy.api.v2.Cluster.CommonLbConfig\SUB\210\SOH\n\
      \\vRefreshRate\DC2N\n\
      \\rbase_interval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fbaseIntervalB\SO\250B\v\170\SOH\b\b\SOH*\EOT\DLE\192\132=\DC2J\n\
      \\fmax_interval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\vmaxIntervalB\f\250B\t\170\SOH\ACK*\EOT\DLE\192\132=:'\154\197\136\RS\"\n\
      \ envoy.api.v2.Cluster.RefreshRate\SUB\131\STX\n\
      \\DLEPreconnectPolicy\DC2x\n\
      \\GSper_upstream_preconnect_ratio\CAN\SOH \SOH(\v2\FS.google.protobuf.DoubleValueR\SUBperUpstreamPreconnectRatioB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\b@)\NUL\NUL\NUL\NUL\NUL\NUL\240?\DC2u\n\
      \\ESCpredictive_preconnect_ratio\CAN\STX \SOH(\v2\FS.google.protobuf.DoubleValueR\EMpredictivePreconnectRatioB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\b@)\NUL\NUL\NUL\NUL\NUL\NUL\240?\SUBf\n\
      \\"TypedExtensionProtocolOptionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2*\n\
      \\ENQvalue\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ENQvalue:\STX8\SOH\"W\n\
      \\rDiscoveryType\DC2\n\
      \\n\
      \\ACKSTATIC\DLE\NUL\DC2\SO\n\
      \\n\
      \STRICT_DNS\DLE\SOH\DC2\SI\n\
      \\vLOGICAL_DNS\DLE\STX\DC2\a\n\
      \\ETXEDS\DLE\ETX\DC2\DLE\n\
      \\fORIGINAL_DST\DLE\EOT\"\164\SOH\n\
      \\bLbPolicy\DC2\SI\n\
      \\vROUND_ROBIN\DLE\NUL\DC2\DC1\n\
      \\rLEAST_REQUEST\DLE\SOH\DC2\r\n\
      \\tRING_HASH\DLE\STX\DC2\n\
      \\n\
      \\ACKRANDOM\DLE\ETX\DC2\n\
      \\n\
      \\ACKMAGLEV\DLE\ENQ\DC2\DC4\n\
      \\DLECLUSTER_PROVIDED\DLE\ACK\DC2 \n\
      \\FSLOAD_BALANCING_POLICY_CONFIG\DLE\a\"\EOT\b\EOT\DLE\EOT*\SIORIGINAL_DST_LB\"5\n\
      \\SIDnsLookupFamily\DC2\b\n\
      \\EOTAUTO\DLE\NUL\DC2\v\n\
      \\aV4_ONLY\DLE\SOH\DC2\v\n\
      \\aV6_ONLY\DLE\STX\"T\n\
      \\CANClusterProtocolSelection\DC2\ESC\n\
      \\ETBUSE_CONFIGURED_PROTOCOL\DLE\NUL\DC2\ESC\n\
      \\ETBUSE_DOWNSTREAM_PROTOCOL\DLE\SOHB\CAN\n\
      \\SYNcluster_discovery_typeB\v\n\
      \\tlb_config:\ESC\154\197\136\RS\SYN\n\
      \\DC4envoy.api.v2.ClusterJ\EOT\b\f\DLE\rJ\EOT\b\SI\DLE\DLEJ\EOT\b\a\DLE\bJ\EOT\b\v\DLE\fJ\EOT\b#\DLE$R\ENQhostsR\vtls_contextR\SUBextension_protocol_options"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        transportSocketMatches__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_socket_matches"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'TransportSocketMatch)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"transportSocketMatches")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        altStatName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alt_stat_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"altStatName")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        edsClusterConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "eds_cluster_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'EdsClusterConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'edsClusterConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        connectTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "connect_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'connectTimeout")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        perConnectionBufferLimitBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "per_connection_buffer_limit_bytes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'perConnectionBufferLimitBytes")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        lbPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lb_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'LbPolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lbPolicy")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        loadAssignment__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_assignment"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Endpoint.V3.Endpoint.ClusterLoadAssignment)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadAssignment")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        healthChecks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "health_checks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"healthChecks")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        maxRequestsPerConnection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_requests_per_connection"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxRequestsPerConnection")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        circuitBreakers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "circuit_breakers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Cluster.V3.CircuitBreaker.CircuitBreakers)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'circuitBreakers")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        upstreamHttpProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_http_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'upstreamHttpProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        commonHttpProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_http_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonHttpProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        httpProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        http2ProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http2_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        typedExtensionProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_extension_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'TypedExtensionProtocolOptionsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"typedExtensionProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        dnsRefreshRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_refresh_rate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsRefreshRate")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        dnsFailureRefreshRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_failure_refresh_rate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'RefreshRate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsFailureRefreshRate")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        respectDnsTtl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "respect_dns_ttl"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"respectDnsTtl")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        dnsLookupFamily__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_lookup_family"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'DnsLookupFamily)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"dnsLookupFamily")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        dnsResolvers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_resolvers"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"dnsResolvers")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        useTcpForDnsLookups__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_tcp_for_dns_lookups"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useTcpForDnsLookups")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        dnsResolutionConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_resolution_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Resolver.DnsResolutionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsResolutionConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        waitForWarmOnInit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "wait_for_warm_on_init"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'waitForWarmOnInit")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        outlierDetection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "outlier_detection"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Cluster.V3.OutlierDetection.OutlierDetection)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'outlierDetection")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        cleanupInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cleanup_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cleanupInterval")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        upstreamBindConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_bind_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.BindConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upstreamBindConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        lbSubsetConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lb_subset_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'LbSubsetConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lbSubsetConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        commonLbConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_lb_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'CommonLbConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonLbConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        transportSocket__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_socket"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.TransportSocket)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'transportSocket")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        protocolSelection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol_selection"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'ClusterProtocolSelection)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"protocolSelection")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        upstreamConnectionOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_connection_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor UpstreamConnectionOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upstreamConnectionOptions")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        closeConnectionsOnHostHealthFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "close_connections_on_host_health_failure"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"closeConnectionsOnHostHealthFailure")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        ignoreHealthOnHostRemoval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_health_on_host_removal"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ignoreHealthOnHostRemoval")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        filters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Cluster.V3.Filter.Filter)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"filters")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        loadBalancingPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_balancing_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LoadBalancingPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadBalancingPolicy")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        lrsServer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lrs_server"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lrsServer")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        trackTimeoutBudgets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "track_timeout_budgets"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"trackTimeoutBudgets")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        upstreamConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upstreamConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        trackClusterStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "track_cluster_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TrackClusterStats)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trackClusterStats")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        preconnectPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "preconnect_policy"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'PreconnectPolicy)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'preconnectPolicy")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        connectionPoolPerDownstreamConnection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "connection_pool_per_downstream_connection"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"connectionPoolPerDownstreamConnection")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'DiscoveryType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        clusterType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_type"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'CustomClusterType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clusterType")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        ringHashLbConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ring_hash_lb_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'RingHashLbConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ringHashLbConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        maglevLbConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "maglev_lb_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'MaglevLbConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maglevLbConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        originalDstLbConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "original_dst_lb_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'OriginalDstLbConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'originalDstLbConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster
        leastRequestLbConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "least_request_lb_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'LeastRequestLbConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'leastRequestLbConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 43, transportSocketMatches__field_descriptor),
           (Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 28, altStatName__field_descriptor),
           (Data.ProtoLens.Tag 3, edsClusterConfig__field_descriptor),
           (Data.ProtoLens.Tag 4, connectTimeout__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            perConnectionBufferLimitBytes__field_descriptor),
           (Data.ProtoLens.Tag 6, lbPolicy__field_descriptor),
           (Data.ProtoLens.Tag 33, loadAssignment__field_descriptor),
           (Data.ProtoLens.Tag 8, healthChecks__field_descriptor),
           (Data.ProtoLens.Tag 9, maxRequestsPerConnection__field_descriptor),
           (Data.ProtoLens.Tag 10, circuitBreakers__field_descriptor),
           (Data.ProtoLens.Tag 46, 
            upstreamHttpProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 29, 
            commonHttpProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 13, httpProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 14, http2ProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 36, 
            typedExtensionProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 16, dnsRefreshRate__field_descriptor),
           (Data.ProtoLens.Tag 44, dnsFailureRefreshRate__field_descriptor),
           (Data.ProtoLens.Tag 39, respectDnsTtl__field_descriptor),
           (Data.ProtoLens.Tag 17, dnsLookupFamily__field_descriptor),
           (Data.ProtoLens.Tag 18, dnsResolvers__field_descriptor),
           (Data.ProtoLens.Tag 45, useTcpForDnsLookups__field_descriptor),
           (Data.ProtoLens.Tag 53, dnsResolutionConfig__field_descriptor),
           (Data.ProtoLens.Tag 54, waitForWarmOnInit__field_descriptor),
           (Data.ProtoLens.Tag 19, outlierDetection__field_descriptor),
           (Data.ProtoLens.Tag 20, cleanupInterval__field_descriptor),
           (Data.ProtoLens.Tag 21, upstreamBindConfig__field_descriptor),
           (Data.ProtoLens.Tag 22, lbSubsetConfig__field_descriptor),
           (Data.ProtoLens.Tag 27, commonLbConfig__field_descriptor),
           (Data.ProtoLens.Tag 24, transportSocket__field_descriptor),
           (Data.ProtoLens.Tag 25, metadata__field_descriptor),
           (Data.ProtoLens.Tag 26, protocolSelection__field_descriptor),
           (Data.ProtoLens.Tag 30, 
            upstreamConnectionOptions__field_descriptor),
           (Data.ProtoLens.Tag 31, 
            closeConnectionsOnHostHealthFailure__field_descriptor),
           (Data.ProtoLens.Tag 32, 
            ignoreHealthOnHostRemoval__field_descriptor),
           (Data.ProtoLens.Tag 40, filters__field_descriptor),
           (Data.ProtoLens.Tag 41, loadBalancingPolicy__field_descriptor),
           (Data.ProtoLens.Tag 42, lrsServer__field_descriptor),
           (Data.ProtoLens.Tag 47, trackTimeoutBudgets__field_descriptor),
           (Data.ProtoLens.Tag 48, upstreamConfig__field_descriptor),
           (Data.ProtoLens.Tag 49, trackClusterStats__field_descriptor),
           (Data.ProtoLens.Tag 50, preconnectPolicy__field_descriptor),
           (Data.ProtoLens.Tag 51, 
            connectionPoolPerDownstreamConnection__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor),
           (Data.ProtoLens.Tag 38, clusterType__field_descriptor),
           (Data.ProtoLens.Tag 23, ringHashLbConfig__field_descriptor),
           (Data.ProtoLens.Tag 52, maglevLbConfig__field_descriptor),
           (Data.ProtoLens.Tag 34, originalDstLbConfig__field_descriptor),
           (Data.ProtoLens.Tag 37, leastRequestLbConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'_unknownFields
        (\ x__ y__ -> x__ {_Cluster'_unknownFields = y__})
  defMessage
    = Cluster'_constructor
        {_Cluster'transportSocketMatches = Data.Vector.Generic.empty,
         _Cluster'name = Data.ProtoLens.fieldDefault,
         _Cluster'altStatName = Data.ProtoLens.fieldDefault,
         _Cluster'edsClusterConfig = Prelude.Nothing,
         _Cluster'connectTimeout = Prelude.Nothing,
         _Cluster'perConnectionBufferLimitBytes = Prelude.Nothing,
         _Cluster'lbPolicy = Data.ProtoLens.fieldDefault,
         _Cluster'loadAssignment = Prelude.Nothing,
         _Cluster'healthChecks = Data.Vector.Generic.empty,
         _Cluster'maxRequestsPerConnection = Prelude.Nothing,
         _Cluster'circuitBreakers = Prelude.Nothing,
         _Cluster'upstreamHttpProtocolOptions = Prelude.Nothing,
         _Cluster'commonHttpProtocolOptions = Prelude.Nothing,
         _Cluster'httpProtocolOptions = Prelude.Nothing,
         _Cluster'http2ProtocolOptions = Prelude.Nothing,
         _Cluster'typedExtensionProtocolOptions = Data.Map.empty,
         _Cluster'dnsRefreshRate = Prelude.Nothing,
         _Cluster'dnsFailureRefreshRate = Prelude.Nothing,
         _Cluster'respectDnsTtl = Data.ProtoLens.fieldDefault,
         _Cluster'dnsLookupFamily = Data.ProtoLens.fieldDefault,
         _Cluster'dnsResolvers = Data.Vector.Generic.empty,
         _Cluster'useTcpForDnsLookups = Data.ProtoLens.fieldDefault,
         _Cluster'dnsResolutionConfig = Prelude.Nothing,
         _Cluster'waitForWarmOnInit = Prelude.Nothing,
         _Cluster'outlierDetection = Prelude.Nothing,
         _Cluster'cleanupInterval = Prelude.Nothing,
         _Cluster'upstreamBindConfig = Prelude.Nothing,
         _Cluster'lbSubsetConfig = Prelude.Nothing,
         _Cluster'commonLbConfig = Prelude.Nothing,
         _Cluster'transportSocket = Prelude.Nothing,
         _Cluster'metadata = Prelude.Nothing,
         _Cluster'protocolSelection = Data.ProtoLens.fieldDefault,
         _Cluster'upstreamConnectionOptions = Prelude.Nothing,
         _Cluster'closeConnectionsOnHostHealthFailure = Data.ProtoLens.fieldDefault,
         _Cluster'ignoreHealthOnHostRemoval = Data.ProtoLens.fieldDefault,
         _Cluster'filters = Data.Vector.Generic.empty,
         _Cluster'loadBalancingPolicy = Prelude.Nothing,
         _Cluster'lrsServer = Prelude.Nothing,
         _Cluster'trackTimeoutBudgets = Data.ProtoLens.fieldDefault,
         _Cluster'upstreamConfig = Prelude.Nothing,
         _Cluster'trackClusterStats = Prelude.Nothing,
         _Cluster'preconnectPolicy = Prelude.Nothing,
         _Cluster'connectionPoolPerDownstreamConnection = Data.ProtoLens.fieldDefault,
         _Cluster'clusterDiscoveryType = Prelude.Nothing,
         _Cluster'lbConfig = Prelude.Nothing, _Cluster'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Address.Address
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Cluster.V3.Filter.Filter
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.HealthCheck.HealthCheck
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Cluster'TransportSocketMatch
                      -> Data.ProtoLens.Encoding.Bytes.Parser Cluster
        loop
          x
          mutable'dnsResolvers
          mutable'filters
          mutable'healthChecks
          mutable'transportSocketMatches
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'dnsResolvers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'dnsResolvers)
                      frozen'filters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'filters)
                      frozen'healthChecks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'healthChecks)
                      frozen'transportSocketMatches <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'transportSocketMatches)
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
                              (Data.ProtoLens.Field.field @"vec'dnsResolvers")
                              frozen'dnsResolvers
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'filters")
                                 frozen'filters
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'healthChecks")
                                    frozen'healthChecks
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'transportSocketMatches")
                                       frozen'transportSocketMatches
                                       x)))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        346
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "transport_socket_matches"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'transportSocketMatches y)
                                loop x mutable'dnsResolvers mutable'filters mutable'healthChecks v
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
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        226
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "alt_stat_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"altStatName") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "eds_cluster_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"edsClusterConfig") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "connect_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"connectTimeout") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "per_connection_buffer_limit_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"perConnectionBufferLimitBytes")
                                     y
                                     x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "lb_policy"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lbPolicy") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        266
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "load_assignment"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"loadAssignment") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "health_checks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'healthChecks y)
                                loop
                                  x
                                  mutable'dnsResolvers
                                  mutable'filters
                                  v
                                  mutable'transportSocketMatches
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_requests_per_connection"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxRequestsPerConnection") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "circuit_breakers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"circuitBreakers") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        370
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upstream_http_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamHttpProtocolOptions")
                                     y
                                     x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        234
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "common_http_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonHttpProtocolOptions") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpProtocolOptions") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http2_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"http2ProtocolOptions") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        290
                          -> do !(entry :: Cluster'TypedExtensionProtocolOptionsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                            (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                  (Prelude.fromIntegral
                                                                                                     len)
                                                                                                  Data.ProtoLens.parseMessage)
                                                                                            "typed_extension_protocol_options"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field
                                           @"typedExtensionProtocolOptions")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'dnsResolvers
                                     mutable'filters
                                     mutable'healthChecks
                                     mutable'transportSocketMatches)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_refresh_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsRefreshRate") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        354
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_failure_refresh_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsFailureRefreshRate") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        312
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "respect_dns_ttl"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"respectDnsTtl") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        136
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
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        146
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "dns_resolvers"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'dnsResolvers y)
                                loop
                                  x
                                  v
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        360
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_tcp_for_dns_lookups"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useTcpForDnsLookups") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        426
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "dns_resolution_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsResolutionConfig") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        434
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "wait_for_warm_on_init"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"waitForWarmOnInit") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "outlier_detection"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"outlierDetection") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cleanup_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"cleanupInterval") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upstream_bind_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamBindConfig") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        178
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "lb_subset_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"lbSubsetConfig") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        218
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "common_lb_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonLbConfig") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        194
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "transport_socket"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportSocket") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        202
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        208
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "protocol_selection"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protocolSelection") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        242
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upstream_connection_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamConnectionOptions") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        248
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "close_connections_on_host_health_failure"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"closeConnectionsOnHostHealthFailure")
                                     y
                                     x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        256
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_health_on_host_removal"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ignoreHealthOnHostRemoval") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        322
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "filters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'filters y)
                                loop
                                  x
                                  mutable'dnsResolvers
                                  v
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        330
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "load_balancing_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"loadBalancingPolicy") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        338
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "lrs_server"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lrsServer") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        376
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "track_timeout_budgets"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"trackTimeoutBudgets") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        386
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upstream_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamConfig") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        394
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "track_cluster_stats"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"trackClusterStats") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        402
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "preconnect_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"preconnectPolicy") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        408
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "connection_pool_per_downstream_connection"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"connectionPoolPerDownstreamConnection")
                                     y
                                     x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        306
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cluster_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clusterType") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        186
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ring_hash_lb_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ringHashLbConfig") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        418
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "maglev_lb_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maglevLbConfig") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        274
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "original_dst_lb_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"originalDstLbConfig") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        298
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "least_request_lb_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"leastRequestLbConfig") y x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'dnsResolvers
                                  mutable'filters
                                  mutable'healthChecks
                                  mutable'transportSocketMatches
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'dnsResolvers <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'filters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'healthChecks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'transportSocketMatches <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'dnsResolvers
                mutable'filters
                mutable'healthChecks
                mutable'transportSocketMatches)
          "Cluster"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 346)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage
                           _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'transportSocketMatches") _x))
             ((Data.Monoid.<>)
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"altStatName") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 226)
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
                             (Data.ProtoLens.Field.field @"maybe'edsClusterConfig") _x
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
                                (Data.ProtoLens.Field.field @"maybe'connectTimeout") _x
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
                                      @"maybe'perConnectionBufferLimitBytes")
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
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v = Lens.Family2.view (Data.ProtoLens.Field.field @"lbPolicy") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                        ((Prelude..)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              Prelude.fromIntegral)
                                           Prelude.fromEnum
                                           _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'loadAssignment") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 266)
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
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
                                           (Data.ProtoLens.Field.field @"vec'healthChecks") _x))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'maxRequestsPerConnection")
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
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'circuitBreakers")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
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
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'upstreamHttpProtocolOptions")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           370)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage
                                                           _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'commonHttpProtocolOptions")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              234)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage
                                                              _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'httpProtocolOptions")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 106)
                                                              ((Prelude..)
                                                                 (\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                 Data.ProtoLens.encodeMessage
                                                                 _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'http2ProtocolOptions")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    114)
                                                                 ((Prelude..)
                                                                    (\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                    Data.ProtoLens.encodeMessage
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (Data.Monoid.mconcat
                                                             (Prelude.map
                                                                (\ _v
                                                                   -> (Data.Monoid.<>)
                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                           290)
                                                                        ((Prelude..)
                                                                           (\ bs
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      (Prelude.fromIntegral
                                                                                         (Data.ByteString.length
                                                                                            bs)))
                                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                      bs))
                                                                           Data.ProtoLens.encodeMessage
                                                                           (Lens.Family2.set
                                                                              (Data.ProtoLens.Field.field
                                                                                 @"key")
                                                                              (Prelude.fst _v)
                                                                              (Lens.Family2.set
                                                                                 (Data.ProtoLens.Field.field
                                                                                    @"value")
                                                                                 (Prelude.snd _v)
                                                                                 (Data.ProtoLens.defMessage ::
                                                                                    Cluster'TypedExtensionProtocolOptionsEntry)))))
                                                                (Data.Map.toList
                                                                   (Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"typedExtensionProtocolOptions")
                                                                      _x))))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'dnsRefreshRate")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          130)
                                                                       ((Prelude..)
                                                                          (\ bs
                                                                             -> (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     (Prelude.fromIntegral
                                                                                        (Data.ByteString.length
                                                                                           bs)))
                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                     bs))
                                                                          Data.ProtoLens.encodeMessage
                                                                          _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'dnsFailureRefreshRate")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             354)
                                                                          ((Prelude..)
                                                                             (\ bs
                                                                                -> (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        (Prelude.fromIntegral
                                                                                           (Data.ByteString.length
                                                                                              bs)))
                                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                        bs))
                                                                             Data.ProtoLens.encodeMessage
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (let
                                                                      _v
                                                                        = Lens.Family2.view
                                                                            (Data.ProtoLens.Field.field
                                                                               @"respectDnsTtl")
                                                                            _x
                                                                    in
                                                                      if (Prelude.==)
                                                                           _v
                                                                           Data.ProtoLens.fieldDefault then
                                                                          Data.Monoid.mempty
                                                                      else
                                                                          (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               312)
                                                                            ((Prelude..)
                                                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (\ b
                                                                                  -> if b then
                                                                                         1
                                                                                     else
                                                                                         0)
                                                                               _v))
                                                                   ((Data.Monoid.<>)
                                                                      (let
                                                                         _v
                                                                           = Lens.Family2.view
                                                                               (Data.ProtoLens.Field.field
                                                                                  @"dnsLookupFamily")
                                                                               _x
                                                                       in
                                                                         if (Prelude.==)
                                                                              _v
                                                                              Data.ProtoLens.fieldDefault then
                                                                             Data.Monoid.mempty
                                                                         else
                                                                             (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  136)
                                                                               ((Prelude..)
                                                                                  ((Prelude..)
                                                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     Prelude.fromIntegral)
                                                                                  Prelude.fromEnum
                                                                                  _v))
                                                                      ((Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                            (\ _v
                                                                               -> (Data.Monoid.<>)
                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                       146)
                                                                                    ((Prelude..)
                                                                                       (\ bs
                                                                                          -> (Data.Monoid.<>)
                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                  (Prelude.fromIntegral
                                                                                                     (Data.ByteString.length
                                                                                                        bs)))
                                                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                  bs))
                                                                                       Data.ProtoLens.encodeMessage
                                                                                       _v))
                                                                            (Lens.Family2.view
                                                                               (Data.ProtoLens.Field.field
                                                                                  @"vec'dnsResolvers")
                                                                               _x))
                                                                         ((Data.Monoid.<>)
                                                                            (let
                                                                               _v
                                                                                 = Lens.Family2.view
                                                                                     (Data.ProtoLens.Field.field
                                                                                        @"useTcpForDnsLookups")
                                                                                     _x
                                                                             in
                                                                               if (Prelude.==)
                                                                                    _v
                                                                                    Data.ProtoLens.fieldDefault then
                                                                                   Data.Monoid.mempty
                                                                               else
                                                                                   (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        360)
                                                                                     ((Prelude..)
                                                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        (\ b
                                                                                           -> if b then
                                                                                                  1
                                                                                              else
                                                                                                  0)
                                                                                        _v))
                                                                            ((Data.Monoid.<>)
                                                                               (case
                                                                                    Lens.Family2.view
                                                                                      (Data.ProtoLens.Field.field
                                                                                         @"maybe'dnsResolutionConfig")
                                                                                      _x
                                                                                of
                                                                                  Prelude.Nothing
                                                                                    -> Data.Monoid.mempty
                                                                                  (Prelude.Just _v)
                                                                                    -> (Data.Monoid.<>)
                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                            426)
                                                                                         ((Prelude..)
                                                                                            (\ bs
                                                                                               -> (Data.Monoid.<>)
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                       (Prelude.fromIntegral
                                                                                                          (Data.ByteString.length
                                                                                                             bs)))
                                                                                                    (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                       bs))
                                                                                            Data.ProtoLens.encodeMessage
                                                                                            _v))
                                                                               ((Data.Monoid.<>)
                                                                                  (case
                                                                                       Lens.Family2.view
                                                                                         (Data.ProtoLens.Field.field
                                                                                            @"maybe'waitForWarmOnInit")
                                                                                         _x
                                                                                   of
                                                                                     Prelude.Nothing
                                                                                       -> Data.Monoid.mempty
                                                                                     (Prelude.Just _v)
                                                                                       -> (Data.Monoid.<>)
                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                               434)
                                                                                            ((Prelude..)
                                                                                               (\ bs
                                                                                                  -> (Data.Monoid.<>)
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          (Prelude.fromIntegral
                                                                                                             (Data.ByteString.length
                                                                                                                bs)))
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                          bs))
                                                                                               Data.ProtoLens.encodeMessage
                                                                                               _v))
                                                                                  ((Data.Monoid.<>)
                                                                                     (case
                                                                                          Lens.Family2.view
                                                                                            (Data.ProtoLens.Field.field
                                                                                               @"maybe'outlierDetection")
                                                                                            _x
                                                                                      of
                                                                                        Prelude.Nothing
                                                                                          -> Data.Monoid.mempty
                                                                                        (Prelude.Just _v)
                                                                                          -> (Data.Monoid.<>)
                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                  154)
                                                                                               ((Prelude..)
                                                                                                  (\ bs
                                                                                                     -> (Data.Monoid.<>)
                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                             (Prelude.fromIntegral
                                                                                                                (Data.ByteString.length
                                                                                                                   bs)))
                                                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                             bs))
                                                                                                  Data.ProtoLens.encodeMessage
                                                                                                  _v))
                                                                                     ((Data.Monoid.<>)
                                                                                        (case
                                                                                             Lens.Family2.view
                                                                                               (Data.ProtoLens.Field.field
                                                                                                  @"maybe'cleanupInterval")
                                                                                               _x
                                                                                         of
                                                                                           Prelude.Nothing
                                                                                             -> Data.Monoid.mempty
                                                                                           (Prelude.Just _v)
                                                                                             -> (Data.Monoid.<>)
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                     162)
                                                                                                  ((Prelude..)
                                                                                                     (\ bs
                                                                                                        -> (Data.Monoid.<>)
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                (Prelude.fromIntegral
                                                                                                                   (Data.ByteString.length
                                                                                                                      bs)))
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                bs))
                                                                                                     Data.ProtoLens.encodeMessage
                                                                                                     _v))
                                                                                        ((Data.Monoid.<>)
                                                                                           (case
                                                                                                Lens.Family2.view
                                                                                                  (Data.ProtoLens.Field.field
                                                                                                     @"maybe'upstreamBindConfig")
                                                                                                  _x
                                                                                            of
                                                                                              Prelude.Nothing
                                                                                                -> Data.Monoid.mempty
                                                                                              (Prelude.Just _v)
                                                                                                -> (Data.Monoid.<>)
                                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                        170)
                                                                                                     ((Prelude..)
                                                                                                        (\ bs
                                                                                                           -> (Data.Monoid.<>)
                                                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                   (Prelude.fromIntegral
                                                                                                                      (Data.ByteString.length
                                                                                                                         bs)))
                                                                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                   bs))
                                                                                                        Data.ProtoLens.encodeMessage
                                                                                                        _v))
                                                                                           ((Data.Monoid.<>)
                                                                                              (case
                                                                                                   Lens.Family2.view
                                                                                                     (Data.ProtoLens.Field.field
                                                                                                        @"maybe'lbSubsetConfig")
                                                                                                     _x
                                                                                               of
                                                                                                 Prelude.Nothing
                                                                                                   -> Data.Monoid.mempty
                                                                                                 (Prelude.Just _v)
                                                                                                   -> (Data.Monoid.<>)
                                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                           178)
                                                                                                        ((Prelude..)
                                                                                                           (\ bs
                                                                                                              -> (Data.Monoid.<>)
                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                      (Prelude.fromIntegral
                                                                                                                         (Data.ByteString.length
                                                                                                                            bs)))
                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                      bs))
                                                                                                           Data.ProtoLens.encodeMessage
                                                                                                           _v))
                                                                                              ((Data.Monoid.<>)
                                                                                                 (case
                                                                                                      Lens.Family2.view
                                                                                                        (Data.ProtoLens.Field.field
                                                                                                           @"maybe'commonLbConfig")
                                                                                                        _x
                                                                                                  of
                                                                                                    Prelude.Nothing
                                                                                                      -> Data.Monoid.mempty
                                                                                                    (Prelude.Just _v)
                                                                                                      -> (Data.Monoid.<>)
                                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                              218)
                                                                                                           ((Prelude..)
                                                                                                              (\ bs
                                                                                                                 -> (Data.Monoid.<>)
                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                         (Prelude.fromIntegral
                                                                                                                            (Data.ByteString.length
                                                                                                                               bs)))
                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                         bs))
                                                                                                              Data.ProtoLens.encodeMessage
                                                                                                              _v))
                                                                                                 ((Data.Monoid.<>)
                                                                                                    (case
                                                                                                         Lens.Family2.view
                                                                                                           (Data.ProtoLens.Field.field
                                                                                                              @"maybe'transportSocket")
                                                                                                           _x
                                                                                                     of
                                                                                                       Prelude.Nothing
                                                                                                         -> Data.Monoid.mempty
                                                                                                       (Prelude.Just _v)
                                                                                                         -> (Data.Monoid.<>)
                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                 194)
                                                                                                              ((Prelude..)
                                                                                                                 (\ bs
                                                                                                                    -> (Data.Monoid.<>)
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                            (Prelude.fromIntegral
                                                                                                                               (Data.ByteString.length
                                                                                                                                  bs)))
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                            bs))
                                                                                                                 Data.ProtoLens.encodeMessage
                                                                                                                 _v))
                                                                                                    ((Data.Monoid.<>)
                                                                                                       (case
                                                                                                            Lens.Family2.view
                                                                                                              (Data.ProtoLens.Field.field
                                                                                                                 @"maybe'metadata")
                                                                                                              _x
                                                                                                        of
                                                                                                          Prelude.Nothing
                                                                                                            -> Data.Monoid.mempty
                                                                                                          (Prelude.Just _v)
                                                                                                            -> (Data.Monoid.<>)
                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                    202)
                                                                                                                 ((Prelude..)
                                                                                                                    (\ bs
                                                                                                                       -> (Data.Monoid.<>)
                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                               (Prelude.fromIntegral
                                                                                                                                  (Data.ByteString.length
                                                                                                                                     bs)))
                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                               bs))
                                                                                                                    Data.ProtoLens.encodeMessage
                                                                                                                    _v))
                                                                                                       ((Data.Monoid.<>)
                                                                                                          (let
                                                                                                             _v
                                                                                                               = Lens.Family2.view
                                                                                                                   (Data.ProtoLens.Field.field
                                                                                                                      @"protocolSelection")
                                                                                                                   _x
                                                                                                           in
                                                                                                             if (Prelude.==)
                                                                                                                  _v
                                                                                                                  Data.ProtoLens.fieldDefault then
                                                                                                                 Data.Monoid.mempty
                                                                                                             else
                                                                                                                 (Data.Monoid.<>)
                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                      208)
                                                                                                                   ((Prelude..)
                                                                                                                      ((Prelude..)
                                                                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                         Prelude.fromIntegral)
                                                                                                                      Prelude.fromEnum
                                                                                                                      _v))
                                                                                                          ((Data.Monoid.<>)
                                                                                                             (case
                                                                                                                  Lens.Family2.view
                                                                                                                    (Data.ProtoLens.Field.field
                                                                                                                       @"maybe'upstreamConnectionOptions")
                                                                                                                    _x
                                                                                                              of
                                                                                                                Prelude.Nothing
                                                                                                                  -> Data.Monoid.mempty
                                                                                                                (Prelude.Just _v)
                                                                                                                  -> (Data.Monoid.<>)
                                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                          242)
                                                                                                                       ((Prelude..)
                                                                                                                          (\ bs
                                                                                                                             -> (Data.Monoid.<>)
                                                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                     (Prelude.fromIntegral
                                                                                                                                        (Data.ByteString.length
                                                                                                                                           bs)))
                                                                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                     bs))
                                                                                                                          Data.ProtoLens.encodeMessage
                                                                                                                          _v))
                                                                                                             ((Data.Monoid.<>)
                                                                                                                (let
                                                                                                                   _v
                                                                                                                     = Lens.Family2.view
                                                                                                                         (Data.ProtoLens.Field.field
                                                                                                                            @"closeConnectionsOnHostHealthFailure")
                                                                                                                         _x
                                                                                                                 in
                                                                                                                   if (Prelude.==)
                                                                                                                        _v
                                                                                                                        Data.ProtoLens.fieldDefault then
                                                                                                                       Data.Monoid.mempty
                                                                                                                   else
                                                                                                                       (Data.Monoid.<>)
                                                                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                            248)
                                                                                                                         ((Prelude..)
                                                                                                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                            (\ b
                                                                                                                               -> if b then
                                                                                                                                      1
                                                                                                                                  else
                                                                                                                                      0)
                                                                                                                            _v))
                                                                                                                ((Data.Monoid.<>)
                                                                                                                   (let
                                                                                                                      _v
                                                                                                                        = Lens.Family2.view
                                                                                                                            (Data.ProtoLens.Field.field
                                                                                                                               @"ignoreHealthOnHostRemoval")
                                                                                                                            _x
                                                                                                                    in
                                                                                                                      if (Prelude.==)
                                                                                                                           _v
                                                                                                                           Data.ProtoLens.fieldDefault then
                                                                                                                          Data.Monoid.mempty
                                                                                                                      else
                                                                                                                          (Data.Monoid.<>)
                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                               256)
                                                                                                                            ((Prelude..)
                                                                                                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                               (\ b
                                                                                                                                  -> if b then
                                                                                                                                         1
                                                                                                                                     else
                                                                                                                                         0)
                                                                                                                               _v))
                                                                                                                   ((Data.Monoid.<>)
                                                                                                                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                                                         (\ _v
                                                                                                                            -> (Data.Monoid.<>)
                                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                    322)
                                                                                                                                 ((Prelude..)
                                                                                                                                    (\ bs
                                                                                                                                       -> (Data.Monoid.<>)
                                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                               (Prelude.fromIntegral
                                                                                                                                                  (Data.ByteString.length
                                                                                                                                                     bs)))
                                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                               bs))
                                                                                                                                    Data.ProtoLens.encodeMessage
                                                                                                                                    _v))
                                                                                                                         (Lens.Family2.view
                                                                                                                            (Data.ProtoLens.Field.field
                                                                                                                               @"vec'filters")
                                                                                                                            _x))
                                                                                                                      ((Data.Monoid.<>)
                                                                                                                         (case
                                                                                                                              Lens.Family2.view
                                                                                                                                (Data.ProtoLens.Field.field
                                                                                                                                   @"maybe'loadBalancingPolicy")
                                                                                                                                _x
                                                                                                                          of
                                                                                                                            Prelude.Nothing
                                                                                                                              -> Data.Monoid.mempty
                                                                                                                            (Prelude.Just _v)
                                                                                                                              -> (Data.Monoid.<>)
                                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                      330)
                                                                                                                                   ((Prelude..)
                                                                                                                                      (\ bs
                                                                                                                                         -> (Data.Monoid.<>)
                                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                 (Prelude.fromIntegral
                                                                                                                                                    (Data.ByteString.length
                                                                                                                                                       bs)))
                                                                                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                 bs))
                                                                                                                                      Data.ProtoLens.encodeMessage
                                                                                                                                      _v))
                                                                                                                         ((Data.Monoid.<>)
                                                                                                                            (case
                                                                                                                                 Lens.Family2.view
                                                                                                                                   (Data.ProtoLens.Field.field
                                                                                                                                      @"maybe'lrsServer")
                                                                                                                                   _x
                                                                                                                             of
                                                                                                                               Prelude.Nothing
                                                                                                                                 -> Data.Monoid.mempty
                                                                                                                               (Prelude.Just _v)
                                                                                                                                 -> (Data.Monoid.<>)
                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                         338)
                                                                                                                                      ((Prelude..)
                                                                                                                                         (\ bs
                                                                                                                                            -> (Data.Monoid.<>)
                                                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                    (Prelude.fromIntegral
                                                                                                                                                       (Data.ByteString.length
                                                                                                                                                          bs)))
                                                                                                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                    bs))
                                                                                                                                         Data.ProtoLens.encodeMessage
                                                                                                                                         _v))
                                                                                                                            ((Data.Monoid.<>)
                                                                                                                               (let
                                                                                                                                  _v
                                                                                                                                    = Lens.Family2.view
                                                                                                                                        (Data.ProtoLens.Field.field
                                                                                                                                           @"trackTimeoutBudgets")
                                                                                                                                        _x
                                                                                                                                in
                                                                                                                                  if (Prelude.==)
                                                                                                                                       _v
                                                                                                                                       Data.ProtoLens.fieldDefault then
                                                                                                                                      Data.Monoid.mempty
                                                                                                                                  else
                                                                                                                                      (Data.Monoid.<>)
                                                                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                           376)
                                                                                                                                        ((Prelude..)
                                                                                                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                           (\ b
                                                                                                                                              -> if b then
                                                                                                                                                     1
                                                                                                                                                 else
                                                                                                                                                     0)
                                                                                                                                           _v))
                                                                                                                               ((Data.Monoid.<>)
                                                                                                                                  (case
                                                                                                                                       Lens.Family2.view
                                                                                                                                         (Data.ProtoLens.Field.field
                                                                                                                                            @"maybe'upstreamConfig")
                                                                                                                                         _x
                                                                                                                                   of
                                                                                                                                     Prelude.Nothing
                                                                                                                                       -> Data.Monoid.mempty
                                                                                                                                     (Prelude.Just _v)
                                                                                                                                       -> (Data.Monoid.<>)
                                                                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                               386)
                                                                                                                                            ((Prelude..)
                                                                                                                                               (\ bs
                                                                                                                                                  -> (Data.Monoid.<>)
                                                                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                          (Prelude.fromIntegral
                                                                                                                                                             (Data.ByteString.length
                                                                                                                                                                bs)))
                                                                                                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                          bs))
                                                                                                                                               Data.ProtoLens.encodeMessage
                                                                                                                                               _v))
                                                                                                                                  ((Data.Monoid.<>)
                                                                                                                                     (case
                                                                                                                                          Lens.Family2.view
                                                                                                                                            (Data.ProtoLens.Field.field
                                                                                                                                               @"maybe'trackClusterStats")
                                                                                                                                            _x
                                                                                                                                      of
                                                                                                                                        Prelude.Nothing
                                                                                                                                          -> Data.Monoid.mempty
                                                                                                                                        (Prelude.Just _v)
                                                                                                                                          -> (Data.Monoid.<>)
                                                                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                  394)
                                                                                                                                               ((Prelude..)
                                                                                                                                                  (\ bs
                                                                                                                                                     -> (Data.Monoid.<>)
                                                                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                             (Prelude.fromIntegral
                                                                                                                                                                (Data.ByteString.length
                                                                                                                                                                   bs)))
                                                                                                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                             bs))
                                                                                                                                                  Data.ProtoLens.encodeMessage
                                                                                                                                                  _v))
                                                                                                                                     ((Data.Monoid.<>)
                                                                                                                                        (case
                                                                                                                                             Lens.Family2.view
                                                                                                                                               (Data.ProtoLens.Field.field
                                                                                                                                                  @"maybe'preconnectPolicy")
                                                                                                                                               _x
                                                                                                                                         of
                                                                                                                                           Prelude.Nothing
                                                                                                                                             -> Data.Monoid.mempty
                                                                                                                                           (Prelude.Just _v)
                                                                                                                                             -> (Data.Monoid.<>)
                                                                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                     402)
                                                                                                                                                  ((Prelude..)
                                                                                                                                                     (\ bs
                                                                                                                                                        -> (Data.Monoid.<>)
                                                                                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                (Prelude.fromIntegral
                                                                                                                                                                   (Data.ByteString.length
                                                                                                                                                                      bs)))
                                                                                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                bs))
                                                                                                                                                     Data.ProtoLens.encodeMessage
                                                                                                                                                     _v))
                                                                                                                                        ((Data.Monoid.<>)
                                                                                                                                           (let
                                                                                                                                              _v
                                                                                                                                                = Lens.Family2.view
                                                                                                                                                    (Data.ProtoLens.Field.field
                                                                                                                                                       @"connectionPoolPerDownstreamConnection")
                                                                                                                                                    _x
                                                                                                                                            in
                                                                                                                                              if (Prelude.==)
                                                                                                                                                   _v
                                                                                                                                                   Data.ProtoLens.fieldDefault then
                                                                                                                                                  Data.Monoid.mempty
                                                                                                                                              else
                                                                                                                                                  (Data.Monoid.<>)
                                                                                                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                       408)
                                                                                                                                                    ((Prelude..)
                                                                                                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                       (\ b
                                                                                                                                                          -> if b then
                                                                                                                                                                 1
                                                                                                                                                             else
                                                                                                                                                                 0)
                                                                                                                                                       _v))
                                                                                                                                           ((Data.Monoid.<>)
                                                                                                                                              (case
                                                                                                                                                   Lens.Family2.view
                                                                                                                                                     (Data.ProtoLens.Field.field
                                                                                                                                                        @"maybe'clusterDiscoveryType")
                                                                                                                                                     _x
                                                                                                                                               of
                                                                                                                                                 Prelude.Nothing
                                                                                                                                                   -> Data.Monoid.mempty
                                                                                                                                                 (Prelude.Just (Cluster'Type v))
                                                                                                                                                   -> (Data.Monoid.<>)
                                                                                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                           16)
                                                                                                                                                        ((Prelude..)
                                                                                                                                                           ((Prelude..)
                                                                                                                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                              Prelude.fromIntegral)
                                                                                                                                                           Prelude.fromEnum
                                                                                                                                                           v)
                                                                                                                                                 (Prelude.Just (Cluster'ClusterType v))
                                                                                                                                                   -> (Data.Monoid.<>)
                                                                                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                           306)
                                                                                                                                                        ((Prelude..)
                                                                                                                                                           (\ bs
                                                                                                                                                              -> (Data.Monoid.<>)
                                                                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                      (Prelude.fromIntegral
                                                                                                                                                                         (Data.ByteString.length
                                                                                                                                                                            bs)))
                                                                                                                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                      bs))
                                                                                                                                                           Data.ProtoLens.encodeMessage
                                                                                                                                                           v))
                                                                                                                                              ((Data.Monoid.<>)
                                                                                                                                                 (case
                                                                                                                                                      Lens.Family2.view
                                                                                                                                                        (Data.ProtoLens.Field.field
                                                                                                                                                           @"maybe'lbConfig")
                                                                                                                                                        _x
                                                                                                                                                  of
                                                                                                                                                    Prelude.Nothing
                                                                                                                                                      -> Data.Monoid.mempty
                                                                                                                                                    (Prelude.Just (Cluster'RingHashLbConfig' v))
                                                                                                                                                      -> (Data.Monoid.<>)
                                                                                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                              186)
                                                                                                                                                           ((Prelude..)
                                                                                                                                                              (\ bs
                                                                                                                                                                 -> (Data.Monoid.<>)
                                                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                         (Prelude.fromIntegral
                                                                                                                                                                            (Data.ByteString.length
                                                                                                                                                                               bs)))
                                                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                         bs))
                                                                                                                                                              Data.ProtoLens.encodeMessage
                                                                                                                                                              v)
                                                                                                                                                    (Prelude.Just (Cluster'MaglevLbConfig' v))
                                                                                                                                                      -> (Data.Monoid.<>)
                                                                                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                              418)
                                                                                                                                                           ((Prelude..)
                                                                                                                                                              (\ bs
                                                                                                                                                                 -> (Data.Monoid.<>)
                                                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                         (Prelude.fromIntegral
                                                                                                                                                                            (Data.ByteString.length
                                                                                                                                                                               bs)))
                                                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                         bs))
                                                                                                                                                              Data.ProtoLens.encodeMessage
                                                                                                                                                              v)
                                                                                                                                                    (Prelude.Just (Cluster'OriginalDstLbConfig' v))
                                                                                                                                                      -> (Data.Monoid.<>)
                                                                                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                              274)
                                                                                                                                                           ((Prelude..)
                                                                                                                                                              (\ bs
                                                                                                                                                                 -> (Data.Monoid.<>)
                                                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                         (Prelude.fromIntegral
                                                                                                                                                                            (Data.ByteString.length
                                                                                                                                                                               bs)))
                                                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                         bs))
                                                                                                                                                              Data.ProtoLens.encodeMessage
                                                                                                                                                              v)
                                                                                                                                                    (Prelude.Just (Cluster'LeastRequestLbConfig' v))
                                                                                                                                                      -> (Data.Monoid.<>)
                                                                                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                              298)
                                                                                                                                                           ((Prelude..)
                                                                                                                                                              (\ bs
                                                                                                                                                                 -> (Data.Monoid.<>)
                                                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                                                                         (Prelude.fromIntegral
                                                                                                                                                                            (Data.ByteString.length
                                                                                                                                                                               bs)))
                                                                                                                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                                                                         bs))
                                                                                                                                                              Data.ProtoLens.encodeMessage
                                                                                                                                                              v))
                                                                                                                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                                                                                    (Lens.Family2.view
                                                                                                                                                       Data.ProtoLens.unknownFields
                                                                                                                                                       _x))))))))))))))))))))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData Cluster where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'transportSocketMatches x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'name x__)
                   (Control.DeepSeq.deepseq
                      (_Cluster'altStatName x__)
                      (Control.DeepSeq.deepseq
                         (_Cluster'edsClusterConfig x__)
                         (Control.DeepSeq.deepseq
                            (_Cluster'connectTimeout x__)
                            (Control.DeepSeq.deepseq
                               (_Cluster'perConnectionBufferLimitBytes x__)
                               (Control.DeepSeq.deepseq
                                  (_Cluster'lbPolicy x__)
                                  (Control.DeepSeq.deepseq
                                     (_Cluster'loadAssignment x__)
                                     (Control.DeepSeq.deepseq
                                        (_Cluster'healthChecks x__)
                                        (Control.DeepSeq.deepseq
                                           (_Cluster'maxRequestsPerConnection x__)
                                           (Control.DeepSeq.deepseq
                                              (_Cluster'circuitBreakers x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Cluster'upstreamHttpProtocolOptions x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Cluster'commonHttpProtocolOptions x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Cluster'httpProtocolOptions x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Cluster'http2ProtocolOptions x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_Cluster'typedExtensionProtocolOptions
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_Cluster'dnsRefreshRate x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_Cluster'dnsFailureRefreshRate
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_Cluster'respectDnsTtl x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_Cluster'dnsLookupFamily
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_Cluster'dnsResolvers
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_Cluster'useTcpForDnsLookups
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_Cluster'dnsResolutionConfig
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_Cluster'waitForWarmOnInit
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_Cluster'outlierDetection
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_Cluster'cleanupInterval
                                                                                              x__)
                                                                                           (Control.DeepSeq.deepseq
                                                                                              (_Cluster'upstreamBindConfig
                                                                                                 x__)
                                                                                              (Control.DeepSeq.deepseq
                                                                                                 (_Cluster'lbSubsetConfig
                                                                                                    x__)
                                                                                                 (Control.DeepSeq.deepseq
                                                                                                    (_Cluster'commonLbConfig
                                                                                                       x__)
                                                                                                    (Control.DeepSeq.deepseq
                                                                                                       (_Cluster'transportSocket
                                                                                                          x__)
                                                                                                       (Control.DeepSeq.deepseq
                                                                                                          (_Cluster'metadata
                                                                                                             x__)
                                                                                                          (Control.DeepSeq.deepseq
                                                                                                             (_Cluster'protocolSelection
                                                                                                                x__)
                                                                                                             (Control.DeepSeq.deepseq
                                                                                                                (_Cluster'upstreamConnectionOptions
                                                                                                                   x__)
                                                                                                                (Control.DeepSeq.deepseq
                                                                                                                   (_Cluster'closeConnectionsOnHostHealthFailure
                                                                                                                      x__)
                                                                                                                   (Control.DeepSeq.deepseq
                                                                                                                      (_Cluster'ignoreHealthOnHostRemoval
                                                                                                                         x__)
                                                                                                                      (Control.DeepSeq.deepseq
                                                                                                                         (_Cluster'filters
                                                                                                                            x__)
                                                                                                                         (Control.DeepSeq.deepseq
                                                                                                                            (_Cluster'loadBalancingPolicy
                                                                                                                               x__)
                                                                                                                            (Control.DeepSeq.deepseq
                                                                                                                               (_Cluster'lrsServer
                                                                                                                                  x__)
                                                                                                                               (Control.DeepSeq.deepseq
                                                                                                                                  (_Cluster'trackTimeoutBudgets
                                                                                                                                     x__)
                                                                                                                                  (Control.DeepSeq.deepseq
                                                                                                                                     (_Cluster'upstreamConfig
                                                                                                                                        x__)
                                                                                                                                     (Control.DeepSeq.deepseq
                                                                                                                                        (_Cluster'trackClusterStats
                                                                                                                                           x__)
                                                                                                                                        (Control.DeepSeq.deepseq
                                                                                                                                           (_Cluster'preconnectPolicy
                                                                                                                                              x__)
                                                                                                                                           (Control.DeepSeq.deepseq
                                                                                                                                              (_Cluster'connectionPoolPerDownstreamConnection
                                                                                                                                                 x__)
                                                                                                                                              (Control.DeepSeq.deepseq
                                                                                                                                                 (_Cluster'clusterDiscoveryType
                                                                                                                                                    x__)
                                                                                                                                                 (Control.DeepSeq.deepseq
                                                                                                                                                    (_Cluster'lbConfig
                                                                                                                                                       x__)
                                                                                                                                                    ())))))))))))))))))))))))))))))))))))))))))))))
instance Control.DeepSeq.NFData Cluster'ClusterDiscoveryType where
  rnf (Cluster'Type x__) = Control.DeepSeq.rnf x__
  rnf (Cluster'ClusterType x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData Cluster'LbConfig where
  rnf (Cluster'RingHashLbConfig' x__) = Control.DeepSeq.rnf x__
  rnf (Cluster'MaglevLbConfig' x__) = Control.DeepSeq.rnf x__
  rnf (Cluster'OriginalDstLbConfig' x__) = Control.DeepSeq.rnf x__
  rnf (Cluster'LeastRequestLbConfig' x__) = Control.DeepSeq.rnf x__
_Cluster'Type ::
  Data.ProtoLens.Prism.Prism' Cluster'ClusterDiscoveryType Cluster'DiscoveryType
_Cluster'Type
  = Data.ProtoLens.Prism.prism'
      Cluster'Type
      (\ p__
         -> case p__ of
              (Cluster'Type p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Cluster'ClusterType ::
  Data.ProtoLens.Prism.Prism' Cluster'ClusterDiscoveryType Cluster'CustomClusterType
_Cluster'ClusterType
  = Data.ProtoLens.Prism.prism'
      Cluster'ClusterType
      (\ p__
         -> case p__ of
              (Cluster'ClusterType p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Cluster'RingHashLbConfig' ::
  Data.ProtoLens.Prism.Prism' Cluster'LbConfig Cluster'RingHashLbConfig
_Cluster'RingHashLbConfig'
  = Data.ProtoLens.Prism.prism'
      Cluster'RingHashLbConfig'
      (\ p__
         -> case p__ of
              (Cluster'RingHashLbConfig' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Cluster'MaglevLbConfig' ::
  Data.ProtoLens.Prism.Prism' Cluster'LbConfig Cluster'MaglevLbConfig
_Cluster'MaglevLbConfig'
  = Data.ProtoLens.Prism.prism'
      Cluster'MaglevLbConfig'
      (\ p__
         -> case p__ of
              (Cluster'MaglevLbConfig' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Cluster'OriginalDstLbConfig' ::
  Data.ProtoLens.Prism.Prism' Cluster'LbConfig Cluster'OriginalDstLbConfig
_Cluster'OriginalDstLbConfig'
  = Data.ProtoLens.Prism.prism'
      Cluster'OriginalDstLbConfig'
      (\ p__
         -> case p__ of
              (Cluster'OriginalDstLbConfig' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Cluster'LeastRequestLbConfig' ::
  Data.ProtoLens.Prism.Prism' Cluster'LbConfig Cluster'LeastRequestLbConfig
_Cluster'LeastRequestLbConfig'
  = Data.ProtoLens.Prism.prism'
      Cluster'LeastRequestLbConfig'
      (\ p__
         -> case p__ of
              (Cluster'LeastRequestLbConfig' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
newtype Cluster'ClusterProtocolSelection'UnrecognizedValue
  = Cluster'ClusterProtocolSelection'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Cluster'ClusterProtocolSelection
  = Cluster'USE_CONFIGURED_PROTOCOL |
    Cluster'USE_DOWNSTREAM_PROTOCOL |
    Cluster'ClusterProtocolSelection'Unrecognized !Cluster'ClusterProtocolSelection'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Cluster'ClusterProtocolSelection where
  maybeToEnum 0 = Prelude.Just Cluster'USE_CONFIGURED_PROTOCOL
  maybeToEnum 1 = Prelude.Just Cluster'USE_DOWNSTREAM_PROTOCOL
  maybeToEnum k
    = Prelude.Just
        (Cluster'ClusterProtocolSelection'Unrecognized
           (Cluster'ClusterProtocolSelection'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Cluster'USE_CONFIGURED_PROTOCOL
    = "USE_CONFIGURED_PROTOCOL"
  showEnum Cluster'USE_DOWNSTREAM_PROTOCOL
    = "USE_DOWNSTREAM_PROTOCOL"
  showEnum
    (Cluster'ClusterProtocolSelection'Unrecognized (Cluster'ClusterProtocolSelection'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "USE_CONFIGURED_PROTOCOL"
    = Prelude.Just Cluster'USE_CONFIGURED_PROTOCOL
    | (Prelude.==) k "USE_DOWNSTREAM_PROTOCOL"
    = Prelude.Just Cluster'USE_DOWNSTREAM_PROTOCOL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Cluster'ClusterProtocolSelection where
  minBound = Cluster'USE_CONFIGURED_PROTOCOL
  maxBound = Cluster'USE_DOWNSTREAM_PROTOCOL
instance Prelude.Enum Cluster'ClusterProtocolSelection where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ClusterProtocolSelection: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Cluster'USE_CONFIGURED_PROTOCOL = 0
  fromEnum Cluster'USE_DOWNSTREAM_PROTOCOL = 1
  fromEnum
    (Cluster'ClusterProtocolSelection'Unrecognized (Cluster'ClusterProtocolSelection'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Cluster'USE_DOWNSTREAM_PROTOCOL
    = Prelude.error
        "Cluster'ClusterProtocolSelection.succ: bad argument Cluster'USE_DOWNSTREAM_PROTOCOL. This value would be out of bounds."
  succ Cluster'USE_CONFIGURED_PROTOCOL
    = Cluster'USE_DOWNSTREAM_PROTOCOL
  succ (Cluster'ClusterProtocolSelection'Unrecognized _)
    = Prelude.error
        "Cluster'ClusterProtocolSelection.succ: bad argument: unrecognized value"
  pred Cluster'USE_CONFIGURED_PROTOCOL
    = Prelude.error
        "Cluster'ClusterProtocolSelection.pred: bad argument Cluster'USE_CONFIGURED_PROTOCOL. This value would be out of bounds."
  pred Cluster'USE_DOWNSTREAM_PROTOCOL
    = Cluster'USE_CONFIGURED_PROTOCOL
  pred (Cluster'ClusterProtocolSelection'Unrecognized _)
    = Prelude.error
        "Cluster'ClusterProtocolSelection.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Cluster'ClusterProtocolSelection where
  fieldDefault = Cluster'USE_CONFIGURED_PROTOCOL
instance Control.DeepSeq.NFData Cluster'ClusterProtocolSelection where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.healthyPanicThreshold' @:: Lens' Cluster'CommonLbConfig Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'healthyPanicThreshold' @:: Lens' Cluster'CommonLbConfig (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.updateMergeWindow' @:: Lens' Cluster'CommonLbConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'updateMergeWindow' @:: Lens' Cluster'CommonLbConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.ignoreNewHostsUntilFirstHc' @:: Lens' Cluster'CommonLbConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.closeConnectionsOnHostSetChange' @:: Lens' Cluster'CommonLbConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.consistentHashingLbConfig' @:: Lens' Cluster'CommonLbConfig Cluster'CommonLbConfig'ConsistentHashingLbConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'consistentHashingLbConfig' @:: Lens' Cluster'CommonLbConfig (Prelude.Maybe Cluster'CommonLbConfig'ConsistentHashingLbConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'localityConfigSpecifier' @:: Lens' Cluster'CommonLbConfig (Prelude.Maybe Cluster'CommonLbConfig'LocalityConfigSpecifier)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'zoneAwareLbConfig' @:: Lens' Cluster'CommonLbConfig (Prelude.Maybe Cluster'CommonLbConfig'ZoneAwareLbConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.zoneAwareLbConfig' @:: Lens' Cluster'CommonLbConfig Cluster'CommonLbConfig'ZoneAwareLbConfig@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'localityWeightedLbConfig' @:: Lens' Cluster'CommonLbConfig (Prelude.Maybe Cluster'CommonLbConfig'LocalityWeightedLbConfig)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.localityWeightedLbConfig' @:: Lens' Cluster'CommonLbConfig Cluster'CommonLbConfig'LocalityWeightedLbConfig@ -}
data Cluster'CommonLbConfig
  = Cluster'CommonLbConfig'_constructor {_Cluster'CommonLbConfig'healthyPanicThreshold :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                         _Cluster'CommonLbConfig'updateMergeWindow :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                         _Cluster'CommonLbConfig'ignoreNewHostsUntilFirstHc :: !Prelude.Bool,
                                         _Cluster'CommonLbConfig'closeConnectionsOnHostSetChange :: !Prelude.Bool,
                                         _Cluster'CommonLbConfig'consistentHashingLbConfig :: !(Prelude.Maybe Cluster'CommonLbConfig'ConsistentHashingLbConfig),
                                         _Cluster'CommonLbConfig'localityConfigSpecifier :: !(Prelude.Maybe Cluster'CommonLbConfig'LocalityConfigSpecifier),
                                         _Cluster'CommonLbConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'CommonLbConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Cluster'CommonLbConfig'LocalityConfigSpecifier
  = Cluster'CommonLbConfig'ZoneAwareLbConfig' !Cluster'CommonLbConfig'ZoneAwareLbConfig |
    Cluster'CommonLbConfig'LocalityWeightedLbConfig' !Cluster'CommonLbConfig'LocalityWeightedLbConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "healthyPanicThreshold" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'healthyPanicThreshold
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'healthyPanicThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "maybe'healthyPanicThreshold" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'healthyPanicThreshold
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'healthyPanicThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "updateMergeWindow" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'updateMergeWindow
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'updateMergeWindow = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "maybe'updateMergeWindow" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'updateMergeWindow
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'updateMergeWindow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "ignoreNewHostsUntilFirstHc" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'ignoreNewHostsUntilFirstHc
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'ignoreNewHostsUntilFirstHc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "closeConnectionsOnHostSetChange" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'closeConnectionsOnHostSetChange
           (\ x__ y__
              -> x__
                   {_Cluster'CommonLbConfig'closeConnectionsOnHostSetChange = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "consistentHashingLbConfig" Cluster'CommonLbConfig'ConsistentHashingLbConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'consistentHashingLbConfig
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'consistentHashingLbConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "maybe'consistentHashingLbConfig" (Prelude.Maybe Cluster'CommonLbConfig'ConsistentHashingLbConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'consistentHashingLbConfig
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'consistentHashingLbConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "maybe'localityConfigSpecifier" (Prelude.Maybe Cluster'CommonLbConfig'LocalityConfigSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'localityConfigSpecifier
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'localityConfigSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "maybe'zoneAwareLbConfig" (Prelude.Maybe Cluster'CommonLbConfig'ZoneAwareLbConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'localityConfigSpecifier
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'localityConfigSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Cluster'CommonLbConfig'ZoneAwareLbConfig' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap Cluster'CommonLbConfig'ZoneAwareLbConfig' y__))
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "zoneAwareLbConfig" Cluster'CommonLbConfig'ZoneAwareLbConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'localityConfigSpecifier
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'localityConfigSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Cluster'CommonLbConfig'ZoneAwareLbConfig' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap Cluster'CommonLbConfig'ZoneAwareLbConfig' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "maybe'localityWeightedLbConfig" (Prelude.Maybe Cluster'CommonLbConfig'LocalityWeightedLbConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'localityConfigSpecifier
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'localityConfigSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Cluster'CommonLbConfig'LocalityWeightedLbConfig' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Cluster'CommonLbConfig'LocalityWeightedLbConfig' y__))
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig "localityWeightedLbConfig" Cluster'CommonLbConfig'LocalityWeightedLbConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'localityConfigSpecifier
           (\ x__ y__
              -> x__ {_Cluster'CommonLbConfig'localityConfigSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Cluster'CommonLbConfig'LocalityWeightedLbConfig' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Cluster'CommonLbConfig'LocalityWeightedLbConfig' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Cluster'CommonLbConfig where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.Cluster.CommonLbConfig"
  packedMessageDescriptor _
    = "\n\
      \\SOCommonLbConfig\DC2N\n\
      \\ETBhealthy_panic_threshold\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\NAKhealthyPanicThreshold\DC2t\n\
      \\DC4zone_aware_lb_config\CAN\STX \SOH(\v2A.envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfigH\NULR\DC1zoneAwareLbConfig\DC2\137\SOH\n\
      \\ESClocality_weighted_lb_config\CAN\ETX \SOH(\v2H.envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfigH\NULR\CANlocalityWeightedLbConfig\DC2I\n\
      \\DC3update_merge_window\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC1updateMergeWindow\DC2C\n\
      \\USignore_new_hosts_until_first_hc\CAN\ENQ \SOH(\bR\SUBignoreNewHostsUntilFirstHc\DC2M\n\
      \$close_connections_on_host_set_change\CAN\ACK \SOH(\bR\UScloseConnectionsOnHostSetChange\DC2\138\SOH\n\
      \\FSconsistent_hashing_lb_config\CAN\a \SOH(\v2I.envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfigR\EMconsistentHashingLbConfig\SUB\141\STX\n\
      \\DC1ZoneAwareLbConfig\DC2?\n\
      \\SIrouting_enabled\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\SOroutingEnabled\DC2F\n\
      \\DLEmin_cluster_size\CAN\STX \SOH(\v2\FS.google.protobuf.UInt64ValueR\SOminClusterSize\DC21\n\
      \\NAKfail_traffic_on_panic\CAN\ETX \SOH(\bR\DC2failTrafficOnPanic:<\154\197\136\RS7\n\
      \5envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig\SUB_\n\
      \\CANLocalityWeightedLbConfig:C\154\197\136\RS>\n\
      \<envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig\SUB\241\SOH\n\
      \\EMConsistentHashingLbConfig\DC27\n\
      \\CANuse_hostname_for_hashing\CAN\SOH \SOH(\bR\NAKuseHostnameForHashing\DC2U\n\
      \\DC3hash_balance_factor\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC1hashBalanceFactorB\a\250B\EOT*\STX(d:D\154\197\136\RS?\n\
      \=envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfigB\ESC\n\
      \\EMlocality_config_specifier:*\154\197\136\RS%\n\
      \#envoy.api.v2.Cluster.CommonLbConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        healthyPanicThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "healthy_panic_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'healthyPanicThreshold")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig
        updateMergeWindow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_merge_window"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateMergeWindow")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig
        ignoreNewHostsUntilFirstHc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_new_hosts_until_first_hc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ignoreNewHostsUntilFirstHc")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig
        closeConnectionsOnHostSetChange__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "close_connections_on_host_set_change"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"closeConnectionsOnHostSetChange")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig
        consistentHashingLbConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "consistent_hashing_lb_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'CommonLbConfig'ConsistentHashingLbConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'consistentHashingLbConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig
        zoneAwareLbConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zone_aware_lb_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'CommonLbConfig'ZoneAwareLbConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'zoneAwareLbConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig
        localityWeightedLbConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locality_weighted_lb_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'CommonLbConfig'LocalityWeightedLbConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localityWeightedLbConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, healthyPanicThreshold__field_descriptor),
           (Data.ProtoLens.Tag 4, updateMergeWindow__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            ignoreNewHostsUntilFirstHc__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            closeConnectionsOnHostSetChange__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            consistentHashingLbConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, zoneAwareLbConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, localityWeightedLbConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'CommonLbConfig'_unknownFields
        (\ x__ y__ -> x__ {_Cluster'CommonLbConfig'_unknownFields = y__})
  defMessage
    = Cluster'CommonLbConfig'_constructor
        {_Cluster'CommonLbConfig'healthyPanicThreshold = Prelude.Nothing,
         _Cluster'CommonLbConfig'updateMergeWindow = Prelude.Nothing,
         _Cluster'CommonLbConfig'ignoreNewHostsUntilFirstHc = Data.ProtoLens.fieldDefault,
         _Cluster'CommonLbConfig'closeConnectionsOnHostSetChange = Data.ProtoLens.fieldDefault,
         _Cluster'CommonLbConfig'consistentHashingLbConfig = Prelude.Nothing,
         _Cluster'CommonLbConfig'localityConfigSpecifier = Prelude.Nothing,
         _Cluster'CommonLbConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'CommonLbConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'CommonLbConfig
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
                                       "healthy_panic_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"healthyPanicThreshold") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "update_merge_window"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"updateMergeWindow") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_new_hosts_until_first_hc"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ignoreNewHostsUntilFirstHc") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "close_connections_on_host_set_change"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"closeConnectionsOnHostSetChange")
                                     y
                                     x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "consistent_hashing_lb_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"consistentHashingLbConfig") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "zone_aware_lb_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"zoneAwareLbConfig") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "locality_weighted_lb_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localityWeightedLbConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CommonLbConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'healthyPanicThreshold") _x
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
                       (Data.ProtoLens.Field.field @"maybe'updateMergeWindow") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"ignoreNewHostsUntilFirstHc") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"closeConnectionsOnHostSetChange") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'consistentHashingLbConfig") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
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
                                   (Data.ProtoLens.Field.field @"maybe'localityConfigSpecifier") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just (Cluster'CommonLbConfig'ZoneAwareLbConfig' v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         v)
                               (Prelude.Just (Cluster'CommonLbConfig'LocalityWeightedLbConfig' v))
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Cluster'CommonLbConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'CommonLbConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'CommonLbConfig'healthyPanicThreshold x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'CommonLbConfig'updateMergeWindow x__)
                   (Control.DeepSeq.deepseq
                      (_Cluster'CommonLbConfig'ignoreNewHostsUntilFirstHc x__)
                      (Control.DeepSeq.deepseq
                         (_Cluster'CommonLbConfig'closeConnectionsOnHostSetChange x__)
                         (Control.DeepSeq.deepseq
                            (_Cluster'CommonLbConfig'consistentHashingLbConfig x__)
                            (Control.DeepSeq.deepseq
                               (_Cluster'CommonLbConfig'localityConfigSpecifier x__) ()))))))
instance Control.DeepSeq.NFData Cluster'CommonLbConfig'LocalityConfigSpecifier where
  rnf (Cluster'CommonLbConfig'ZoneAwareLbConfig' x__)
    = Control.DeepSeq.rnf x__
  rnf (Cluster'CommonLbConfig'LocalityWeightedLbConfig' x__)
    = Control.DeepSeq.rnf x__
_Cluster'CommonLbConfig'ZoneAwareLbConfig' ::
  Data.ProtoLens.Prism.Prism' Cluster'CommonLbConfig'LocalityConfigSpecifier Cluster'CommonLbConfig'ZoneAwareLbConfig
_Cluster'CommonLbConfig'ZoneAwareLbConfig'
  = Data.ProtoLens.Prism.prism'
      Cluster'CommonLbConfig'ZoneAwareLbConfig'
      (\ p__
         -> case p__ of
              (Cluster'CommonLbConfig'ZoneAwareLbConfig' p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Cluster'CommonLbConfig'LocalityWeightedLbConfig' ::
  Data.ProtoLens.Prism.Prism' Cluster'CommonLbConfig'LocalityConfigSpecifier Cluster'CommonLbConfig'LocalityWeightedLbConfig
_Cluster'CommonLbConfig'LocalityWeightedLbConfig'
  = Data.ProtoLens.Prism.prism'
      Cluster'CommonLbConfig'LocalityWeightedLbConfig'
      (\ p__
         -> case p__ of
              (Cluster'CommonLbConfig'LocalityWeightedLbConfig' p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.useHostnameForHashing' @:: Lens' Cluster'CommonLbConfig'ConsistentHashingLbConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.hashBalanceFactor' @:: Lens' Cluster'CommonLbConfig'ConsistentHashingLbConfig Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'hashBalanceFactor' @:: Lens' Cluster'CommonLbConfig'ConsistentHashingLbConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data Cluster'CommonLbConfig'ConsistentHashingLbConfig
  = Cluster'CommonLbConfig'ConsistentHashingLbConfig'_constructor {_Cluster'CommonLbConfig'ConsistentHashingLbConfig'useHostnameForHashing :: !Prelude.Bool,
                                                                   _Cluster'CommonLbConfig'ConsistentHashingLbConfig'hashBalanceFactor :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                                   _Cluster'CommonLbConfig'ConsistentHashingLbConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'CommonLbConfig'ConsistentHashingLbConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig'ConsistentHashingLbConfig "useHostnameForHashing" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'ConsistentHashingLbConfig'useHostnameForHashing
           (\ x__ y__
              -> x__
                   {_Cluster'CommonLbConfig'ConsistentHashingLbConfig'useHostnameForHashing = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig'ConsistentHashingLbConfig "hashBalanceFactor" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'ConsistentHashingLbConfig'hashBalanceFactor
           (\ x__ y__
              -> x__
                   {_Cluster'CommonLbConfig'ConsistentHashingLbConfig'hashBalanceFactor = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig'ConsistentHashingLbConfig "maybe'hashBalanceFactor" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'ConsistentHashingLbConfig'hashBalanceFactor
           (\ x__ y__
              -> x__
                   {_Cluster'CommonLbConfig'ConsistentHashingLbConfig'hashBalanceFactor = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'CommonLbConfig'ConsistentHashingLbConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfig"
  packedMessageDescriptor _
    = "\n\
      \\EMConsistentHashingLbConfig\DC27\n\
      \\CANuse_hostname_for_hashing\CAN\SOH \SOH(\bR\NAKuseHostnameForHashing\DC2U\n\
      \\DC3hash_balance_factor\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC1hashBalanceFactorB\a\250B\EOT*\STX(d:D\154\197\136\RS?\n\
      \=envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        useHostnameForHashing__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_hostname_for_hashing"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useHostnameForHashing")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig'ConsistentHashingLbConfig
        hashBalanceFactor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash_balance_factor"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hashBalanceFactor")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig'ConsistentHashingLbConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, useHostnameForHashing__field_descriptor),
           (Data.ProtoLens.Tag 2, hashBalanceFactor__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'CommonLbConfig'ConsistentHashingLbConfig'_unknownFields
        (\ x__ y__
           -> x__
                {_Cluster'CommonLbConfig'ConsistentHashingLbConfig'_unknownFields = y__})
  defMessage
    = Cluster'CommonLbConfig'ConsistentHashingLbConfig'_constructor
        {_Cluster'CommonLbConfig'ConsistentHashingLbConfig'useHostnameForHashing = Data.ProtoLens.fieldDefault,
         _Cluster'CommonLbConfig'ConsistentHashingLbConfig'hashBalanceFactor = Prelude.Nothing,
         _Cluster'CommonLbConfig'ConsistentHashingLbConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'CommonLbConfig'ConsistentHashingLbConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'CommonLbConfig'ConsistentHashingLbConfig
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_hostname_for_hashing"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useHostnameForHashing") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "hash_balance_factor"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hashBalanceFactor") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConsistentHashingLbConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"useHostnameForHashing") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'hashBalanceFactor") _x
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
instance Control.DeepSeq.NFData Cluster'CommonLbConfig'ConsistentHashingLbConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'CommonLbConfig'ConsistentHashingLbConfig'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_Cluster'CommonLbConfig'ConsistentHashingLbConfig'useHostnameForHashing
                   x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'CommonLbConfig'ConsistentHashingLbConfig'hashBalanceFactor
                      x__)
                   ()))
{- | Fields :
      -}
data Cluster'CommonLbConfig'LocalityWeightedLbConfig
  = Cluster'CommonLbConfig'LocalityWeightedLbConfig'_constructor {_Cluster'CommonLbConfig'LocalityWeightedLbConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'CommonLbConfig'LocalityWeightedLbConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Cluster'CommonLbConfig'LocalityWeightedLbConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfig"
  packedMessageDescriptor _
    = "\n\
      \\CANLocalityWeightedLbConfig:C\154\197\136\RS>\n\
      \<envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'CommonLbConfig'LocalityWeightedLbConfig'_unknownFields
        (\ x__ y__
           -> x__
                {_Cluster'CommonLbConfig'LocalityWeightedLbConfig'_unknownFields = y__})
  defMessage
    = Cluster'CommonLbConfig'LocalityWeightedLbConfig'_constructor
        {_Cluster'CommonLbConfig'LocalityWeightedLbConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'CommonLbConfig'LocalityWeightedLbConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'CommonLbConfig'LocalityWeightedLbConfig
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LocalityWeightedLbConfig"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData Cluster'CommonLbConfig'LocalityWeightedLbConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'CommonLbConfig'LocalityWeightedLbConfig'_unknownFields
                x__)
             ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.routingEnabled' @:: Lens' Cluster'CommonLbConfig'ZoneAwareLbConfig Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'routingEnabled' @:: Lens' Cluster'CommonLbConfig'ZoneAwareLbConfig (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.minClusterSize' @:: Lens' Cluster'CommonLbConfig'ZoneAwareLbConfig Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'minClusterSize' @:: Lens' Cluster'CommonLbConfig'ZoneAwareLbConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.failTrafficOnPanic' @:: Lens' Cluster'CommonLbConfig'ZoneAwareLbConfig Prelude.Bool@ -}
data Cluster'CommonLbConfig'ZoneAwareLbConfig
  = Cluster'CommonLbConfig'ZoneAwareLbConfig'_constructor {_Cluster'CommonLbConfig'ZoneAwareLbConfig'routingEnabled :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                                           _Cluster'CommonLbConfig'ZoneAwareLbConfig'minClusterSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                                                           _Cluster'CommonLbConfig'ZoneAwareLbConfig'failTrafficOnPanic :: !Prelude.Bool,
                                                           _Cluster'CommonLbConfig'ZoneAwareLbConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'CommonLbConfig'ZoneAwareLbConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig'ZoneAwareLbConfig "routingEnabled" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'ZoneAwareLbConfig'routingEnabled
           (\ x__ y__
              -> x__
                   {_Cluster'CommonLbConfig'ZoneAwareLbConfig'routingEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig'ZoneAwareLbConfig "maybe'routingEnabled" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'ZoneAwareLbConfig'routingEnabled
           (\ x__ y__
              -> x__
                   {_Cluster'CommonLbConfig'ZoneAwareLbConfig'routingEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig'ZoneAwareLbConfig "minClusterSize" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'ZoneAwareLbConfig'minClusterSize
           (\ x__ y__
              -> x__
                   {_Cluster'CommonLbConfig'ZoneAwareLbConfig'minClusterSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig'ZoneAwareLbConfig "maybe'minClusterSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'ZoneAwareLbConfig'minClusterSize
           (\ x__ y__
              -> x__
                   {_Cluster'CommonLbConfig'ZoneAwareLbConfig'minClusterSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'CommonLbConfig'ZoneAwareLbConfig "failTrafficOnPanic" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CommonLbConfig'ZoneAwareLbConfig'failTrafficOnPanic
           (\ x__ y__
              -> x__
                   {_Cluster'CommonLbConfig'ZoneAwareLbConfig'failTrafficOnPanic = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'CommonLbConfig'ZoneAwareLbConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC1ZoneAwareLbConfig\DC2?\n\
      \\SIrouting_enabled\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\SOroutingEnabled\DC2F\n\
      \\DLEmin_cluster_size\CAN\STX \SOH(\v2\FS.google.protobuf.UInt64ValueR\SOminClusterSize\DC21\n\
      \\NAKfail_traffic_on_panic\CAN\ETX \SOH(\bR\DC2failTrafficOnPanic:<\154\197\136\RS7\n\
      \5envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        routingEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "routing_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'routingEnabled")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig'ZoneAwareLbConfig
        minClusterSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_cluster_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minClusterSize")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig'ZoneAwareLbConfig
        failTrafficOnPanic__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fail_traffic_on_panic"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failTrafficOnPanic")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CommonLbConfig'ZoneAwareLbConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, routingEnabled__field_descriptor),
           (Data.ProtoLens.Tag 2, minClusterSize__field_descriptor),
           (Data.ProtoLens.Tag 3, failTrafficOnPanic__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'CommonLbConfig'ZoneAwareLbConfig'_unknownFields
        (\ x__ y__
           -> x__
                {_Cluster'CommonLbConfig'ZoneAwareLbConfig'_unknownFields = y__})
  defMessage
    = Cluster'CommonLbConfig'ZoneAwareLbConfig'_constructor
        {_Cluster'CommonLbConfig'ZoneAwareLbConfig'routingEnabled = Prelude.Nothing,
         _Cluster'CommonLbConfig'ZoneAwareLbConfig'minClusterSize = Prelude.Nothing,
         _Cluster'CommonLbConfig'ZoneAwareLbConfig'failTrafficOnPanic = Data.ProtoLens.fieldDefault,
         _Cluster'CommonLbConfig'ZoneAwareLbConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'CommonLbConfig'ZoneAwareLbConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'CommonLbConfig'ZoneAwareLbConfig
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
                                       "routing_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"routingEnabled") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "min_cluster_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minClusterSize") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fail_traffic_on_panic"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failTrafficOnPanic") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ZoneAwareLbConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'routingEnabled") _x
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
                       (Data.ProtoLens.Field.field @"maybe'minClusterSize") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"failTrafficOnPanic") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Cluster'CommonLbConfig'ZoneAwareLbConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'CommonLbConfig'ZoneAwareLbConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'CommonLbConfig'ZoneAwareLbConfig'routingEnabled x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'CommonLbConfig'ZoneAwareLbConfig'minClusterSize x__)
                   (Control.DeepSeq.deepseq
                      (_Cluster'CommonLbConfig'ZoneAwareLbConfig'failTrafficOnPanic x__)
                      ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.name' @:: Lens' Cluster'CustomClusterType Data.Text.Text@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.typedConfig' @:: Lens' Cluster'CustomClusterType Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'typedConfig' @:: Lens' Cluster'CustomClusterType (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data Cluster'CustomClusterType
  = Cluster'CustomClusterType'_constructor {_Cluster'CustomClusterType'name :: !Data.Text.Text,
                                            _Cluster'CustomClusterType'typedConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                            _Cluster'CustomClusterType'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'CustomClusterType where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'CustomClusterType "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CustomClusterType'name
           (\ x__ y__ -> x__ {_Cluster'CustomClusterType'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'CustomClusterType "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CustomClusterType'typedConfig
           (\ x__ y__ -> x__ {_Cluster'CustomClusterType'typedConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'CustomClusterType "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'CustomClusterType'typedConfig
           (\ x__ y__ -> x__ {_Cluster'CustomClusterType'typedConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'CustomClusterType where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.Cluster.CustomClusterType"
  packedMessageDescriptor _
    = "\n\
      \\DC1CustomClusterType\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC27\n\
      \\ftyped_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfig:-\154\197\136\RS(\n\
      \&envoy.api.v2.Cluster.CustomClusterType"
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
              Data.ProtoLens.FieldDescriptor Cluster'CustomClusterType
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster'CustomClusterType
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'CustomClusterType'_unknownFields
        (\ x__ y__
           -> x__ {_Cluster'CustomClusterType'_unknownFields = y__})
  defMessage
    = Cluster'CustomClusterType'_constructor
        {_Cluster'CustomClusterType'name = Data.ProtoLens.fieldDefault,
         _Cluster'CustomClusterType'typedConfig = Prelude.Nothing,
         _Cluster'CustomClusterType'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'CustomClusterType
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'CustomClusterType
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CustomClusterType"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'typedConfig") _x
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
instance Control.DeepSeq.NFData Cluster'CustomClusterType where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'CustomClusterType'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'CustomClusterType'name x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'CustomClusterType'typedConfig x__) ()))
newtype Cluster'DiscoveryType'UnrecognizedValue
  = Cluster'DiscoveryType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Cluster'DiscoveryType
  = Cluster'STATIC |
    Cluster'STRICT_DNS |
    Cluster'LOGICAL_DNS |
    Cluster'EDS |
    Cluster'ORIGINAL_DST |
    Cluster'DiscoveryType'Unrecognized !Cluster'DiscoveryType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Cluster'DiscoveryType where
  maybeToEnum 0 = Prelude.Just Cluster'STATIC
  maybeToEnum 1 = Prelude.Just Cluster'STRICT_DNS
  maybeToEnum 2 = Prelude.Just Cluster'LOGICAL_DNS
  maybeToEnum 3 = Prelude.Just Cluster'EDS
  maybeToEnum 4 = Prelude.Just Cluster'ORIGINAL_DST
  maybeToEnum k
    = Prelude.Just
        (Cluster'DiscoveryType'Unrecognized
           (Cluster'DiscoveryType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Cluster'STATIC = "STATIC"
  showEnum Cluster'STRICT_DNS = "STRICT_DNS"
  showEnum Cluster'LOGICAL_DNS = "LOGICAL_DNS"
  showEnum Cluster'EDS = "EDS"
  showEnum Cluster'ORIGINAL_DST = "ORIGINAL_DST"
  showEnum
    (Cluster'DiscoveryType'Unrecognized (Cluster'DiscoveryType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "STATIC" = Prelude.Just Cluster'STATIC
    | (Prelude.==) k "STRICT_DNS" = Prelude.Just Cluster'STRICT_DNS
    | (Prelude.==) k "LOGICAL_DNS" = Prelude.Just Cluster'LOGICAL_DNS
    | (Prelude.==) k "EDS" = Prelude.Just Cluster'EDS
    | (Prelude.==) k "ORIGINAL_DST" = Prelude.Just Cluster'ORIGINAL_DST
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Cluster'DiscoveryType where
  minBound = Cluster'STATIC
  maxBound = Cluster'ORIGINAL_DST
instance Prelude.Enum Cluster'DiscoveryType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum DiscoveryType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Cluster'STATIC = 0
  fromEnum Cluster'STRICT_DNS = 1
  fromEnum Cluster'LOGICAL_DNS = 2
  fromEnum Cluster'EDS = 3
  fromEnum Cluster'ORIGINAL_DST = 4
  fromEnum
    (Cluster'DiscoveryType'Unrecognized (Cluster'DiscoveryType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Cluster'ORIGINAL_DST
    = Prelude.error
        "Cluster'DiscoveryType.succ: bad argument Cluster'ORIGINAL_DST. This value would be out of bounds."
  succ Cluster'STATIC = Cluster'STRICT_DNS
  succ Cluster'STRICT_DNS = Cluster'LOGICAL_DNS
  succ Cluster'LOGICAL_DNS = Cluster'EDS
  succ Cluster'EDS = Cluster'ORIGINAL_DST
  succ (Cluster'DiscoveryType'Unrecognized _)
    = Prelude.error
        "Cluster'DiscoveryType.succ: bad argument: unrecognized value"
  pred Cluster'STATIC
    = Prelude.error
        "Cluster'DiscoveryType.pred: bad argument Cluster'STATIC. This value would be out of bounds."
  pred Cluster'STRICT_DNS = Cluster'STATIC
  pred Cluster'LOGICAL_DNS = Cluster'STRICT_DNS
  pred Cluster'EDS = Cluster'LOGICAL_DNS
  pred Cluster'ORIGINAL_DST = Cluster'EDS
  pred (Cluster'DiscoveryType'Unrecognized _)
    = Prelude.error
        "Cluster'DiscoveryType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Cluster'DiscoveryType where
  fieldDefault = Cluster'STATIC
instance Control.DeepSeq.NFData Cluster'DiscoveryType where
  rnf x__ = Prelude.seq x__ ()
newtype Cluster'DnsLookupFamily'UnrecognizedValue
  = Cluster'DnsLookupFamily'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Cluster'DnsLookupFamily
  = Cluster'AUTO |
    Cluster'V4_ONLY |
    Cluster'V6_ONLY |
    Cluster'DnsLookupFamily'Unrecognized !Cluster'DnsLookupFamily'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Cluster'DnsLookupFamily where
  maybeToEnum 0 = Prelude.Just Cluster'AUTO
  maybeToEnum 1 = Prelude.Just Cluster'V4_ONLY
  maybeToEnum 2 = Prelude.Just Cluster'V6_ONLY
  maybeToEnum k
    = Prelude.Just
        (Cluster'DnsLookupFamily'Unrecognized
           (Cluster'DnsLookupFamily'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Cluster'AUTO = "AUTO"
  showEnum Cluster'V4_ONLY = "V4_ONLY"
  showEnum Cluster'V6_ONLY = "V6_ONLY"
  showEnum
    (Cluster'DnsLookupFamily'Unrecognized (Cluster'DnsLookupFamily'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "AUTO" = Prelude.Just Cluster'AUTO
    | (Prelude.==) k "V4_ONLY" = Prelude.Just Cluster'V4_ONLY
    | (Prelude.==) k "V6_ONLY" = Prelude.Just Cluster'V6_ONLY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Cluster'DnsLookupFamily where
  minBound = Cluster'AUTO
  maxBound = Cluster'V6_ONLY
instance Prelude.Enum Cluster'DnsLookupFamily where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum DnsLookupFamily: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Cluster'AUTO = 0
  fromEnum Cluster'V4_ONLY = 1
  fromEnum Cluster'V6_ONLY = 2
  fromEnum
    (Cluster'DnsLookupFamily'Unrecognized (Cluster'DnsLookupFamily'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Cluster'V6_ONLY
    = Prelude.error
        "Cluster'DnsLookupFamily.succ: bad argument Cluster'V6_ONLY. This value would be out of bounds."
  succ Cluster'AUTO = Cluster'V4_ONLY
  succ Cluster'V4_ONLY = Cluster'V6_ONLY
  succ (Cluster'DnsLookupFamily'Unrecognized _)
    = Prelude.error
        "Cluster'DnsLookupFamily.succ: bad argument: unrecognized value"
  pred Cluster'AUTO
    = Prelude.error
        "Cluster'DnsLookupFamily.pred: bad argument Cluster'AUTO. This value would be out of bounds."
  pred Cluster'V4_ONLY = Cluster'AUTO
  pred Cluster'V6_ONLY = Cluster'V4_ONLY
  pred (Cluster'DnsLookupFamily'Unrecognized _)
    = Prelude.error
        "Cluster'DnsLookupFamily.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Cluster'DnsLookupFamily where
  fieldDefault = Cluster'AUTO
instance Control.DeepSeq.NFData Cluster'DnsLookupFamily where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.edsConfig' @:: Lens' Cluster'EdsClusterConfig Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'edsConfig' @:: Lens' Cluster'EdsClusterConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.serviceName' @:: Lens' Cluster'EdsClusterConfig Data.Text.Text@ -}
data Cluster'EdsClusterConfig
  = Cluster'EdsClusterConfig'_constructor {_Cluster'EdsClusterConfig'edsConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource),
                                           _Cluster'EdsClusterConfig'serviceName :: !Data.Text.Text,
                                           _Cluster'EdsClusterConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'EdsClusterConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'EdsClusterConfig "edsConfig" Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'EdsClusterConfig'edsConfig
           (\ x__ y__ -> x__ {_Cluster'EdsClusterConfig'edsConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'EdsClusterConfig "maybe'edsConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'EdsClusterConfig'edsConfig
           (\ x__ y__ -> x__ {_Cluster'EdsClusterConfig'edsConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'EdsClusterConfig "serviceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'EdsClusterConfig'serviceName
           (\ x__ y__ -> x__ {_Cluster'EdsClusterConfig'serviceName = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'EdsClusterConfig where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.Cluster.EdsClusterConfig"
  packedMessageDescriptor _
    = "\n\
      \\DLEEdsClusterConfig\DC2A\n\
      \\n\
      \eds_config\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tedsConfig\DC2!\n\
      \\fservice_name\CAN\STX \SOH(\tR\vserviceName:,\154\197\136\RS'\n\
      \%envoy.api.v2.Cluster.EdsClusterConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        edsConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "eds_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'edsConfig")) ::
              Data.ProtoLens.FieldDescriptor Cluster'EdsClusterConfig
        serviceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serviceName")) ::
              Data.ProtoLens.FieldDescriptor Cluster'EdsClusterConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, edsConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, serviceName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'EdsClusterConfig'_unknownFields
        (\ x__ y__ -> x__ {_Cluster'EdsClusterConfig'_unknownFields = y__})
  defMessage
    = Cluster'EdsClusterConfig'_constructor
        {_Cluster'EdsClusterConfig'edsConfig = Prelude.Nothing,
         _Cluster'EdsClusterConfig'serviceName = Data.ProtoLens.fieldDefault,
         _Cluster'EdsClusterConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'EdsClusterConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'EdsClusterConfig
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
                                       "eds_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"edsConfig") y x)
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
                                       "service_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serviceName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EdsClusterConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'edsConfig") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"serviceName") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Cluster'EdsClusterConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'EdsClusterConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'EdsClusterConfig'edsConfig x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'EdsClusterConfig'serviceName x__) ()))
newtype Cluster'LbPolicy'UnrecognizedValue
  = Cluster'LbPolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Cluster'LbPolicy
  = Cluster'ROUND_ROBIN |
    Cluster'LEAST_REQUEST |
    Cluster'RING_HASH |
    Cluster'RANDOM |
    Cluster'MAGLEV |
    Cluster'CLUSTER_PROVIDED |
    Cluster'LOAD_BALANCING_POLICY_CONFIG |
    Cluster'LbPolicy'Unrecognized !Cluster'LbPolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Cluster'LbPolicy where
  maybeToEnum 0 = Prelude.Just Cluster'ROUND_ROBIN
  maybeToEnum 1 = Prelude.Just Cluster'LEAST_REQUEST
  maybeToEnum 2 = Prelude.Just Cluster'RING_HASH
  maybeToEnum 3 = Prelude.Just Cluster'RANDOM
  maybeToEnum 5 = Prelude.Just Cluster'MAGLEV
  maybeToEnum 6 = Prelude.Just Cluster'CLUSTER_PROVIDED
  maybeToEnum 7 = Prelude.Just Cluster'LOAD_BALANCING_POLICY_CONFIG
  maybeToEnum k
    = Prelude.Just
        (Cluster'LbPolicy'Unrecognized
           (Cluster'LbPolicy'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Cluster'ROUND_ROBIN = "ROUND_ROBIN"
  showEnum Cluster'LEAST_REQUEST = "LEAST_REQUEST"
  showEnum Cluster'RING_HASH = "RING_HASH"
  showEnum Cluster'RANDOM = "RANDOM"
  showEnum Cluster'MAGLEV = "MAGLEV"
  showEnum Cluster'CLUSTER_PROVIDED = "CLUSTER_PROVIDED"
  showEnum Cluster'LOAD_BALANCING_POLICY_CONFIG
    = "LOAD_BALANCING_POLICY_CONFIG"
  showEnum
    (Cluster'LbPolicy'Unrecognized (Cluster'LbPolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ROUND_ROBIN" = Prelude.Just Cluster'ROUND_ROBIN
    | (Prelude.==) k "LEAST_REQUEST"
    = Prelude.Just Cluster'LEAST_REQUEST
    | (Prelude.==) k "RING_HASH" = Prelude.Just Cluster'RING_HASH
    | (Prelude.==) k "RANDOM" = Prelude.Just Cluster'RANDOM
    | (Prelude.==) k "MAGLEV" = Prelude.Just Cluster'MAGLEV
    | (Prelude.==) k "CLUSTER_PROVIDED"
    = Prelude.Just Cluster'CLUSTER_PROVIDED
    | (Prelude.==) k "LOAD_BALANCING_POLICY_CONFIG"
    = Prelude.Just Cluster'LOAD_BALANCING_POLICY_CONFIG
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Cluster'LbPolicy where
  minBound = Cluster'ROUND_ROBIN
  maxBound = Cluster'LOAD_BALANCING_POLICY_CONFIG
instance Prelude.Enum Cluster'LbPolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum LbPolicy: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Cluster'ROUND_ROBIN = 0
  fromEnum Cluster'LEAST_REQUEST = 1
  fromEnum Cluster'RING_HASH = 2
  fromEnum Cluster'RANDOM = 3
  fromEnum Cluster'MAGLEV = 5
  fromEnum Cluster'CLUSTER_PROVIDED = 6
  fromEnum Cluster'LOAD_BALANCING_POLICY_CONFIG = 7
  fromEnum
    (Cluster'LbPolicy'Unrecognized (Cluster'LbPolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Cluster'LOAD_BALANCING_POLICY_CONFIG
    = Prelude.error
        "Cluster'LbPolicy.succ: bad argument Cluster'LOAD_BALANCING_POLICY_CONFIG. This value would be out of bounds."
  succ Cluster'ROUND_ROBIN = Cluster'LEAST_REQUEST
  succ Cluster'LEAST_REQUEST = Cluster'RING_HASH
  succ Cluster'RING_HASH = Cluster'RANDOM
  succ Cluster'RANDOM = Cluster'MAGLEV
  succ Cluster'MAGLEV = Cluster'CLUSTER_PROVIDED
  succ Cluster'CLUSTER_PROVIDED
    = Cluster'LOAD_BALANCING_POLICY_CONFIG
  succ (Cluster'LbPolicy'Unrecognized _)
    = Prelude.error
        "Cluster'LbPolicy.succ: bad argument: unrecognized value"
  pred Cluster'ROUND_ROBIN
    = Prelude.error
        "Cluster'LbPolicy.pred: bad argument Cluster'ROUND_ROBIN. This value would be out of bounds."
  pred Cluster'LEAST_REQUEST = Cluster'ROUND_ROBIN
  pred Cluster'RING_HASH = Cluster'LEAST_REQUEST
  pred Cluster'RANDOM = Cluster'RING_HASH
  pred Cluster'MAGLEV = Cluster'RANDOM
  pred Cluster'CLUSTER_PROVIDED = Cluster'MAGLEV
  pred Cluster'LOAD_BALANCING_POLICY_CONFIG
    = Cluster'CLUSTER_PROVIDED
  pred (Cluster'LbPolicy'Unrecognized _)
    = Prelude.error
        "Cluster'LbPolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Cluster'LbPolicy where
  fieldDefault = Cluster'ROUND_ROBIN
instance Control.DeepSeq.NFData Cluster'LbPolicy where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.fallbackPolicy' @:: Lens' Cluster'LbSubsetConfig Cluster'LbSubsetConfig'LbSubsetFallbackPolicy@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.defaultSubset' @:: Lens' Cluster'LbSubsetConfig Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'defaultSubset' @:: Lens' Cluster'LbSubsetConfig (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.subsetSelectors' @:: Lens' Cluster'LbSubsetConfig [Cluster'LbSubsetConfig'LbSubsetSelector]@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.vec'subsetSelectors' @:: Lens' Cluster'LbSubsetConfig (Data.Vector.Vector Cluster'LbSubsetConfig'LbSubsetSelector)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.localityWeightAware' @:: Lens' Cluster'LbSubsetConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.scaleLocalityWeight' @:: Lens' Cluster'LbSubsetConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.panicModeAny' @:: Lens' Cluster'LbSubsetConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.listAsAny' @:: Lens' Cluster'LbSubsetConfig Prelude.Bool@ -}
data Cluster'LbSubsetConfig
  = Cluster'LbSubsetConfig'_constructor {_Cluster'LbSubsetConfig'fallbackPolicy :: !Cluster'LbSubsetConfig'LbSubsetFallbackPolicy,
                                         _Cluster'LbSubsetConfig'defaultSubset :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                         _Cluster'LbSubsetConfig'subsetSelectors :: !(Data.Vector.Vector Cluster'LbSubsetConfig'LbSubsetSelector),
                                         _Cluster'LbSubsetConfig'localityWeightAware :: !Prelude.Bool,
                                         _Cluster'LbSubsetConfig'scaleLocalityWeight :: !Prelude.Bool,
                                         _Cluster'LbSubsetConfig'panicModeAny :: !Prelude.Bool,
                                         _Cluster'LbSubsetConfig'listAsAny :: !Prelude.Bool,
                                         _Cluster'LbSubsetConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'LbSubsetConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig "fallbackPolicy" Cluster'LbSubsetConfig'LbSubsetFallbackPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'fallbackPolicy
           (\ x__ y__ -> x__ {_Cluster'LbSubsetConfig'fallbackPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig "defaultSubset" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'defaultSubset
           (\ x__ y__ -> x__ {_Cluster'LbSubsetConfig'defaultSubset = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig "maybe'defaultSubset" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'defaultSubset
           (\ x__ y__ -> x__ {_Cluster'LbSubsetConfig'defaultSubset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig "subsetSelectors" [Cluster'LbSubsetConfig'LbSubsetSelector] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'subsetSelectors
           (\ x__ y__ -> x__ {_Cluster'LbSubsetConfig'subsetSelectors = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig "vec'subsetSelectors" (Data.Vector.Vector Cluster'LbSubsetConfig'LbSubsetSelector) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'subsetSelectors
           (\ x__ y__ -> x__ {_Cluster'LbSubsetConfig'subsetSelectors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig "localityWeightAware" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'localityWeightAware
           (\ x__ y__
              -> x__ {_Cluster'LbSubsetConfig'localityWeightAware = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig "scaleLocalityWeight" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'scaleLocalityWeight
           (\ x__ y__
              -> x__ {_Cluster'LbSubsetConfig'scaleLocalityWeight = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig "panicModeAny" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'panicModeAny
           (\ x__ y__ -> x__ {_Cluster'LbSubsetConfig'panicModeAny = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig "listAsAny" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'listAsAny
           (\ x__ y__ -> x__ {_Cluster'LbSubsetConfig'listAsAny = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'LbSubsetConfig where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.Cluster.LbSubsetConfig"
  packedMessageDescriptor _
    = "\n\
      \\SOLbSubsetConfig\DC2y\n\
      \\SIfallback_policy\CAN\SOH \SOH(\SO2F.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetFallbackPolicyR\SOfallbackPolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2>\n\
      \\SOdefault_subset\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\rdefaultSubset\DC2k\n\
      \\DLEsubset_selectors\CAN\ETX \ETX(\v2@.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelectorR\SIsubsetSelectors\DC22\n\
      \\NAKlocality_weight_aware\CAN\EOT \SOH(\bR\DC3localityWeightAware\DC22\n\
      \\NAKscale_locality_weight\CAN\ENQ \SOH(\bR\DC3scaleLocalityWeight\DC2$\n\
      \\SOpanic_mode_any\CAN\ACK \SOH(\bR\fpanicModeAny\DC2\RS\n\
      \\vlist_as_any\CAN\a \SOH(\bR\tlistAsAny\SUB\218\ETX\n\
      \\DLELbSubsetSelector\DC2\DC2\n\
      \\EOTkeys\CAN\SOH \ETX(\tR\EOTkeys\DC23\n\
      \\SYNsingle_host_per_subset\CAN\EOT \SOH(\bR\DC3singleHostPerSubset\DC2\146\SOH\n\
      \\SIfallback_policy\CAN\STX \SOH(\SO2_.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicyR\SOfallbackPolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC20\n\
      \\DC4fallback_keys_subset\CAN\ETX \ETX(\tR\DC2fallbackKeysSubset\"y\n\
      \\RSLbSubsetSelectorFallbackPolicy\DC2\SI\n\
      \\vNOT_DEFINED\DLE\NUL\DC2\SI\n\
      \\vNO_FALLBACK\DLE\SOH\DC2\DLE\n\
      \\fANY_ENDPOINT\DLE\STX\DC2\DC2\n\
      \\SODEFAULT_SUBSET\DLE\ETX\DC2\SI\n\
      \\vKEYS_SUBSET\DLE\EOT:;\154\197\136\RS6\n\
      \4envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector\"O\n\
      \\SYNLbSubsetFallbackPolicy\DC2\SI\n\
      \\vNO_FALLBACK\DLE\NUL\DC2\DLE\n\
      \\fANY_ENDPOINT\DLE\SOH\DC2\DC2\n\
      \\SODEFAULT_SUBSET\DLE\STX:*\154\197\136\RS%\n\
      \#envoy.api.v2.Cluster.LbSubsetConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        fallbackPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fallback_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'LbSubsetConfig'LbSubsetFallbackPolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fallbackPolicy")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig
        defaultSubset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_subset"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'defaultSubset")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig
        subsetSelectors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subset_selectors"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'LbSubsetConfig'LbSubsetSelector)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"subsetSelectors")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig
        localityWeightAware__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "locality_weight_aware"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"localityWeightAware")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig
        scaleLocalityWeight__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scale_locality_weight"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"scaleLocalityWeight")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig
        panicModeAny__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "panic_mode_any"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"panicModeAny")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig
        listAsAny__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_as_any"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"listAsAny")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, fallbackPolicy__field_descriptor),
           (Data.ProtoLens.Tag 2, defaultSubset__field_descriptor),
           (Data.ProtoLens.Tag 3, subsetSelectors__field_descriptor),
           (Data.ProtoLens.Tag 4, localityWeightAware__field_descriptor),
           (Data.ProtoLens.Tag 5, scaleLocalityWeight__field_descriptor),
           (Data.ProtoLens.Tag 6, panicModeAny__field_descriptor),
           (Data.ProtoLens.Tag 7, listAsAny__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'LbSubsetConfig'_unknownFields
        (\ x__ y__ -> x__ {_Cluster'LbSubsetConfig'_unknownFields = y__})
  defMessage
    = Cluster'LbSubsetConfig'_constructor
        {_Cluster'LbSubsetConfig'fallbackPolicy = Data.ProtoLens.fieldDefault,
         _Cluster'LbSubsetConfig'defaultSubset = Prelude.Nothing,
         _Cluster'LbSubsetConfig'subsetSelectors = Data.Vector.Generic.empty,
         _Cluster'LbSubsetConfig'localityWeightAware = Data.ProtoLens.fieldDefault,
         _Cluster'LbSubsetConfig'scaleLocalityWeight = Data.ProtoLens.fieldDefault,
         _Cluster'LbSubsetConfig'panicModeAny = Data.ProtoLens.fieldDefault,
         _Cluster'LbSubsetConfig'listAsAny = Data.ProtoLens.fieldDefault,
         _Cluster'LbSubsetConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'LbSubsetConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Cluster'LbSubsetConfig'LbSubsetSelector
             -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'LbSubsetConfig
        loop x mutable'subsetSelectors
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'subsetSelectors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'subsetSelectors)
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
                              (Data.ProtoLens.Field.field @"vec'subsetSelectors")
                              frozen'subsetSelectors
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "fallback_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fallbackPolicy") y x)
                                  mutable'subsetSelectors
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "default_subset"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultSubset") y x)
                                  mutable'subsetSelectors
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "subset_selectors"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'subsetSelectors y)
                                loop x v
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "locality_weight_aware"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localityWeightAware") y x)
                                  mutable'subsetSelectors
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "scale_locality_weight"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"scaleLocalityWeight") y x)
                                  mutable'subsetSelectors
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "panic_mode_any"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"panicModeAny") y x)
                                  mutable'subsetSelectors
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "list_as_any"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listAsAny") y x)
                                  mutable'subsetSelectors
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'subsetSelectors
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'subsetSelectors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'subsetSelectors)
          "LbSubsetConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"fallbackPolicy") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'defaultSubset") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
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
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'subsetSelectors") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"localityWeightAware") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"scaleLocalityWeight") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0)
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view (Data.ProtoLens.Field.field @"panicModeAny") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0)
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view (Data.ProtoLens.Field.field @"listAsAny") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0)
                                           _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData Cluster'LbSubsetConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'LbSubsetConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'LbSubsetConfig'fallbackPolicy x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'LbSubsetConfig'defaultSubset x__)
                   (Control.DeepSeq.deepseq
                      (_Cluster'LbSubsetConfig'subsetSelectors x__)
                      (Control.DeepSeq.deepseq
                         (_Cluster'LbSubsetConfig'localityWeightAware x__)
                         (Control.DeepSeq.deepseq
                            (_Cluster'LbSubsetConfig'scaleLocalityWeight x__)
                            (Control.DeepSeq.deepseq
                               (_Cluster'LbSubsetConfig'panicModeAny x__)
                               (Control.DeepSeq.deepseq
                                  (_Cluster'LbSubsetConfig'listAsAny x__) ())))))))
newtype Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'UnrecognizedValue
  = Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Cluster'LbSubsetConfig'LbSubsetFallbackPolicy
  = Cluster'LbSubsetConfig'NO_FALLBACK |
    Cluster'LbSubsetConfig'ANY_ENDPOINT |
    Cluster'LbSubsetConfig'DEFAULT_SUBSET |
    Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'Unrecognized !Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Cluster'LbSubsetConfig'LbSubsetFallbackPolicy where
  maybeToEnum 0 = Prelude.Just Cluster'LbSubsetConfig'NO_FALLBACK
  maybeToEnum 1 = Prelude.Just Cluster'LbSubsetConfig'ANY_ENDPOINT
  maybeToEnum 2 = Prelude.Just Cluster'LbSubsetConfig'DEFAULT_SUBSET
  maybeToEnum k
    = Prelude.Just
        (Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'Unrecognized
           (Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Cluster'LbSubsetConfig'NO_FALLBACK = "NO_FALLBACK"
  showEnum Cluster'LbSubsetConfig'ANY_ENDPOINT = "ANY_ENDPOINT"
  showEnum Cluster'LbSubsetConfig'DEFAULT_SUBSET = "DEFAULT_SUBSET"
  showEnum
    (Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'Unrecognized (Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NO_FALLBACK"
    = Prelude.Just Cluster'LbSubsetConfig'NO_FALLBACK
    | (Prelude.==) k "ANY_ENDPOINT"
    = Prelude.Just Cluster'LbSubsetConfig'ANY_ENDPOINT
    | (Prelude.==) k "DEFAULT_SUBSET"
    = Prelude.Just Cluster'LbSubsetConfig'DEFAULT_SUBSET
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Cluster'LbSubsetConfig'LbSubsetFallbackPolicy where
  minBound = Cluster'LbSubsetConfig'NO_FALLBACK
  maxBound = Cluster'LbSubsetConfig'DEFAULT_SUBSET
instance Prelude.Enum Cluster'LbSubsetConfig'LbSubsetFallbackPolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum LbSubsetFallbackPolicy: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Cluster'LbSubsetConfig'NO_FALLBACK = 0
  fromEnum Cluster'LbSubsetConfig'ANY_ENDPOINT = 1
  fromEnum Cluster'LbSubsetConfig'DEFAULT_SUBSET = 2
  fromEnum
    (Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'Unrecognized (Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Cluster'LbSubsetConfig'DEFAULT_SUBSET
    = Prelude.error
        "Cluster'LbSubsetConfig'LbSubsetFallbackPolicy.succ: bad argument Cluster'LbSubsetConfig'DEFAULT_SUBSET. This value would be out of bounds."
  succ Cluster'LbSubsetConfig'NO_FALLBACK
    = Cluster'LbSubsetConfig'ANY_ENDPOINT
  succ Cluster'LbSubsetConfig'ANY_ENDPOINT
    = Cluster'LbSubsetConfig'DEFAULT_SUBSET
  succ (Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'Unrecognized _)
    = Prelude.error
        "Cluster'LbSubsetConfig'LbSubsetFallbackPolicy.succ: bad argument: unrecognized value"
  pred Cluster'LbSubsetConfig'NO_FALLBACK
    = Prelude.error
        "Cluster'LbSubsetConfig'LbSubsetFallbackPolicy.pred: bad argument Cluster'LbSubsetConfig'NO_FALLBACK. This value would be out of bounds."
  pred Cluster'LbSubsetConfig'ANY_ENDPOINT
    = Cluster'LbSubsetConfig'NO_FALLBACK
  pred Cluster'LbSubsetConfig'DEFAULT_SUBSET
    = Cluster'LbSubsetConfig'ANY_ENDPOINT
  pred (Cluster'LbSubsetConfig'LbSubsetFallbackPolicy'Unrecognized _)
    = Prelude.error
        "Cluster'LbSubsetConfig'LbSubsetFallbackPolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Cluster'LbSubsetConfig'LbSubsetFallbackPolicy where
  fieldDefault = Cluster'LbSubsetConfig'NO_FALLBACK
instance Control.DeepSeq.NFData Cluster'LbSubsetConfig'LbSubsetFallbackPolicy where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.keys' @:: Lens' Cluster'LbSubsetConfig'LbSubsetSelector [Data.Text.Text]@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.vec'keys' @:: Lens' Cluster'LbSubsetConfig'LbSubsetSelector (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.singleHostPerSubset' @:: Lens' Cluster'LbSubsetConfig'LbSubsetSelector Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.fallbackPolicy' @:: Lens' Cluster'LbSubsetConfig'LbSubsetSelector Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.fallbackKeysSubset' @:: Lens' Cluster'LbSubsetConfig'LbSubsetSelector [Data.Text.Text]@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.vec'fallbackKeysSubset' @:: Lens' Cluster'LbSubsetConfig'LbSubsetSelector (Data.Vector.Vector Data.Text.Text)@ -}
data Cluster'LbSubsetConfig'LbSubsetSelector
  = Cluster'LbSubsetConfig'LbSubsetSelector'_constructor {_Cluster'LbSubsetConfig'LbSubsetSelector'keys :: !(Data.Vector.Vector Data.Text.Text),
                                                          _Cluster'LbSubsetConfig'LbSubsetSelector'singleHostPerSubset :: !Prelude.Bool,
                                                          _Cluster'LbSubsetConfig'LbSubsetSelector'fallbackPolicy :: !Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy,
                                                          _Cluster'LbSubsetConfig'LbSubsetSelector'fallbackKeysSubset :: !(Data.Vector.Vector Data.Text.Text),
                                                          _Cluster'LbSubsetConfig'LbSubsetSelector'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'LbSubsetConfig'LbSubsetSelector where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig'LbSubsetSelector "keys" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'LbSubsetSelector'keys
           (\ x__ y__
              -> x__ {_Cluster'LbSubsetConfig'LbSubsetSelector'keys = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig'LbSubsetSelector "vec'keys" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'LbSubsetSelector'keys
           (\ x__ y__
              -> x__ {_Cluster'LbSubsetConfig'LbSubsetSelector'keys = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig'LbSubsetSelector "singleHostPerSubset" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'LbSubsetSelector'singleHostPerSubset
           (\ x__ y__
              -> x__
                   {_Cluster'LbSubsetConfig'LbSubsetSelector'singleHostPerSubset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig'LbSubsetSelector "fallbackPolicy" Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'LbSubsetSelector'fallbackPolicy
           (\ x__ y__
              -> x__
                   {_Cluster'LbSubsetConfig'LbSubsetSelector'fallbackPolicy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig'LbSubsetSelector "fallbackKeysSubset" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'LbSubsetSelector'fallbackKeysSubset
           (\ x__ y__
              -> x__
                   {_Cluster'LbSubsetConfig'LbSubsetSelector'fallbackKeysSubset = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Cluster'LbSubsetConfig'LbSubsetSelector "vec'fallbackKeysSubset" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LbSubsetConfig'LbSubsetSelector'fallbackKeysSubset
           (\ x__ y__
              -> x__
                   {_Cluster'LbSubsetConfig'LbSubsetSelector'fallbackKeysSubset = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'LbSubsetConfig'LbSubsetSelector where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector"
  packedMessageDescriptor _
    = "\n\
      \\DLELbSubsetSelector\DC2\DC2\n\
      \\EOTkeys\CAN\SOH \ETX(\tR\EOTkeys\DC23\n\
      \\SYNsingle_host_per_subset\CAN\EOT \SOH(\bR\DC3singleHostPerSubset\DC2\146\SOH\n\
      \\SIfallback_policy\CAN\STX \SOH(\SO2_.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicyR\SOfallbackPolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC20\n\
      \\DC4fallback_keys_subset\CAN\ETX \ETX(\tR\DC2fallbackKeysSubset\"y\n\
      \\RSLbSubsetSelectorFallbackPolicy\DC2\SI\n\
      \\vNOT_DEFINED\DLE\NUL\DC2\SI\n\
      \\vNO_FALLBACK\DLE\SOH\DC2\DLE\n\
      \\fANY_ENDPOINT\DLE\STX\DC2\DC2\n\
      \\SODEFAULT_SUBSET\DLE\ETX\DC2\SI\n\
      \\vKEYS_SUBSET\DLE\EOT:;\154\197\136\RS6\n\
      \4envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        keys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "keys"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"keys")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig'LbSubsetSelector
        singleHostPerSubset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "single_host_per_subset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"singleHostPerSubset")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig'LbSubsetSelector
        fallbackPolicy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fallback_policy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"fallbackPolicy")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig'LbSubsetSelector
        fallbackKeysSubset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fallback_keys_subset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"fallbackKeysSubset")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LbSubsetConfig'LbSubsetSelector
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, keys__field_descriptor),
           (Data.ProtoLens.Tag 4, singleHostPerSubset__field_descriptor),
           (Data.ProtoLens.Tag 2, fallbackPolicy__field_descriptor),
           (Data.ProtoLens.Tag 3, fallbackKeysSubset__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'LbSubsetConfig'LbSubsetSelector'_unknownFields
        (\ x__ y__
           -> x__
                {_Cluster'LbSubsetConfig'LbSubsetSelector'_unknownFields = y__})
  defMessage
    = Cluster'LbSubsetConfig'LbSubsetSelector'_constructor
        {_Cluster'LbSubsetConfig'LbSubsetSelector'keys = Data.Vector.Generic.empty,
         _Cluster'LbSubsetConfig'LbSubsetSelector'singleHostPerSubset = Data.ProtoLens.fieldDefault,
         _Cluster'LbSubsetConfig'LbSubsetSelector'fallbackPolicy = Data.ProtoLens.fieldDefault,
         _Cluster'LbSubsetConfig'LbSubsetSelector'fallbackKeysSubset = Data.Vector.Generic.empty,
         _Cluster'LbSubsetConfig'LbSubsetSelector'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'LbSubsetConfig'LbSubsetSelector
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'LbSubsetConfig'LbSubsetSelector
        loop x mutable'fallbackKeysSubset mutable'keys
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'fallbackKeysSubset <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'fallbackKeysSubset)
                      frozen'keys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'keys)
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
                              (Data.ProtoLens.Field.field @"vec'fallbackKeysSubset")
                              frozen'fallbackKeysSubset
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'keys") frozen'keys x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "keys"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'keys y)
                                loop x mutable'fallbackKeysSubset v
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "single_host_per_subset"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"singleHostPerSubset") y x)
                                  mutable'fallbackKeysSubset
                                  mutable'keys
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "fallback_policy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fallbackPolicy") y x)
                                  mutable'fallbackKeysSubset
                                  mutable'keys
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "fallback_keys_subset"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'fallbackKeysSubset y)
                                loop x v mutable'keys
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'fallbackKeysSubset
                                  mutable'keys
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'fallbackKeysSubset <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'keys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'fallbackKeysSubset mutable'keys)
          "LbSubsetSelector"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.Text.Encoding.encodeUtf8
                           _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'keys") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"singleHostPerSubset") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"fallbackPolicy") _x
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
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.Text.Encoding.encodeUtf8
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'fallbackKeysSubset") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Cluster'LbSubsetConfig'LbSubsetSelector where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'LbSubsetConfig'LbSubsetSelector'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'LbSubsetConfig'LbSubsetSelector'keys x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'LbSubsetConfig'LbSubsetSelector'singleHostPerSubset x__)
                   (Control.DeepSeq.deepseq
                      (_Cluster'LbSubsetConfig'LbSubsetSelector'fallbackPolicy x__)
                      (Control.DeepSeq.deepseq
                         (_Cluster'LbSubsetConfig'LbSubsetSelector'fallbackKeysSubset x__)
                         ()))))
newtype Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'UnrecognizedValue
  = Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy
  = Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED |
    Cluster'LbSubsetConfig'LbSubsetSelector'NO_FALLBACK |
    Cluster'LbSubsetConfig'LbSubsetSelector'ANY_ENDPOINT |
    Cluster'LbSubsetConfig'LbSubsetSelector'DEFAULT_SUBSET |
    Cluster'LbSubsetConfig'LbSubsetSelector'KEYS_SUBSET |
    Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'Unrecognized !Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy where
  maybeToEnum 0
    = Prelude.Just Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED
  maybeToEnum 1
    = Prelude.Just Cluster'LbSubsetConfig'LbSubsetSelector'NO_FALLBACK
  maybeToEnum 2
    = Prelude.Just Cluster'LbSubsetConfig'LbSubsetSelector'ANY_ENDPOINT
  maybeToEnum 3
    = Prelude.Just
        Cluster'LbSubsetConfig'LbSubsetSelector'DEFAULT_SUBSET
  maybeToEnum 4
    = Prelude.Just Cluster'LbSubsetConfig'LbSubsetSelector'KEYS_SUBSET
  maybeToEnum k
    = Prelude.Just
        (Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'Unrecognized
           (Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED
    = "NOT_DEFINED"
  showEnum Cluster'LbSubsetConfig'LbSubsetSelector'NO_FALLBACK
    = "NO_FALLBACK"
  showEnum Cluster'LbSubsetConfig'LbSubsetSelector'ANY_ENDPOINT
    = "ANY_ENDPOINT"
  showEnum Cluster'LbSubsetConfig'LbSubsetSelector'DEFAULT_SUBSET
    = "DEFAULT_SUBSET"
  showEnum Cluster'LbSubsetConfig'LbSubsetSelector'KEYS_SUBSET
    = "KEYS_SUBSET"
  showEnum
    (Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'Unrecognized (Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NOT_DEFINED"
    = Prelude.Just Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED
    | (Prelude.==) k "NO_FALLBACK"
    = Prelude.Just Cluster'LbSubsetConfig'LbSubsetSelector'NO_FALLBACK
    | (Prelude.==) k "ANY_ENDPOINT"
    = Prelude.Just Cluster'LbSubsetConfig'LbSubsetSelector'ANY_ENDPOINT
    | (Prelude.==) k "DEFAULT_SUBSET"
    = Prelude.Just
        Cluster'LbSubsetConfig'LbSubsetSelector'DEFAULT_SUBSET
    | (Prelude.==) k "KEYS_SUBSET"
    = Prelude.Just Cluster'LbSubsetConfig'LbSubsetSelector'KEYS_SUBSET
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy where
  minBound = Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED
  maxBound = Cluster'LbSubsetConfig'LbSubsetSelector'KEYS_SUBSET
instance Prelude.Enum Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum LbSubsetSelectorFallbackPolicy: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED = 0
  fromEnum Cluster'LbSubsetConfig'LbSubsetSelector'NO_FALLBACK = 1
  fromEnum Cluster'LbSubsetConfig'LbSubsetSelector'ANY_ENDPOINT = 2
  fromEnum Cluster'LbSubsetConfig'LbSubsetSelector'DEFAULT_SUBSET = 3
  fromEnum Cluster'LbSubsetConfig'LbSubsetSelector'KEYS_SUBSET = 4
  fromEnum
    (Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'Unrecognized (Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Cluster'LbSubsetConfig'LbSubsetSelector'KEYS_SUBSET
    = Prelude.error
        "Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy.succ: bad argument Cluster'LbSubsetConfig'LbSubsetSelector'KEYS_SUBSET. This value would be out of bounds."
  succ Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED
    = Cluster'LbSubsetConfig'LbSubsetSelector'NO_FALLBACK
  succ Cluster'LbSubsetConfig'LbSubsetSelector'NO_FALLBACK
    = Cluster'LbSubsetConfig'LbSubsetSelector'ANY_ENDPOINT
  succ Cluster'LbSubsetConfig'LbSubsetSelector'ANY_ENDPOINT
    = Cluster'LbSubsetConfig'LbSubsetSelector'DEFAULT_SUBSET
  succ Cluster'LbSubsetConfig'LbSubsetSelector'DEFAULT_SUBSET
    = Cluster'LbSubsetConfig'LbSubsetSelector'KEYS_SUBSET
  succ
    (Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'Unrecognized _)
    = Prelude.error
        "Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy.succ: bad argument: unrecognized value"
  pred Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED
    = Prelude.error
        "Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy.pred: bad argument Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED. This value would be out of bounds."
  pred Cluster'LbSubsetConfig'LbSubsetSelector'NO_FALLBACK
    = Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED
  pred Cluster'LbSubsetConfig'LbSubsetSelector'ANY_ENDPOINT
    = Cluster'LbSubsetConfig'LbSubsetSelector'NO_FALLBACK
  pred Cluster'LbSubsetConfig'LbSubsetSelector'DEFAULT_SUBSET
    = Cluster'LbSubsetConfig'LbSubsetSelector'ANY_ENDPOINT
  pred Cluster'LbSubsetConfig'LbSubsetSelector'KEYS_SUBSET
    = Cluster'LbSubsetConfig'LbSubsetSelector'DEFAULT_SUBSET
  pred
    (Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy'Unrecognized _)
    = Prelude.error
        "Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy where
  fieldDefault = Cluster'LbSubsetConfig'LbSubsetSelector'NOT_DEFINED
instance Control.DeepSeq.NFData Cluster'LbSubsetConfig'LbSubsetSelector'LbSubsetSelectorFallbackPolicy where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.choiceCount' @:: Lens' Cluster'LeastRequestLbConfig Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'choiceCount' @:: Lens' Cluster'LeastRequestLbConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.activeRequestBias' @:: Lens' Cluster'LeastRequestLbConfig Proto.Envoy.Config.Core.V3.Base.RuntimeDouble@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'activeRequestBias' @:: Lens' Cluster'LeastRequestLbConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeDouble)@ -}
data Cluster'LeastRequestLbConfig
  = Cluster'LeastRequestLbConfig'_constructor {_Cluster'LeastRequestLbConfig'choiceCount :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                               _Cluster'LeastRequestLbConfig'activeRequestBias :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeDouble),
                                               _Cluster'LeastRequestLbConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'LeastRequestLbConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'LeastRequestLbConfig "choiceCount" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LeastRequestLbConfig'choiceCount
           (\ x__ y__
              -> x__ {_Cluster'LeastRequestLbConfig'choiceCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'LeastRequestLbConfig "maybe'choiceCount" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LeastRequestLbConfig'choiceCount
           (\ x__ y__
              -> x__ {_Cluster'LeastRequestLbConfig'choiceCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'LeastRequestLbConfig "activeRequestBias" Proto.Envoy.Config.Core.V3.Base.RuntimeDouble where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LeastRequestLbConfig'activeRequestBias
           (\ x__ y__
              -> x__ {_Cluster'LeastRequestLbConfig'activeRequestBias = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'LeastRequestLbConfig "maybe'activeRequestBias" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeDouble) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'LeastRequestLbConfig'activeRequestBias
           (\ x__ y__
              -> x__ {_Cluster'LeastRequestLbConfig'activeRequestBias = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'LeastRequestLbConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.Cluster.LeastRequestLbConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC4LeastRequestLbConfig\DC2H\n\
      \\fchoice_count\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\vchoiceCountB\a\250B\EOT*\STX(\STX\DC2S\n\
      \\DC3active_request_bias\CAN\STX \SOH(\v2#.envoy.config.core.v3.RuntimeDoubleR\DC1activeRequestBias:0\154\197\136\RS+\n\
      \)envoy.api.v2.Cluster.LeastRequestLbConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        choiceCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "choice_count"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'choiceCount")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LeastRequestLbConfig
        activeRequestBias__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "active_request_bias"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeDouble)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activeRequestBias")) ::
              Data.ProtoLens.FieldDescriptor Cluster'LeastRequestLbConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, choiceCount__field_descriptor),
           (Data.ProtoLens.Tag 2, activeRequestBias__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'LeastRequestLbConfig'_unknownFields
        (\ x__ y__
           -> x__ {_Cluster'LeastRequestLbConfig'_unknownFields = y__})
  defMessage
    = Cluster'LeastRequestLbConfig'_constructor
        {_Cluster'LeastRequestLbConfig'choiceCount = Prelude.Nothing,
         _Cluster'LeastRequestLbConfig'activeRequestBias = Prelude.Nothing,
         _Cluster'LeastRequestLbConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'LeastRequestLbConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'LeastRequestLbConfig
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
                                       "choice_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"choiceCount") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "active_request_bias"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"activeRequestBias") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LeastRequestLbConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'choiceCount") _x
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
                       (Data.ProtoLens.Field.field @"maybe'activeRequestBias") _x
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
instance Control.DeepSeq.NFData Cluster'LeastRequestLbConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'LeastRequestLbConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'LeastRequestLbConfig'choiceCount x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'LeastRequestLbConfig'activeRequestBias x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.tableSize' @:: Lens' Cluster'MaglevLbConfig Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'tableSize' @:: Lens' Cluster'MaglevLbConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@ -}
data Cluster'MaglevLbConfig
  = Cluster'MaglevLbConfig'_constructor {_Cluster'MaglevLbConfig'tableSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                                         _Cluster'MaglevLbConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'MaglevLbConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'MaglevLbConfig "tableSize" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'MaglevLbConfig'tableSize
           (\ x__ y__ -> x__ {_Cluster'MaglevLbConfig'tableSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'MaglevLbConfig "maybe'tableSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'MaglevLbConfig'tableSize
           (\ x__ y__ -> x__ {_Cluster'MaglevLbConfig'tableSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'MaglevLbConfig where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.Cluster.MaglevLbConfig"
  packedMessageDescriptor _
    = "\n\
      \\SOMaglevLbConfig\DC2G\n\
      \\n\
      \table_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt64ValueR\ttableSizeB\n\
      \\250B\a2\ENQ\CAN\203\150\177\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tableSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "table_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tableSize")) ::
              Data.ProtoLens.FieldDescriptor Cluster'MaglevLbConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tableSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'MaglevLbConfig'_unknownFields
        (\ x__ y__ -> x__ {_Cluster'MaglevLbConfig'_unknownFields = y__})
  defMessage
    = Cluster'MaglevLbConfig'_constructor
        {_Cluster'MaglevLbConfig'tableSize = Prelude.Nothing,
         _Cluster'MaglevLbConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'MaglevLbConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'MaglevLbConfig
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
                                       "table_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tableSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MaglevLbConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'tableSize") _x
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
instance Control.DeepSeq.NFData Cluster'MaglevLbConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'MaglevLbConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'MaglevLbConfig'tableSize x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.useHttpHeader' @:: Lens' Cluster'OriginalDstLbConfig Prelude.Bool@ -}
data Cluster'OriginalDstLbConfig
  = Cluster'OriginalDstLbConfig'_constructor {_Cluster'OriginalDstLbConfig'useHttpHeader :: !Prelude.Bool,
                                              _Cluster'OriginalDstLbConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'OriginalDstLbConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'OriginalDstLbConfig "useHttpHeader" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'OriginalDstLbConfig'useHttpHeader
           (\ x__ y__
              -> x__ {_Cluster'OriginalDstLbConfig'useHttpHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'OriginalDstLbConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.Cluster.OriginalDstLbConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC3OriginalDstLbConfig\DC2&\n\
      \\SIuse_http_header\CAN\SOH \SOH(\bR\ruseHttpHeader:/\154\197\136\RS*\n\
      \(envoy.api.v2.Cluster.OriginalDstLbConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        useHttpHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_http_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"useHttpHeader")) ::
              Data.ProtoLens.FieldDescriptor Cluster'OriginalDstLbConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, useHttpHeader__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'OriginalDstLbConfig'_unknownFields
        (\ x__ y__
           -> x__ {_Cluster'OriginalDstLbConfig'_unknownFields = y__})
  defMessage
    = Cluster'OriginalDstLbConfig'_constructor
        {_Cluster'OriginalDstLbConfig'useHttpHeader = Data.ProtoLens.fieldDefault,
         _Cluster'OriginalDstLbConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'OriginalDstLbConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'OriginalDstLbConfig
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_http_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useHttpHeader") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OriginalDstLbConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"useHttpHeader") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Cluster'OriginalDstLbConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'OriginalDstLbConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'OriginalDstLbConfig'useHttpHeader x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.perUpstreamPreconnectRatio' @:: Lens' Cluster'PreconnectPolicy Proto.Google.Protobuf.Wrappers.DoubleValue@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'perUpstreamPreconnectRatio' @:: Lens' Cluster'PreconnectPolicy (Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.predictivePreconnectRatio' @:: Lens' Cluster'PreconnectPolicy Proto.Google.Protobuf.Wrappers.DoubleValue@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'predictivePreconnectRatio' @:: Lens' Cluster'PreconnectPolicy (Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue)@ -}
data Cluster'PreconnectPolicy
  = Cluster'PreconnectPolicy'_constructor {_Cluster'PreconnectPolicy'perUpstreamPreconnectRatio :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue),
                                           _Cluster'PreconnectPolicy'predictivePreconnectRatio :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue),
                                           _Cluster'PreconnectPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'PreconnectPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'PreconnectPolicy "perUpstreamPreconnectRatio" Proto.Google.Protobuf.Wrappers.DoubleValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'PreconnectPolicy'perUpstreamPreconnectRatio
           (\ x__ y__
              -> x__
                   {_Cluster'PreconnectPolicy'perUpstreamPreconnectRatio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'PreconnectPolicy "maybe'perUpstreamPreconnectRatio" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'PreconnectPolicy'perUpstreamPreconnectRatio
           (\ x__ y__
              -> x__
                   {_Cluster'PreconnectPolicy'perUpstreamPreconnectRatio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'PreconnectPolicy "predictivePreconnectRatio" Proto.Google.Protobuf.Wrappers.DoubleValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'PreconnectPolicy'predictivePreconnectRatio
           (\ x__ y__
              -> x__
                   {_Cluster'PreconnectPolicy'predictivePreconnectRatio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'PreconnectPolicy "maybe'predictivePreconnectRatio" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'PreconnectPolicy'predictivePreconnectRatio
           (\ x__ y__
              -> x__
                   {_Cluster'PreconnectPolicy'predictivePreconnectRatio = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'PreconnectPolicy where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.Cluster.PreconnectPolicy"
  packedMessageDescriptor _
    = "\n\
      \\DLEPreconnectPolicy\DC2x\n\
      \\GSper_upstream_preconnect_ratio\CAN\SOH \SOH(\v2\FS.google.protobuf.DoubleValueR\SUBperUpstreamPreconnectRatioB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\b@)\NUL\NUL\NUL\NUL\NUL\NUL\240?\DC2u\n\
      \\ESCpredictive_preconnect_ratio\CAN\STX \SOH(\v2\FS.google.protobuf.DoubleValueR\EMpredictivePreconnectRatioB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\b@)\NUL\NUL\NUL\NUL\NUL\NUL\240?"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        perUpstreamPreconnectRatio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "per_upstream_preconnect_ratio"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.DoubleValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'perUpstreamPreconnectRatio")) ::
              Data.ProtoLens.FieldDescriptor Cluster'PreconnectPolicy
        predictivePreconnectRatio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "predictive_preconnect_ratio"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.DoubleValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'predictivePreconnectRatio")) ::
              Data.ProtoLens.FieldDescriptor Cluster'PreconnectPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            perUpstreamPreconnectRatio__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            predictivePreconnectRatio__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'PreconnectPolicy'_unknownFields
        (\ x__ y__ -> x__ {_Cluster'PreconnectPolicy'_unknownFields = y__})
  defMessage
    = Cluster'PreconnectPolicy'_constructor
        {_Cluster'PreconnectPolicy'perUpstreamPreconnectRatio = Prelude.Nothing,
         _Cluster'PreconnectPolicy'predictivePreconnectRatio = Prelude.Nothing,
         _Cluster'PreconnectPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'PreconnectPolicy
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'PreconnectPolicy
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
                                       "per_upstream_preconnect_ratio"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"perUpstreamPreconnectRatio") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "predictive_preconnect_ratio"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"predictivePreconnectRatio") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PreconnectPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'perUpstreamPreconnectRatio") _x
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
                       (Data.ProtoLens.Field.field @"maybe'predictivePreconnectRatio") _x
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
instance Control.DeepSeq.NFData Cluster'PreconnectPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'PreconnectPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'PreconnectPolicy'perUpstreamPreconnectRatio x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'PreconnectPolicy'predictivePreconnectRatio x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.baseInterval' @:: Lens' Cluster'RefreshRate Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'baseInterval' @:: Lens' Cluster'RefreshRate (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maxInterval' @:: Lens' Cluster'RefreshRate Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'maxInterval' @:: Lens' Cluster'RefreshRate (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data Cluster'RefreshRate
  = Cluster'RefreshRate'_constructor {_Cluster'RefreshRate'baseInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                      _Cluster'RefreshRate'maxInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                      _Cluster'RefreshRate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'RefreshRate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'RefreshRate "baseInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'RefreshRate'baseInterval
           (\ x__ y__ -> x__ {_Cluster'RefreshRate'baseInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'RefreshRate "maybe'baseInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'RefreshRate'baseInterval
           (\ x__ y__ -> x__ {_Cluster'RefreshRate'baseInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'RefreshRate "maxInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'RefreshRate'maxInterval
           (\ x__ y__ -> x__ {_Cluster'RefreshRate'maxInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'RefreshRate "maybe'maxInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'RefreshRate'maxInterval
           (\ x__ y__ -> x__ {_Cluster'RefreshRate'maxInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'RefreshRate where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.Cluster.RefreshRate"
  packedMessageDescriptor _
    = "\n\
      \\vRefreshRate\DC2N\n\
      \\rbase_interval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fbaseIntervalB\SO\250B\v\170\SOH\b\b\SOH*\EOT\DLE\192\132=\DC2J\n\
      \\fmax_interval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\vmaxIntervalB\f\250B\t\170\SOH\ACK*\EOT\DLE\192\132=:'\154\197\136\RS\"\n\
      \ envoy.api.v2.Cluster.RefreshRate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        baseInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'baseInterval")) ::
              Data.ProtoLens.FieldDescriptor Cluster'RefreshRate
        maxInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxInterval")) ::
              Data.ProtoLens.FieldDescriptor Cluster'RefreshRate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, baseInterval__field_descriptor),
           (Data.ProtoLens.Tag 2, maxInterval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'RefreshRate'_unknownFields
        (\ x__ y__ -> x__ {_Cluster'RefreshRate'_unknownFields = y__})
  defMessage
    = Cluster'RefreshRate'_constructor
        {_Cluster'RefreshRate'baseInterval = Prelude.Nothing,
         _Cluster'RefreshRate'maxInterval = Prelude.Nothing,
         _Cluster'RefreshRate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'RefreshRate
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'RefreshRate
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
                                       "base_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"baseInterval") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_interval"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxInterval") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RefreshRate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'baseInterval") _x
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
                       (Data.ProtoLens.Field.field @"maybe'maxInterval") _x
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
instance Control.DeepSeq.NFData Cluster'RefreshRate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'RefreshRate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'RefreshRate'baseInterval x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'RefreshRate'maxInterval x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.minimumRingSize' @:: Lens' Cluster'RingHashLbConfig Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'minimumRingSize' @:: Lens' Cluster'RingHashLbConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.hashFunction' @:: Lens' Cluster'RingHashLbConfig Cluster'RingHashLbConfig'HashFunction@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maximumRingSize' @:: Lens' Cluster'RingHashLbConfig Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'maximumRingSize' @:: Lens' Cluster'RingHashLbConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@ -}
data Cluster'RingHashLbConfig
  = Cluster'RingHashLbConfig'_constructor {_Cluster'RingHashLbConfig'minimumRingSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                                           _Cluster'RingHashLbConfig'hashFunction :: !Cluster'RingHashLbConfig'HashFunction,
                                           _Cluster'RingHashLbConfig'maximumRingSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                                           _Cluster'RingHashLbConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'RingHashLbConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'RingHashLbConfig "minimumRingSize" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'RingHashLbConfig'minimumRingSize
           (\ x__ y__
              -> x__ {_Cluster'RingHashLbConfig'minimumRingSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'RingHashLbConfig "maybe'minimumRingSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'RingHashLbConfig'minimumRingSize
           (\ x__ y__
              -> x__ {_Cluster'RingHashLbConfig'minimumRingSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'RingHashLbConfig "hashFunction" Cluster'RingHashLbConfig'HashFunction where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'RingHashLbConfig'hashFunction
           (\ x__ y__ -> x__ {_Cluster'RingHashLbConfig'hashFunction = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'RingHashLbConfig "maximumRingSize" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'RingHashLbConfig'maximumRingSize
           (\ x__ y__
              -> x__ {_Cluster'RingHashLbConfig'maximumRingSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'RingHashLbConfig "maybe'maximumRingSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'RingHashLbConfig'maximumRingSize
           (\ x__ y__
              -> x__ {_Cluster'RingHashLbConfig'maximumRingSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'RingHashLbConfig where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.Cluster.RingHashLbConfig"
  packedMessageDescriptor _
    = "\n\
      \\DLERingHashLbConfig\DC2T\n\
      \\DC1minimum_ring_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt64ValueR\SIminimumRingSizeB\n\
      \\250B\a2\ENQ\CAN\128\128\128\EOT\DC2m\n\
      \\rhash_function\CAN\ETX \SOH(\SO2>.envoy.config.cluster.v3.Cluster.RingHashLbConfig.HashFunctionR\fhashFunctionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2T\n\
      \\DC1maximum_ring_size\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt64ValueR\SImaximumRingSizeB\n\
      \\250B\a2\ENQ\CAN\128\128\128\EOT\".\n\
      \\fHashFunction\DC2\v\n\
      \\aXX_HASH\DLE\NUL\DC2\DC1\n\
      \\rMURMUR_HASH_2\DLE\SOH:,\154\197\136\RS'\n\
      \%envoy.api.v2.Cluster.RingHashLbConfigJ\EOT\b\STX\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        minimumRingSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minimum_ring_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minimumRingSize")) ::
              Data.ProtoLens.FieldDescriptor Cluster'RingHashLbConfig
        hashFunction__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash_function"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Cluster'RingHashLbConfig'HashFunction)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"hashFunction")) ::
              Data.ProtoLens.FieldDescriptor Cluster'RingHashLbConfig
        maximumRingSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "maximum_ring_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maximumRingSize")) ::
              Data.ProtoLens.FieldDescriptor Cluster'RingHashLbConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, minimumRingSize__field_descriptor),
           (Data.ProtoLens.Tag 3, hashFunction__field_descriptor),
           (Data.ProtoLens.Tag 4, maximumRingSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'RingHashLbConfig'_unknownFields
        (\ x__ y__ -> x__ {_Cluster'RingHashLbConfig'_unknownFields = y__})
  defMessage
    = Cluster'RingHashLbConfig'_constructor
        {_Cluster'RingHashLbConfig'minimumRingSize = Prelude.Nothing,
         _Cluster'RingHashLbConfig'hashFunction = Data.ProtoLens.fieldDefault,
         _Cluster'RingHashLbConfig'maximumRingSize = Prelude.Nothing,
         _Cluster'RingHashLbConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'RingHashLbConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'RingHashLbConfig
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
                                       "minimum_ring_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minimumRingSize") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "hash_function"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hashFunction") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "maximum_ring_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maximumRingSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RingHashLbConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'minimumRingSize") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"hashFunction") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'maximumRingSize") _x
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Cluster'RingHashLbConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'RingHashLbConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'RingHashLbConfig'minimumRingSize x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'RingHashLbConfig'hashFunction x__)
                   (Control.DeepSeq.deepseq
                      (_Cluster'RingHashLbConfig'maximumRingSize x__) ())))
newtype Cluster'RingHashLbConfig'HashFunction'UnrecognizedValue
  = Cluster'RingHashLbConfig'HashFunction'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Cluster'RingHashLbConfig'HashFunction
  = Cluster'RingHashLbConfig'XX_HASH |
    Cluster'RingHashLbConfig'MURMUR_HASH_2 |
    Cluster'RingHashLbConfig'HashFunction'Unrecognized !Cluster'RingHashLbConfig'HashFunction'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Cluster'RingHashLbConfig'HashFunction where
  maybeToEnum 0 = Prelude.Just Cluster'RingHashLbConfig'XX_HASH
  maybeToEnum 1 = Prelude.Just Cluster'RingHashLbConfig'MURMUR_HASH_2
  maybeToEnum k
    = Prelude.Just
        (Cluster'RingHashLbConfig'HashFunction'Unrecognized
           (Cluster'RingHashLbConfig'HashFunction'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Cluster'RingHashLbConfig'XX_HASH = "XX_HASH"
  showEnum Cluster'RingHashLbConfig'MURMUR_HASH_2 = "MURMUR_HASH_2"
  showEnum
    (Cluster'RingHashLbConfig'HashFunction'Unrecognized (Cluster'RingHashLbConfig'HashFunction'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "XX_HASH"
    = Prelude.Just Cluster'RingHashLbConfig'XX_HASH
    | (Prelude.==) k "MURMUR_HASH_2"
    = Prelude.Just Cluster'RingHashLbConfig'MURMUR_HASH_2
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Cluster'RingHashLbConfig'HashFunction where
  minBound = Cluster'RingHashLbConfig'XX_HASH
  maxBound = Cluster'RingHashLbConfig'MURMUR_HASH_2
instance Prelude.Enum Cluster'RingHashLbConfig'HashFunction where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum HashFunction: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Cluster'RingHashLbConfig'XX_HASH = 0
  fromEnum Cluster'RingHashLbConfig'MURMUR_HASH_2 = 1
  fromEnum
    (Cluster'RingHashLbConfig'HashFunction'Unrecognized (Cluster'RingHashLbConfig'HashFunction'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Cluster'RingHashLbConfig'MURMUR_HASH_2
    = Prelude.error
        "Cluster'RingHashLbConfig'HashFunction.succ: bad argument Cluster'RingHashLbConfig'MURMUR_HASH_2. This value would be out of bounds."
  succ Cluster'RingHashLbConfig'XX_HASH
    = Cluster'RingHashLbConfig'MURMUR_HASH_2
  succ (Cluster'RingHashLbConfig'HashFunction'Unrecognized _)
    = Prelude.error
        "Cluster'RingHashLbConfig'HashFunction.succ: bad argument: unrecognized value"
  pred Cluster'RingHashLbConfig'XX_HASH
    = Prelude.error
        "Cluster'RingHashLbConfig'HashFunction.pred: bad argument Cluster'RingHashLbConfig'XX_HASH. This value would be out of bounds."
  pred Cluster'RingHashLbConfig'MURMUR_HASH_2
    = Cluster'RingHashLbConfig'XX_HASH
  pred (Cluster'RingHashLbConfig'HashFunction'Unrecognized _)
    = Prelude.error
        "Cluster'RingHashLbConfig'HashFunction.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Cluster'RingHashLbConfig'HashFunction where
  fieldDefault = Cluster'RingHashLbConfig'XX_HASH
instance Control.DeepSeq.NFData Cluster'RingHashLbConfig'HashFunction where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.name' @:: Lens' Cluster'TransportSocketMatch Data.Text.Text@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.match' @:: Lens' Cluster'TransportSocketMatch Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'match' @:: Lens' Cluster'TransportSocketMatch (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.transportSocket' @:: Lens' Cluster'TransportSocketMatch Proto.Envoy.Config.Core.V3.Base.TransportSocket@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'transportSocket' @:: Lens' Cluster'TransportSocketMatch (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket)@ -}
data Cluster'TransportSocketMatch
  = Cluster'TransportSocketMatch'_constructor {_Cluster'TransportSocketMatch'name :: !Data.Text.Text,
                                               _Cluster'TransportSocketMatch'match :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                               _Cluster'TransportSocketMatch'transportSocket :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket),
                                               _Cluster'TransportSocketMatch'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'TransportSocketMatch where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'TransportSocketMatch "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'TransportSocketMatch'name
           (\ x__ y__ -> x__ {_Cluster'TransportSocketMatch'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'TransportSocketMatch "match" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'TransportSocketMatch'match
           (\ x__ y__ -> x__ {_Cluster'TransportSocketMatch'match = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'TransportSocketMatch "maybe'match" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'TransportSocketMatch'match
           (\ x__ y__ -> x__ {_Cluster'TransportSocketMatch'match = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'TransportSocketMatch "transportSocket" Proto.Envoy.Config.Core.V3.Base.TransportSocket where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'TransportSocketMatch'transportSocket
           (\ x__ y__
              -> x__ {_Cluster'TransportSocketMatch'transportSocket = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'TransportSocketMatch "maybe'transportSocket" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.TransportSocket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'TransportSocketMatch'transportSocket
           (\ x__ y__
              -> x__ {_Cluster'TransportSocketMatch'transportSocket = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'TransportSocketMatch where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.Cluster.TransportSocketMatch"
  packedMessageDescriptor _
    = "\n\
      \\DC4TransportSocketMatch\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2-\n\
      \\ENQmatch\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQmatch\DC2P\n\
      \\DLEtransport_socket\CAN\ETX \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocket:0\154\197\136\RS+\n\
      \)envoy.api.v2.Cluster.TransportSocketMatch"
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
              Data.ProtoLens.FieldDescriptor Cluster'TransportSocketMatch
        match__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'match")) ::
              Data.ProtoLens.FieldDescriptor Cluster'TransportSocketMatch
        transportSocket__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_socket"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.TransportSocket)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'transportSocket")) ::
              Data.ProtoLens.FieldDescriptor Cluster'TransportSocketMatch
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, match__field_descriptor),
           (Data.ProtoLens.Tag 3, transportSocket__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'TransportSocketMatch'_unknownFields
        (\ x__ y__
           -> x__ {_Cluster'TransportSocketMatch'_unknownFields = y__})
  defMessage
    = Cluster'TransportSocketMatch'_constructor
        {_Cluster'TransportSocketMatch'name = Data.ProtoLens.fieldDefault,
         _Cluster'TransportSocketMatch'match = Prelude.Nothing,
         _Cluster'TransportSocketMatch'transportSocket = Prelude.Nothing,
         _Cluster'TransportSocketMatch'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'TransportSocketMatch
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'TransportSocketMatch
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "match"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"match") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "transport_socket"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportSocket") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TransportSocketMatch"
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
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'match") _x
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
                          (Data.ProtoLens.Field.field @"maybe'transportSocket") _x
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
instance Control.DeepSeq.NFData Cluster'TransportSocketMatch where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'TransportSocketMatch'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'TransportSocketMatch'name x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'TransportSocketMatch'match x__)
                   (Control.DeepSeq.deepseq
                      (_Cluster'TransportSocketMatch'transportSocket x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.key' @:: Lens' Cluster'TypedExtensionProtocolOptionsEntry Data.Text.Text@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.value' @:: Lens' Cluster'TypedExtensionProtocolOptionsEntry Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'value' @:: Lens' Cluster'TypedExtensionProtocolOptionsEntry (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data Cluster'TypedExtensionProtocolOptionsEntry
  = Cluster'TypedExtensionProtocolOptionsEntry'_constructor {_Cluster'TypedExtensionProtocolOptionsEntry'key :: !Data.Text.Text,
                                                             _Cluster'TypedExtensionProtocolOptionsEntry'value :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                                             _Cluster'TypedExtensionProtocolOptionsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Cluster'TypedExtensionProtocolOptionsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Cluster'TypedExtensionProtocolOptionsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'TypedExtensionProtocolOptionsEntry'key
           (\ x__ y__
              -> x__ {_Cluster'TypedExtensionProtocolOptionsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Cluster'TypedExtensionProtocolOptionsEntry "value" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'TypedExtensionProtocolOptionsEntry'value
           (\ x__ y__
              -> x__ {_Cluster'TypedExtensionProtocolOptionsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Cluster'TypedExtensionProtocolOptionsEntry "maybe'value" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Cluster'TypedExtensionProtocolOptionsEntry'value
           (\ x__ y__
              -> x__ {_Cluster'TypedExtensionProtocolOptionsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Cluster'TypedExtensionProtocolOptionsEntry where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.Cluster.TypedExtensionProtocolOptionsEntry"
  packedMessageDescriptor _
    = "\n\
      \\"TypedExtensionProtocolOptionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2*\n\
      \\ENQvalue\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Cluster'TypedExtensionProtocolOptionsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Cluster'TypedExtensionProtocolOptionsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Cluster'TypedExtensionProtocolOptionsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_Cluster'TypedExtensionProtocolOptionsEntry'_unknownFields = y__})
  defMessage
    = Cluster'TypedExtensionProtocolOptionsEntry'_constructor
        {_Cluster'TypedExtensionProtocolOptionsEntry'key = Data.ProtoLens.fieldDefault,
         _Cluster'TypedExtensionProtocolOptionsEntry'value = Prelude.Nothing,
         _Cluster'TypedExtensionProtocolOptionsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Cluster'TypedExtensionProtocolOptionsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Cluster'TypedExtensionProtocolOptionsEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "TypedExtensionProtocolOptionsEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData Cluster'TypedExtensionProtocolOptionsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Cluster'TypedExtensionProtocolOptionsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Cluster'TypedExtensionProtocolOptionsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_Cluster'TypedExtensionProtocolOptionsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.entries' @:: Lens' ClusterCollection Proto.Xds.Core.V3.CollectionEntry.CollectionEntry@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'entries' @:: Lens' ClusterCollection (Prelude.Maybe Proto.Xds.Core.V3.CollectionEntry.CollectionEntry)@ -}
data ClusterCollection
  = ClusterCollection'_constructor {_ClusterCollection'entries :: !(Prelude.Maybe Proto.Xds.Core.V3.CollectionEntry.CollectionEntry),
                                    _ClusterCollection'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClusterCollection where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClusterCollection "entries" Proto.Xds.Core.V3.CollectionEntry.CollectionEntry where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterCollection'entries
           (\ x__ y__ -> x__ {_ClusterCollection'entries = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ClusterCollection "maybe'entries" (Prelude.Maybe Proto.Xds.Core.V3.CollectionEntry.CollectionEntry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClusterCollection'entries
           (\ x__ y__ -> x__ {_ClusterCollection'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClusterCollection where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.ClusterCollection"
  packedMessageDescriptor _
    = "\n\
      \\DC1ClusterCollection\DC26\n\
      \\aentries\CAN\SOH \SOH(\v2\FS.xds.core.v3.CollectionEntryR\aentries"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Xds.Core.V3.CollectionEntry.CollectionEntry)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'entries")) ::
              Data.ProtoLens.FieldDescriptor ClusterCollection
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClusterCollection'_unknownFields
        (\ x__ y__ -> x__ {_ClusterCollection'_unknownFields = y__})
  defMessage
    = ClusterCollection'_constructor
        {_ClusterCollection'entries = Prelude.Nothing,
         _ClusterCollection'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClusterCollection
          -> Data.ProtoLens.Encoding.Bytes.Parser ClusterCollection
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
                                       "entries"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"entries") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ClusterCollection"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'entries") _x
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
instance Control.DeepSeq.NFData ClusterCollection where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClusterCollection'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ClusterCollection'entries x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.policies' @:: Lens' LoadBalancingPolicy [LoadBalancingPolicy'Policy]@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.vec'policies' @:: Lens' LoadBalancingPolicy (Data.Vector.Vector LoadBalancingPolicy'Policy)@ -}
data LoadBalancingPolicy
  = LoadBalancingPolicy'_constructor {_LoadBalancingPolicy'policies :: !(Data.Vector.Vector LoadBalancingPolicy'Policy),
                                      _LoadBalancingPolicy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LoadBalancingPolicy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LoadBalancingPolicy "policies" [LoadBalancingPolicy'Policy] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadBalancingPolicy'policies
           (\ x__ y__ -> x__ {_LoadBalancingPolicy'policies = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LoadBalancingPolicy "vec'policies" (Data.Vector.Vector LoadBalancingPolicy'Policy) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadBalancingPolicy'policies
           (\ x__ y__ -> x__ {_LoadBalancingPolicy'policies = y__}))
        Prelude.id
instance Data.ProtoLens.Message LoadBalancingPolicy where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.LoadBalancingPolicy"
  packedMessageDescriptor _
    = "\n\
      \\DC3LoadBalancingPolicy\DC2O\n\
      \\bpolicies\CAN\SOH \ETX(\v23.envoy.config.cluster.v3.LoadBalancingPolicy.PolicyR\bpolicies\SUB\147\SOH\n\
      \\ACKPolicy\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC27\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfig:.\154\197\136\RS)\n\
      \'envoy.api.v2.LoadBalancingPolicy.PolicyJ\EOT\b\STX\DLE\ETXR\ACKconfig:'\154\197\136\RS\"\n\
      \ envoy.api.v2.LoadBalancingPolicy"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        policies__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "policies"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor LoadBalancingPolicy'Policy)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"policies")) ::
              Data.ProtoLens.FieldDescriptor LoadBalancingPolicy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, policies__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LoadBalancingPolicy'_unknownFields
        (\ x__ y__ -> x__ {_LoadBalancingPolicy'_unknownFields = y__})
  defMessage
    = LoadBalancingPolicy'_constructor
        {_LoadBalancingPolicy'policies = Data.Vector.Generic.empty,
         _LoadBalancingPolicy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LoadBalancingPolicy
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld LoadBalancingPolicy'Policy
             -> Data.ProtoLens.Encoding.Bytes.Parser LoadBalancingPolicy
        loop x mutable'policies
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'policies <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'policies)
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
                              (Data.ProtoLens.Field.field @"vec'policies") frozen'policies x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "policies"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'policies y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'policies
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'policies <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'policies)
          "LoadBalancingPolicy"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'policies") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData LoadBalancingPolicy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LoadBalancingPolicy'_unknownFields x__)
             (Control.DeepSeq.deepseq (_LoadBalancingPolicy'policies x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.name' @:: Lens' LoadBalancingPolicy'Policy Data.Text.Text@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.typedConfig' @:: Lens' LoadBalancingPolicy'Policy Proto.Google.Protobuf.Any.Any@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'typedConfig' @:: Lens' LoadBalancingPolicy'Policy (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@ -}
data LoadBalancingPolicy'Policy
  = LoadBalancingPolicy'Policy'_constructor {_LoadBalancingPolicy'Policy'name :: !Data.Text.Text,
                                             _LoadBalancingPolicy'Policy'typedConfig :: !(Prelude.Maybe Proto.Google.Protobuf.Any.Any),
                                             _LoadBalancingPolicy'Policy'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LoadBalancingPolicy'Policy where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LoadBalancingPolicy'Policy "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadBalancingPolicy'Policy'name
           (\ x__ y__ -> x__ {_LoadBalancingPolicy'Policy'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LoadBalancingPolicy'Policy "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadBalancingPolicy'Policy'typedConfig
           (\ x__ y__ -> x__ {_LoadBalancingPolicy'Policy'typedConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LoadBalancingPolicy'Policy "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LoadBalancingPolicy'Policy'typedConfig
           (\ x__ y__ -> x__ {_LoadBalancingPolicy'Policy'typedConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message LoadBalancingPolicy'Policy where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.LoadBalancingPolicy.Policy"
  packedMessageDescriptor _
    = "\n\
      \\ACKPolicy\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC27\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfig:.\154\197\136\RS)\n\
      \'envoy.api.v2.LoadBalancingPolicy.PolicyJ\EOT\b\STX\DLE\ETXR\ACKconfig"
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
              Data.ProtoLens.FieldDescriptor LoadBalancingPolicy'Policy
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor LoadBalancingPolicy'Policy
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LoadBalancingPolicy'Policy'_unknownFields
        (\ x__ y__
           -> x__ {_LoadBalancingPolicy'Policy'_unknownFields = y__})
  defMessage
    = LoadBalancingPolicy'Policy'_constructor
        {_LoadBalancingPolicy'Policy'name = Data.ProtoLens.fieldDefault,
         _LoadBalancingPolicy'Policy'typedConfig = Prelude.Nothing,
         _LoadBalancingPolicy'Policy'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LoadBalancingPolicy'Policy
          -> Data.ProtoLens.Encoding.Bytes.Parser LoadBalancingPolicy'Policy
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Policy"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'typedConfig") _x
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
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData LoadBalancingPolicy'Policy where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LoadBalancingPolicy'Policy'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LoadBalancingPolicy'Policy'name x__)
                (Control.DeepSeq.deepseq
                   (_LoadBalancingPolicy'Policy'typedConfig x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.timeoutBudgets' @:: Lens' TrackClusterStats Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.requestResponseSizes' @:: Lens' TrackClusterStats Prelude.Bool@ -}
data TrackClusterStats
  = TrackClusterStats'_constructor {_TrackClusterStats'timeoutBudgets :: !Prelude.Bool,
                                    _TrackClusterStats'requestResponseSizes :: !Prelude.Bool,
                                    _TrackClusterStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TrackClusterStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TrackClusterStats "timeoutBudgets" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackClusterStats'timeoutBudgets
           (\ x__ y__ -> x__ {_TrackClusterStats'timeoutBudgets = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TrackClusterStats "requestResponseSizes" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TrackClusterStats'requestResponseSizes
           (\ x__ y__ -> x__ {_TrackClusterStats'requestResponseSizes = y__}))
        Prelude.id
instance Data.ProtoLens.Message TrackClusterStats where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.TrackClusterStats"
  packedMessageDescriptor _
    = "\n\
      \\DC1TrackClusterStats\DC2'\n\
      \\SItimeout_budgets\CAN\SOH \SOH(\bR\SOtimeoutBudgets\DC24\n\
      \\SYNrequest_response_sizes\CAN\STX \SOH(\bR\DC4requestResponseSizes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timeoutBudgets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeout_budgets"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"timeoutBudgets")) ::
              Data.ProtoLens.FieldDescriptor TrackClusterStats
        requestResponseSizes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_response_sizes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestResponseSizes")) ::
              Data.ProtoLens.FieldDescriptor TrackClusterStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timeoutBudgets__field_descriptor),
           (Data.ProtoLens.Tag 2, requestResponseSizes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TrackClusterStats'_unknownFields
        (\ x__ y__ -> x__ {_TrackClusterStats'_unknownFields = y__})
  defMessage
    = TrackClusterStats'_constructor
        {_TrackClusterStats'timeoutBudgets = Data.ProtoLens.fieldDefault,
         _TrackClusterStats'requestResponseSizes = Data.ProtoLens.fieldDefault,
         _TrackClusterStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TrackClusterStats
          -> Data.ProtoLens.Encoding.Bytes.Parser TrackClusterStats
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timeout_budgets"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timeoutBudgets") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "request_response_sizes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestResponseSizes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TrackClusterStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"timeoutBudgets") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"requestResponseSizes") _x
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
instance Control.DeepSeq.NFData TrackClusterStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TrackClusterStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TrackClusterStats'timeoutBudgets x__)
                (Control.DeepSeq.deepseq
                   (_TrackClusterStats'requestResponseSizes x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.sourceAddress' @:: Lens' UpstreamBindConfig Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'sourceAddress' @:: Lens' UpstreamBindConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@ -}
data UpstreamBindConfig
  = UpstreamBindConfig'_constructor {_UpstreamBindConfig'sourceAddress :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                                     _UpstreamBindConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpstreamBindConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpstreamBindConfig "sourceAddress" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamBindConfig'sourceAddress
           (\ x__ y__ -> x__ {_UpstreamBindConfig'sourceAddress = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpstreamBindConfig "maybe'sourceAddress" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamBindConfig'sourceAddress
           (\ x__ y__ -> x__ {_UpstreamBindConfig'sourceAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpstreamBindConfig where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.UpstreamBindConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC2UpstreamBindConfig\DC2D\n\
      \\SOsource_address\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\rsourceAddress:&\154\197\136\RS!\n\
      \\USenvoy.api.v2.UpstreamBindConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sourceAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceAddress")) ::
              Data.ProtoLens.FieldDescriptor UpstreamBindConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sourceAddress__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpstreamBindConfig'_unknownFields
        (\ x__ y__ -> x__ {_UpstreamBindConfig'_unknownFields = y__})
  defMessage
    = UpstreamBindConfig'_constructor
        {_UpstreamBindConfig'sourceAddress = Prelude.Nothing,
         _UpstreamBindConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpstreamBindConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser UpstreamBindConfig
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
                                       "source_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceAddress") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpstreamBindConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'sourceAddress") _x
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
instance Control.DeepSeq.NFData UpstreamBindConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpstreamBindConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpstreamBindConfig'sourceAddress x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.tcpKeepalive' @:: Lens' UpstreamConnectionOptions Proto.Envoy.Config.Core.V3.Address.TcpKeepalive@
         * 'Proto.Envoy.Config.Cluster.V3.Cluster_Fields.maybe'tcpKeepalive' @:: Lens' UpstreamConnectionOptions (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.TcpKeepalive)@ -}
data UpstreamConnectionOptions
  = UpstreamConnectionOptions'_constructor {_UpstreamConnectionOptions'tcpKeepalive :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.TcpKeepalive),
                                            _UpstreamConnectionOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpstreamConnectionOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpstreamConnectionOptions "tcpKeepalive" Proto.Envoy.Config.Core.V3.Address.TcpKeepalive where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamConnectionOptions'tcpKeepalive
           (\ x__ y__ -> x__ {_UpstreamConnectionOptions'tcpKeepalive = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField UpstreamConnectionOptions "maybe'tcpKeepalive" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.TcpKeepalive) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamConnectionOptions'tcpKeepalive
           (\ x__ y__ -> x__ {_UpstreamConnectionOptions'tcpKeepalive = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpstreamConnectionOptions where
  messageName _
    = Data.Text.pack
        "envoy.config.cluster.v3.UpstreamConnectionOptions"
  packedMessageDescriptor _
    = "\n\
      \\EMUpstreamConnectionOptions\DC2G\n\
      \\rtcp_keepalive\CAN\SOH \SOH(\v2\".envoy.config.core.v3.TcpKeepaliveR\ftcpKeepalive:-\154\197\136\RS(\n\
      \&envoy.api.v2.UpstreamConnectionOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tcpKeepalive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tcp_keepalive"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.TcpKeepalive)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tcpKeepalive")) ::
              Data.ProtoLens.FieldDescriptor UpstreamConnectionOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tcpKeepalive__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpstreamConnectionOptions'_unknownFields
        (\ x__ y__
           -> x__ {_UpstreamConnectionOptions'_unknownFields = y__})
  defMessage
    = UpstreamConnectionOptions'_constructor
        {_UpstreamConnectionOptions'tcpKeepalive = Prelude.Nothing,
         _UpstreamConnectionOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpstreamConnectionOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser UpstreamConnectionOptions
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
                                       "tcp_keepalive"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tcpKeepalive") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpstreamConnectionOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'tcpKeepalive") _x
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
instance Control.DeepSeq.NFData UpstreamConnectionOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpstreamConnectionOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpstreamConnectionOptions'tcpKeepalive x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%envoy/config/cluster/v3/cluster.proto\DC2\ETBenvoy.config.cluster.v3\SUB-envoy/config/cluster/v3/circuit_breaker.proto\SUB$envoy/config/cluster/v3/filter.proto\SUB/envoy/config/cluster/v3/outlier_detection.proto\SUB\"envoy/config/core/v3/address.proto\SUB\USenvoy/config/core/v3/base.proto\SUB(envoy/config/core/v3/config_source.proto\SUB$envoy/config/core/v3/extension.proto\SUB'envoy/config/core/v3/health_check.proto\SUB#envoy/config/core/v3/protocol.proto\SUB#envoy/config/core/v3/resolver.proto\SUB'envoy/config/endpoint/v3/endpoint.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\"xds/core/v3/collection_entry.proto\SUB#envoy/annotations/deprecation.proto\SUB\RSudpa/annotations/migrate.proto\SUB\USudpa/annotations/security.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"K\n\
    \\DC1ClusterCollection\DC26\n\
    \\aentries\CAN\SOH \SOH(\v2\FS.xds.core.v3.CollectionEntryR\aentries\"\204I\n\
    \\aCluster\DC2o\n\
    \\CANtransport_socket_matches\CAN+ \ETX(\v25.envoy.config.cluster.v3.Cluster.TransportSocketMatchR\SYNtransportSocketMatches\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2>\n\
    \\ralt_stat_name\CAN\FS \SOH(\tR\valtStatNameB\SUB\242\152\254\143\ENQ\DC4\n\
    \\DC2observability_name\DC2N\n\
    \\EOTtype\CAN\STX \SOH(\SO2..envoy.config.cluster.v3.Cluster.DiscoveryTypeH\NULR\EOTtypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2W\n\
    \\fcluster_type\CAN& \SOH(\v22.envoy.config.cluster.v3.Cluster.CustomClusterTypeH\NULR\vclusterType\DC2_\n\
    \\DC2eds_cluster_config\CAN\ETX \SOH(\v21.envoy.config.cluster.v3.Cluster.EdsClusterConfigR\DLEedsClusterConfig\DC2L\n\
    \\SIconnect_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\SOconnectTimeoutB\b\250B\ENQ\170\SOH\STX*\NUL\DC2o\n\
    \!per_connection_buffer_limit_bytes\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSperConnectionBufferLimitBytesB\a\138\147\183*\STX\DLE\SOH\DC2R\n\
    \\tlb_policy\CAN\ACK \SOH(\SO2).envoy.config.cluster.v3.Cluster.LbPolicyR\blbPolicyB\n\
    \\250B\a\130\SOH\EOT\DLE\SOH \a\DC2X\n\
    \\SIload_assignment\CAN! \SOH(\v2/.envoy.config.endpoint.v3.ClusterLoadAssignmentR\SOloadAssignment\DC2F\n\
    \\rhealth_checks\CAN\b \ETX(\v2!.envoy.config.core.v3.HealthCheckR\fhealthChecks\DC2[\n\
    \\ESCmax_requests_per_connection\CAN\t \SOH(\v2\FS.google.protobuf.UInt32ValueR\CANmaxRequestsPerConnection\DC2S\n\
    \\DLEcircuit_breakers\CAN\n\
    \ \SOH(\v2(.envoy.config.cluster.v3.CircuitBreakersR\SIcircuitBreakers\DC2\131\SOH\n\
    \\RSupstream_http_protocol_options\CAN. \SOH(\v21.envoy.config.core.v3.UpstreamHttpProtocolOptionsR\ESCupstreamHttpProtocolOptionsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2w\n\
    \\FScommon_http_protocol_options\CAN\GS \SOH(\v2).envoy.config.core.v3.HttpProtocolOptionsR\EMcommonHttpProtocolOptionsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2k\n\
    \\NAKhttp_protocol_options\CAN\r \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsR\DC3httpProtocolOptionsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2t\n\
    \\SYNhttp2_protocol_options\CAN\SO \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptionsB\DC2\CAN\SOH\138\147\183*\STX\DLE\SOH\146\199\134\216\EOT\ETX3.0\DC2\140\SOH\n\
    \ typed_extension_protocol_options\CAN$ \ETX(\v2C.envoy.config.cluster.v3.Cluster.TypedExtensionProtocolOptionsEntryR\GStypedExtensionProtocolOptions\DC2Q\n\
    \\DLEdns_refresh_rate\CAN\DLE \SOH(\v2\EM.google.protobuf.DurationR\SOdnsRefreshRateB\f\250B\t\170\SOH\ACK*\EOT\DLE\192\132=\DC2e\n\
    \\CANdns_failure_refresh_rate\CAN, \SOH(\v2,.envoy.config.cluster.v3.Cluster.RefreshRateR\NAKdnsFailureRefreshRate\DC2&\n\
    \\SIrespect_dns_ttl\CAN' \SOH(\bR\rrespectDnsTtl\DC2f\n\
    \\DC1dns_lookup_family\CAN\DC1 \SOH(\SO20.envoy.config.cluster.v3.Cluster.DnsLookupFamilyR\SIdnsLookupFamilyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2O\n\
    \\rdns_resolvers\CAN\DC2 \ETX(\v2\GS.envoy.config.core.v3.AddressR\fdnsResolversB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2A\n\
    \\ETBuse_tcp_for_dns_lookups\CAN- \SOH(\bR\DC3useTcpForDnsLookupsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2]\n\
    \\NAKdns_resolution_config\CAN5 \SOH(\v2).envoy.config.core.v3.DnsResolutionConfigR\DC3dnsResolutionConfig\DC2L\n\
    \\NAKwait_for_warm_on_init\CAN6 \SOH(\v2\SUB.google.protobuf.BoolValueR\DC1waitForWarmOnInit\DC2V\n\
    \\DC1outlier_detection\CAN\DC3 \SOH(\v2).envoy.config.cluster.v3.OutlierDetectionR\DLEoutlierDetection\DC2N\n\
    \\DLEcleanup_interval\CAN\DC4 \SOH(\v2\EM.google.protobuf.DurationR\SIcleanupIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2R\n\
    \\DC4upstream_bind_config\CAN\NAK \SOH(\v2 .envoy.config.core.v3.BindConfigR\DC2upstreamBindConfig\DC2Y\n\
    \\DLElb_subset_config\CAN\SYN \SOH(\v2/.envoy.config.cluster.v3.Cluster.LbSubsetConfigR\SOlbSubsetConfig\DC2b\n\
    \\DC3ring_hash_lb_config\CAN\ETB \SOH(\v21.envoy.config.cluster.v3.Cluster.RingHashLbConfigH\SOHR\DLEringHashLbConfig\DC2[\n\
    \\DLEmaglev_lb_config\CAN4 \SOH(\v2/.envoy.config.cluster.v3.Cluster.MaglevLbConfigH\SOHR\SOmaglevLbConfig\DC2k\n\
    \\SYNoriginal_dst_lb_config\CAN\" \SOH(\v24.envoy.config.cluster.v3.Cluster.OriginalDstLbConfigH\SOHR\DC3originalDstLbConfig\DC2n\n\
    \\ETBleast_request_lb_config\CAN% \SOH(\v25.envoy.config.cluster.v3.Cluster.LeastRequestLbConfigH\SOHR\DC4leastRequestLbConfig\DC2Y\n\
    \\DLEcommon_lb_config\CAN\ESC \SOH(\v2/.envoy.config.cluster.v3.Cluster.CommonLbConfigR\SOcommonLbConfig\DC2P\n\
    \\DLEtransport_socket\CAN\CAN \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocket\DC2:\n\
    \\bmetadata\CAN\EM \SOH(\v2\RS.envoy.config.core.v3.MetadataR\bmetadata\DC2u\n\
    \\DC2protocol_selection\CAN\SUB \SOH(\SO29.envoy.config.cluster.v3.Cluster.ClusterProtocolSelectionR\DC1protocolSelectionB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2r\n\
    \\ESCupstream_connection_options\CAN\RS \SOH(\v22.envoy.config.cluster.v3.UpstreamConnectionOptionsR\EMupstreamConnectionOptions\DC2U\n\
    \(close_connections_on_host_health_failure\CAN\US \SOH(\bR#closeConnectionsOnHostHealthFailure\DC2@\n\
    \\GSignore_health_on_host_removal\CAN  \SOH(\bR\EMignoreHealthOnHostRemoval\DC29\n\
    \\afilters\CAN( \ETX(\v2\US.envoy.config.cluster.v3.FilterR\afilters\DC2`\n\
    \\NAKload_balancing_policy\CAN) \SOH(\v2,.envoy.config.cluster.v3.LoadBalancingPolicyR\DC3loadBalancingPolicy\DC2A\n\
    \\n\
    \lrs_server\CAN* \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tlrsServer\DC2?\n\
    \\NAKtrack_timeout_budgets\CAN/ \SOH(\bR\DC3trackTimeoutBudgetsB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2S\n\
    \\SIupstream_config\CAN0 \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\SOupstreamConfig\DC2Z\n\
    \\DC3track_cluster_stats\CAN1 \SOH(\v2*.envoy.config.cluster.v3.TrackClusterStatsR\DC1trackClusterStats\DC2^\n\
    \\DC1preconnect_policy\CAN2 \SOH(\v21.envoy.config.cluster.v3.Cluster.PreconnectPolicyR\DLEpreconnectPolicy\DC2X\n\
    \)connection_pool_per_downstream_connection\CAN3 \SOH(\bR%connectionPoolPerDownstreamConnection\SUB\230\SOH\n\
    \\DC4TransportSocketMatch\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2-\n\
    \\ENQmatch\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ENQmatch\DC2P\n\
    \\DLEtransport_socket\CAN\ETX \SOH(\v2%.envoy.config.core.v3.TransportSocketR\SItransportSocket:0\154\197\136\RS+\n\
    \)envoy.api.v2.Cluster.TransportSocketMatch\SUB\152\SOH\n\
    \\DC1CustomClusterType\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC27\n\
    \\ftyped_config\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfig:-\154\197\136\RS(\n\
    \&envoy.api.v2.Cluster.CustomClusterType\SUB\166\SOH\n\
    \\DLEEdsClusterConfig\DC2A\n\
    \\n\
    \eds_config\CAN\SOH \SOH(\v2\".envoy.config.core.v3.ConfigSourceR\tedsConfig\DC2!\n\
    \\fservice_name\CAN\STX \SOH(\tR\vserviceName:,\154\197\136\RS'\n\
    \%envoy.api.v2.Cluster.EdsClusterConfig\SUB\192\b\n\
    \\SOLbSubsetConfig\DC2y\n\
    \\SIfallback_policy\CAN\SOH \SOH(\SO2F.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetFallbackPolicyR\SOfallbackPolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2>\n\
    \\SOdefault_subset\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\rdefaultSubset\DC2k\n\
    \\DLEsubset_selectors\CAN\ETX \ETX(\v2@.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelectorR\SIsubsetSelectors\DC22\n\
    \\NAKlocality_weight_aware\CAN\EOT \SOH(\bR\DC3localityWeightAware\DC22\n\
    \\NAKscale_locality_weight\CAN\ENQ \SOH(\bR\DC3scaleLocalityWeight\DC2$\n\
    \\SOpanic_mode_any\CAN\ACK \SOH(\bR\fpanicModeAny\DC2\RS\n\
    \\vlist_as_any\CAN\a \SOH(\bR\tlistAsAny\SUB\218\ETX\n\
    \\DLELbSubsetSelector\DC2\DC2\n\
    \\EOTkeys\CAN\SOH \ETX(\tR\EOTkeys\DC23\n\
    \\SYNsingle_host_per_subset\CAN\EOT \SOH(\bR\DC3singleHostPerSubset\DC2\146\SOH\n\
    \\SIfallback_policy\CAN\STX \SOH(\SO2_.envoy.config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicyR\SOfallbackPolicyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC20\n\
    \\DC4fallback_keys_subset\CAN\ETX \ETX(\tR\DC2fallbackKeysSubset\"y\n\
    \\RSLbSubsetSelectorFallbackPolicy\DC2\SI\n\
    \\vNOT_DEFINED\DLE\NUL\DC2\SI\n\
    \\vNO_FALLBACK\DLE\SOH\DC2\DLE\n\
    \\fANY_ENDPOINT\DLE\STX\DC2\DC2\n\
    \\SODEFAULT_SUBSET\DLE\ETX\DC2\SI\n\
    \\vKEYS_SUBSET\DLE\EOT:;\154\197\136\RS6\n\
    \4envoy.api.v2.Cluster.LbSubsetConfig.LbSubsetSelector\"O\n\
    \\SYNLbSubsetFallbackPolicy\DC2\SI\n\
    \\vNO_FALLBACK\DLE\NUL\DC2\DLE\n\
    \\fANY_ENDPOINT\DLE\SOH\DC2\DC2\n\
    \\SODEFAULT_SUBSET\DLE\STX:*\154\197\136\RS%\n\
    \#envoy.api.v2.Cluster.LbSubsetConfig\SUB\231\SOH\n\
    \\DC4LeastRequestLbConfig\DC2H\n\
    \\fchoice_count\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\vchoiceCountB\a\250B\EOT*\STX(\STX\DC2S\n\
    \\DC3active_request_bias\CAN\STX \SOH(\v2#.envoy.config.core.v3.RuntimeDoubleR\DC1activeRequestBias:0\154\197\136\RS+\n\
    \)envoy.api.v2.Cluster.LeastRequestLbConfig\SUB\145\ETX\n\
    \\DLERingHashLbConfig\DC2T\n\
    \\DC1minimum_ring_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt64ValueR\SIminimumRingSizeB\n\
    \\250B\a2\ENQ\CAN\128\128\128\EOT\DC2m\n\
    \\rhash_function\CAN\ETX \SOH(\SO2>.envoy.config.cluster.v3.Cluster.RingHashLbConfig.HashFunctionR\fhashFunctionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2T\n\
    \\DC1maximum_ring_size\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt64ValueR\SImaximumRingSizeB\n\
    \\250B\a2\ENQ\CAN\128\128\128\EOT\".\n\
    \\fHashFunction\DC2\v\n\
    \\aXX_HASH\DLE\NUL\DC2\DC1\n\
    \\rMURMUR_HASH_2\DLE\SOH:,\154\197\136\RS'\n\
    \%envoy.api.v2.Cluster.RingHashLbConfigJ\EOT\b\STX\DLE\ETX\SUBY\n\
    \\SOMaglevLbConfig\DC2G\n\
    \\n\
    \table_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt64ValueR\ttableSizeB\n\
    \\250B\a2\ENQ\CAN\203\150\177\STX\SUBn\n\
    \\DC3OriginalDstLbConfig\DC2&\n\
    \\SIuse_http_header\CAN\SOH \SOH(\bR\ruseHttpHeader:/\154\197\136\RS*\n\
    \(envoy.api.v2.Cluster.OriginalDstLbConfig\SUB\252\n\
    \\n\
    \\SOCommonLbConfig\DC2N\n\
    \\ETBhealthy_panic_threshold\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\NAKhealthyPanicThreshold\DC2t\n\
    \\DC4zone_aware_lb_config\CAN\STX \SOH(\v2A.envoy.config.cluster.v3.Cluster.CommonLbConfig.ZoneAwareLbConfigH\NULR\DC1zoneAwareLbConfig\DC2\137\SOH\n\
    \\ESClocality_weighted_lb_config\CAN\ETX \SOH(\v2H.envoy.config.cluster.v3.Cluster.CommonLbConfig.LocalityWeightedLbConfigH\NULR\CANlocalityWeightedLbConfig\DC2I\n\
    \\DC3update_merge_window\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC1updateMergeWindow\DC2C\n\
    \\USignore_new_hosts_until_first_hc\CAN\ENQ \SOH(\bR\SUBignoreNewHostsUntilFirstHc\DC2M\n\
    \$close_connections_on_host_set_change\CAN\ACK \SOH(\bR\UScloseConnectionsOnHostSetChange\DC2\138\SOH\n\
    \\FSconsistent_hashing_lb_config\CAN\a \SOH(\v2I.envoy.config.cluster.v3.Cluster.CommonLbConfig.ConsistentHashingLbConfigR\EMconsistentHashingLbConfig\SUB\141\STX\n\
    \\DC1ZoneAwareLbConfig\DC2?\n\
    \\SIrouting_enabled\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\SOroutingEnabled\DC2F\n\
    \\DLEmin_cluster_size\CAN\STX \SOH(\v2\FS.google.protobuf.UInt64ValueR\SOminClusterSize\DC21\n\
    \\NAKfail_traffic_on_panic\CAN\ETX \SOH(\bR\DC2failTrafficOnPanic:<\154\197\136\RS7\n\
    \5envoy.api.v2.Cluster.CommonLbConfig.ZoneAwareLbConfig\SUB_\n\
    \\CANLocalityWeightedLbConfig:C\154\197\136\RS>\n\
    \<envoy.api.v2.Cluster.CommonLbConfig.LocalityWeightedLbConfig\SUB\241\SOH\n\
    \\EMConsistentHashingLbConfig\DC27\n\
    \\CANuse_hostname_for_hashing\CAN\SOH \SOH(\bR\NAKuseHostnameForHashing\DC2U\n\
    \\DC3hash_balance_factor\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC1hashBalanceFactorB\a\250B\EOT*\STX(d:D\154\197\136\RS?\n\
    \=envoy.api.v2.Cluster.CommonLbConfig.ConsistentHashingLbConfigB\ESC\n\
    \\EMlocality_config_specifier:*\154\197\136\RS%\n\
    \#envoy.api.v2.Cluster.CommonLbConfig\SUB\210\SOH\n\
    \\vRefreshRate\DC2N\n\
    \\rbase_interval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\fbaseIntervalB\SO\250B\v\170\SOH\b\b\SOH*\EOT\DLE\192\132=\DC2J\n\
    \\fmax_interval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\vmaxIntervalB\f\250B\t\170\SOH\ACK*\EOT\DLE\192\132=:'\154\197\136\RS\"\n\
    \ envoy.api.v2.Cluster.RefreshRate\SUB\131\STX\n\
    \\DLEPreconnectPolicy\DC2x\n\
    \\GSper_upstream_preconnect_ratio\CAN\SOH \SOH(\v2\FS.google.protobuf.DoubleValueR\SUBperUpstreamPreconnectRatioB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\b@)\NUL\NUL\NUL\NUL\NUL\NUL\240?\DC2u\n\
    \\ESCpredictive_preconnect_ratio\CAN\STX \SOH(\v2\FS.google.protobuf.DoubleValueR\EMpredictivePreconnectRatioB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NUL\b@)\NUL\NUL\NUL\NUL\NUL\NUL\240?\SUBf\n\
    \\"TypedExtensionProtocolOptionsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2*\n\
    \\ENQvalue\CAN\STX \SOH(\v2\DC4.google.protobuf.AnyR\ENQvalue:\STX8\SOH\"W\n\
    \\rDiscoveryType\DC2\n\
    \\n\
    \\ACKSTATIC\DLE\NUL\DC2\SO\n\
    \\n\
    \STRICT_DNS\DLE\SOH\DC2\SI\n\
    \\vLOGICAL_DNS\DLE\STX\DC2\a\n\
    \\ETXEDS\DLE\ETX\DC2\DLE\n\
    \\fORIGINAL_DST\DLE\EOT\"\164\SOH\n\
    \\bLbPolicy\DC2\SI\n\
    \\vROUND_ROBIN\DLE\NUL\DC2\DC1\n\
    \\rLEAST_REQUEST\DLE\SOH\DC2\r\n\
    \\tRING_HASH\DLE\STX\DC2\n\
    \\n\
    \\ACKRANDOM\DLE\ETX\DC2\n\
    \\n\
    \\ACKMAGLEV\DLE\ENQ\DC2\DC4\n\
    \\DLECLUSTER_PROVIDED\DLE\ACK\DC2 \n\
    \\FSLOAD_BALANCING_POLICY_CONFIG\DLE\a\"\EOT\b\EOT\DLE\EOT*\SIORIGINAL_DST_LB\"5\n\
    \\SIDnsLookupFamily\DC2\b\n\
    \\EOTAUTO\DLE\NUL\DC2\v\n\
    \\aV4_ONLY\DLE\SOH\DC2\v\n\
    \\aV6_ONLY\DLE\STX\"T\n\
    \\CANClusterProtocolSelection\DC2\ESC\n\
    \\ETBUSE_CONFIGURED_PROTOCOL\DLE\NUL\DC2\ESC\n\
    \\ETBUSE_DOWNSTREAM_PROTOCOL\DLE\SOHB\CAN\n\
    \\SYNcluster_discovery_typeB\v\n\
    \\tlb_config:\ESC\154\197\136\RS\SYN\n\
    \\DC4envoy.api.v2.ClusterJ\EOT\b\f\DLE\rJ\EOT\b\SI\DLE\DLEJ\EOT\b\a\DLE\bJ\EOT\b\v\DLE\fJ\EOT\b#\DLE$R\ENQhostsR\vtls_contextR\SUBextension_protocol_options\"\165\STX\n\
    \\DC3LoadBalancingPolicy\DC2O\n\
    \\bpolicies\CAN\SOH \ETX(\v23.envoy.config.cluster.v3.LoadBalancingPolicy.PolicyR\bpolicies\SUB\147\SOH\n\
    \\ACKPolicy\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC27\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyR\vtypedConfig:.\154\197\136\RS)\n\
    \'envoy.api.v2.LoadBalancingPolicy.PolicyJ\EOT\b\STX\DLE\ETXR\ACKconfig:'\154\197\136\RS\"\n\
    \ envoy.api.v2.LoadBalancingPolicy\"\130\SOH\n\
    \\DC2UpstreamBindConfig\DC2D\n\
    \\SOsource_address\CAN\SOH \SOH(\v2\GS.envoy.config.core.v3.AddressR\rsourceAddress:&\154\197\136\RS!\n\
    \\USenvoy.api.v2.UpstreamBindConfig\"\147\SOH\n\
    \\EMUpstreamConnectionOptions\DC2G\n\
    \\rtcp_keepalive\CAN\SOH \SOH(\v2\".envoy.config.core.v3.TcpKeepaliveR\ftcpKeepalive:-\154\197\136\RS(\n\
    \&envoy.api.v2.UpstreamConnectionOptions\"r\n\
    \\DC1TrackClusterStats\DC2'\n\
    \\SItimeout_budgets\CAN\SOH \SOH(\bR\SOtimeoutBudgets\DC24\n\
    \\SYNrequest_response_sizes\CAN\STX \SOH(\bR\DC4requestResponseSizesB?\n\
    \%io.envoyproxy.envoy.config.cluster.v3B\fClusterProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\208\186\ETX\n\
    \\a\DC2\ENQ\NUL\NUL\229\b\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL7\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL9\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL,\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL)\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL2\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL.\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\v\NUL1\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\f\NUL-\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\r\NUL-\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\SO\NUL1\n\
    \\t\n\
    \\STX\ETX\v\DC2\ETX\SI\NUL%\n\
    \\t\n\
    \\STX\ETX\f\DC2\ETX\DC1\NUL#\n\
    \\t\n\
    \\STX\ETX\r\DC2\ETX\DC2\NUL(\n\
    \\t\n\
    \\STX\ETX\SO\DC2\ETX\DC3\NUL&\n\
    \\t\n\
    \\STX\ETX\SI\DC2\ETX\DC4\NUL(\n\
    \\t\n\
    \\STX\ETX\DLE\DC2\ETX\SYN\NUL,\n\
    \\t\n\
    \\STX\ETX\DC1\DC2\ETX\CAN\NUL-\n\
    \\t\n\
    \\STX\ETX\DC2\DC2\ETX\EM\NUL(\n\
    \\t\n\
    \\STX\ETX\DC3\DC2\ETX\SUB\NUL)\n\
    \\t\n\
    \\STX\ETX\DC4\DC2\ETX\ESC\NUL'\n\
    \\t\n\
    \\STX\ETX\NAK\DC2\ETX\FS\NUL+\n\
    \\t\n\
    \\STX\ETX\SYN\DC2\ETX\GS\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\US\NUL>\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\US\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX \NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX \NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX!\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX!\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\"\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\"\NULF\n\
    \\156\SOH\n\
    \\STX\EOT\NUL\DC2\EOT(\NUL*\SOH\SUBd Cluster list collections. Entries are *Cluster* resources or references.\n\
    \ [#not-implemented-hide:]\n\
    \2* [#protodoc-title: Cluster configuration]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX(\b\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX)\STX*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX)\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX)\RS%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX)()\n\
    \S\n\
    \\STX\EOT\SOH\DC2\ENQ.\NUL\156\b\SOH\SUBF Configuration for a single upstream cluster.\n\
    \ [#next-free-field: 55]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX.\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX/\STXV\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX/\STXV\n\
    \\128\SOH\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\EOT3\STXJ\ETX\SUBr Refer to :ref:`service discovery type <arch_overview_service_discovery_types>`\n\
    \ for an explanation on each type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETX3\a\DC4\n\
    \}\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETX6\EOT\SI\SUBn Refer to the :ref:`static discovery type<arch_overview_service_discovery_types_static>`\n\
    \ for an explanation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETX6\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETX6\r\SO\n\
    \\134\SOH\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETX;\EOT\DC3\SUBw Refer to the :ref:`strict DNS discovery\n\
    \ type<arch_overview_service_discovery_types_strict_dns>`\n\
    \ for an explanation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETX;\EOT\SO\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETX;\DC1\DC2\n\
    \\136\SOH\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\STX\DC2\ETX@\EOT\DC4\SUBy Refer to the :ref:`logical DNS discovery\n\
    \ type<arch_overview_service_discovery_types_logical_dns>`\n\
    \ for an explanation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\SOH\DC2\ETX@\EOT\SI\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\STX\DC2\ETX@\DC2\DC3\n\
    \{\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\ETX\DC2\ETXD\EOT\f\SUBl Refer to the :ref:`service discovery type<arch_overview_service_discovery_types_eds>`\n\
    \ for an explanation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\ETX\SOH\DC2\ETXD\EOT\a\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\ETX\STX\DC2\ETXD\n\
    \\v\n\
    \\155\SOH\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\EOT\DC2\ETXI\EOT\NAK\SUB\139\SOH Refer to the :ref:`original destination discovery\n\
    \ type<arch_overview_service_discovery_types_original_destination>`\n\
    \ for an explanation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\EOT\SOH\DC2\ETXI\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\EOT\STX\DC2\ETXI\DC3\DC4\n\
    \\149\SOH\n\
    \\EOT\EOT\SOH\EOT\SOH\DC2\EOTN\STXv\ETX\SUB\134\SOH Refer to :ref:`load balancer type <arch_overview_load_balancing_types>` architecture\n\
    \ overview section for information on each type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\SOH\SOH\DC2\ETXN\a\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\SOH\t\DC2\ETXO\EOT\SI\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\SOH\t\NUL\DC2\ETXO\r\SO\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\t\NUL\SOH\DC2\ETXO\r\SO\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\t\NUL\STX\DC2\ETXO\r\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\SOH\n\
    \\DC2\ETXQ\EOT\US\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\SOH\n\
    \\NUL\DC2\ETXQ\r\RS\n\
    \\140\SOH\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\NUL\DC2\ETXV\EOT\DC4\SUB} Refer to the :ref:`round robin load balancing\n\
    \ policy<arch_overview_load_balancing_types_round_robin>`\n\
    \ for an explanation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\NUL\SOH\DC2\ETXV\EOT\SI\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\NUL\STX\DC2\ETXV\DC2\DC3\n\
    \\145\SOH\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\SOH\DC2\ETX[\EOT\SYN\SUB\129\SOH Refer to the :ref:`least request load balancing\n\
    \ policy<arch_overview_load_balancing_types_least_request>`\n\
    \ for an explanation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\SOH\SOH\DC2\ETX[\EOT\DC1\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\SOH\STX\DC2\ETX[\DC4\NAK\n\
    \\136\SOH\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\STX\DC2\ETX`\EOT\DC2\SUBy Refer to the :ref:`ring hash load balancing\n\
    \ policy<arch_overview_load_balancing_types_ring_hash>`\n\
    \ for an explanation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\STX\SOH\DC2\ETX`\EOT\r\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\STX\STX\DC2\ETX`\DLE\DC1\n\
    \\130\SOH\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\ETX\DC2\ETXe\EOT\SI\SUBs Refer to the :ref:`random load balancing\n\
    \ policy<arch_overview_load_balancing_types_random>`\n\
    \ for an explanation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\ETX\SOH\DC2\ETXe\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\ETX\STX\DC2\ETXe\r\SO\n\
    \\129\SOH\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\EOT\DC2\ETXi\EOT\SI\SUBr Refer to the :ref:`Maglev load balancing policy<arch_overview_load_balancing_types_maglev>`\n\
    \ for an explanation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\EOT\SOH\DC2\ETXi\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\EOT\STX\DC2\ETXi\r\SO\n\
    \\216\SOH\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\ENQ\DC2\ETXn\EOT\EM\SUB\200\SOH This load balancer type must be specified if the configured cluster provides a cluster\n\
    \ specific load balancer. Consult the configured cluster's documentation for whether to set\n\
    \ this option or not.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\ENQ\SOH\DC2\ETXn\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\ENQ\STX\DC2\ETXn\ETB\CAN\n\
    \\129\ETX\n\
    \\ACK\EOT\SOH\EOT\SOH\STX\ACK\DC2\ETXu\EOT%\SUB\241\STX [#not-implemented-hide:] Use the new :ref:`load_balancing_policy\n\
    \ <envoy_v3_api_field_config.cluster.v3.Cluster.load_balancing_policy>` field to determine the LB policy.\n\
    \ [#next-major-version: In the v3 API, we should consider deprecating the lb_policy field\n\
    \ and instead using the new load_balancing_policy field as the one and only mechanism for\n\
    \ configuring this.]\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\ACK\SOH\DC2\ETXu\EOT \n\
    \\SO\n\
    \\a\EOT\SOH\EOT\SOH\STX\ACK\STX\DC2\ETXu#$\n\
    \\129\ENQ\n\
    \\EOT\EOT\SOH\EOT\STX\DC2\ACK\130\SOH\STX\134\SOH\ETX\SUB\240\EOT When V4_ONLY is selected, the DNS resolver will only perform a lookup for\n\
    \ addresses in the IPv4 family. If V6_ONLY is selected, the DNS resolver will\n\
    \ only perform a lookup for addresses in the IPv6 family. If AUTO is\n\
    \ specified, the DNS resolver will first perform a lookup for addresses in\n\
    \ the IPv6 family and fallback to a lookup for addresses in the IPv4 family.\n\
    \ For cluster types other than\n\
    \ :ref:`STRICT_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.STRICT_DNS>` and\n\
    \ :ref:`LOGICAL_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.LOGICAL_DNS>`,\n\
    \ this setting is\n\
    \ ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\EOT\STX\SOH\DC2\EOT\130\SOH\a\SYN\n\
    \\SO\n\
    \\ACK\EOT\SOH\EOT\STX\STX\NUL\DC2\EOT\131\SOH\EOT\r\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\STX\STX\NUL\SOH\DC2\EOT\131\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\STX\STX\NUL\STX\DC2\EOT\131\SOH\v\f\n\
    \\SO\n\
    \\ACK\EOT\SOH\EOT\STX\STX\SOH\DC2\EOT\132\SOH\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\STX\STX\SOH\SOH\DC2\EOT\132\SOH\EOT\v\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\STX\STX\SOH\STX\DC2\EOT\132\SOH\SO\SI\n\
    \\SO\n\
    \\ACK\EOT\SOH\EOT\STX\STX\STX\DC2\EOT\133\SOH\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\STX\STX\STX\SOH\DC2\EOT\133\SOH\EOT\v\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\STX\STX\STX\STX\DC2\EOT\133\SOH\SO\SI\n\
    \\SO\n\
    \\EOT\EOT\SOH\EOT\ETX\DC2\ACK\136\SOH\STX\144\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\SOH\EOT\ETX\SOH\DC2\EOT\136\SOH\a\US\n\
    \\145\STX\n\
    \\ACK\EOT\SOH\EOT\ETX\STX\NUL\DC2\EOT\140\SOH\EOT \SUB\128\STX Cluster can only operate on one of the possible upstream protocols (HTTP1.1, HTTP2).\n\
    \ If :ref:`http2_protocol_options <envoy_v3_api_field_config.cluster.v3.Cluster.http2_protocol_options>` are\n\
    \ present, HTTP2 will be used, otherwise HTTP1.1 will be used.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\ETX\STX\NUL\SOH\DC2\EOT\140\SOH\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\ETX\STX\NUL\STX\DC2\EOT\140\SOH\RS\US\n\
    \d\n\
    \\ACK\EOT\SOH\EOT\ETX\STX\SOH\DC2\EOT\143\SOH\EOT \SUBT Use HTTP1.1 or HTTP2, depending on which one is used on the downstream connection.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\ETX\STX\SOH\SOH\DC2\EOT\143\SOH\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\SOH\EOT\ETX\STX\SOH\STX\DC2\EOT\143\SOH\RS\US\n\
    \\132\SOH\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\ACK\148\SOH\STX\165\SOH\ETX\SUBt TransportSocketMatch specifies what transport socket config will be used\n\
    \ when the match conditions are satisfied.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\EOT\148\SOH\n\
    \\RS\n\
    \\SI\n\
    \\ENQ\EOT\SOH\ETX\NUL\a\DC2\ACK\149\SOH\EOT\150\SOH4\n\
    \\DC4\n\
    \\n\
    \\EOT\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\149\SOH\EOT\150\SOH4\n\
    \B\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\EOT\153\SOH\EOT=\SUB2 The name of the match, used in stats generation.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ENQ\DC2\EOT\153\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\EOT\153\SOH\v\SI\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\EOT\153\SOH\DC2\DC3\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\b\DC2\EOT\153\SOH\DC4<\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\NUL\b\175\b\SO\DC2\EOT\153\SOH\NAK;\n\
    \\202\STX\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\SOH\DC2\EOT\160\SOH\EOT%\SUB\185\STX Optional endpoint metadata match criteria.\n\
    \ The connection to the endpoint with metadata matching what is set in this field\n\
    \ will use the transport socket configuration specified here.\n\
    \ The endpoint's metadata entry in *envoy.transport_socket_match* is used to match\n\
    \ against the values specified in this field.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ACK\DC2\EOT\160\SOH\EOT\SUB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\SOH\DC2\EOT\160\SOH\ESC \n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\SOH\ETX\DC2\EOT\160\SOH#$\n\
    \u\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\STX\DC2\EOT\164\SOH\EOT1\SUBe The configuration of the transport socket.\n\
    \ [#extension-category: envoy.transport_sockets.upstream]\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\STX\ACK\DC2\EOT\164\SOH\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\STX\SOH\DC2\EOT\164\SOH\FS,\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\NUL\STX\STX\ETX\DC2\EOT\164\SOH/0\n\
    \(\n\
    \\EOT\EOT\SOH\ETX\SOH\DC2\ACK\168\SOH\STX\179\SOH\ETX\SUB\CAN Extended cluster type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\SOH\SOH\DC2\EOT\168\SOH\n\
    \\ESC\n\
    \\SI\n\
    \\ENQ\EOT\SOH\ETX\SOH\a\DC2\ACK\169\SOH\EOT\170\SOH1\n\
    \\DC4\n\
    \\n\
    \\EOT\SOH\ETX\SOH\a\211\136\225\ETX\SOH\DC2\ACK\169\SOH\EOT\170\SOH1\n\
    \g\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\NUL\DC2\EOT\173\SOH\EOT=\SUBW The type of the cluster to instantiate. The name must match a supported cluster type.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ENQ\DC2\EOT\173\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\SOH\DC2\EOT\173\SOH\v\SI\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ETX\DC2\EOT\173\SOH\DC2\DC3\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\b\DC2\EOT\173\SOH\DC4<\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\SOH\STX\NUL\b\175\b\SO\DC2\EOT\173\SOH\NAK;\n\
    \\191\SOH\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\SOH\DC2\EOT\178\SOH\EOT)\SUB\174\SOH Cluster specific configuration which depends on the cluster being instantiated.\n\
    \ See the supported cluster for further documentation.\n\
    \ [#extension-category: envoy.clusters]\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ACK\DC2\EOT\178\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\SOH\DC2\EOT\178\SOH\CAN$\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ETX\DC2\EOT\178\SOH'(\n\
    \8\n\
    \\EOT\EOT\SOH\ETX\STX\DC2\ACK\182\SOH\STX\193\SOH\ETX\SUB( Only valid when discovery type is EDS.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\STX\SOH\DC2\EOT\182\SOH\n\
    \\SUB\n\
    \\SI\n\
    \\ENQ\EOT\SOH\ETX\STX\a\DC2\ACK\183\SOH\EOT\184\SOH0\n\
    \\DC4\n\
    \\n\
    \\EOT\SOH\ETX\STX\a\211\136\225\ETX\SOH\DC2\ACK\183\SOH\EOT\184\SOH0\n\
    \O\n\
    \\ACK\EOT\SOH\ETX\STX\STX\NUL\DC2\EOT\187\SOH\EOT(\SUB? Configuration for the source of EDS updates for this Cluster.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ACK\DC2\EOT\187\SOH\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\SOH\DC2\EOT\187\SOH\EM#\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ETX\DC2\EOT\187\SOH&'\n\
    \\195\SOH\n\
    \\ACK\EOT\SOH\ETX\STX\STX\SOH\DC2\EOT\192\SOH\EOT\FS\SUB\178\SOH Optional alternative to cluster name to present to EDS. This does not\n\
    \ have the same restrictions as cluster name, i.e. it may be arbitrary\n\
    \ length. This may be a xdstp:// URL.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\ENQ\DC2\EOT\192\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\SOH\DC2\EOT\192\SOH\v\ETB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\ETX\DC2\EOT\192\SOH\SUB\ESC\n\
    \\185\SOH\n\
    \\EOT\EOT\SOH\ETX\ETX\DC2\ACK\198\SOH\STX\209\STX\ETX\SUB\168\SOH Optionally divide the endpoints in this cluster into subsets defined by\n\
    \ endpoint metadata and selected by route and weighted cluster metadata.\n\
    \ [#next-free-field: 8]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\ETX\SOH\DC2\EOT\198\SOH\n\
    \\CAN\n\
    \\SI\n\
    \\ENQ\EOT\SOH\ETX\ETX\a\DC2\ACK\199\SOH\EOT\200\SOH.\n\
    \\DC4\n\
    \\n\
    \\EOT\SOH\ETX\ETX\a\211\136\225\ETX\SOH\DC2\ACK\199\SOH\EOT\200\SOH.\n\
    \\213\STX\n\
    \\ACK\EOT\SOH\ETX\ETX\EOT\NUL\DC2\ACK\207\SOH\EOT\211\SOH\ENQ\SUB\194\STX If NO_FALLBACK is selected, a result\n\
    \ equivalent to no healthy hosts is reported. If ANY_ENDPOINT is selected,\n\
    \ any cluster endpoint may be returned (subject to policy, health checks,\n\
    \ etc). If DEFAULT_SUBSET is selected, load balancing is performed over the\n\
    \ endpoints matching the values from the default_subset field.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\EOT\NUL\SOH\DC2\EOT\207\SOH\t\US\n\
    \\DLE\n\
    \\b\EOT\SOH\ETX\ETX\EOT\NUL\STX\NUL\DC2\EOT\208\SOH\ACK\SYN\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\EOT\NUL\STX\NUL\SOH\DC2\EOT\208\SOH\ACK\DC1\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\EOT\NUL\STX\NUL\STX\DC2\EOT\208\SOH\DC4\NAK\n\
    \\DLE\n\
    \\b\EOT\SOH\ETX\ETX\EOT\NUL\STX\SOH\DC2\EOT\209\SOH\ACK\ETB\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\EOT\NUL\STX\SOH\SOH\DC2\EOT\209\SOH\ACK\DC2\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\EOT\NUL\STX\SOH\STX\DC2\EOT\209\SOH\NAK\SYN\n\
    \\DLE\n\
    \\b\EOT\SOH\ETX\ETX\EOT\NUL\STX\STX\DC2\EOT\210\SOH\ACK\EM\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\EOT\NUL\STX\STX\SOH\DC2\EOT\210\SOH\ACK\DC4\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\EOT\NUL\STX\STX\STX\DC2\EOT\210\SOH\ETB\CAN\n\
    \/\n\
    \\ACK\EOT\SOH\ETX\ETX\ETX\NUL\DC2\ACK\214\SOH\EOT\146\STX\ENQ\SUB\GS Specifications for subsets.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\ETX\NUL\SOH\DC2\EOT\214\SOH\f\FS\n\
    \\DC1\n\
    \\a\EOT\SOH\ETX\ETX\ETX\NUL\a\DC2\ACK\215\SOH\ACK\216\SOHA\n\
    \\SYN\n\
    \\f\EOT\SOH\ETX\ETX\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\215\SOH\ACK\216\SOHA\n\
    \P\n\
    \\b\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\DC2\ACK\219\SOH\ACK\240\SOH\a\SUB< Allows to override top level fallback policy per selector.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\SOH\DC2\EOT\219\SOH\v)\n\
    \V\n\
    \\n\
    \\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\NUL\DC2\EOT\221\SOH\b\CAN\SUBB If NOT_DEFINED top level config fallback policy is used instead.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\EOT\221\SOH\b\DC3\n\
    \\DC3\n\
    \\v\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\EOT\221\SOH\SYN\ETB\n\
    \f\n\
    \\n\
    \\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\SOH\DC2\EOT\224\SOH\b\CAN\SUBR If NO_FALLBACK is selected, a result equivalent to no healthy hosts is reported.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\EOT\224\SOH\b\DC3\n\
    \\DC3\n\
    \\v\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\EOT\224\SOH\SYN\ETB\n\
    \\129\SOH\n\
    \\n\
    \\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\STX\DC2\EOT\228\SOH\b\EM\SUBm If ANY_ENDPOINT is selected, any cluster endpoint may be returned\n\
    \ (subject to policy, health checks, etc).\n\
    \\n\
    \\DC3\n\
    \\v\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\STX\SOH\DC2\EOT\228\SOH\b\DC4\n\
    \\DC3\n\
    \\v\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\STX\STX\DC2\EOT\228\SOH\ETB\CAN\n\
    \\152\SOH\n\
    \\n\
    \\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\ETX\DC2\EOT\232\SOH\b\ESC\SUB\131\SOH If DEFAULT_SUBSET is selected, load balancing is performed over the\n\
    \ endpoints matching the values from the default_subset field.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\ETX\SOH\DC2\EOT\232\SOH\b\SYN\n\
    \\DC3\n\
    \\v\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\ETX\STX\DC2\EOT\232\SOH\EM\SUB\n\
    \\253\STX\n\
    \\n\
    \\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\EOT\DC2\EOT\239\SOH\b\CAN\SUB\232\STX If KEYS_SUBSET is selected, subset selector matching is performed again with metadata\n\
    \ keys reduced to\n\
    \ :ref:`fallback_keys_subset<envoy_v3_api_field_config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.fallback_keys_subset>`.\n\
    \ It allows for a fallback to a different, less specific selector if some of the keys of\n\
    \ the selector are considered optional.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\EOT\SOH\DC2\EOT\239\SOH\b\DC3\n\
    \\DC3\n\
    \\v\EOT\SOH\ETX\ETX\ETX\NUL\EOT\NUL\STX\EOT\STX\DC2\EOT\239\SOH\SYN\ETB\n\
    \M\n\
    \\b\EOT\SOH\ETX\ETX\ETX\NUL\STX\NUL\DC2\EOT\243\SOH\ACK\US\SUB; List of keys to match with the weighted cluster metadata.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\NUL\EOT\DC2\EOT\243\SOH\ACK\SO\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\NUL\ENQ\DC2\EOT\243\SOH\SI\NAK\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\NUL\SOH\DC2\EOT\243\SOH\SYN\SUB\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\NUL\ETX\DC2\EOT\243\SOH\GS\RS\n\
    \\225\ACK\n\
    \\b\EOT\SOH\ETX\ETX\ETX\NUL\STX\SOH\DC2\EOT\129\STX\ACK&\SUB\206\ACK Selects a mode of operation in which each subset has only one host. This mode uses the same rules for\n\
    \ choosing a host, but updating hosts is faster, especially for large numbers of hosts.\n\
    \\n\
    \ If a match is found to a host, that host will be used regardless of priority levels, unless the host is unhealthy.\n\
    \\n\
    \ Currently, this mode is only supported if `subset_selectors` has only one entry, and `keys` contains\n\
    \ only one entry.\n\
    \\n\
    \ When this mode is enabled, configurations that contain more than one host with the same metadata value for the single key in `keys`\n\
    \ will use only one of the hosts with the given key; no requests will be routed to the others. The cluster gauge\n\
    \ :ref:`lb_subsets_single_host_per_subset_duplicate<config_cluster_manager_cluster_stats_subset_lb>` indicates how many duplicates are\n\
    \ present in the current configuration.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\SOH\ENQ\DC2\EOT\129\STX\ACK\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\SOH\SOH\DC2\EOT\129\STX\v!\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\SOH\ETX\DC2\EOT\129\STX$%\n\
    \g\n\
    \\b\EOT\SOH\ETX\ETX\ETX\NUL\STX\STX\DC2\ACK\133\STX\ACK\134\STX9\SUBS The behavior used when no endpoint subset matches the selected route's\n\
    \ metadata.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\STX\ACK\DC2\EOT\133\STX\ACK$\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\STX\SOH\DC2\EOT\133\STX%4\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\STX\ETX\DC2\EOT\133\STX78\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\STX\b\DC2\EOT\134\STX\n\
    \8\n\
    \\DC4\n\
    \\f\EOT\SOH\ETX\ETX\ETX\NUL\STX\STX\b\175\b\DLE\DC2\EOT\134\STX\v7\n\
    \\134\ENQ\n\
    \\b\EOT\SOH\ETX\ETX\ETX\NUL\STX\ETX\DC2\EOT\145\STX\ACK/\SUB\243\EOT Subset of\n\
    \ :ref:`keys<envoy_v3_api_field_config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.keys>` used by\n\
    \ :ref:`KEYS_SUBSET<envoy_v3_api_enum_value_config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.LbSubsetSelectorFallbackPolicy.KEYS_SUBSET>`\n\
    \ fallback policy.\n\
    \ It has to be a non empty list if KEYS_SUBSET fallback policy is selected.\n\
    \ For any other fallback policy the parameter is not used and should not be set.\n\
    \ Only values also present in\n\
    \ :ref:`keys<envoy_v3_api_field_config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetSelector.keys>` are allowed, but\n\
    \ `fallback_keys_subset` cannot be equal to `keys`.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\ETX\EOT\DC2\EOT\145\STX\ACK\SO\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\ETX\ENQ\DC2\EOT\145\STX\SI\NAK\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\ETX\SOH\DC2\EOT\145\STX\SYN*\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ETX\ETX\NUL\STX\ETX\ETX\DC2\EOT\145\STX-.\n\
    \\244\SOH\n\
    \\ACK\EOT\SOH\ETX\ETX\STX\NUL\DC2\EOT\151\STX\EOT^\SUB\227\SOH The behavior used when no endpoint subset matches the selected route's\n\
    \ metadata. The value defaults to\n\
    \ :ref:`NO_FALLBACK<envoy_v3_api_enum_value_config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetFallbackPolicy.NO_FALLBACK>`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\ACK\DC2\EOT\151\STX\EOT\SUB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\SOH\DC2\EOT\151\STX\ESC*\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\ETX\DC2\EOT\151\STX-.\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\b\DC2\EOT\151\STX/]\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\ETX\STX\NUL\b\175\b\DLE\DC2\EOT\151\STX0\\\n\
    \\181\EOT\n\
    \\ACK\EOT\SOH\ETX\ETX\STX\SOH\DC2\EOT\161\STX\EOT.\SUB\164\EOT Specifies the default subset of endpoints used during fallback if\n\
    \ fallback_policy is\n\
    \ :ref:`DEFAULT_SUBSET<envoy_v3_api_enum_value_config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetFallbackPolicy.DEFAULT_SUBSET>`.\n\
    \ Each field in default_subset is\n\
    \ compared to the matching LbEndpoint.Metadata under the *envoy.lb*\n\
    \ namespace. It is valid for no hosts to match, in which case the behavior\n\
    \ is the same as a fallback_policy of\n\
    \ :ref:`NO_FALLBACK<envoy_v3_api_enum_value_config.cluster.v3.Cluster.LbSubsetConfig.LbSubsetFallbackPolicy.NO_FALLBACK>`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\SOH\ACK\DC2\EOT\161\STX\EOT\SUB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\SOH\SOH\DC2\EOT\161\STX\ESC)\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\SOH\ETX\DC2\EOT\161\STX,-\n\
    \\251\ETX\n\
    \\ACK\EOT\SOH\ETX\ETX\STX\STX\DC2\EOT\177\STX\EOT3\SUB\234\ETX For each entry, LbEndpoint.Metadata's\n\
    \ *envoy.lb* namespace is traversed and a subset is created for each unique\n\
    \ combination of key and value. For example:\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \   { \"subset_selectors\": [\n\
    \       { \"keys\": [ \"version\" ] },\n\
    \       { \"keys\": [ \"stage\", \"hardware_type\" ] }\n\
    \   ]}\n\
    \\n\
    \ A subset is matched when the metadata from the selected route and\n\
    \ weighted cluster contains the same keys and values as the subset's\n\
    \ metadata. The same host may appear in multiple subsets.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\STX\EOT\DC2\EOT\177\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\STX\ACK\DC2\EOT\177\STX\r\GS\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\STX\SOH\DC2\EOT\177\STX\RS.\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\STX\ETX\DC2\EOT\177\STX12\n\
    \\187\ENQ\n\
    \\ACK\EOT\SOH\ETX\ETX\STX\ETX\DC2\EOT\189\STX\EOT#\SUB\170\ENQ If true, routing to subsets will take into account the localities and locality weights of the\n\
    \ endpoints when making the routing decision.\n\
    \\n\
    \ There are some potential pitfalls associated with enabling this feature, as the resulting\n\
    \ traffic split after applying both a subset match and locality weights might be undesirable.\n\
    \\n\
    \ Consider for example a situation in which you have 50/50 split across two localities X/Y\n\
    \ which have 100 hosts each without subsetting. If the subset LB results in X having only 1\n\
    \ host selected but Y having 100, then a lot more load is being dumped on the single host in X\n\
    \ than originally anticipated in the load balancing assignment delivered via EDS.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\ETX\ENQ\DC2\EOT\189\STX\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\ETX\SOH\DC2\EOT\189\STX\t\RS\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\ETX\ETX\DC2\EOT\189\STX!\"\n\
    \\171\STX\n\
    \\ACK\EOT\SOH\ETX\ETX\STX\EOT\DC2\EOT\195\STX\EOT#\SUB\154\STX When used with locality_weight_aware, scales the weight of each locality by the ratio\n\
    \ of hosts in the subset vs hosts in the original subset. This aims to even out the load\n\
    \ going to an individual locality if said locality is disproportionately affected by the\n\
    \ subset predicate.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\EOT\ENQ\DC2\EOT\195\STX\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\EOT\SOH\DC2\EOT\195\STX\t\RS\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\EOT\ETX\DC2\EOT\195\STX!\"\n\
    \\130\ETX\n\
    \\ACK\EOT\SOH\ETX\ETX\STX\ENQ\DC2\EOT\203\STX\EOT\FS\SUB\241\STX If true, when a fallback policy is configured and its corresponding subset fails to find\n\
    \ a host this will cause any host to be selected instead.\n\
    \\n\
    \ This is useful when using the default subset as the fallback policy, given the default\n\
    \ subset might become empty. With this option enabled, if that happens the LB will attempt\n\
    \ to select a host from the entire cluster.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\ENQ\ENQ\DC2\EOT\203\STX\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\ENQ\SOH\DC2\EOT\203\STX\t\ETB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\ENQ\ETX\DC2\EOT\203\STX\SUB\ESC\n\
    \\130\STX\n\
    \\ACK\EOT\SOH\ETX\ETX\STX\ACK\DC2\EOT\208\STX\EOT\EM\SUB\241\SOH If true, metadata specified for a metadata key will be matched against the corresponding\n\
    \ endpoint metadata if the endpoint metadata matches the value exactly OR it is a list value\n\
    \ and any of the elements in the list matches the criteria.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\ACK\ENQ\DC2\EOT\208\STX\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\ACK\SOH\DC2\EOT\208\STX\t\DC4\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ETX\STX\ACK\ETX\DC2\EOT\208\STX\ETB\CAN\n\
    \T\n\
    \\EOT\EOT\SOH\ETX\EOT\DC2\ACK\212\STX\STX\244\STX\ETX\SUBD Specific configuration for the LeastRequest load balancing policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\EOT\SOH\DC2\EOT\212\STX\n\
    \\RS\n\
    \\SI\n\
    \\ENQ\EOT\SOH\ETX\EOT\a\DC2\ACK\213\STX\EOT\214\STX4\n\
    \\DC4\n\
    \\n\
    \\EOT\SOH\ETX\EOT\a\211\136\225\ETX\SOH\DC2\ACK\213\STX\EOT\214\STX4\n\
    \\201\SOH\n\
    \\ACK\EOT\SOH\ETX\EOT\STX\NUL\DC2\EOT\218\STX\EOTV\SUB\184\SOH The number of random healthy hosts from which the host with the fewest active requests will\n\
    \ be chosen. Defaults to 2 so that we perform two-choice selection if the field is not set.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\NUL\ACK\DC2\EOT\218\STX\EOT\US\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\NUL\SOH\DC2\EOT\218\STX ,\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\NUL\ETX\DC2\EOT\218\STX/0\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\NUL\b\DC2\EOT\218\STX1U\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\EOT\STX\NUL\b\175\b\ENQ\DC2\EOT\218\STX2T\n\
    \\168\b\n\
    \\ACK\EOT\SOH\ETX\EOT\STX\SOH\DC2\EOT\243\STX\EOT2\SUB\151\b The following formula is used to calculate the dynamic weights when hosts have different load\n\
    \ balancing weights:\n\
    \\n\
    \ `weight = load_balancing_weight / (active_requests + 1)^active_request_bias`\n\
    \\n\
    \ The larger the active request bias is, the more aggressively active requests will lower the\n\
    \ effective weight when all host weights are not equal.\n\
    \\n\
    \ `active_request_bias` must be greater than or equal to 0.0.\n\
    \\n\
    \ When `active_request_bias == 0.0` the Least Request Load Balancer doesn't consider the number\n\
    \ of active requests at the time it picks a host and behaves like the Round Robin Load\n\
    \ Balancer.\n\
    \\n\
    \ When `active_request_bias > 0.0` the Least Request Load Balancer scales the load balancing\n\
    \ weight by the number of active requests at the time it does a pick.\n\
    \\n\
    \ The value is cached for performance reasons and refreshed whenever one of the Load Balancer's\n\
    \ host sets changes, e.g., whenever there is a host membership update or a host load balancing\n\
    \ weight change.\n\
    \\n\
    \ .. note::\n\
    \   This setting only takes effect if all host weights are not equal.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\SOH\ACK\DC2\EOT\243\STX\EOT\EM\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\SOH\SOH\DC2\EOT\243\STX\SUB-\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\SOH\ETX\DC2\EOT\243\STX01\n\
    \\134\SOH\n\
    \\EOT\EOT\SOH\ETX\ENQ\DC2\ACK\248\STX\STX\151\ETX\ETX\SUBv Specific configuration for the :ref:`RingHash<arch_overview_load_balancing_types_ring_hash>`\n\
    \ load balancing policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\ENQ\SOH\DC2\EOT\248\STX\n\
    \\SUB\n\
    \\SI\n\
    \\ENQ\EOT\SOH\ETX\ENQ\a\DC2\ACK\249\STX\EOT\250\STX0\n\
    \\DC4\n\
    \\n\
    \\EOT\SOH\ETX\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\249\STX\EOT\250\STX0\n\
    \N\n\
    \\ACK\EOT\SOH\ETX\ENQ\EOT\NUL\DC2\ACK\253\STX\EOT\133\ETX\ENQ\SUB< The hash function used to hash hosts onto the ketama ring.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\EOT\NUL\SOH\DC2\EOT\253\STX\t\NAK\n\
    \j\n\
    \\b\EOT\SOH\ETX\ENQ\EOT\NUL\STX\NUL\DC2\EOT\255\STX\ACK\DC2\SUBX Use `xxHash <https://github.com/Cyan4973/xxHash>`_, this is the default hash function.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\255\STX\ACK\r\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ENQ\EOT\NUL\STX\NUL\STX\DC2\EOT\255\STX\DLE\DC1\n\
    \\226\SOH\n\
    \\b\EOT\SOH\ETX\ENQ\EOT\NUL\STX\SOH\DC2\EOT\132\ETX\ACK\CAN\SUB\207\SOH Use `MurmurHash2 <https://sites.google.com/site/murmurhash/>`_, this is compatible with\n\
    \ std:hash<string> in GNU libstdc++ 3.4.20 or above. This is typically the case when compiled\n\
    \ on Linux and not macOS.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\132\ETX\ACK\DC3\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\ENQ\EOT\NUL\STX\SOH\STX\DC2\EOT\132\ETX\SYN\ETB\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\ENQ\t\DC2\EOT\135\ETX\EOT\SI\n\
    \\SO\n\
    \\ACK\EOT\SOH\ETX\ENQ\t\NUL\DC2\EOT\135\ETX\r\SO\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\t\NUL\SOH\DC2\EOT\135\ETX\r\SO\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\t\NUL\STX\DC2\EOT\135\ETX\r\SO\n\
    \\239\STX\n\
    \\ACK\EOT\SOH\ETX\ENQ\STX\NUL\DC2\EOT\141\ETX\EOTa\SUB\222\STX Minimum hash ring size. The larger the ring is (that is, the more hashes there are for each\n\
    \ provided host) the better the request distribution will reflect the desired weights. Defaults\n\
    \ to 1024 entries, and limited to 8M entries. See also\n\
    \ :ref:`maximum_ring_size<envoy_v3_api_field_config.cluster.v3.Cluster.RingHashLbConfig.maximum_ring_size>`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\NUL\ACK\DC2\EOT\141\ETX\EOT\US\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\NUL\SOH\DC2\EOT\141\ETX 1\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\NUL\ETX\DC2\EOT\141\ETX45\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\NUL\b\DC2\EOT\141\ETX6`\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\ENQ\STX\NUL\b\175\b\ACK\DC2\EOT\141\ETX7_\n\
    \\205\SOH\n\
    \\ACK\EOT\SOH\ETX\ENQ\STX\SOH\DC2\EOT\145\ETX\EOTR\SUB\188\SOH The hash function used to hash hosts onto the ketama ring. The value defaults to\n\
    \ :ref:`XX_HASH<envoy_v3_api_enum_value_config.cluster.v3.Cluster.RingHashLbConfig.HashFunction.XX_HASH>`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\SOH\ACK\DC2\EOT\145\ETX\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\SOH\SOH\DC2\EOT\145\ETX\DC1\RS\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\SOH\ETX\DC2\EOT\145\ETX!\"\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\SOH\b\DC2\EOT\145\ETX#Q\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\ENQ\STX\SOH\b\175\b\DLE\DC2\EOT\145\ETX$P\n\
    \\137\STX\n\
    \\ACK\EOT\SOH\ETX\ENQ\STX\STX\DC2\EOT\150\ETX\EOTa\SUB\248\SOH Maximum hash ring size. Defaults to 8M entries, and limited to 8M entries, but can be lowered\n\
    \ to further constrain resource use. See also\n\
    \ :ref:`minimum_ring_size<envoy_v3_api_field_config.cluster.v3.Cluster.RingHashLbConfig.minimum_ring_size>`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\STX\ACK\DC2\EOT\150\ETX\EOT\US\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\STX\SOH\DC2\EOT\150\ETX 1\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\STX\ETX\DC2\EOT\150\ETX45\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\STX\b\DC2\EOT\150\ETX6`\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\ENQ\STX\STX\b\175\b\ACK\DC2\EOT\150\ETX7_\n\
    \\129\SOH\n\
    \\EOT\EOT\SOH\ETX\ACK\DC2\ACK\155\ETX\STX\161\ETX\ETX\SUBq Specific configuration for the :ref:`Maglev<arch_overview_load_balancing_types_maglev>`\n\
    \ load balancing policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\ACK\SOH\DC2\EOT\155\ETX\n\
    \\CAN\n\
    \\179\ETX\n\
    \\ACK\EOT\SOH\ETX\ACK\STX\NUL\DC2\EOT\160\ETX\EOTZ\SUB\162\ETX The table size for Maglev hashing. The Maglev aims for \226\128\152minimal disruption\226\128\153 rather than an absolute guarantee.\n\
    \ Minimal disruption means that when the set of upstreams changes, a connection will likely be sent to the same\n\
    \ upstream as it was before. Increasing the table size reduces the amount of disruption.\n\
    \ The table size must be prime number limited to 5000011. If it is not specified, the default is 65537.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ACK\STX\NUL\ACK\DC2\EOT\160\ETX\EOT\US\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ACK\STX\NUL\SOH\DC2\EOT\160\ETX *\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ACK\STX\NUL\ETX\DC2\EOT\160\ETX-.\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ACK\STX\NUL\b\DC2\EOT\160\ETX/Y\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\ACK\STX\NUL\b\175\b\ACK\DC2\EOT\160\ETX0X\n\
    \\160\SOH\n\
    \\EOT\EOT\SOH\ETX\a\DC2\ACK\166\ETX\STX\184\ETX\ETX\SUB\143\SOH Specific configuration for the\n\
    \ :ref:`Original Destination <arch_overview_load_balancing_types_original_destination>`\n\
    \ load balancing policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\a\SOH\DC2\EOT\166\ETX\n\
    \\GS\n\
    \\SI\n\
    \\ENQ\EOT\SOH\ETX\a\a\DC2\ACK\167\ETX\EOT\168\ETX3\n\
    \\DC4\n\
    \\n\
    \\EOT\SOH\ETX\a\a\211\136\225\ETX\SOH\DC2\ACK\167\ETX\EOT\168\ETX3\n\
    \\201\ETX\n\
    \\ACK\EOT\SOH\ETX\a\STX\NUL\DC2\EOT\183\ETX\EOT\GS\SUB\184\ETX When true, :ref:`x-envoy-original-dst-host\n\
    \ <config_http_conn_man_headers_x-envoy-original-dst-host>` can be used to override destination\n\
    \ address.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   This header isn't sanitized by default, so enabling this feature allows HTTP clients to\n\
    \   route traffic to arbitrary hosts and/or ports, which may have serious security\n\
    \   consequences.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   If the header appears multiple times only the first value is used.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\a\STX\NUL\ENQ\DC2\EOT\183\ETX\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\a\STX\NUL\SOH\DC2\EOT\183\ETX\t\CAN\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\a\STX\NUL\ETX\DC2\EOT\183\ETX\ESC\FS\n\
    \d\n\
    \\EOT\EOT\SOH\ETX\b\DC2\ACK\188\ETX\STX\168\EOT\ETX\SUBT Common configuration for all load balancer implementations.\n\
    \ [#next-free-field: 8]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\b\SOH\DC2\EOT\188\ETX\n\
    \\CAN\n\
    \\SI\n\
    \\ENQ\EOT\SOH\ETX\b\a\DC2\ACK\189\ETX\EOT\190\ETX.\n\
    \\DC4\n\
    \\n\
    \\EOT\SOH\ETX\b\a\211\136\225\ETX\SOH\DC2\ACK\189\ETX\EOT\190\ETX.\n\
    \s\n\
    \\ACK\EOT\SOH\ETX\b\ETX\NUL\DC2\ACK\194\ETX\EOT\216\ETX\ENQ\SUBa Configuration for :ref:`zone aware routing\n\
    \ <arch_overview_load_balancing_zone_aware_routing>`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\ETX\NUL\SOH\DC2\EOT\194\ETX\f\GS\n\
    \\DC1\n\
    \\a\EOT\SOH\ETX\b\ETX\NUL\a\DC2\ACK\195\ETX\ACK\196\ETXB\n\
    \\SYN\n\
    \\f\EOT\SOH\ETX\b\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\195\ETX\ACK\196\ETXB\n\
    \\218\STX\n\
    \\b\EOT\SOH\ETX\b\ETX\NUL\STX\NUL\DC2\EOT\202\ETX\ACK*\SUB\199\STX Configures percentage of requests that will be considered for zone aware routing\n\
    \ if zone aware routing is configured. If not specified, the default is 100%.\n\
    \ * :ref:`runtime values <config_cluster_manager_cluster_runtime_zone_routing>`.\n\
    \ * :ref:`Zone aware routing support <arch_overview_load_balancing_zone_aware_routing>`.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\NUL\STX\NUL\ACK\DC2\EOT\202\ETX\ACK\NAK\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\NUL\STX\NUL\SOH\DC2\EOT\202\ETX\SYN%\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\NUL\STX\NUL\ETX\DC2\EOT\202\ETX()\n\
    \\170\ETX\n\
    \\b\EOT\SOH\ETX\b\ETX\NUL\STX\SOH\DC2\EOT\209\ETX\ACK7\SUB\151\ETX Configures minimum upstream cluster size required for zone aware routing\n\
    \ If upstream cluster size is less than specified, zone aware routing is not performed\n\
    \ even if zone aware routing is configured. If not specified, the default is 6.\n\
    \ * :ref:`runtime values <config_cluster_manager_cluster_runtime_zone_routing>`.\n\
    \ * :ref:`Zone aware routing support <arch_overview_load_balancing_zone_aware_routing>`.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\NUL\STX\SOH\ACK\DC2\EOT\209\ETX\ACK!\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\NUL\STX\SOH\SOH\DC2\EOT\209\ETX\"2\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\NUL\STX\SOH\ETX\DC2\EOT\209\ETX56\n\
    \\172\STX\n\
    \\b\EOT\SOH\ETX\b\ETX\NUL\STX\STX\DC2\EOT\215\ETX\ACK%\SUB\153\STX If set to true, Envoy will not consider any hosts when the cluster is in :ref:`panic\n\
    \ mode<arch_overview_load_balancing_panic_threshold>`. Instead, the cluster will fail all\n\
    \ requests as if all hosts are unhealthy. This can help avoid potentially overwhelming a\n\
    \ failing service.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\NUL\STX\STX\ENQ\DC2\EOT\215\ETX\ACK\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\NUL\STX\STX\SOH\DC2\EOT\215\ETX\v \n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\NUL\STX\STX\ETX\DC2\EOT\215\ETX#$\n\
    \\130\SOH\n\
    \\ACK\EOT\SOH\ETX\b\ETX\SOH\DC2\ACK\220\ETX\EOT\223\ETX\ENQ\SUBp Configuration for :ref:`locality weighted load balancing\n\
    \ <arch_overview_load_balancing_locality_weighted_lb>`\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\ETX\SOH\SOH\DC2\EOT\220\ETX\f$\n\
    \\DC1\n\
    \\a\EOT\SOH\ETX\b\ETX\SOH\a\DC2\ACK\221\ETX\ACK\222\ETXI\n\
    \\SYN\n\
    \\f\EOT\SOH\ETX\b\ETX\SOH\a\211\136\225\ETX\SOH\DC2\ACK\221\ETX\ACK\222\ETXI\n\
    \o\n\
    \\ACK\EOT\SOH\ETX\b\ETX\STX\DC2\ACK\226\ETX\EOT\253\ETX\ENQ\SUB] Common Configuration for all consistent hashing load balancers (MaglevLb, RingHashLb, etc.)\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\ETX\STX\SOH\DC2\EOT\226\ETX\f%\n\
    \\DC1\n\
    \\a\EOT\SOH\ETX\b\ETX\STX\a\DC2\ACK\227\ETX\ACK\228\ETXJ\n\
    \\SYN\n\
    \\f\EOT\SOH\ETX\b\ETX\STX\a\211\136\225\ETX\SOH\DC2\ACK\227\ETX\ACK\228\ETXJ\n\
    \\241\SOH\n\
    \\b\EOT\SOH\ETX\b\ETX\STX\STX\NUL\DC2\EOT\232\ETX\ACK(\SUB\222\SOH If set to `true`, the cluster will use hostname instead of the resolved\n\
    \ address as the key to consistently hash to an upstream host. Only valid for StrictDNS clusters with hostnames which resolve to a single IP address.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\STX\STX\NUL\ENQ\DC2\EOT\232\ETX\ACK\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\STX\STX\NUL\SOH\DC2\EOT\232\ETX\v#\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\STX\STX\NUL\ETX\DC2\EOT\232\ETX&'\n\
    \\231\n\
    \\n\
    \\b\EOT\SOH\ETX\b\ETX\STX\STX\SOH\DC2\EOT\252\ETX\ACKa\SUB\212\n\
    \ Configures percentage of average cluster load to bound per upstream host. For example, with a value of 150\n\
    \ no upstream host will get a load more than 1.5 times the average load of all the hosts in the cluster.\n\
    \ If not specified, the load is not bounded for any upstream host. Typical value for this parameter is between 120 and 200.\n\
    \ Minimum is 100.\n\
    \\n\
    \ Applies to both Ring Hash and Maglev load balancers.\n\
    \\n\
    \ This is implemented based on the method described in the paper https://arxiv.org/abs/1608.01350. For the specified\n\
    \ `hash_balance_factor`, requests to any upstream host are capped at `hash_balance_factor/100` times the average number of requests\n\
    \ across the cluster. When a request arrives for an upstream host that is currently serving at its max capacity, linear probing\n\
    \ is used to identify an eligible host. Further, the linear probe is implemented using a random jump in hosts ring/table to identify\n\
    \ the eligible host (this technique is as described in the paper https://arxiv.org/abs/1908.08762 - the random jump avoids the\n\
    \ cascading overflow effect when choosing the next host in the ring/table).\n\
    \\n\
    \ If weights are specified on the hosts, they are respected.\n\
    \\n\
    \ This is an O(N) algorithm, unlike other load balancers. Using a lower `hash_balance_factor` results in more hosts\n\
    \ being probed, so use a higher value if you require better performance.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\STX\STX\SOH\ACK\DC2\EOT\252\ETX\ACK!\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\STX\STX\SOH\SOH\DC2\EOT\252\ETX\"5\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\STX\STX\SOH\ETX\DC2\EOT\252\ETX89\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\b\ETX\STX\STX\SOH\b\DC2\EOT\252\ETX:`\n\
    \\DC4\n\
    \\f\EOT\SOH\ETX\b\ETX\STX\STX\SOH\b\175\b\ENQ\DC2\EOT\252\ETX;_\n\
    \\132\STX\n\
    \\ACK\EOT\SOH\ETX\b\STX\NUL\DC2\EOT\133\EOT\EOT0\SUB\243\SOH Configures the :ref:`healthy panic threshold <arch_overview_load_balancing_panic_threshold>`.\n\
    \ If not specified, the default is 50%.\n\
    \ To disable panic mode, set to 0%.\n\
    \\n\
    \ .. note::\n\
    \   The specified percent will be truncated to the nearest 1%.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\NUL\ACK\DC2\EOT\133\EOT\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\NUL\SOH\DC2\EOT\133\EOT\DC4+\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\NUL\ETX\DC2\EOT\133\EOT./\n\
    \\DLE\n\
    \\ACK\EOT\SOH\ETX\b\b\NUL\DC2\ACK\135\EOT\EOT\139\EOT\ENQ\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\b\NUL\SOH\DC2\EOT\135\EOT\n\
    \#\n\
    \\SO\n\
    \\ACK\EOT\SOH\ETX\b\STX\SOH\DC2\EOT\136\EOT\ACK1\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\SOH\ACK\DC2\EOT\136\EOT\ACK\ETB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\SOH\SOH\DC2\EOT\136\EOT\CAN,\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\SOH\ETX\DC2\EOT\136\EOT/0\n\
    \\SO\n\
    \\ACK\EOT\SOH\ETX\b\STX\STX\DC2\EOT\138\EOT\ACK?\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\STX\ACK\DC2\EOT\138\EOT\ACK\RS\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\STX\SOH\DC2\EOT\138\EOT\US:\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\STX\ETX\DC2\EOT\138\EOT=>\n\
    \\240\ACK\n\
    \\ACK\EOT\SOH\ETX\b\STX\ETX\DC2\EOT\155\EOT\EOT5\SUB\223\ACK If set, all health check/weight/metadata updates that happen within this duration will be\n\
    \ merged and delivered in one shot when the duration expires. The start of the duration is when\n\
    \ the first update happens. This is useful for big clusters, with potentially noisy deploys\n\
    \ that might trigger excessive CPU usage due to a constant stream of healthcheck state changes\n\
    \ or metadata updates. The first set of updates to be seen apply immediately (e.g.: a new\n\
    \ cluster). Please always keep in mind that the use of sandbox technologies may change this\n\
    \ behavior.\n\
    \\n\
    \ If this is not set, we default to a merge window of 1000ms. To disable it, set the merge\n\
    \ window to 0.\n\
    \\n\
    \ Note: merging does not apply to cluster membership changes (e.g.: adds/removes); this is\n\
    \ because merging those updates isn't currently safe. See\n\
    \ https://github.com/envoyproxy/envoy/pull/3941.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\ETX\ACK\DC2\EOT\155\EOT\EOT\FS\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\ETX\SOH\DC2\EOT\155\EOT\GS0\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\ETX\ETX\DC2\EOT\155\EOT34\n\
    \\153\STX\n\
    \\ACK\EOT\SOH\ETX\b\STX\EOT\DC2\EOT\160\EOT\EOT-\SUB\136\STX If set to true, Envoy will :ref:`exclude <arch_overview_load_balancing_excluded>` new hosts\n\
    \ when computing load balancing weights until they have been health checked for the first time.\n\
    \ This will have no effect unless active health checking is also configured.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\EOT\ENQ\DC2\EOT\160\EOT\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\EOT\SOH\DC2\EOT\160\EOT\t(\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\EOT\ETX\DC2\EOT\160\EOT+,\n\
    \\165\SOH\n\
    \\ACK\EOT\SOH\ETX\b\STX\ENQ\DC2\EOT\164\EOT\EOT2\SUB\148\SOH If set to `true`, the cluster manager will drain all existing\n\
    \ connections to upstream hosts whenever hosts are added or removed from the cluster.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\ENQ\ENQ\DC2\EOT\164\EOT\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\ENQ\SOH\DC2\EOT\164\EOT\t-\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\ENQ\ETX\DC2\EOT\164\EOT01\n\
    \m\n\
    \\ACK\EOT\SOH\ETX\b\STX\ACK\DC2\EOT\167\EOT\EOT?\SUB] Common Configuration for all consistent hashing load balancers (MaglevLb, RingHashLb, etc.)\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\ACK\ACK\DC2\EOT\167\EOT\EOT\GS\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\ACK\SOH\DC2\EOT\167\EOT\RS:\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\b\STX\ACK\ETX\DC2\EOT\167\EOT=>\n\
    \\SO\n\
    \\EOT\EOT\SOH\ETX\t\DC2\ACK\170\EOT\STX\186\EOT\ETX\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\t\SOH\DC2\EOT\170\EOT\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\t\a\DC2\EOT\171\EOT\EOTd\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\t\a\211\136\225\ETX\SOH\DC2\EOT\171\EOT\EOTd\n\
    \\233\SOH\n\
    \\ACK\EOT\SOH\ETX\t\STX\NUL\DC2\ACK\176\EOT\EOT\179\EOT\a\SUB\214\SOH Specifies the base interval between refreshes. This parameter is required and must be greater\n\
    \ than zero and less than\n\
    \ :ref:`max_interval <envoy_v3_api_field_config.cluster.v3.Cluster.RefreshRate.max_interval>`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\t\STX\NUL\ACK\DC2\EOT\176\EOT\EOT\FS\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\t\STX\NUL\SOH\DC2\EOT\176\EOT\GS*\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\t\STX\NUL\ETX\DC2\EOT\176\EOT-.\n\
    \\DC1\n\
    \\a\EOT\SOH\ETX\t\STX\NUL\b\DC2\ACK\176\EOT/\179\EOT\ACK\n\
    \\DC4\n\
    \\n\
    \\EOT\SOH\ETX\t\STX\NUL\b\175\b\NAK\DC2\ACK\176\EOT0\179\EOT\ENQ\n\
    \\238\STX\n\
    \\ACK\EOT\SOH\ETX\t\STX\SOH\DC2\EOT\185\EOT\EOTb\SUB\221\STX Specifies the maximum interval between refreshes. This parameter is optional, but must be\n\
    \ greater than or equal to the\n\
    \ :ref:`base_interval <envoy_v3_api_field_config.cluster.v3.Cluster.RefreshRate.base_interval>`  if set. The default\n\
    \ is 10 times the :ref:`base_interval <envoy_v3_api_field_config.cluster.v3.Cluster.RefreshRate.base_interval>`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\t\STX\SOH\ACK\DC2\EOT\185\EOT\EOT\FS\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\t\STX\SOH\SOH\DC2\EOT\185\EOT\GS)\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\t\STX\SOH\ETX\DC2\EOT\185\EOT,-\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\t\STX\SOH\b\DC2\EOT\185\EOT.a\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\t\STX\SOH\b\175\b\NAK\DC2\EOT\185\EOT/`\n\
    \\SO\n\
    \\EOT\EOT\SOH\ETX\n\
    \\DC2\ACK\188\EOT\STX\240\EOT\ETX\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\n\
    \\SOH\DC2\EOT\188\EOT\n\
    \\SUB\n\
    \\184\r\n\
    \\ACK\EOT\SOH\ETX\n\
    \\STX\NUL\DC2\ACK\213\EOT\EOT\214\EOT8\SUB\165\r Indicates how many streams (rounded up) can be anticipated per-upstream for each\n\
    \ incoming stream. This is useful for high-QPS or latency-sensitive services. Preconnecting\n\
    \ will only be done if the upstream is healthy and the cluster has traffic.\n\
    \\n\
    \ For example if this is 2, for an incoming HTTP/1.1 stream, 2 connections will be\n\
    \ established, one for the new incoming stream, and one for a presumed follow-up stream. For\n\
    \ HTTP/2, only one connection would be established by default as one connection can\n\
    \ serve both the original and presumed follow-up stream.\n\
    \\n\
    \ In steady state for non-multiplexed connections a value of 1.5 would mean if there were 100\n\
    \ active streams, there would be 100 connections in use, and 50 connections preconnected.\n\
    \ This might be a useful value for something like short lived single-use connections,\n\
    \ for example proxying HTTP/1.1 if keep-alive were false and each stream resulted in connection\n\
    \ termination. It would likely be overkill for long lived connections, such as TCP proxying SMTP\n\
    \ or regular HTTP/1.1 with keep-alive. For long lived traffic, a value of 1.05 would be more\n\
    \ reasonable, where for every 100 connections, 5 preconnected connections would be in the queue\n\
    \ in case of unexpected disconnects where the connection could not be reused.\n\
    \\n\
    \ If this value is not set, or set explicitly to one, Envoy will fetch as many connections\n\
    \ as needed to serve streams in flight. This means in steady state if a connection is torn down,\n\
    \ a subsequent streams will pay an upstream-rtt latency penalty waiting for a new connection.\n\
    \\n\
    \ This is limited somewhat arbitrarily to 3 because preconnecting too aggressively can\n\
    \ harm latency more than the preconnecting helps.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\n\
    \\STX\NUL\ACK\DC2\EOT\213\EOT\EOT\US\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\n\
    \\STX\NUL\SOH\DC2\EOT\213\EOT =\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\n\
    \\STX\NUL\ETX\DC2\EOT\213\EOT@A\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\n\
    \\STX\NUL\b\DC2\EOT\214\EOT\b7\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\n\
    \\STX\NUL\b\175\b\STX\DC2\EOT\214\EOT\t6\n\
    \\134\v\n\
    \\ACK\EOT\SOH\ETX\n\
    \\STX\SOH\DC2\ACK\238\EOT\EOT\239\EOT8\SUB\243\n\
    \ Indicates how many many streams (rounded up) can be anticipated across a cluster for each\n\
    \ stream, useful for low QPS services. This is currently supported for a subset of\n\
    \ deterministic non-hash-based load-balancing algorithms (weighted round robin, random).\n\
    \ Unlike *per_upstream_preconnect_ratio* this preconnects across the upstream instances in a\n\
    \ cluster, doing best effort predictions of what upstream would be picked next and\n\
    \ pre-establishing a connection.\n\
    \\n\
    \ Preconnecting will be limited to one preconnect per configured upstream in the cluster and will\n\
    \ only be done if there are healthy upstreams and the cluster has traffic.\n\
    \\n\
    \ For example if preconnecting is set to 2 for a round robin HTTP/2 cluster, on the first\n\
    \ incoming stream, 2 connections will be preconnected - one to the first upstream for this\n\
    \ cluster, one to the second on the assumption there will be a follow-up stream.\n\
    \\n\
    \ If this value is not set, or set explicitly to one, Envoy will fetch as many connections\n\
    \ as needed to serve streams in flight, so during warm up and in steady state if a connection\n\
    \ is closed (and per_upstream_preconnect_ratio is not set), there will be a latency hit for\n\
    \ connection establishment.\n\
    \\n\
    \ If both this and preconnect_ratio are set, Envoy will make sure both predicted needs are met,\n\
    \ basically preconnecting max(predictive-preconnect, per-upstream-preconnect), for each\n\
    \ upstream.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\n\
    \\STX\SOH\ACK\DC2\EOT\238\EOT\EOT\US\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\n\
    \\STX\SOH\SOH\DC2\EOT\238\EOT ;\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\n\
    \\STX\SOH\ETX\DC2\EOT\238\EOT>?\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\n\
    \\STX\SOH\b\DC2\EOT\239\EOT\b7\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\n\
    \\STX\SOH\b\175\b\STX\DC2\EOT\239\EOT\t6\n\
    \\v\n\
    \\ETX\EOT\SOH\t\DC2\EOT\242\EOT\STX\GS\n\
    \\f\n\
    \\EOT\EOT\SOH\t\NUL\DC2\EOT\242\EOT\v\r\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\NUL\SOH\DC2\EOT\242\EOT\v\r\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\NUL\STX\DC2\EOT\242\EOT\v\r\n\
    \\f\n\
    \\EOT\EOT\SOH\t\SOH\DC2\EOT\242\EOT\SI\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\SOH\SOH\DC2\EOT\242\EOT\SI\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\SOH\STX\DC2\EOT\242\EOT\SI\DC1\n\
    \\f\n\
    \\EOT\EOT\SOH\t\STX\DC2\EOT\242\EOT\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\STX\SOH\DC2\EOT\242\EOT\DC3\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\STX\STX\DC2\EOT\242\EOT\DC3\DC4\n\
    \\f\n\
    \\EOT\EOT\SOH\t\ETX\DC2\EOT\242\EOT\SYN\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\ETX\SOH\DC2\EOT\242\EOT\SYN\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\ETX\STX\DC2\EOT\242\EOT\SYN\CAN\n\
    \\f\n\
    \\EOT\EOT\SOH\t\EOT\DC2\EOT\242\EOT\SUB\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\EOT\SOH\DC2\EOT\242\EOT\SUB\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\EOT\STX\DC2\EOT\242\EOT\SUB\FS\n\
    \\v\n\
    \\ETX\EOT\SOH\n\
    \\DC2\EOT\244\EOT\STX@\n\
    \\f\n\
    \\EOT\EOT\SOH\n\
    \\NUL\DC2\EOT\244\EOT\v\DC2\n\
    \\f\n\
    \\EOT\EOT\SOH\n\
    \\SOH\DC2\EOT\244\EOT\DC4!\n\
    \\f\n\
    \\EOT\EOT\SOH\n\
    \\STX\DC2\EOT\244\EOT#?\n\
    \\175\DC3\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\167\ENQ\STX>\SUB\160\DC3 Configuration to use different transport sockets for different endpoints.\n\
    \ The entry of *envoy.transport_socket_match* in the\n\
    \ :ref:`LbEndpoint.Metadata <envoy_v3_api_field_config.endpoint.v3.LbEndpoint.metadata>`\n\
    \ is used to match against the transport sockets as they appear in the list. The first\n\
    \ :ref:`match <envoy_v3_api_msg_config.cluster.v3.Cluster.TransportSocketMatch>` is used.\n\
    \ For example, with the following match\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \  transport_socket_matches:\n\
    \  - name: \"enableMTLS\"\n\
    \    match:\n\
    \      acceptMTLS: true\n\
    \    transport_socket:\n\
    \      name: envoy.transport_sockets.tls\n\
    \      config: { ... } # tls socket configuration\n\
    \  - name: \"defaultToPlaintext\"\n\
    \    match: {}\n\
    \    transport_socket:\n\
    \      name: envoy.transport_sockets.raw_buffer\n\
    \\n\
    \ Connections to the endpoints whose metadata value under *envoy.transport_socket_match*\n\
    \ having \"acceptMTLS\"/\"true\" key/value pair use the \"enableMTLS\" socket configuration.\n\
    \\n\
    \ If a :ref:`socket match <envoy_v3_api_msg_config.cluster.v3.Cluster.TransportSocketMatch>` with empty match\n\
    \ criteria is provided, that always match any endpoint. For example, the \"defaultToPlaintext\"\n\
    \ socket match in case above.\n\
    \\n\
    \ If an endpoint metadata's value under *envoy.transport_socket_match* does not match any\n\
    \ *TransportSocketMatch*, socket configuration fallbacks to use the *tls_context* or\n\
    \ *transport_socket* specified in this cluster.\n\
    \\n\
    \ This field allows gradual and flexible transport socket configuration changes.\n\
    \\n\
    \ The metadata of endpoints in EDS can indicate transport socket capabilities. For example,\n\
    \ an endpoint's metadata can have two key value pairs as \"acceptMTLS\": \"true\",\n\
    \ \"acceptPlaintext\": \"true\". While some other endpoints, only accepting plaintext traffic\n\
    \ has \"acceptPlaintext\": \"true\" metadata information.\n\
    \\n\
    \ Then the xDS server can configure the CDS to a client, Envoy A, to send mutual TLS\n\
    \ traffic for endpoints with \"acceptMTLS\": \"true\", by adding a corresponding\n\
    \ *TransportSocketMatch* in this field. Other client Envoys receive CDS without\n\
    \ *transport_socket_match* set, and still send plain text traffic to the same cluster.\n\
    \\n\
    \ This field can be used to specify custom transport socket configurations for health\n\
    \ checks by adding matching key/value pairs in a health check's\n\
    \ :ref:`transport socket match criteria <envoy_v3_api_field_config.core.v3.HealthCheck.transport_socket_match_criteria>` field.\n\
    \\n\
    \ [#comment:TODO(incfly): add a detailed architecture doc on intended usage.]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\EOT\167\ENQ\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\EOT\167\ENQ\v\US\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\167\ENQ 8\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\167\ENQ;=\n\
    \\248\STX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\174\ENQ\STX;\SUB\233\STX Supplies the name of the cluster which must be unique across all clusters.\n\
    \ The cluster name is used when emitting\n\
    \ :ref:`statistics <config_cluster_manager_cluster_stats>` if :ref:`alt_stat_name\n\
    \ <envoy_v3_api_field_config.cluster.v3.Cluster.alt_stat_name>` is not provided.\n\
    \ Any ``:`` in the cluster name will be converted to ``_`` when emitting statistics.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\EOT\174\ENQ\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\174\ENQ\t\r\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\174\ENQ\DLE\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\EOT\174\ENQ\DC2:\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\SO\DC2\EOT\174\ENQ\DC39\n\
    \\130\ACK\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\185\ENQ\STX]\SUB\243\ENQ An optional alternative to the cluster name to be used for observability. This name is used\n\
    \ emitting stats for the cluster and access logging the cluster name. This will appear as\n\
    \ additional information in configuration dumps of a cluster's current status as\n\
    \ :ref:`observability_name <envoy_v3_api_field_admin.v3.ClusterStatus.observability_name>`\n\
    \ and as an additional tag \"upstream_cluster.name\" while tracing. Note: access logging using\n\
    \ this field is presently enabled with runtime feature\n\
    \ `envoy.reloadable_features.use_observable_cluster_name`. Any ``:`` in the name will be\n\
    \ converted to ``_`` when emitting statistics. This should not be confused with :ref:`Router\n\
    \ Filter Header <config_http_filters_router_x-envoy-upstream-alt-stat-name>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\EOT\185\ENQ\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\185\ENQ\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\185\ENQ\EM\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\EOT\185\ENQ\FS\\\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\STX\STX\b\142\227\255Q\SOH\DC2\EOT\185\ENQ\GS[\n\
    \\SO\n\
    \\EOT\EOT\SOH\b\NUL\DC2\ACK\187\ENQ\STX\194\ENQ\ETX\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\EOT\187\ENQ\b\RS\n\
    \|\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\190\ENQ\EOTJ\SUBn The :ref:`service discovery type <arch_overview_service_discovery_types>`\n\
    \ to use for resolving the cluster.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\EOT\190\ENQ\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\190\ENQ\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\190\ENQ\EM\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\b\DC2\EOT\190\ENQ\ESCI\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\ETX\b\175\b\DLE\DC2\EOT\190\ENQ\FSH\n\
    \(\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT\193\ENQ\EOT(\SUB\SUB The custom cluster type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\EOT\193\ENQ\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\EOT\193\ENQ\SYN\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\EOT\193\ENQ%'\n\
    \E\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\197\ENQ\STX*\SUB7 Configuration to use for EDS updates for the Cluster.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\EOT\197\ENQ\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\197\ENQ\DC3%\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\197\ENQ()\n\
    \\129\SOH\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\EOT\201\ENQ\STXU\SUBs The timeout for new network connections to hosts in the cluster.\n\
    \ If not set, a default value of 5s will be used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\EOT\201\ENQ\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\EOT\201\ENQ\ESC*\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\EOT\201\ENQ-.\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\b\DC2\EOT\201\ENQ/T\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\ACK\b\175\b\NAK\DC2\EOT\201\ENQ0S\n\
    \\162\SOH\n\
    \\EOT\EOT\SOH\STX\a\DC2\ACK\205\ENQ\STX\206\ENQL\SUB\145\SOH Soft limit on size of the cluster\226\128\153s connections read and write buffers. If\n\
    \ unspecified, an implementation defined default is applied (1MiB).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\EOT\205\ENQ\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\EOT\205\ENQ\RS?\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\EOT\205\ENQBC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\b\DC2\EOT\206\ENQ\ACKK\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\STX\a\b\177\242\166\ENQ\STX\DC2\EOT\206\ENQ\aJ\n\
    \\183\STX\n\
    \\EOT\EOT\SOH\STX\b\DC2\EOT\211\ENQ\STXR\SUB\168\STX The :ref:`load balancer type <arch_overview_load_balancing_types>` to use\n\
    \ when picking a host in the cluster.\n\
    \ [#comment:TODO: Remove enum constraint :ref:`LOAD_BALANCING_POLICY_CONFIG<envoy_v3_api_enum_value_config.cluster.v3.Cluster.LbPolicy.LOAD_BALANCING_POLICY_CONFIG>` when implemented.]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\EOT\211\ENQ\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\EOT\211\ENQ\v\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\EOT\211\ENQ\ETB\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\b\DC2\EOT\211\ENQ\EMQ\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\b\b\175\b\DLE\DC2\EOT\211\ENQ\SUBP\n\
    \\222\EOT\n\
    \\EOT\EOT\SOH\STX\t\DC2\EOT\224\ENQ\STX9\SUB\207\EOT Setting this is required for specifying members of\n\
    \ :ref:`STATIC<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.STATIC>`,\n\
    \ :ref:`STRICT_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.STRICT_DNS>`\n\
    \ or :ref:`LOGICAL_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.LOGICAL_DNS>` clusters.\n\
    \ This field supersedes the *hosts* field in the v2 API.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   Setting this allows non-EDS cluster types to contain embedded EDS equivalent\n\
    \   :ref:`endpoint assignments<envoy_v3_api_msg_config.endpoint.v3.ClusterLoadAssignment>`.\n\
    \\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ACK\DC2\EOT\224\ENQ\STX#\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\EOT\224\ENQ$3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\EOT\224\ENQ68\n\
    \\251\SOH\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\EOT\230\ENQ\STX1\SUB\236\SOH Optional :ref:`active health checking <arch_overview_health_checking>`\n\
    \ configuration for the cluster. If no\n\
    \ configuration is specified no health checking will be done and all cluster\n\
    \ members will be considered healthy at all times.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\EOT\DC2\EOT\230\ENQ\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ACK\DC2\EOT\230\ENQ\v\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\EOT\230\ENQ\US,\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\EOT\230\ENQ/0\n\
    \\146\STX\n\
    \\EOT\EOT\SOH\STX\v\DC2\EOT\236\ENQ\STX>\SUB\131\STX Optional maximum requests for a single upstream connection. This parameter\n\
    \ is respected by both the HTTP/1.1 and HTTP/2 connection pool\n\
    \ implementations. If not specified, there is no limit. Setting this\n\
    \ parameter to 1 will effectively disable keep alive.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\ACK\DC2\EOT\236\ENQ\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\EOT\236\ENQ\RS9\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\EOT\236\ENQ<=\n\
    \_\n\
    \\EOT\EOT\SOH\STX\f\DC2\EOT\239\ENQ\STX(\SUBQ Optional :ref:`circuit breaking <arch_overview_circuit_break>` for the cluster.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ACK\DC2\EOT\239\ENQ\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\SOH\DC2\EOT\239\ENQ\DC2\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ETX\DC2\EOT\239\ENQ%'\n\
    \\128\ACK\n\
    \\EOT\EOT\SOH\STX\r\DC2\ACK\251\ENQ\STX\252\ENQS\SUB\239\ENQ HTTP protocol options that are applied only to upstream HTTP connections.\n\
    \ These options apply to all HTTP versions.\n\
    \ This has been deprecated in favor of\n\
    \ :ref:`upstream_http_protocol_options <envoy_v3_api_field_extensions.upstreams.http.v3.HttpProtocolOptions.upstream_http_protocol_options>`\n\
    \ in the :ref:`http_protocol_options <envoy_v3_api_msg_extensions.upstreams.http.v3.HttpProtocolOptions>` message.\n\
    \ upstream_http_protocol_options can be set via the cluster's\n\
    \ :ref:`extension_protocol_options<envoy_v3_api_field_config.cluster.v3.Cluster.typed_extension_protocol_options>`.\n\
    \ See :ref:`upstream_http_protocol_options\n\
    \ <envoy_v3_api_field_extensions.upstreams.http.v3.HttpProtocolOptions.upstream_http_protocol_options>`\n\
    \ for example usage.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\ACK\DC2\EOT\251\ENQ\STX%\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\SOH\DC2\EOT\251\ENQ&D\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\ETX\DC2\EOT\251\ENQGI\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\b\DC2\EOT\252\ENQ\ACKR\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX\r\b\ETX\DC2\EOT\252\ENQ\a\CAN\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\r\b\242\232\128K\DC2\EOT\252\ENQ\SUBQ\n\
    \\130\ACK\n\
    \\EOT\EOT\SOH\STX\SO\DC2\ACK\136\ACK\STX\137\ACKS\SUB\241\ENQ Additional options when handling HTTP requests upstream. These options will be applicable to\n\
    \ both HTTP1 and HTTP2 requests.\n\
    \ This has been deprecated in favor of\n\
    \ :ref:`common_http_protocol_options <envoy_v3_api_field_extensions.upstreams.http.v3.HttpProtocolOptions.common_http_protocol_options>`\n\
    \ in the :ref:`http_protocol_options <envoy_v3_api_msg_extensions.upstreams.http.v3.HttpProtocolOptions>` message.\n\
    \ common_http_protocol_options can be set via the cluster's\n\
    \ :ref:`extension_protocol_options<envoy_v3_api_field_config.cluster.v3.Cluster.typed_extension_protocol_options>`.\n\
    \ See :ref:`upstream_http_protocol_options\n\
    \ <envoy_v3_api_field_extensions.upstreams.http.v3.HttpProtocolOptions.upstream_http_protocol_options>`\n\
    \ for example usage.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\ACK\DC2\EOT\136\ACK\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\SOH\DC2\EOT\136\ACK\RS:\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\ETX\DC2\EOT\136\ACK=?\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\b\DC2\EOT\137\ACK\ACKR\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX\SO\b\ETX\DC2\EOT\137\ACK\a\CAN\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\SO\b\242\232\128K\DC2\EOT\137\ACK\SUBQ\n\
    \\203\EOT\n\
    \\EOT\EOT\SOH\STX\SI\DC2\ACK\147\ACK\STX\148\ACKS\SUB\186\EOT Additional options when handling HTTP1 requests.\n\
    \ This has been deprecated in favor of http_protocol_options fields in the in the\n\
    \ :ref:`http_protocol_options <envoy_v3_api_msg_extensions.upstreams.http.v3.HttpProtocolOptions>` message.\n\
    \ http_protocol_options can be set via the cluster's\n\
    \ :ref:`extension_protocol_options<envoy_v3_api_field_config.cluster.v3.Cluster.typed_extension_protocol_options>`.\n\
    \ See :ref:`upstream_http_protocol_options\n\
    \ <envoy_v3_api_field_extensions.upstreams.http.v3.HttpProtocolOptions.upstream_http_protocol_options>`\n\
    \ for example usage.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\ACK\DC2\EOT\147\ACK\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\SOH\DC2\EOT\147\ACK\US4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\ETX\DC2\EOT\147\ACK79\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\b\DC2\EOT\148\ACK\ACKR\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX\SI\b\ETX\DC2\EOT\148\ACK\a\CAN\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\SI\b\242\232\128K\DC2\EOT\148\ACK\SUBQ\n\
    \\180\a\n\
    \\EOT\EOT\SOH\STX\DLE\DC2\ACK\163\ACK\STX\167\ACK\EOT\SUB\163\a Even if default HTTP2 protocol options are desired, this field must be\n\
    \ set so that Envoy will assume that the upstream supports HTTP/2 when\n\
    \ making new HTTP connection pool connections. Currently, Envoy only\n\
    \ supports prior knowledge for upstream connections. Even if TLS is used\n\
    \ with ALPN, `http2_protocol_options` must be specified. As an aside this allows HTTP/2\n\
    \ connections to happen over plain text.\n\
    \ This has been deprecated in favor of http2_protocol_options fields in the in the\n\
    \ :ref:`http_protocol_options <envoy_v3_api_msg_extensions.upstreams.http.v3.HttpProtocolOptions>`\n\
    \ message. http2_protocol_options can be set via the cluster's\n\
    \ :ref:`extension_protocol_options<envoy_v3_api_field_config.cluster.v3.Cluster.typed_extension_protocol_options>`.\n\
    \ See :ref:`upstream_http_protocol_options\n\
    \ <envoy_v3_api_field_extensions.upstreams.http.v3.HttpProtocolOptions.upstream_http_protocol_options>`\n\
    \ for example usage.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DLE\ACK\DC2\EOT\163\ACK\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DLE\SOH\DC2\EOT\163\ACK\US5\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DLE\ETX\DC2\EOT\163\ACK8:\n\
    \\SI\n\
    \\ENQ\EOT\SOH\STX\DLE\b\DC2\ACK\163\ACK;\167\ACK\ETX\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX\DLE\b\ETX\DC2\EOT\164\ACK\EOT\NAK\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\STX\DLE\b\177\242\166\ENQ\STX\DC2\EOT\165\ACK\EOTG\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\DLE\b\242\232\128K\DC2\EOT\166\ACK\EOT;\n\
    \\232\STX\n\
    \\EOT\EOT\SOH\STX\DC1\DC2\EOT\174\ACK\STXI\SUB\217\STX The extension_protocol_options field is used to provide extension-specific protocol options\n\
    \ for upstream connections. The key should match the extension filter name, such as\n\
    \ \"envoy.filters.network.thrift_proxy\". See the extension's documentation for details on\n\
    \ specific options.\n\
    \ [#next-major-version: make this a list of typed extensions.]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC1\ACK\DC2\EOT\174\ACK\STX\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC1\SOH\DC2\EOT\174\ACK#C\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC1\ETX\DC2\EOT\174\ACKFH\n\
    \\188\ENQ\n\
    \\EOT\EOT\SOH\STX\DC2\DC2\ACK\185\ACK\STX\186\ACK:\SUB\171\ENQ If the DNS refresh rate is specified and the cluster type is either\n\
    \ :ref:`STRICT_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.STRICT_DNS>`,\n\
    \ or :ref:`LOGICAL_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.LOGICAL_DNS>`,\n\
    \ this value is used as the cluster\226\128\153s DNS refresh\n\
    \ rate. The value configured must be at least 1ms. If this setting is not specified, the\n\
    \ value defaults to 5000ms. For cluster types other than\n\
    \ :ref:`STRICT_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.STRICT_DNS>`\n\
    \ and :ref:`LOGICAL_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.LOGICAL_DNS>`\n\
    \ this setting is ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC2\ACK\DC2\EOT\185\ACK\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC2\SOH\DC2\EOT\185\ACK\ESC+\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC2\ETX\DC2\EOT\185\ACK.0\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC2\b\DC2\EOT\186\ACK\ACK9\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\DC2\b\175\b\NAK\DC2\EOT\186\ACK\a8\n\
    \\199\ENQ\n\
    \\EOT\EOT\SOH\STX\DC3\DC2\EOT\196\ACK\STX,\SUB\184\ENQ If the DNS failure refresh rate is specified and the cluster type is either\n\
    \ :ref:`STRICT_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.STRICT_DNS>`,\n\
    \ or :ref:`LOGICAL_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.LOGICAL_DNS>`,\n\
    \ this is used as the cluster\226\128\153s DNS refresh rate when requests are failing. If this setting is\n\
    \ not specified, the failure refresh rate defaults to the DNS refresh rate. For cluster types\n\
    \ other than :ref:`STRICT_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.STRICT_DNS>` and\n\
    \ :ref:`LOGICAL_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.LOGICAL_DNS>` this setting is\n\
    \ ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC3\ACK\DC2\EOT\196\ACK\STX\r\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC3\SOH\DC2\EOT\196\ACK\SO&\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC3\ETX\DC2\EOT\196\ACK)+\n\
    \\207\SOH\n\
    \\EOT\EOT\SOH\STX\DC4\DC2\EOT\201\ACK\STX\FS\SUB\192\SOH Optional configuration for setting cluster's DNS refresh rate. If the value is set to true,\n\
    \ cluster's DNS refresh rate will be set to resource record's TTL which comes from DNS\n\
    \ resolution.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC4\ENQ\DC2\EOT\201\ACK\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC4\SOH\DC2\EOT\201\ACK\a\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC4\ETX\DC2\EOT\201\ACK\EM\ESC\n\
    \\197\SOH\n\
    \\EOT\EOT\SOH\STX\NAK\DC2\EOT\206\ACK\STXX\SUB\182\SOH The DNS IP address resolution policy. If this setting is not specified, the\n\
    \ value defaults to\n\
    \ :ref:`AUTO<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DnsLookupFamily.AUTO>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NAK\ACK\DC2\EOT\206\ACK\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NAK\SOH\DC2\EOT\206\ACK\DC2#\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NAK\ETX\DC2\EOT\206\ACK&(\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NAK\b\DC2\EOT\206\ACK)W\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\NAK\b\175\b\DLE\DC2\EOT\206\ACK*V\n\
    \\177\b\n\
    \\EOT\EOT\SOH\STX\SYN\DC2\ACK\223\ACK\STX\224\ACKS\SUB\160\b If DNS resolvers are specified and the cluster type is either\n\
    \ :ref:`STRICT_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.STRICT_DNS>`,\n\
    \ or :ref:`LOGICAL_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.LOGICAL_DNS>`,\n\
    \ this value is used to specify the cluster\226\128\153s dns resolvers.\n\
    \ If this setting is not specified, the value defaults to the default\n\
    \ resolver, which uses /etc/resolv.conf for configuration. For cluster types\n\
    \ other than\n\
    \ :ref:`STRICT_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.STRICT_DNS>`\n\
    \ and :ref:`LOGICAL_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.LOGICAL_DNS>`\n\
    \ this setting is ignored.\n\
    \ Setting this value causes failure if the\n\
    \ ``envoy.restart_features.use_apple_api_for_dns_lookups`` runtime value is true during\n\
    \ server startup. Apple's API only allows overriding DNS resolvers via system settings.\n\
    \ This field is deprecated in favor of *dns_resolution_config*\n\
    \ which aggregates all of the DNS resolver configuration in a single message.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\EOT\DC2\EOT\223\ACK\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\ACK\DC2\EOT\223\ACK\v\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\SOH\DC2\EOT\223\ACK\ESC(\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\ETX\DC2\EOT\223\ACK+-\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\b\DC2\EOT\224\ACK\ACKR\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX\SYN\b\ETX\DC2\EOT\224\ACK\a\CAN\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\SYN\b\242\232\128K\DC2\EOT\224\ACK\SUBQ\n\
    \\155\ETX\n\
    \\EOT\EOT\SOH\STX\ETB\DC2\ACK\232\ACK\STX\233\ACKS\SUB\138\ETX Always use TCP queries instead of UDP queries for DNS lookups.\n\
    \ Setting this value causes failure if the\n\
    \ ``envoy.restart_features.use_apple_api_for_dns_lookups`` runtime value is true during\n\
    \ server startup. Apple' API only uses UDP for DNS resolution.\n\
    \ This field is deprecated in favor of *dns_resolution_config*\n\
    \ which aggregates all of the DNS resolver configuration in a single message.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETB\ENQ\DC2\EOT\232\ACK\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETB\SOH\DC2\EOT\232\ACK\a\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETB\ETX\DC2\EOT\232\ACK!#\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETB\b\DC2\EOT\233\ACK\ACKR\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX\ETB\b\ETX\DC2\EOT\233\ACK\a\CAN\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\ETB\b\242\232\128K\DC2\EOT\233\ACK\SUBQ\n\
    \n\n\
    \\EOT\EOT\SOH\STX\CAN\DC2\EOT\236\ACK\STX9\SUB` DNS resolution configuration which includes the underlying dns resolver addresses and options.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\CAN\ACK\DC2\EOT\236\ACK\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\CAN\SOH\DC2\EOT\236\ACK\RS3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\CAN\ETX\DC2\EOT\236\ACK68\n\
    \\213\ETX\n\
    \\EOT\EOT\SOH\STX\EM\DC2\EOT\243\ACK\STX7\SUB\198\ETX Optional configuration for having cluster readiness block on warm-up. Currently, only applicable for\n\
    \ :ref:`STRICT_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.STRICT_DNS>`,\n\
    \ or :ref:`LOGICAL_DNS<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.LOGICAL_DNS>`.\n\
    \ If true, cluster readiness blocks on warm-up. If false, the cluster will complete\n\
    \ initialization whether or not warm-up has completed. Defaults to true.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EM\ACK\DC2\EOT\243\ACK\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EM\SOH\DC2\EOT\243\ACK\FS1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EM\ETX\DC2\EOT\243\ACK46\n\
    \\230\SOH\n\
    \\EOT\EOT\SOH\STX\SUB\DC2\EOT\248\ACK\STX*\SUB\215\SOH If specified, outlier detection will be enabled for this upstream cluster.\n\
    \ Each of the configuration values can be overridden via\n\
    \ :ref:`runtime values <config_cluster_manager_cluster_runtime_outlier_detection>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SUB\ACK\DC2\EOT\248\ACK\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SUB\SOH\DC2\EOT\248\ACK\DC3$\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SUB\ETX\DC2\EOT\248\ACK')\n\
    \\245\ACK\n\
    \\EOT\EOT\SOH\STX\ESC\DC2\EOT\135\a\STXW\SUB\230\ACK The interval for removing stale hosts from a cluster type\n\
    \ :ref:`ORIGINAL_DST<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.ORIGINAL_DST>`.\n\
    \ Hosts are considered stale if they have not been used\n\
    \ as upstream destinations during this interval. New hosts are added\n\
    \ to original destination clusters on demand as new connections are\n\
    \ redirected to Envoy, causing the number of hosts in the cluster to\n\
    \ grow over time. Hosts that are not stale (they are actively used as\n\
    \ destinations) are kept in the cluster, which allows connections to\n\
    \ them remain open, saving the latency that would otherwise be spent\n\
    \ on opening new connections. If this setting is not specified, the\n\
    \ value defaults to 5000ms. For cluster types other than\n\
    \ :ref:`ORIGINAL_DST<envoy_v3_api_enum_value_config.cluster.v3.Cluster.DiscoveryType.ORIGINAL_DST>`\n\
    \ this setting is ignored.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ESC\ACK\DC2\EOT\135\a\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ESC\SOH\DC2\EOT\135\a\ESC+\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ESC\ETX\DC2\EOT\135\a.0\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ESC\b\DC2\EOT\135\a1V\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\ESC\b\175\b\NAK\DC2\EOT\135\a2U\n\
    \\221\SOH\n\
    \\EOT\EOT\SOH\STX\FS\DC2\EOT\140\a\STX/\SUB\206\SOH Optional configuration used to bind newly established upstream connections.\n\
    \ This overrides any bind_config specified in the bootstrap proto.\n\
    \ If the address and port are empty, no bind will be performed.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\FS\ACK\DC2\EOT\140\a\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\FS\SOH\DC2\EOT\140\a\NAK)\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\FS\ETX\DC2\EOT\140\a,.\n\
    \<\n\
    \\EOT\EOT\SOH\STX\GS\DC2\EOT\143\a\STX'\SUB. Configuration for load balancing subsetting.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\GS\ACK\DC2\EOT\143\a\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\GS\SOH\DC2\EOT\143\a\DC1!\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\GS\ETX\DC2\EOT\143\a$&\n\
    \\196\EOT\n\
    \\EOT\EOT\SOH\b\SOH\DC2\ACK\153\a\STX\165\a\ETX\SUB\179\EOT Optional configuration for the load balancing algorithm selected by\n\
    \ LbPolicy. Currently only\n\
    \ :ref:`RING_HASH<envoy_v3_api_enum_value_config.cluster.v3.Cluster.LbPolicy.RING_HASH>`,\n\
    \ :ref:`MAGLEV<envoy_v3_api_enum_value_config.cluster.v3.Cluster.LbPolicy.MAGLEV>` and\n\
    \ :ref:`LEAST_REQUEST<envoy_v3_api_enum_value_config.cluster.v3.Cluster.LbPolicy.LEAST_REQUEST>`\n\
    \ has additional configuration options.\n\
    \ Specifying ring_hash_lb_config or maglev_lb_config or least_request_lb_config without setting the corresponding\n\
    \ LbPolicy will generate an error at runtime.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\SOH\SOH\DC2\EOT\153\a\b\DC1\n\
    \O\n\
    \\EOT\EOT\SOH\STX\RS\DC2\EOT\155\a\EOT.\SUBA Optional configuration for the Ring Hash load balancing policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\RS\ACK\DC2\EOT\155\a\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\RS\SOH\DC2\EOT\155\a\NAK(\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\RS\ETX\DC2\EOT\155\a+-\n\
    \L\n\
    \\EOT\EOT\SOH\STX\US\DC2\EOT\158\a\EOT)\SUB> Optional configuration for the Maglev load balancing policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\US\ACK\DC2\EOT\158\a\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\US\SOH\DC2\EOT\158\a\DC3#\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\US\ETX\DC2\EOT\158\a&(\n\
    \Z\n\
    \\EOT\EOT\SOH\STX \DC2\EOT\161\a\EOT4\SUBL Optional configuration for the Original Destination load balancing policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX \ACK\DC2\EOT\161\a\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX \SOH\DC2\EOT\161\a\CAN.\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX \ETX\DC2\EOT\161\a13\n\
    \R\n\
    \\EOT\EOT\SOH\STX!\DC2\EOT\164\a\EOT6\SUBD Optional configuration for the LeastRequest load balancing policy.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX!\ACK\DC2\EOT\164\a\EOT\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX!\SOH\DC2\EOT\164\a\EM0\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX!\ETX\DC2\EOT\164\a35\n\
    \K\n\
    \\EOT\EOT\SOH\STX\"\DC2\EOT\168\a\STX'\SUB= Common configuration for all load balancer implementations.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\"\ACK\DC2\EOT\168\a\STX\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\"\SOH\DC2\EOT\168\a\DC1!\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\"\ETX\DC2\EOT\168\a$&\n\
    \\148\ETX\n\
    \\EOT\EOT\SOH\STX#\DC2\EOT\175\a\STX0\SUB\133\ETX Optional custom transport socket implementation to use for upstream connections.\n\
    \ To setup TLS, set a transport socket with name `envoy.transport_sockets.tls` and\n\
    \ :ref:`UpstreamTlsContexts <envoy_v3_api_msg_extensions.transport_sockets.tls.v3.UpstreamTlsContext>` in the `typed_config`.\n\
    \ If no transport socket configuration is specified, new connections\n\
    \ will be set up with plaintext.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX#\ACK\DC2\EOT\175\a\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX#\SOH\DC2\EOT\175\a\SUB*\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX#\ETX\DC2\EOT\175\a-/\n\
    \\147\ETX\n\
    \\EOT\EOT\SOH\STX$\DC2\EOT\182\a\STX!\SUB\132\ETX The Metadata field can be used to provide additional information about the\n\
    \ cluster. It can be used for stats, logging, and varying filter behavior.\n\
    \ Fields should use reverse DNS notation to denote which entity within Envoy\n\
    \ will need the information. For instance, if the metadata is intended for\n\
    \ the Router filter, the filter name should be specified as *envoy.filters.http.router*.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX$\ACK\DC2\EOT\182\a\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX$\SOH\DC2\EOT\182\a\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX$\ETX\DC2\EOT\182\a\RS \n\
    \\193\ETX\n\
    \\EOT\EOT\SOH\STX%\DC2\ACK\190\a\STX\191\aS\SUB\176\ETX Determines how Envoy selects the protocol used to speak to upstream hosts.\n\
    \ This has been deprecated in favor of setting explicit protocol selection\n\
    \ in the :ref:`http_protocol_options\n\
    \ <envoy_v3_api_msg_extensions.upstreams.http.v3.HttpProtocolOptions>` message.\n\
    \ http_protocol_options can be set via the cluster's\n\
    \ :ref:`extension_protocol_options<envoy_v3_api_field_config.cluster.v3.Cluster.typed_extension_protocol_options>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX%\ACK\DC2\EOT\190\a\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX%\SOH\DC2\EOT\190\a\ESC-\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX%\ETX\DC2\EOT\190\a02\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX%\b\DC2\EOT\191\a\ACKR\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX%\b\ETX\DC2\EOT\191\a\a\CAN\n\
    \\DC1\n\
    \\t\EOT\SOH\STX%\b\242\232\128K\DC2\EOT\191\a\SUBQ\n\
    \:\n\
    \\EOT\EOT\SOH\STX&\DC2\EOT\194\a\STX=\SUB, Optional options for upstream connections.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX&\ACK\DC2\EOT\194\a\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX&\SOH\DC2\EOT\194\a\FS7\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX&\ETX\DC2\EOT\194\a:<\n\
    \\238\EOT\n\
    \\EOT\EOT\SOH\STX'\DC2\EOT\209\a\STX5\SUB\223\EOT If an upstream host becomes unhealthy (as determined by the configured health checks\n\
    \ or outlier detection), immediately close all connections to the failed host.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   This is currently only supported for connections created by tcp_proxy.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   The current implementation of this feature closes all connections immediately when\n\
    \   the unhealthy status is detected. If there are a large number of connections open\n\
    \   to an upstream host that becomes unhealthy, Envoy may spend a substantial amount of\n\
    \   time exclusively closing these connections, and not processing any other traffic.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX'\ENQ\DC2\EOT\209\a\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX'\SOH\DC2\EOT\209\a\a/\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX'\ETX\DC2\EOT\209\a24\n\
    \\129\STX\n\
    \\EOT\EOT\SOH\STX(\DC2\EOT\214\a\STX*\SUB\242\SOH If set to true, Envoy will ignore the health value of a host when processing its removal\n\
    \ from service discovery. This means that if active health checking is used, Envoy will *not*\n\
    \ wait for the endpoint to go unhealthy before removing it.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX(\ENQ\DC2\EOT\214\a\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX(\SOH\DC2\EOT\214\a\a$\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX(\ETX\DC2\EOT\214\a')\n\
    \\217\SOH\n\
    \\EOT\EOT\SOH\STX)\DC2\EOT\219\a\STX\US\SUB\202\SOH An (optional) network filter chain, listed in the order the filters should be applied.\n\
    \ The chain will be applied to all outgoing connections that Envoy makes to the upstream\n\
    \ servers of this cluster.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX)\EOT\DC2\EOT\219\a\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX)\ACK\DC2\EOT\219\a\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX)\SOH\DC2\EOT\219\a\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX)\ETX\DC2\EOT\219\a\FS\RS\n\
    \\194\STX\n\
    \\EOT\EOT\SOH\STX*\DC2\EOT\224\a\STX1\SUB\179\STX [#not-implemented-hide:] New mechanism for LB policy configuration. Used only if the\n\
    \ :ref:`lb_policy<envoy_v3_api_field_config.cluster.v3.Cluster.lb_policy>` field has the value\n\
    \ :ref:`LOAD_BALANCING_POLICY_CONFIG<envoy_v3_api_enum_value_config.cluster.v3.Cluster.LbPolicy.LOAD_BALANCING_POLICY_CONFIG>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX*\ACK\DC2\EOT\224\a\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX*\SOH\DC2\EOT\224\a\SYN+\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX*\ETX\DC2\EOT\224\a.0\n\
    \\233\ACK\n\
    \\EOT\EOT\SOH\STX+\DC2\EOT\240\a\STX'\SUB\218\ACK [#not-implemented-hide:]\n\
    \ If present, tells the client where to send load reports via LRS. If not present, the\n\
    \ client will fall back to a client-side default, which may be either (a) don't send any\n\
    \ load reports or (b) send load reports for all clusters to a single default server\n\
    \ (which may be configured in the bootstrap file).\n\
    \\n\
    \ Note that if multiple clusters point to the same LRS server, the client may choose to\n\
    \ create a separate stream for each cluster or it may choose to coalesce the data for\n\
    \ multiple clusters onto a single stream. Either way, the client must make sure to send\n\
    \ the data for any given cluster on no more than one stream.\n\
    \\n\
    \ [#next-major-version: In the v3 API, we should consider restructuring this somehow,\n\
    \ maybe by allowing LRS to go on the ADS stream, or maybe by moving some of the negotiation\n\
    \ from the LRS stream here.]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX+\ACK\DC2\EOT\240\a\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX+\SOH\DC2\EOT\240\a\ETB!\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX+\ETX\DC2\EOT\240\a$&\n\
    \\129\ENQ\n\
    \\EOT\EOT\SOH\STX,\DC2\ACK\252\a\STX\253\aS\SUB\240\EOT If track_timeout_budgets is true, the :ref:`timeout budget histograms\n\
    \ <config_cluster_manager_cluster_stats_timeout_budgets>` will be published for each\n\
    \ request. These show what percentage of a request's per try and global timeout was used. A value\n\
    \ of 0 would indicate that none of the timeout was used or that the timeout was infinite. A value\n\
    \ of 100 would indicate that the request took the entirety of the timeout given to it.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   This field has been deprecated in favor of `timeout_budgets`, part of\n\
    \   :ref:`track_cluster_stats <envoy_v3_api_field_config.cluster.v3.Cluster.track_cluster_stats>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX,\ENQ\DC2\EOT\252\a\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX,\SOH\DC2\EOT\252\a\a\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX,\ETX\DC2\EOT\252\a\US!\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX,\b\DC2\EOT\253\a\ACKR\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX,\b\ETX\DC2\EOT\253\a\a\CAN\n\
    \\DC1\n\
    \\t\EOT\SOH\STX,\b\242\232\128K\DC2\EOT\253\a\SUBQ\n\
    \\232\a\n\
    \\EOT\EOT\SOH\STX-\DC2\EOT\145\b\STX4\SUB\217\a Optional customization and configuration of upstream connection pool, and upstream type.\n\
    \\n\
    \ Currently this field only applies for HTTP traffic but is designed for eventual use for custom\n\
    \ TCP upstreams.\n\
    \\n\
    \ For HTTP traffic, Envoy will generally take downstream HTTP and send it upstream as upstream\n\
    \ HTTP, using the http connection pool and the codec from `http2_protocol_options`\n\
    \\n\
    \ For routes where CONNECT termination is configured, Envoy will take downstream CONNECT\n\
    \ requests and forward the CONNECT payload upstream over raw TCP using the tcp connection pool.\n\
    \\n\
    \ The default pool used is the generic connection pool which creates the HTTP upstream for most\n\
    \ HTTP requests, and the TCP upstream if CONNECT termination is configured.\n\
    \\n\
    \ If users desire custom connection pool or upstream behavior, for example terminating\n\
    \ CONNECT only if a custom filter indicates it is appropriate, the custom factories\n\
    \ can be registered and configured here.\n\
    \ [#extension-category: envoy.upstreams]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX-\ACK\DC2\EOT\145\b\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX-\SOH\DC2\EOT\145\b\US.\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX-\ETX\DC2\EOT\145\b13\n\
    \>\n\
    \\EOT\EOT\SOH\STX.\DC2\EOT\148\b\STX-\SUB0 Configuration to track optional cluster stats.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX.\ACK\DC2\EOT\148\b\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX.\SOH\DC2\EOT\148\b\DC4'\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX.\ETX\DC2\EOT\148\b*,\n\
    \:\n\
    \\EOT\EOT\SOH\STX/\DC2\EOT\151\b\STX*\SUB, Preconnect configuration for this cluster.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX/\ACK\DC2\EOT\151\b\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX/\SOH\DC2\EOT\151\b\DC3$\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX/\ETX\DC2\EOT\151\b')\n\
    \\153\SOH\n\
    \\EOT\EOT\SOH\STX0\DC2\EOT\155\b\STX6\SUB\138\SOH If `connection_pool_per_downstream_connection` is true, the cluster will use a separate\n\
    \ connection pool for every downstream connection\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX0\ENQ\DC2\EOT\155\b\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX0\SOH\DC2\EOT\155\b\a0\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX0\ETX\DC2\EOT\155\b35\n\
    \\147\n\
    \\n\
    \\STX\EOT\STX\DC2\ACK\177\b\NUL\198\b\SOH\SUB\132\n\
    \ [#not-implemented-hide:] Extensible load balancing policy configuration.\n\
    \\n\
    \ Every LB policy defined via this mechanism will be identified via a unique name using reverse\n\
    \ DNS notation. If the policy needs configuration parameters, it must define a message for its\n\
    \ own configuration, which will be stored in the config field. The name of the policy will tell\n\
    \ clients which type of message they should expect to see in the config field.\n\
    \\n\
    \ Note that there are cases where it is useful to be able to independently select LB policies\n\
    \ for choosing a locality and for choosing an endpoint within that locality. For example, a\n\
    \ given deployment may always use the same policy to choose the locality, but for choosing the\n\
    \ endpoint within the locality, some clusters may use weighted-round-robin, while others may\n\
    \ use some sort of session-based balancing.\n\
    \\n\
    \ This can be accomplished via hierarchical LB policies, where the parent LB policy creates a\n\
    \ child LB policy for each locality. For each request, the parent chooses the locality and then\n\
    \ delegates to the child policy for that locality to choose the endpoint within the locality.\n\
    \\n\
    \ To facilitate this, the config message for the top-level LB policy may include a field of\n\
    \ type LoadBalancingPolicy that specifies the child policy.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\177\b\b\ESC\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT\178\b\STXb\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT\178\b\STXb\n\
    \\SO\n\
    \\EOT\EOT\STX\ETX\NUL\DC2\ACK\180\b\STX\192\b\ETX\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\NUL\SOH\DC2\EOT\180\b\n\
    \\DLE\n\
    \\SI\n\
    \\ENQ\EOT\STX\ETX\NUL\a\DC2\ACK\181\b\EOT\182\b2\n\
    \\DC4\n\
    \\n\
    \\EOT\STX\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\181\b\EOT\182\b2\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\NUL\t\DC2\EOT\184\b\EOT\SI\n\
    \\SO\n\
    \\ACK\EOT\STX\ETX\NUL\t\NUL\DC2\EOT\184\b\r\SO\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\t\NUL\SOH\DC2\EOT\184\b\r\SO\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\t\NUL\STX\DC2\EOT\184\b\r\SO\n\
    \\r\n\
    \\ENQ\EOT\STX\ETX\NUL\n\
    \\DC2\EOT\186\b\EOT\SYN\n\
    \\SO\n\
    \\ACK\EOT\STX\ETX\NUL\n\
    \\NUL\DC2\EOT\186\b\r\NAK\n\
    \6\n\
    \\ACK\EOT\STX\ETX\NUL\STX\NUL\DC2\EOT\189\b\EOT\DC4\SUB& Required. The name of the LB policy.\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ENQ\DC2\EOT\189\b\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\SOH\DC2\EOT\189\b\v\SI\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\NUL\ETX\DC2\EOT\189\b\DC2\DC3\n\
    \\SO\n\
    \\ACK\EOT\STX\ETX\NUL\STX\SOH\DC2\EOT\191\b\EOT)\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ACK\DC2\EOT\191\b\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\SOH\DC2\EOT\191\b\CAN$\n\
    \\SI\n\
    \\a\EOT\STX\ETX\NUL\STX\SOH\ETX\DC2\EOT\191\b'(\n\
    \\218\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\197\b\STX\US\SUB\203\SOH Each client will iterate over the list in order and stop at the first policy that it\n\
    \ supports. This provides a mechanism for starting to use new LB policies that are not yet\n\
    \ supported by all clients.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\EOT\197\b\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\197\b\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\197\b\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\197\b\GS\RS\n\
    \|\n\
    \\STX\EOT\ETX\DC2\ACK\202\b\NUL\207\b\SOH\SUBn An extensible structure containing the address Envoy should bind to when\n\
    \ establishing upstream connections.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\202\b\b\SUB\n\
    \\v\n\
    \\ETX\EOT\ETX\a\DC2\EOT\203\b\STXa\n\
    \\DLE\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\EOT\203\b\STXa\n\
    \X\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\206\b\STX%\SUBJ The address Envoy should bind to when establishing upstream connections.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\206\b\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\206\b\DC2 \n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\206\b#$\n\
    \\f\n\
    \\STX\EOT\EOT\DC2\ACK\209\b\NUL\215\b\SOH\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\209\b\b!\n\
    \\r\n\
    \\ETX\EOT\EOT\a\DC2\ACK\210\b\STX\211\b/\n\
    \\DC2\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ACK\210\b\STX\211\b/\n\
    \T\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\214\b\STX)\SUBF If set then set SO_KEEPALIVE on the socket to enable TCP Keepalives.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\214\b\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\214\b\ETB$\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\214\b'(\n\
    \\f\n\
    \\STX\EOT\ENQ\DC2\ACK\217\b\NUL\229\b\SOH\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\217\b\b\EM\n\
    \\188\ETX\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\223\b\STX\ESC\SUB\173\ETX If timeout_budgets is true, the :ref:`timeout budget histograms\n\
    \ <config_cluster_manager_cluster_stats_timeout_budgets>` will be published for each\n\
    \ request. These show what percentage of a request's per try and global timeout was used. A value\n\
    \ of 0 would indicate that none of the timeout was used or that the timeout was infinite. A value\n\
    \ of 100 would indicate that the request took the entirety of the timeout given to it.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\223\b\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\223\b\a\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\223\b\EM\SUB\n\
    \\219\SOH\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\228\b\STX\"\SUB\204\SOH If request_response_sizes is true, then the :ref:`histograms\n\
    \ <config_cluster_manager_cluster_stats_request_response_sizes>`  tracking header and body sizes\n\
    \ of requests and responses will be published.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\228\b\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\228\b\a\GS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\228\b !b\ACKproto3"