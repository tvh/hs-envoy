{- This file was auto-generated from envoy/config/bootstrap/v3/bootstrap.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Bootstrap.V3.Bootstrap_Fields where
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
import qualified Proto.Envoy.Config.Accesslog.V3.Accesslog
import qualified Proto.Envoy.Config.Cluster.V3.Cluster
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.EventServiceConfig
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Config.Core.V3.Resolver
import qualified Proto.Envoy.Config.Core.V3.SocketOption
import qualified Proto.Envoy.Config.Listener.V3.Listener
import qualified Proto.Envoy.Config.Metrics.V3.Stats
import qualified Proto.Envoy.Config.Overload.V3.Overload
import qualified Proto.Envoy.Config.Trace.V3.HttpTracer
import qualified Proto.Envoy.Extensions.TransportSockets.Tls.V3.Secret
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Security
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
accessLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "accessLog" a) =>
  Lens.Family2.LensLike' f s a
accessLog = Data.ProtoLens.Field.field @"accessLog"
accessLogPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "accessLogPath" a) =>
  Lens.Family2.LensLike' f s a
accessLogPath = Data.ProtoLens.Field.field @"accessLogPath"
actions ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "actions" a) =>
  Lens.Family2.LensLike' f s a
actions = Data.ProtoLens.Field.field @"actions"
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
admin ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "admin" a) =>
  Lens.Family2.LensLike' f s a
admin = Data.ProtoLens.Field.field @"admin"
adminLayer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "adminLayer" a) =>
  Lens.Family2.LensLike' f s a
adminLayer = Data.ProtoLens.Field.field @"adminLayer"
adsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "adsConfig" a) =>
  Lens.Family2.LensLike' f s a
adsConfig = Data.ProtoLens.Field.field @"adsConfig"
appendServiceCluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "appendServiceCluster" a) =>
  Lens.Family2.LensLike' f s a
appendServiceCluster
  = Data.ProtoLens.Field.field @"appendServiceCluster"
base ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "base" a) =>
  Lens.Family2.LensLike' f s a
base = Data.ProtoLens.Field.field @"base"
bootstrapExtensions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bootstrapExtensions" a) =>
  Lens.Family2.LensLike' f s a
bootstrapExtensions
  = Data.ProtoLens.Field.field @"bootstrapExtensions"
cdsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cdsConfig" a) =>
  Lens.Family2.LensLike' f s a
cdsConfig = Data.ProtoLens.Field.field @"cdsConfig"
cdsResourcesLocator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cdsResourcesLocator" a) =>
  Lens.Family2.LensLike' f s a
cdsResourcesLocator
  = Data.ProtoLens.Field.field @"cdsResourcesLocator"
certificateProviderInstances ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "certificateProviderInstances" a) =>
  Lens.Family2.LensLike' f s a
certificateProviderInstances
  = Data.ProtoLens.Field.field @"certificateProviderInstances"
clusterManager ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterManager" a) =>
  Lens.Family2.LensLike' f s a
clusterManager = Data.ProtoLens.Field.field @"clusterManager"
clusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusters" a) =>
  Lens.Family2.LensLike' f s a
clusters = Data.ProtoLens.Field.field @"clusters"
config ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "config" a) =>
  Lens.Family2.LensLike' f s a
config = Data.ProtoLens.Field.field @"config"
configSources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "configSources" a) =>
  Lens.Family2.LensLike' f s a
configSources = Data.ProtoLens.Field.field @"configSources"
defaultConfigSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultConfigSource" a) =>
  Lens.Family2.LensLike' f s a
defaultConfigSource
  = Data.ProtoLens.Field.field @"defaultConfigSource"
defaultSocketInterface ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultSocketInterface" a) =>
  Lens.Family2.LensLike' f s a
defaultSocketInterface
  = Data.ProtoLens.Field.field @"defaultSocketInterface"
diskLayer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "diskLayer" a) =>
  Lens.Family2.LensLike' f s a
diskLayer = Data.ProtoLens.Field.field @"diskLayer"
dnsResolutionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsResolutionConfig" a) =>
  Lens.Family2.LensLike' f s a
dnsResolutionConfig
  = Data.ProtoLens.Field.field @"dnsResolutionConfig"
dynamicResources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicResources" a) =>
  Lens.Family2.LensLike' f s a
dynamicResources = Data.ProtoLens.Field.field @"dynamicResources"
enableDispatcherStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableDispatcherStats" a) =>
  Lens.Family2.LensLike' f s a
enableDispatcherStats
  = Data.ProtoLens.Field.field @"enableDispatcherStats"
event ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "event" a) =>
  Lens.Family2.LensLike' f s a
event = Data.ProtoLens.Field.field @"event"
eventLogPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventLogPath" a) =>
  Lens.Family2.LensLike' f s a
eventLogPath = Data.ProtoLens.Field.field @"eventLogPath"
eventService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventService" a) =>
  Lens.Family2.LensLike' f s a
eventService = Data.ProtoLens.Field.field @"eventService"
fatalActions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fatalActions" a) =>
  Lens.Family2.LensLike' f s a
fatalActions = Data.ProtoLens.Field.field @"fatalActions"
flagsPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "flagsPath" a) =>
  Lens.Family2.LensLike' f s a
flagsPath = Data.ProtoLens.Field.field @"flagsPath"
hdsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hdsConfig" a) =>
  Lens.Family2.LensLike' f s a
hdsConfig = Data.ProtoLens.Field.field @"hdsConfig"
headerPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headerPrefix" a) =>
  Lens.Family2.LensLike' f s a
headerPrefix = Data.ProtoLens.Field.field @"headerPrefix"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
killTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "killTimeout" a) =>
  Lens.Family2.LensLike' f s a
killTimeout = Data.ProtoLens.Field.field @"killTimeout"
layeredRuntime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "layeredRuntime" a) =>
  Lens.Family2.LensLike' f s a
layeredRuntime = Data.ProtoLens.Field.field @"layeredRuntime"
layers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "layers" a) =>
  Lens.Family2.LensLike' f s a
layers = Data.ProtoLens.Field.field @"layers"
ldsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ldsConfig" a) =>
  Lens.Family2.LensLike' f s a
ldsConfig = Data.ProtoLens.Field.field @"ldsConfig"
ldsResourcesLocator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ldsResourcesLocator" a) =>
  Lens.Family2.LensLike' f s a
ldsResourcesLocator
  = Data.ProtoLens.Field.field @"ldsResourcesLocator"
listeners ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listeners" a) =>
  Lens.Family2.LensLike' f s a
listeners = Data.ProtoLens.Field.field @"listeners"
loadStatsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "loadStatsConfig" a) =>
  Lens.Family2.LensLike' f s a
loadStatsConfig = Data.ProtoLens.Field.field @"loadStatsConfig"
localClusterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localClusterName" a) =>
  Lens.Family2.LensLike' f s a
localClusterName = Data.ProtoLens.Field.field @"localClusterName"
mainThreadWatchdog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mainThreadWatchdog" a) =>
  Lens.Family2.LensLike' f s a
mainThreadWatchdog
  = Data.ProtoLens.Field.field @"mainThreadWatchdog"
maxKillTimeoutJitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxKillTimeoutJitter" a) =>
  Lens.Family2.LensLike' f s a
maxKillTimeoutJitter
  = Data.ProtoLens.Field.field @"maxKillTimeoutJitter"
maybe'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'address" a) =>
  Lens.Family2.LensLike' f s a
maybe'address = Data.ProtoLens.Field.field @"maybe'address"
maybe'admin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'admin" a) =>
  Lens.Family2.LensLike' f s a
maybe'admin = Data.ProtoLens.Field.field @"maybe'admin"
maybe'adminLayer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'adminLayer" a) =>
  Lens.Family2.LensLike' f s a
maybe'adminLayer = Data.ProtoLens.Field.field @"maybe'adminLayer"
maybe'adsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'adsConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'adsConfig = Data.ProtoLens.Field.field @"maybe'adsConfig"
maybe'base ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'base" a) =>
  Lens.Family2.LensLike' f s a
maybe'base = Data.ProtoLens.Field.field @"maybe'base"
maybe'cdsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cdsConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'cdsConfig = Data.ProtoLens.Field.field @"maybe'cdsConfig"
maybe'clusterManager ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clusterManager" a) =>
  Lens.Family2.LensLike' f s a
maybe'clusterManager
  = Data.ProtoLens.Field.field @"maybe'clusterManager"
maybe'config ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'config" a) =>
  Lens.Family2.LensLike' f s a
maybe'config = Data.ProtoLens.Field.field @"maybe'config"
maybe'defaultConfigSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'defaultConfigSource" a) =>
  Lens.Family2.LensLike' f s a
maybe'defaultConfigSource
  = Data.ProtoLens.Field.field @"maybe'defaultConfigSource"
maybe'diskLayer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'diskLayer" a) =>
  Lens.Family2.LensLike' f s a
maybe'diskLayer = Data.ProtoLens.Field.field @"maybe'diskLayer"
maybe'dnsResolutionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dnsResolutionConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'dnsResolutionConfig
  = Data.ProtoLens.Field.field @"maybe'dnsResolutionConfig"
maybe'dynamicResources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dynamicResources" a) =>
  Lens.Family2.LensLike' f s a
maybe'dynamicResources
  = Data.ProtoLens.Field.field @"maybe'dynamicResources"
maybe'eventService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'eventService" a) =>
  Lens.Family2.LensLike' f s a
maybe'eventService
  = Data.ProtoLens.Field.field @"maybe'eventService"
maybe'hdsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hdsConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'hdsConfig = Data.ProtoLens.Field.field @"maybe'hdsConfig"
maybe'killTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'killTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'killTimeout = Data.ProtoLens.Field.field @"maybe'killTimeout"
maybe'layerSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'layerSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'layerSpecifier
  = Data.ProtoLens.Field.field @"maybe'layerSpecifier"
maybe'layeredRuntime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'layeredRuntime" a) =>
  Lens.Family2.LensLike' f s a
maybe'layeredRuntime
  = Data.ProtoLens.Field.field @"maybe'layeredRuntime"
maybe'ldsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ldsConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'ldsConfig = Data.ProtoLens.Field.field @"maybe'ldsConfig"
maybe'loadStatsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'loadStatsConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'loadStatsConfig
  = Data.ProtoLens.Field.field @"maybe'loadStatsConfig"
maybe'mainThreadWatchdog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mainThreadWatchdog" a) =>
  Lens.Family2.LensLike' f s a
maybe'mainThreadWatchdog
  = Data.ProtoLens.Field.field @"maybe'mainThreadWatchdog"
maybe'maxKillTimeoutJitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxKillTimeoutJitter" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxKillTimeoutJitter
  = Data.ProtoLens.Field.field @"maybe'maxKillTimeoutJitter"
maybe'megamissTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'megamissTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'megamissTimeout
  = Data.ProtoLens.Field.field @"maybe'megamissTimeout"
maybe'missTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'missTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'missTimeout = Data.ProtoLens.Field.field @"maybe'missTimeout"
maybe'multikillThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'multikillThreshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'multikillThreshold
  = Data.ProtoLens.Field.field @"maybe'multikillThreshold"
maybe'multikillTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'multikillTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'multikillTimeout
  = Data.ProtoLens.Field.field @"maybe'multikillTimeout"
maybe'node ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'node" a) =>
  Lens.Family2.LensLike' f s a
maybe'node = Data.ProtoLens.Field.field @"maybe'node"
maybe'outlierDetection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'outlierDetection" a) =>
  Lens.Family2.LensLike' f s a
maybe'outlierDetection
  = Data.ProtoLens.Field.field @"maybe'outlierDetection"
maybe'overloadManager ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'overloadManager" a) =>
  Lens.Family2.LensLike' f s a
maybe'overloadManager
  = Data.ProtoLens.Field.field @"maybe'overloadManager"
maybe'rtdsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rtdsConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'rtdsConfig = Data.ProtoLens.Field.field @"maybe'rtdsConfig"
maybe'rtdsLayer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rtdsLayer" a) =>
  Lens.Family2.LensLike' f s a
maybe'rtdsLayer = Data.ProtoLens.Field.field @"maybe'rtdsLayer"
maybe'staticLayer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'staticLayer" a) =>
  Lens.Family2.LensLike' f s a
maybe'staticLayer = Data.ProtoLens.Field.field @"maybe'staticLayer"
maybe'staticResources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'staticResources" a) =>
  Lens.Family2.LensLike' f s a
maybe'staticResources
  = Data.ProtoLens.Field.field @"maybe'staticResources"
maybe'statsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statsConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'statsConfig = Data.ProtoLens.Field.field @"maybe'statsConfig"
maybe'statsFlush ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statsFlush" a) =>
  Lens.Family2.LensLike' f s a
maybe'statsFlush = Data.ProtoLens.Field.field @"maybe'statsFlush"
maybe'statsFlushInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statsFlushInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'statsFlushInterval
  = Data.ProtoLens.Field.field @"maybe'statsFlushInterval"
maybe'statsFlushOnAdmin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statsFlushOnAdmin" a) =>
  Lens.Family2.LensLike' f s a
maybe'statsFlushOnAdmin
  = Data.ProtoLens.Field.field @"maybe'statsFlushOnAdmin"
maybe'statsServerVersionOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statsServerVersionOverride" a) =>
  Lens.Family2.LensLike' f s a
maybe'statsServerVersionOverride
  = Data.ProtoLens.Field.field @"maybe'statsServerVersionOverride"
maybe'tracing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tracing" a) =>
  Lens.Family2.LensLike' f s a
maybe'tracing = Data.ProtoLens.Field.field @"maybe'tracing"
maybe'upstreamBindConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upstreamBindConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'upstreamBindConfig
  = Data.ProtoLens.Field.field @"maybe'upstreamBindConfig"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'watchdog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'watchdog" a) =>
  Lens.Family2.LensLike' f s a
maybe'watchdog = Data.ProtoLens.Field.field @"maybe'watchdog"
maybe'watchdogs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'watchdogs" a) =>
  Lens.Family2.LensLike' f s a
maybe'watchdogs = Data.ProtoLens.Field.field @"maybe'watchdogs"
maybe'workerWatchdog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workerWatchdog" a) =>
  Lens.Family2.LensLike' f s a
maybe'workerWatchdog
  = Data.ProtoLens.Field.field @"maybe'workerWatchdog"
megamissTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "megamissTimeout" a) =>
  Lens.Family2.LensLike' f s a
megamissTimeout = Data.ProtoLens.Field.field @"megamissTimeout"
missTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "missTimeout" a) =>
  Lens.Family2.LensLike' f s a
missTimeout = Data.ProtoLens.Field.field @"missTimeout"
multikillThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "multikillThreshold" a) =>
  Lens.Family2.LensLike' f s a
multikillThreshold
  = Data.ProtoLens.Field.field @"multikillThreshold"
multikillTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "multikillTimeout" a) =>
  Lens.Family2.LensLike' f s a
multikillTimeout = Data.ProtoLens.Field.field @"multikillTimeout"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
node ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "node" a) =>
  Lens.Family2.LensLike' f s a
node = Data.ProtoLens.Field.field @"node"
nodeContextParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nodeContextParams" a) =>
  Lens.Family2.LensLike' f s a
nodeContextParams = Data.ProtoLens.Field.field @"nodeContextParams"
outlierDetection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "outlierDetection" a) =>
  Lens.Family2.LensLike' f s a
outlierDetection = Data.ProtoLens.Field.field @"outlierDetection"
overloadManager ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overloadManager" a) =>
  Lens.Family2.LensLike' f s a
overloadManager = Data.ProtoLens.Field.field @"overloadManager"
overrideSubdirectory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overrideSubdirectory" a) =>
  Lens.Family2.LensLike' f s a
overrideSubdirectory
  = Data.ProtoLens.Field.field @"overrideSubdirectory"
profilePath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "profilePath" a) =>
  Lens.Family2.LensLike' f s a
profilePath = Data.ProtoLens.Field.field @"profilePath"
rtdsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rtdsConfig" a) =>
  Lens.Family2.LensLike' f s a
rtdsConfig = Data.ProtoLens.Field.field @"rtdsConfig"
rtdsLayer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rtdsLayer" a) =>
  Lens.Family2.LensLike' f s a
rtdsLayer = Data.ProtoLens.Field.field @"rtdsLayer"
secrets ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "secrets" a) =>
  Lens.Family2.LensLike' f s a
secrets = Data.ProtoLens.Field.field @"secrets"
socketOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "socketOptions" a) =>
  Lens.Family2.LensLike' f s a
socketOptions = Data.ProtoLens.Field.field @"socketOptions"
staticLayer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "staticLayer" a) =>
  Lens.Family2.LensLike' f s a
staticLayer = Data.ProtoLens.Field.field @"staticLayer"
staticResources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "staticResources" a) =>
  Lens.Family2.LensLike' f s a
staticResources = Data.ProtoLens.Field.field @"staticResources"
statsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statsConfig" a) =>
  Lens.Family2.LensLike' f s a
statsConfig = Data.ProtoLens.Field.field @"statsConfig"
statsFlushInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statsFlushInterval" a) =>
  Lens.Family2.LensLike' f s a
statsFlushInterval
  = Data.ProtoLens.Field.field @"statsFlushInterval"
statsFlushOnAdmin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statsFlushOnAdmin" a) =>
  Lens.Family2.LensLike' f s a
statsFlushOnAdmin = Data.ProtoLens.Field.field @"statsFlushOnAdmin"
statsServerVersionOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statsServerVersionOverride" a) =>
  Lens.Family2.LensLike' f s a
statsServerVersionOverride
  = Data.ProtoLens.Field.field @"statsServerVersionOverride"
statsSinks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statsSinks" a) =>
  Lens.Family2.LensLike' f s a
statsSinks = Data.ProtoLens.Field.field @"statsSinks"
subdirectory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "subdirectory" a) =>
  Lens.Family2.LensLike' f s a
subdirectory = Data.ProtoLens.Field.field @"subdirectory"
symlinkRoot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "symlinkRoot" a) =>
  Lens.Family2.LensLike' f s a
symlinkRoot = Data.ProtoLens.Field.field @"symlinkRoot"
tracing ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tracing" a) =>
  Lens.Family2.LensLike' f s a
tracing = Data.ProtoLens.Field.field @"tracing"
upstreamBindConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamBindConfig" a) =>
  Lens.Family2.LensLike' f s a
upstreamBindConfig
  = Data.ProtoLens.Field.field @"upstreamBindConfig"
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
vec'accessLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'accessLog" a) =>
  Lens.Family2.LensLike' f s a
vec'accessLog = Data.ProtoLens.Field.field @"vec'accessLog"
vec'actions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'actions" a) =>
  Lens.Family2.LensLike' f s a
vec'actions = Data.ProtoLens.Field.field @"vec'actions"
vec'bootstrapExtensions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'bootstrapExtensions" a) =>
  Lens.Family2.LensLike' f s a
vec'bootstrapExtensions
  = Data.ProtoLens.Field.field @"vec'bootstrapExtensions"
vec'clusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clusters" a) =>
  Lens.Family2.LensLike' f s a
vec'clusters = Data.ProtoLens.Field.field @"vec'clusters"
vec'configSources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'configSources" a) =>
  Lens.Family2.LensLike' f s a
vec'configSources = Data.ProtoLens.Field.field @"vec'configSources"
vec'fatalActions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fatalActions" a) =>
  Lens.Family2.LensLike' f s a
vec'fatalActions = Data.ProtoLens.Field.field @"vec'fatalActions"
vec'layers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'layers" a) =>
  Lens.Family2.LensLike' f s a
vec'layers = Data.ProtoLens.Field.field @"vec'layers"
vec'listeners ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'listeners" a) =>
  Lens.Family2.LensLike' f s a
vec'listeners = Data.ProtoLens.Field.field @"vec'listeners"
vec'nodeContextParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'nodeContextParams" a) =>
  Lens.Family2.LensLike' f s a
vec'nodeContextParams
  = Data.ProtoLens.Field.field @"vec'nodeContextParams"
vec'secrets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'secrets" a) =>
  Lens.Family2.LensLike' f s a
vec'secrets = Data.ProtoLens.Field.field @"vec'secrets"
vec'socketOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'socketOptions" a) =>
  Lens.Family2.LensLike' f s a
vec'socketOptions = Data.ProtoLens.Field.field @"vec'socketOptions"
vec'statsSinks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'statsSinks" a) =>
  Lens.Family2.LensLike' f s a
vec'statsSinks = Data.ProtoLens.Field.field @"vec'statsSinks"
watchdog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "watchdog" a) =>
  Lens.Family2.LensLike' f s a
watchdog = Data.ProtoLens.Field.field @"watchdog"
watchdogs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "watchdogs" a) =>
  Lens.Family2.LensLike' f s a
watchdogs = Data.ProtoLens.Field.field @"watchdogs"
workerWatchdog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workerWatchdog" a) =>
  Lens.Family2.LensLike' f s a
workerWatchdog = Data.ProtoLens.Field.field @"workerWatchdog"