{- This file was auto-generated from envoy/admin/v3/config_dump.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.ConfigDump_Fields where
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
import qualified Proto.Envoy.Config.Bootstrap.V3.Bootstrap
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
activeState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activeState" a) =>
  Lens.Family2.LensLike' f s a
activeState = Data.ProtoLens.Field.field @"activeState"
bootstrap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bootstrap" a) =>
  Lens.Family2.LensLike' f s a
bootstrap = Data.ProtoLens.Field.field @"bootstrap"
clientStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clientStatus" a) =>
  Lens.Family2.LensLike' f s a
clientStatus = Data.ProtoLens.Field.field @"clientStatus"
cluster ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cluster" a) =>
  Lens.Family2.LensLike' f s a
cluster = Data.ProtoLens.Field.field @"cluster"
configs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "configs" a) =>
  Lens.Family2.LensLike' f s a
configs = Data.ProtoLens.Field.field @"configs"
details ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "details" a) =>
  Lens.Family2.LensLike' f s a
details = Data.ProtoLens.Field.field @"details"
drainingState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drainingState" a) =>
  Lens.Family2.LensLike' f s a
drainingState = Data.ProtoLens.Field.field @"drainingState"
dynamicActiveClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicActiveClusters" a) =>
  Lens.Family2.LensLike' f s a
dynamicActiveClusters
  = Data.ProtoLens.Field.field @"dynamicActiveClusters"
dynamicActiveSecrets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicActiveSecrets" a) =>
  Lens.Family2.LensLike' f s a
dynamicActiveSecrets
  = Data.ProtoLens.Field.field @"dynamicActiveSecrets"
dynamicEndpointConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicEndpointConfigs" a) =>
  Lens.Family2.LensLike' f s a
dynamicEndpointConfigs
  = Data.ProtoLens.Field.field @"dynamicEndpointConfigs"
dynamicListeners ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicListeners" a) =>
  Lens.Family2.LensLike' f s a
dynamicListeners = Data.ProtoLens.Field.field @"dynamicListeners"
dynamicRouteConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicRouteConfigs" a) =>
  Lens.Family2.LensLike' f s a
dynamicRouteConfigs
  = Data.ProtoLens.Field.field @"dynamicRouteConfigs"
dynamicScopedRouteConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicScopedRouteConfigs" a) =>
  Lens.Family2.LensLike' f s a
dynamicScopedRouteConfigs
  = Data.ProtoLens.Field.field @"dynamicScopedRouteConfigs"
dynamicWarmingClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicWarmingClusters" a) =>
  Lens.Family2.LensLike' f s a
dynamicWarmingClusters
  = Data.ProtoLens.Field.field @"dynamicWarmingClusters"
dynamicWarmingSecrets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicWarmingSecrets" a) =>
  Lens.Family2.LensLike' f s a
dynamicWarmingSecrets
  = Data.ProtoLens.Field.field @"dynamicWarmingSecrets"
endpointConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpointConfig" a) =>
  Lens.Family2.LensLike' f s a
endpointConfig = Data.ProtoLens.Field.field @"endpointConfig"
errorState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "errorState" a) =>
  Lens.Family2.LensLike' f s a
errorState = Data.ProtoLens.Field.field @"errorState"
failedConfiguration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failedConfiguration" a) =>
  Lens.Family2.LensLike' f s a
failedConfiguration
  = Data.ProtoLens.Field.field @"failedConfiguration"
inlineScopedRouteConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inlineScopedRouteConfigs" a) =>
  Lens.Family2.LensLike' f s a
inlineScopedRouteConfigs
  = Data.ProtoLens.Field.field @"inlineScopedRouteConfigs"
lastUpdateAttempt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastUpdateAttempt" a) =>
  Lens.Family2.LensLike' f s a
lastUpdateAttempt = Data.ProtoLens.Field.field @"lastUpdateAttempt"
lastUpdated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastUpdated" a) =>
  Lens.Family2.LensLike' f s a
lastUpdated = Data.ProtoLens.Field.field @"lastUpdated"
listener ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listener" a) =>
  Lens.Family2.LensLike' f s a
listener = Data.ProtoLens.Field.field @"listener"
maybe'activeState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activeState" a) =>
  Lens.Family2.LensLike' f s a
maybe'activeState = Data.ProtoLens.Field.field @"maybe'activeState"
maybe'bootstrap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bootstrap" a) =>
  Lens.Family2.LensLike' f s a
maybe'bootstrap = Data.ProtoLens.Field.field @"maybe'bootstrap"
maybe'cluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cluster" a) =>
  Lens.Family2.LensLike' f s a
maybe'cluster = Data.ProtoLens.Field.field @"maybe'cluster"
maybe'drainingState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drainingState" a) =>
  Lens.Family2.LensLike' f s a
maybe'drainingState
  = Data.ProtoLens.Field.field @"maybe'drainingState"
maybe'endpointConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endpointConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'endpointConfig
  = Data.ProtoLens.Field.field @"maybe'endpointConfig"
maybe'errorState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'errorState" a) =>
  Lens.Family2.LensLike' f s a
maybe'errorState = Data.ProtoLens.Field.field @"maybe'errorState"
maybe'failedConfiguration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failedConfiguration" a) =>
  Lens.Family2.LensLike' f s a
maybe'failedConfiguration
  = Data.ProtoLens.Field.field @"maybe'failedConfiguration"
maybe'lastUpdateAttempt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastUpdateAttempt" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastUpdateAttempt
  = Data.ProtoLens.Field.field @"maybe'lastUpdateAttempt"
maybe'lastUpdated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastUpdated" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastUpdated = Data.ProtoLens.Field.field @"maybe'lastUpdated"
maybe'listener ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listener" a) =>
  Lens.Family2.LensLike' f s a
maybe'listener = Data.ProtoLens.Field.field @"maybe'listener"
maybe'routeConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'routeConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'routeConfig = Data.ProtoLens.Field.field @"maybe'routeConfig"
maybe'secret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'secret" a) =>
  Lens.Family2.LensLike' f s a
maybe'secret = Data.ProtoLens.Field.field @"maybe'secret"
maybe'warmingState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'warmingState" a) =>
  Lens.Family2.LensLike' f s a
maybe'warmingState
  = Data.ProtoLens.Field.field @"maybe'warmingState"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
routeConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "routeConfig" a) =>
  Lens.Family2.LensLike' f s a
routeConfig = Data.ProtoLens.Field.field @"routeConfig"
scopedRouteConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scopedRouteConfigs" a) =>
  Lens.Family2.LensLike' f s a
scopedRouteConfigs
  = Data.ProtoLens.Field.field @"scopedRouteConfigs"
secret ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "secret" a) =>
  Lens.Family2.LensLike' f s a
secret = Data.ProtoLens.Field.field @"secret"
staticClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "staticClusters" a) =>
  Lens.Family2.LensLike' f s a
staticClusters = Data.ProtoLens.Field.field @"staticClusters"
staticEndpointConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "staticEndpointConfigs" a) =>
  Lens.Family2.LensLike' f s a
staticEndpointConfigs
  = Data.ProtoLens.Field.field @"staticEndpointConfigs"
staticListeners ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "staticListeners" a) =>
  Lens.Family2.LensLike' f s a
staticListeners = Data.ProtoLens.Field.field @"staticListeners"
staticRouteConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "staticRouteConfigs" a) =>
  Lens.Family2.LensLike' f s a
staticRouteConfigs
  = Data.ProtoLens.Field.field @"staticRouteConfigs"
staticSecrets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "staticSecrets" a) =>
  Lens.Family2.LensLike' f s a
staticSecrets = Data.ProtoLens.Field.field @"staticSecrets"
vec'configs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'configs" a) =>
  Lens.Family2.LensLike' f s a
vec'configs = Data.ProtoLens.Field.field @"vec'configs"
vec'dynamicActiveClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dynamicActiveClusters" a) =>
  Lens.Family2.LensLike' f s a
vec'dynamicActiveClusters
  = Data.ProtoLens.Field.field @"vec'dynamicActiveClusters"
vec'dynamicActiveSecrets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dynamicActiveSecrets" a) =>
  Lens.Family2.LensLike' f s a
vec'dynamicActiveSecrets
  = Data.ProtoLens.Field.field @"vec'dynamicActiveSecrets"
vec'dynamicEndpointConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dynamicEndpointConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'dynamicEndpointConfigs
  = Data.ProtoLens.Field.field @"vec'dynamicEndpointConfigs"
vec'dynamicListeners ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dynamicListeners" a) =>
  Lens.Family2.LensLike' f s a
vec'dynamicListeners
  = Data.ProtoLens.Field.field @"vec'dynamicListeners"
vec'dynamicRouteConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dynamicRouteConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'dynamicRouteConfigs
  = Data.ProtoLens.Field.field @"vec'dynamicRouteConfigs"
vec'dynamicScopedRouteConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dynamicScopedRouteConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'dynamicScopedRouteConfigs
  = Data.ProtoLens.Field.field @"vec'dynamicScopedRouteConfigs"
vec'dynamicWarmingClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dynamicWarmingClusters" a) =>
  Lens.Family2.LensLike' f s a
vec'dynamicWarmingClusters
  = Data.ProtoLens.Field.field @"vec'dynamicWarmingClusters"
vec'dynamicWarmingSecrets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dynamicWarmingSecrets" a) =>
  Lens.Family2.LensLike' f s a
vec'dynamicWarmingSecrets
  = Data.ProtoLens.Field.field @"vec'dynamicWarmingSecrets"
vec'inlineScopedRouteConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'inlineScopedRouteConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'inlineScopedRouteConfigs
  = Data.ProtoLens.Field.field @"vec'inlineScopedRouteConfigs"
vec'scopedRouteConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'scopedRouteConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'scopedRouteConfigs
  = Data.ProtoLens.Field.field @"vec'scopedRouteConfigs"
vec'staticClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'staticClusters" a) =>
  Lens.Family2.LensLike' f s a
vec'staticClusters
  = Data.ProtoLens.Field.field @"vec'staticClusters"
vec'staticEndpointConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'staticEndpointConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'staticEndpointConfigs
  = Data.ProtoLens.Field.field @"vec'staticEndpointConfigs"
vec'staticListeners ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'staticListeners" a) =>
  Lens.Family2.LensLike' f s a
vec'staticListeners
  = Data.ProtoLens.Field.field @"vec'staticListeners"
vec'staticRouteConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'staticRouteConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'staticRouteConfigs
  = Data.ProtoLens.Field.field @"vec'staticRouteConfigs"
vec'staticSecrets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'staticSecrets" a) =>
  Lens.Family2.LensLike' f s a
vec'staticSecrets = Data.ProtoLens.Field.field @"vec'staticSecrets"
versionInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versionInfo" a) =>
  Lens.Family2.LensLike' f s a
versionInfo = Data.ProtoLens.Field.field @"versionInfo"
warmingState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "warmingState" a) =>
  Lens.Family2.LensLike' f s a
warmingState = Data.ProtoLens.Field.field @"warmingState"