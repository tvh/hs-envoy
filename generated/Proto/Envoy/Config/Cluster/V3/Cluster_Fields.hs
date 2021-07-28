{- This file was auto-generated from envoy/config/cluster/v3/cluster.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Cluster.V3.Cluster_Fields where
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
activeRequestBias ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activeRequestBias" a) =>
  Lens.Family2.LensLike' f s a
activeRequestBias = Data.ProtoLens.Field.field @"activeRequestBias"
altStatName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "altStatName" a) =>
  Lens.Family2.LensLike' f s a
altStatName = Data.ProtoLens.Field.field @"altStatName"
baseInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "baseInterval" a) =>
  Lens.Family2.LensLike' f s a
baseInterval = Data.ProtoLens.Field.field @"baseInterval"
choiceCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "choiceCount" a) =>
  Lens.Family2.LensLike' f s a
choiceCount = Data.ProtoLens.Field.field @"choiceCount"
circuitBreakers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "circuitBreakers" a) =>
  Lens.Family2.LensLike' f s a
circuitBreakers = Data.ProtoLens.Field.field @"circuitBreakers"
cleanupInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cleanupInterval" a) =>
  Lens.Family2.LensLike' f s a
cleanupInterval = Data.ProtoLens.Field.field @"cleanupInterval"
closeConnectionsOnHostHealthFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "closeConnectionsOnHostHealthFailure" a) =>
  Lens.Family2.LensLike' f s a
closeConnectionsOnHostHealthFailure
  = Data.ProtoLens.Field.field @"closeConnectionsOnHostHealthFailure"
closeConnectionsOnHostSetChange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "closeConnectionsOnHostSetChange" a) =>
  Lens.Family2.LensLike' f s a
closeConnectionsOnHostSetChange
  = Data.ProtoLens.Field.field @"closeConnectionsOnHostSetChange"
clusterType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterType" a) =>
  Lens.Family2.LensLike' f s a
clusterType = Data.ProtoLens.Field.field @"clusterType"
commonHttpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commonHttpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
commonHttpProtocolOptions
  = Data.ProtoLens.Field.field @"commonHttpProtocolOptions"
commonLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commonLbConfig" a) =>
  Lens.Family2.LensLike' f s a
commonLbConfig = Data.ProtoLens.Field.field @"commonLbConfig"
connectTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "connectTimeout" a) =>
  Lens.Family2.LensLike' f s a
connectTimeout = Data.ProtoLens.Field.field @"connectTimeout"
connectionPoolPerDownstreamConnection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "connectionPoolPerDownstreamConnection" a) =>
  Lens.Family2.LensLike' f s a
connectionPoolPerDownstreamConnection
  = Data.ProtoLens.Field.field
      @"connectionPoolPerDownstreamConnection"
consistentHashingLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "consistentHashingLbConfig" a) =>
  Lens.Family2.LensLike' f s a
consistentHashingLbConfig
  = Data.ProtoLens.Field.field @"consistentHashingLbConfig"
defaultSubset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultSubset" a) =>
  Lens.Family2.LensLike' f s a
defaultSubset = Data.ProtoLens.Field.field @"defaultSubset"
dnsFailureRefreshRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsFailureRefreshRate" a) =>
  Lens.Family2.LensLike' f s a
dnsFailureRefreshRate
  = Data.ProtoLens.Field.field @"dnsFailureRefreshRate"
dnsLookupFamily ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsLookupFamily" a) =>
  Lens.Family2.LensLike' f s a
dnsLookupFamily = Data.ProtoLens.Field.field @"dnsLookupFamily"
dnsRefreshRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsRefreshRate" a) =>
  Lens.Family2.LensLike' f s a
dnsRefreshRate = Data.ProtoLens.Field.field @"dnsRefreshRate"
dnsResolutionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsResolutionConfig" a) =>
  Lens.Family2.LensLike' f s a
dnsResolutionConfig
  = Data.ProtoLens.Field.field @"dnsResolutionConfig"
dnsResolvers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsResolvers" a) =>
  Lens.Family2.LensLike' f s a
dnsResolvers = Data.ProtoLens.Field.field @"dnsResolvers"
edsClusterConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "edsClusterConfig" a) =>
  Lens.Family2.LensLike' f s a
edsClusterConfig = Data.ProtoLens.Field.field @"edsClusterConfig"
edsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "edsConfig" a) =>
  Lens.Family2.LensLike' f s a
edsConfig = Data.ProtoLens.Field.field @"edsConfig"
entries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "entries" a) =>
  Lens.Family2.LensLike' f s a
entries = Data.ProtoLens.Field.field @"entries"
failTrafficOnPanic ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failTrafficOnPanic" a) =>
  Lens.Family2.LensLike' f s a
failTrafficOnPanic
  = Data.ProtoLens.Field.field @"failTrafficOnPanic"
fallbackKeysSubset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fallbackKeysSubset" a) =>
  Lens.Family2.LensLike' f s a
fallbackKeysSubset
  = Data.ProtoLens.Field.field @"fallbackKeysSubset"
fallbackPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fallbackPolicy" a) =>
  Lens.Family2.LensLike' f s a
fallbackPolicy = Data.ProtoLens.Field.field @"fallbackPolicy"
filters ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "filters" a) =>
  Lens.Family2.LensLike' f s a
filters = Data.ProtoLens.Field.field @"filters"
hashBalanceFactor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hashBalanceFactor" a) =>
  Lens.Family2.LensLike' f s a
hashBalanceFactor = Data.ProtoLens.Field.field @"hashBalanceFactor"
hashFunction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hashFunction" a) =>
  Lens.Family2.LensLike' f s a
hashFunction = Data.ProtoLens.Field.field @"hashFunction"
healthChecks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "healthChecks" a) =>
  Lens.Family2.LensLike' f s a
healthChecks = Data.ProtoLens.Field.field @"healthChecks"
healthyPanicThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "healthyPanicThreshold" a) =>
  Lens.Family2.LensLike' f s a
healthyPanicThreshold
  = Data.ProtoLens.Field.field @"healthyPanicThreshold"
http2ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "http2ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
http2ProtocolOptions
  = Data.ProtoLens.Field.field @"http2ProtocolOptions"
httpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
httpProtocolOptions
  = Data.ProtoLens.Field.field @"httpProtocolOptions"
ignoreHealthOnHostRemoval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ignoreHealthOnHostRemoval" a) =>
  Lens.Family2.LensLike' f s a
ignoreHealthOnHostRemoval
  = Data.ProtoLens.Field.field @"ignoreHealthOnHostRemoval"
ignoreNewHostsUntilFirstHc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ignoreNewHostsUntilFirstHc" a) =>
  Lens.Family2.LensLike' f s a
ignoreNewHostsUntilFirstHc
  = Data.ProtoLens.Field.field @"ignoreNewHostsUntilFirstHc"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
keys ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "keys" a) =>
  Lens.Family2.LensLike' f s a
keys = Data.ProtoLens.Field.field @"keys"
lbPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lbPolicy" a) =>
  Lens.Family2.LensLike' f s a
lbPolicy = Data.ProtoLens.Field.field @"lbPolicy"
lbSubsetConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lbSubsetConfig" a) =>
  Lens.Family2.LensLike' f s a
lbSubsetConfig = Data.ProtoLens.Field.field @"lbSubsetConfig"
leastRequestLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "leastRequestLbConfig" a) =>
  Lens.Family2.LensLike' f s a
leastRequestLbConfig
  = Data.ProtoLens.Field.field @"leastRequestLbConfig"
listAsAny ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listAsAny" a) =>
  Lens.Family2.LensLike' f s a
listAsAny = Data.ProtoLens.Field.field @"listAsAny"
loadAssignment ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "loadAssignment" a) =>
  Lens.Family2.LensLike' f s a
loadAssignment = Data.ProtoLens.Field.field @"loadAssignment"
loadBalancingPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "loadBalancingPolicy" a) =>
  Lens.Family2.LensLike' f s a
loadBalancingPolicy
  = Data.ProtoLens.Field.field @"loadBalancingPolicy"
localityWeightAware ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localityWeightAware" a) =>
  Lens.Family2.LensLike' f s a
localityWeightAware
  = Data.ProtoLens.Field.field @"localityWeightAware"
localityWeightedLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localityWeightedLbConfig" a) =>
  Lens.Family2.LensLike' f s a
localityWeightedLbConfig
  = Data.ProtoLens.Field.field @"localityWeightedLbConfig"
lrsServer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lrsServer" a) =>
  Lens.Family2.LensLike' f s a
lrsServer = Data.ProtoLens.Field.field @"lrsServer"
maglevLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maglevLbConfig" a) =>
  Lens.Family2.LensLike' f s a
maglevLbConfig = Data.ProtoLens.Field.field @"maglevLbConfig"
match ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "match" a) =>
  Lens.Family2.LensLike' f s a
match = Data.ProtoLens.Field.field @"match"
maxInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxInterval" a) =>
  Lens.Family2.LensLike' f s a
maxInterval = Data.ProtoLens.Field.field @"maxInterval"
maxRequestsPerConnection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxRequestsPerConnection" a) =>
  Lens.Family2.LensLike' f s a
maxRequestsPerConnection
  = Data.ProtoLens.Field.field @"maxRequestsPerConnection"
maximumRingSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maximumRingSize" a) =>
  Lens.Family2.LensLike' f s a
maximumRingSize = Data.ProtoLens.Field.field @"maximumRingSize"
maybe'activeRequestBias ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activeRequestBias" a) =>
  Lens.Family2.LensLike' f s a
maybe'activeRequestBias
  = Data.ProtoLens.Field.field @"maybe'activeRequestBias"
maybe'baseInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'baseInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'baseInterval
  = Data.ProtoLens.Field.field @"maybe'baseInterval"
maybe'choiceCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'choiceCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'choiceCount = Data.ProtoLens.Field.field @"maybe'choiceCount"
maybe'circuitBreakers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'circuitBreakers" a) =>
  Lens.Family2.LensLike' f s a
maybe'circuitBreakers
  = Data.ProtoLens.Field.field @"maybe'circuitBreakers"
maybe'cleanupInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cleanupInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'cleanupInterval
  = Data.ProtoLens.Field.field @"maybe'cleanupInterval"
maybe'clusterDiscoveryType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clusterDiscoveryType" a) =>
  Lens.Family2.LensLike' f s a
maybe'clusterDiscoveryType
  = Data.ProtoLens.Field.field @"maybe'clusterDiscoveryType"
maybe'clusterType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clusterType" a) =>
  Lens.Family2.LensLike' f s a
maybe'clusterType = Data.ProtoLens.Field.field @"maybe'clusterType"
maybe'commonHttpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commonHttpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'commonHttpProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'commonHttpProtocolOptions"
maybe'commonLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commonLbConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'commonLbConfig
  = Data.ProtoLens.Field.field @"maybe'commonLbConfig"
maybe'connectTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'connectTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'connectTimeout
  = Data.ProtoLens.Field.field @"maybe'connectTimeout"
maybe'consistentHashingLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'consistentHashingLbConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'consistentHashingLbConfig
  = Data.ProtoLens.Field.field @"maybe'consistentHashingLbConfig"
maybe'defaultSubset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'defaultSubset" a) =>
  Lens.Family2.LensLike' f s a
maybe'defaultSubset
  = Data.ProtoLens.Field.field @"maybe'defaultSubset"
maybe'dnsFailureRefreshRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dnsFailureRefreshRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'dnsFailureRefreshRate
  = Data.ProtoLens.Field.field @"maybe'dnsFailureRefreshRate"
maybe'dnsRefreshRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dnsRefreshRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'dnsRefreshRate
  = Data.ProtoLens.Field.field @"maybe'dnsRefreshRate"
maybe'dnsResolutionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dnsResolutionConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'dnsResolutionConfig
  = Data.ProtoLens.Field.field @"maybe'dnsResolutionConfig"
maybe'edsClusterConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'edsClusterConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'edsClusterConfig
  = Data.ProtoLens.Field.field @"maybe'edsClusterConfig"
maybe'edsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'edsConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'edsConfig = Data.ProtoLens.Field.field @"maybe'edsConfig"
maybe'entries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'entries" a) =>
  Lens.Family2.LensLike' f s a
maybe'entries = Data.ProtoLens.Field.field @"maybe'entries"
maybe'hashBalanceFactor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hashBalanceFactor" a) =>
  Lens.Family2.LensLike' f s a
maybe'hashBalanceFactor
  = Data.ProtoLens.Field.field @"maybe'hashBalanceFactor"
maybe'healthyPanicThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'healthyPanicThreshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'healthyPanicThreshold
  = Data.ProtoLens.Field.field @"maybe'healthyPanicThreshold"
maybe'http2ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'http2ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'http2ProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions"
maybe'httpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'httpProtocolOptions"
maybe'lbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lbConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'lbConfig = Data.ProtoLens.Field.field @"maybe'lbConfig"
maybe'lbSubsetConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lbSubsetConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'lbSubsetConfig
  = Data.ProtoLens.Field.field @"maybe'lbSubsetConfig"
maybe'leastRequestLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'leastRequestLbConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'leastRequestLbConfig
  = Data.ProtoLens.Field.field @"maybe'leastRequestLbConfig"
maybe'loadAssignment ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'loadAssignment" a) =>
  Lens.Family2.LensLike' f s a
maybe'loadAssignment
  = Data.ProtoLens.Field.field @"maybe'loadAssignment"
maybe'loadBalancingPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'loadBalancingPolicy" a) =>
  Lens.Family2.LensLike' f s a
maybe'loadBalancingPolicy
  = Data.ProtoLens.Field.field @"maybe'loadBalancingPolicy"
maybe'localityConfigSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localityConfigSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'localityConfigSpecifier
  = Data.ProtoLens.Field.field @"maybe'localityConfigSpecifier"
maybe'localityWeightedLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localityWeightedLbConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'localityWeightedLbConfig
  = Data.ProtoLens.Field.field @"maybe'localityWeightedLbConfig"
maybe'lrsServer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lrsServer" a) =>
  Lens.Family2.LensLike' f s a
maybe'lrsServer = Data.ProtoLens.Field.field @"maybe'lrsServer"
maybe'maglevLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maglevLbConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'maglevLbConfig
  = Data.ProtoLens.Field.field @"maybe'maglevLbConfig"
maybe'match ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'match" a) =>
  Lens.Family2.LensLike' f s a
maybe'match = Data.ProtoLens.Field.field @"maybe'match"
maybe'maxInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxInterval = Data.ProtoLens.Field.field @"maybe'maxInterval"
maybe'maxRequestsPerConnection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxRequestsPerConnection" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxRequestsPerConnection
  = Data.ProtoLens.Field.field @"maybe'maxRequestsPerConnection"
maybe'maximumRingSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maximumRingSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'maximumRingSize
  = Data.ProtoLens.Field.field @"maybe'maximumRingSize"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
maybe'minClusterSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minClusterSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'minClusterSize
  = Data.ProtoLens.Field.field @"maybe'minClusterSize"
maybe'minimumRingSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minimumRingSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'minimumRingSize
  = Data.ProtoLens.Field.field @"maybe'minimumRingSize"
maybe'originalDstLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'originalDstLbConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'originalDstLbConfig
  = Data.ProtoLens.Field.field @"maybe'originalDstLbConfig"
maybe'outlierDetection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'outlierDetection" a) =>
  Lens.Family2.LensLike' f s a
maybe'outlierDetection
  = Data.ProtoLens.Field.field @"maybe'outlierDetection"
maybe'perConnectionBufferLimitBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'perConnectionBufferLimitBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'perConnectionBufferLimitBytes
  = Data.ProtoLens.Field.field @"maybe'perConnectionBufferLimitBytes"
maybe'perUpstreamPreconnectRatio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'perUpstreamPreconnectRatio" a) =>
  Lens.Family2.LensLike' f s a
maybe'perUpstreamPreconnectRatio
  = Data.ProtoLens.Field.field @"maybe'perUpstreamPreconnectRatio"
maybe'preconnectPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'preconnectPolicy" a) =>
  Lens.Family2.LensLike' f s a
maybe'preconnectPolicy
  = Data.ProtoLens.Field.field @"maybe'preconnectPolicy"
maybe'predictivePreconnectRatio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'predictivePreconnectRatio" a) =>
  Lens.Family2.LensLike' f s a
maybe'predictivePreconnectRatio
  = Data.ProtoLens.Field.field @"maybe'predictivePreconnectRatio"
maybe'ringHashLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ringHashLbConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'ringHashLbConfig
  = Data.ProtoLens.Field.field @"maybe'ringHashLbConfig"
maybe'routingEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'routingEnabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'routingEnabled
  = Data.ProtoLens.Field.field @"maybe'routingEnabled"
maybe'sourceAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceAddress
  = Data.ProtoLens.Field.field @"maybe'sourceAddress"
maybe'tableSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tableSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'tableSize = Data.ProtoLens.Field.field @"maybe'tableSize"
maybe'tcpKeepalive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tcpKeepalive" a) =>
  Lens.Family2.LensLike' f s a
maybe'tcpKeepalive
  = Data.ProtoLens.Field.field @"maybe'tcpKeepalive"
maybe'trackClusterStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trackClusterStats" a) =>
  Lens.Family2.LensLike' f s a
maybe'trackClusterStats
  = Data.ProtoLens.Field.field @"maybe'trackClusterStats"
maybe'transportSocket ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'transportSocket" a) =>
  Lens.Family2.LensLike' f s a
maybe'transportSocket
  = Data.ProtoLens.Field.field @"maybe'transportSocket"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
maybe'updateMergeWindow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'updateMergeWindow" a) =>
  Lens.Family2.LensLike' f s a
maybe'updateMergeWindow
  = Data.ProtoLens.Field.field @"maybe'updateMergeWindow"
maybe'upstreamBindConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upstreamBindConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'upstreamBindConfig
  = Data.ProtoLens.Field.field @"maybe'upstreamBindConfig"
maybe'upstreamConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upstreamConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'upstreamConfig
  = Data.ProtoLens.Field.field @"maybe'upstreamConfig"
maybe'upstreamConnectionOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upstreamConnectionOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'upstreamConnectionOptions
  = Data.ProtoLens.Field.field @"maybe'upstreamConnectionOptions"
maybe'upstreamHttpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upstreamHttpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'upstreamHttpProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'upstreamHttpProtocolOptions"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'waitForWarmOnInit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'waitForWarmOnInit" a) =>
  Lens.Family2.LensLike' f s a
maybe'waitForWarmOnInit
  = Data.ProtoLens.Field.field @"maybe'waitForWarmOnInit"
maybe'zoneAwareLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'zoneAwareLbConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'zoneAwareLbConfig
  = Data.ProtoLens.Field.field @"maybe'zoneAwareLbConfig"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
minClusterSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minClusterSize" a) =>
  Lens.Family2.LensLike' f s a
minClusterSize = Data.ProtoLens.Field.field @"minClusterSize"
minimumRingSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minimumRingSize" a) =>
  Lens.Family2.LensLike' f s a
minimumRingSize = Data.ProtoLens.Field.field @"minimumRingSize"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
originalDstLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "originalDstLbConfig" a) =>
  Lens.Family2.LensLike' f s a
originalDstLbConfig
  = Data.ProtoLens.Field.field @"originalDstLbConfig"
outlierDetection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "outlierDetection" a) =>
  Lens.Family2.LensLike' f s a
outlierDetection = Data.ProtoLens.Field.field @"outlierDetection"
panicModeAny ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "panicModeAny" a) =>
  Lens.Family2.LensLike' f s a
panicModeAny = Data.ProtoLens.Field.field @"panicModeAny"
perConnectionBufferLimitBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "perConnectionBufferLimitBytes" a) =>
  Lens.Family2.LensLike' f s a
perConnectionBufferLimitBytes
  = Data.ProtoLens.Field.field @"perConnectionBufferLimitBytes"
perUpstreamPreconnectRatio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "perUpstreamPreconnectRatio" a) =>
  Lens.Family2.LensLike' f s a
perUpstreamPreconnectRatio
  = Data.ProtoLens.Field.field @"perUpstreamPreconnectRatio"
policies ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "policies" a) =>
  Lens.Family2.LensLike' f s a
policies = Data.ProtoLens.Field.field @"policies"
preconnectPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "preconnectPolicy" a) =>
  Lens.Family2.LensLike' f s a
preconnectPolicy = Data.ProtoLens.Field.field @"preconnectPolicy"
predictivePreconnectRatio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "predictivePreconnectRatio" a) =>
  Lens.Family2.LensLike' f s a
predictivePreconnectRatio
  = Data.ProtoLens.Field.field @"predictivePreconnectRatio"
protocolSelection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocolSelection" a) =>
  Lens.Family2.LensLike' f s a
protocolSelection = Data.ProtoLens.Field.field @"protocolSelection"
requestResponseSizes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestResponseSizes" a) =>
  Lens.Family2.LensLike' f s a
requestResponseSizes
  = Data.ProtoLens.Field.field @"requestResponseSizes"
respectDnsTtl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "respectDnsTtl" a) =>
  Lens.Family2.LensLike' f s a
respectDnsTtl = Data.ProtoLens.Field.field @"respectDnsTtl"
ringHashLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ringHashLbConfig" a) =>
  Lens.Family2.LensLike' f s a
ringHashLbConfig = Data.ProtoLens.Field.field @"ringHashLbConfig"
routingEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "routingEnabled" a) =>
  Lens.Family2.LensLike' f s a
routingEnabled = Data.ProtoLens.Field.field @"routingEnabled"
scaleLocalityWeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scaleLocalityWeight" a) =>
  Lens.Family2.LensLike' f s a
scaleLocalityWeight
  = Data.ProtoLens.Field.field @"scaleLocalityWeight"
serviceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serviceName" a) =>
  Lens.Family2.LensLike' f s a
serviceName = Data.ProtoLens.Field.field @"serviceName"
singleHostPerSubset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "singleHostPerSubset" a) =>
  Lens.Family2.LensLike' f s a
singleHostPerSubset
  = Data.ProtoLens.Field.field @"singleHostPerSubset"
sourceAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceAddress" a) =>
  Lens.Family2.LensLike' f s a
sourceAddress = Data.ProtoLens.Field.field @"sourceAddress"
subsetSelectors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "subsetSelectors" a) =>
  Lens.Family2.LensLike' f s a
subsetSelectors = Data.ProtoLens.Field.field @"subsetSelectors"
tableSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tableSize" a) =>
  Lens.Family2.LensLike' f s a
tableSize = Data.ProtoLens.Field.field @"tableSize"
tcpKeepalive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tcpKeepalive" a) =>
  Lens.Family2.LensLike' f s a
tcpKeepalive = Data.ProtoLens.Field.field @"tcpKeepalive"
timeoutBudgets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeoutBudgets" a) =>
  Lens.Family2.LensLike' f s a
timeoutBudgets = Data.ProtoLens.Field.field @"timeoutBudgets"
trackClusterStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trackClusterStats" a) =>
  Lens.Family2.LensLike' f s a
trackClusterStats = Data.ProtoLens.Field.field @"trackClusterStats"
trackTimeoutBudgets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trackTimeoutBudgets" a) =>
  Lens.Family2.LensLike' f s a
trackTimeoutBudgets
  = Data.ProtoLens.Field.field @"trackTimeoutBudgets"
transportSocket ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transportSocket" a) =>
  Lens.Family2.LensLike' f s a
transportSocket = Data.ProtoLens.Field.field @"transportSocket"
transportSocketMatches ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transportSocketMatches" a) =>
  Lens.Family2.LensLike' f s a
transportSocketMatches
  = Data.ProtoLens.Field.field @"transportSocketMatches"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
typedExtensionProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedExtensionProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
typedExtensionProtocolOptions
  = Data.ProtoLens.Field.field @"typedExtensionProtocolOptions"
updateMergeWindow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateMergeWindow" a) =>
  Lens.Family2.LensLike' f s a
updateMergeWindow = Data.ProtoLens.Field.field @"updateMergeWindow"
upstreamBindConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamBindConfig" a) =>
  Lens.Family2.LensLike' f s a
upstreamBindConfig
  = Data.ProtoLens.Field.field @"upstreamBindConfig"
upstreamConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamConfig" a) =>
  Lens.Family2.LensLike' f s a
upstreamConfig = Data.ProtoLens.Field.field @"upstreamConfig"
upstreamConnectionOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamConnectionOptions" a) =>
  Lens.Family2.LensLike' f s a
upstreamConnectionOptions
  = Data.ProtoLens.Field.field @"upstreamConnectionOptions"
upstreamHttpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamHttpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
upstreamHttpProtocolOptions
  = Data.ProtoLens.Field.field @"upstreamHttpProtocolOptions"
useHostnameForHashing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useHostnameForHashing" a) =>
  Lens.Family2.LensLike' f s a
useHostnameForHashing
  = Data.ProtoLens.Field.field @"useHostnameForHashing"
useHttpHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useHttpHeader" a) =>
  Lens.Family2.LensLike' f s a
useHttpHeader = Data.ProtoLens.Field.field @"useHttpHeader"
useTcpForDnsLookups ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useTcpForDnsLookups" a) =>
  Lens.Family2.LensLike' f s a
useTcpForDnsLookups
  = Data.ProtoLens.Field.field @"useTcpForDnsLookups"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'dnsResolvers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dnsResolvers" a) =>
  Lens.Family2.LensLike' f s a
vec'dnsResolvers = Data.ProtoLens.Field.field @"vec'dnsResolvers"
vec'fallbackKeysSubset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fallbackKeysSubset" a) =>
  Lens.Family2.LensLike' f s a
vec'fallbackKeysSubset
  = Data.ProtoLens.Field.field @"vec'fallbackKeysSubset"
vec'filters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'filters" a) =>
  Lens.Family2.LensLike' f s a
vec'filters = Data.ProtoLens.Field.field @"vec'filters"
vec'healthChecks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'healthChecks" a) =>
  Lens.Family2.LensLike' f s a
vec'healthChecks = Data.ProtoLens.Field.field @"vec'healthChecks"
vec'keys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'keys" a) =>
  Lens.Family2.LensLike' f s a
vec'keys = Data.ProtoLens.Field.field @"vec'keys"
vec'policies ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'policies" a) =>
  Lens.Family2.LensLike' f s a
vec'policies = Data.ProtoLens.Field.field @"vec'policies"
vec'subsetSelectors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'subsetSelectors" a) =>
  Lens.Family2.LensLike' f s a
vec'subsetSelectors
  = Data.ProtoLens.Field.field @"vec'subsetSelectors"
vec'transportSocketMatches ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'transportSocketMatches" a) =>
  Lens.Family2.LensLike' f s a
vec'transportSocketMatches
  = Data.ProtoLens.Field.field @"vec'transportSocketMatches"
waitForWarmOnInit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "waitForWarmOnInit" a) =>
  Lens.Family2.LensLike' f s a
waitForWarmOnInit = Data.ProtoLens.Field.field @"waitForWarmOnInit"
zoneAwareLbConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "zoneAwareLbConfig" a) =>
  Lens.Family2.LensLike' f s a
zoneAwareLbConfig = Data.ProtoLens.Field.field @"zoneAwareLbConfig"