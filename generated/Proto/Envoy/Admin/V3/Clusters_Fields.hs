{- This file was auto-generated from envoy/admin/v3/clusters.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Admin.V3.Clusters_Fields where
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
import qualified Proto.Envoy.Admin.V3.Metrics
import qualified Proto.Envoy.Config.Cluster.V3.CircuitBreaker
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.HealthCheck
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
activeHcTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activeHcTimeout" a) =>
  Lens.Family2.LensLike' f s a
activeHcTimeout = Data.ProtoLens.Field.field @"activeHcTimeout"
addedViaApi ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "addedViaApi" a) =>
  Lens.Family2.LensLike' f s a
addedViaApi = Data.ProtoLens.Field.field @"addedViaApi"
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
circuitBreakers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "circuitBreakers" a) =>
  Lens.Family2.LensLike' f s a
circuitBreakers = Data.ProtoLens.Field.field @"circuitBreakers"
clusterStatuses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterStatuses" a) =>
  Lens.Family2.LensLike' f s a
clusterStatuses = Data.ProtoLens.Field.field @"clusterStatuses"
edsHealthStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "edsHealthStatus" a) =>
  Lens.Family2.LensLike' f s a
edsHealthStatus = Data.ProtoLens.Field.field @"edsHealthStatus"
excludedViaImmediateHcFail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "excludedViaImmediateHcFail" a) =>
  Lens.Family2.LensLike' f s a
excludedViaImmediateHcFail
  = Data.ProtoLens.Field.field @"excludedViaImmediateHcFail"
failedActiveDegradedCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failedActiveDegradedCheck" a) =>
  Lens.Family2.LensLike' f s a
failedActiveDegradedCheck
  = Data.ProtoLens.Field.field @"failedActiveDegradedCheck"
failedActiveHealthCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failedActiveHealthCheck" a) =>
  Lens.Family2.LensLike' f s a
failedActiveHealthCheck
  = Data.ProtoLens.Field.field @"failedActiveHealthCheck"
failedOutlierCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failedOutlierCheck" a) =>
  Lens.Family2.LensLike' f s a
failedOutlierCheck
  = Data.ProtoLens.Field.field @"failedOutlierCheck"
healthStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "healthStatus" a) =>
  Lens.Family2.LensLike' f s a
healthStatus = Data.ProtoLens.Field.field @"healthStatus"
hostStatuses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostStatuses" a) =>
  Lens.Family2.LensLike' f s a
hostStatuses = Data.ProtoLens.Field.field @"hostStatuses"
hostname ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostname" a) =>
  Lens.Family2.LensLike' f s a
hostname = Data.ProtoLens.Field.field @"hostname"
localOriginSuccessRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localOriginSuccessRate" a) =>
  Lens.Family2.LensLike' f s a
localOriginSuccessRate
  = Data.ProtoLens.Field.field @"localOriginSuccessRate"
localOriginSuccessRateEjectionThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localOriginSuccessRateEjectionThreshold" a) =>
  Lens.Family2.LensLike' f s a
localOriginSuccessRateEjectionThreshold
  = Data.ProtoLens.Field.field
      @"localOriginSuccessRateEjectionThreshold"
locality ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "locality" a) =>
  Lens.Family2.LensLike' f s a
locality = Data.ProtoLens.Field.field @"locality"
maybe'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'address" a) =>
  Lens.Family2.LensLike' f s a
maybe'address = Data.ProtoLens.Field.field @"maybe'address"
maybe'circuitBreakers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'circuitBreakers" a) =>
  Lens.Family2.LensLike' f s a
maybe'circuitBreakers
  = Data.ProtoLens.Field.field @"maybe'circuitBreakers"
maybe'healthStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'healthStatus" a) =>
  Lens.Family2.LensLike' f s a
maybe'healthStatus
  = Data.ProtoLens.Field.field @"maybe'healthStatus"
maybe'localOriginSuccessRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localOriginSuccessRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'localOriginSuccessRate
  = Data.ProtoLens.Field.field @"maybe'localOriginSuccessRate"
maybe'localOriginSuccessRateEjectionThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localOriginSuccessRateEjectionThreshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'localOriginSuccessRateEjectionThreshold
  = Data.ProtoLens.Field.field
      @"maybe'localOriginSuccessRateEjectionThreshold"
maybe'locality ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'locality" a) =>
  Lens.Family2.LensLike' f s a
maybe'locality = Data.ProtoLens.Field.field @"maybe'locality"
maybe'successRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'successRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'successRate = Data.ProtoLens.Field.field @"maybe'successRate"
maybe'successRateEjectionThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'successRateEjectionThreshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'successRateEjectionThreshold
  = Data.ProtoLens.Field.field @"maybe'successRateEjectionThreshold"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
observabilityName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "observabilityName" a) =>
  Lens.Family2.LensLike' f s a
observabilityName = Data.ProtoLens.Field.field @"observabilityName"
pendingActiveHc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pendingActiveHc" a) =>
  Lens.Family2.LensLike' f s a
pendingActiveHc = Data.ProtoLens.Field.field @"pendingActiveHc"
pendingDynamicRemoval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pendingDynamicRemoval" a) =>
  Lens.Family2.LensLike' f s a
pendingDynamicRemoval
  = Data.ProtoLens.Field.field @"pendingDynamicRemoval"
priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priority" a) =>
  Lens.Family2.LensLike' f s a
priority = Data.ProtoLens.Field.field @"priority"
stats ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stats" a) =>
  Lens.Family2.LensLike' f s a
stats = Data.ProtoLens.Field.field @"stats"
successRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "successRate" a) =>
  Lens.Family2.LensLike' f s a
successRate = Data.ProtoLens.Field.field @"successRate"
successRateEjectionThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "successRateEjectionThreshold" a) =>
  Lens.Family2.LensLike' f s a
successRateEjectionThreshold
  = Data.ProtoLens.Field.field @"successRateEjectionThreshold"
vec'clusterStatuses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clusterStatuses" a) =>
  Lens.Family2.LensLike' f s a
vec'clusterStatuses
  = Data.ProtoLens.Field.field @"vec'clusterStatuses"
vec'hostStatuses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'hostStatuses" a) =>
  Lens.Family2.LensLike' f s a
vec'hostStatuses = Data.ProtoLens.Field.field @"vec'hostStatuses"
vec'stats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'stats" a) =>
  Lens.Family2.LensLike' f s a
vec'stats = Data.ProtoLens.Field.field @"vec'stats"
weight ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "weight" a) =>
  Lens.Family2.LensLike' f s a
weight = Data.ProtoLens.Field.field @"weight"