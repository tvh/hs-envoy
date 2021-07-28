{- This file was auto-generated from envoy/config/endpoint/v3/load_report.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Endpoint.V3.LoadReport_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
category ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "category" a) =>
  Lens.Family2.LensLike' f s a
category = Data.ProtoLens.Field.field @"category"
clusterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterName" a) =>
  Lens.Family2.LensLike' f s a
clusterName = Data.ProtoLens.Field.field @"clusterName"
clusterServiceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterServiceName" a) =>
  Lens.Family2.LensLike' f s a
clusterServiceName
  = Data.ProtoLens.Field.field @"clusterServiceName"
droppedCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "droppedCount" a) =>
  Lens.Family2.LensLike' f s a
droppedCount = Data.ProtoLens.Field.field @"droppedCount"
droppedRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "droppedRequests" a) =>
  Lens.Family2.LensLike' f s a
droppedRequests = Data.ProtoLens.Field.field @"droppedRequests"
loadMetricStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "loadMetricStats" a) =>
  Lens.Family2.LensLike' f s a
loadMetricStats = Data.ProtoLens.Field.field @"loadMetricStats"
loadReportInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "loadReportInterval" a) =>
  Lens.Family2.LensLike' f s a
loadReportInterval
  = Data.ProtoLens.Field.field @"loadReportInterval"
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
maybe'loadReportInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'loadReportInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'loadReportInterval
  = Data.ProtoLens.Field.field @"maybe'loadReportInterval"
maybe'locality ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'locality" a) =>
  Lens.Family2.LensLike' f s a
maybe'locality = Data.ProtoLens.Field.field @"maybe'locality"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
metricName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metricName" a) =>
  Lens.Family2.LensLike' f s a
metricName = Data.ProtoLens.Field.field @"metricName"
numRequestsFinishedWithMetric ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numRequestsFinishedWithMetric" a) =>
  Lens.Family2.LensLike' f s a
numRequestsFinishedWithMetric
  = Data.ProtoLens.Field.field @"numRequestsFinishedWithMetric"
priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priority" a) =>
  Lens.Family2.LensLike' f s a
priority = Data.ProtoLens.Field.field @"priority"
totalDroppedRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalDroppedRequests" a) =>
  Lens.Family2.LensLike' f s a
totalDroppedRequests
  = Data.ProtoLens.Field.field @"totalDroppedRequests"
totalErrorRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalErrorRequests" a) =>
  Lens.Family2.LensLike' f s a
totalErrorRequests
  = Data.ProtoLens.Field.field @"totalErrorRequests"
totalIssuedRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalIssuedRequests" a) =>
  Lens.Family2.LensLike' f s a
totalIssuedRequests
  = Data.ProtoLens.Field.field @"totalIssuedRequests"
totalMetricValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalMetricValue" a) =>
  Lens.Family2.LensLike' f s a
totalMetricValue = Data.ProtoLens.Field.field @"totalMetricValue"
totalRequestsInProgress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalRequestsInProgress" a) =>
  Lens.Family2.LensLike' f s a
totalRequestsInProgress
  = Data.ProtoLens.Field.field @"totalRequestsInProgress"
totalSuccessfulRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalSuccessfulRequests" a) =>
  Lens.Family2.LensLike' f s a
totalSuccessfulRequests
  = Data.ProtoLens.Field.field @"totalSuccessfulRequests"
upstreamEndpointStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamEndpointStats" a) =>
  Lens.Family2.LensLike' f s a
upstreamEndpointStats
  = Data.ProtoLens.Field.field @"upstreamEndpointStats"
upstreamLocalityStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamLocalityStats" a) =>
  Lens.Family2.LensLike' f s a
upstreamLocalityStats
  = Data.ProtoLens.Field.field @"upstreamLocalityStats"
vec'droppedRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'droppedRequests" a) =>
  Lens.Family2.LensLike' f s a
vec'droppedRequests
  = Data.ProtoLens.Field.field @"vec'droppedRequests"
vec'loadMetricStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'loadMetricStats" a) =>
  Lens.Family2.LensLike' f s a
vec'loadMetricStats
  = Data.ProtoLens.Field.field @"vec'loadMetricStats"
vec'upstreamEndpointStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'upstreamEndpointStats" a) =>
  Lens.Family2.LensLike' f s a
vec'upstreamEndpointStats
  = Data.ProtoLens.Field.field @"vec'upstreamEndpointStats"
vec'upstreamLocalityStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'upstreamLocalityStats" a) =>
  Lens.Family2.LensLike' f s a
vec'upstreamLocalityStats
  = Data.ProtoLens.Field.field @"vec'upstreamLocalityStats"