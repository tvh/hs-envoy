{- This file was auto-generated from envoy/extensions/filters/http/fault/v3/fault.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Fault.V3.Fault_Fields where
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
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
abort ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "abort" a) =>
  Lens.Family2.LensLike' f s a
abort = Data.ProtoLens.Field.field @"abort"
abortGrpcStatusRuntime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "abortGrpcStatusRuntime" a) =>
  Lens.Family2.LensLike' f s a
abortGrpcStatusRuntime
  = Data.ProtoLens.Field.field @"abortGrpcStatusRuntime"
abortHttpStatusRuntime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "abortHttpStatusRuntime" a) =>
  Lens.Family2.LensLike' f s a
abortHttpStatusRuntime
  = Data.ProtoLens.Field.field @"abortHttpStatusRuntime"
abortPercentRuntime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "abortPercentRuntime" a) =>
  Lens.Family2.LensLike' f s a
abortPercentRuntime
  = Data.ProtoLens.Field.field @"abortPercentRuntime"
delay ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "delay" a) =>
  Lens.Family2.LensLike' f s a
delay = Data.ProtoLens.Field.field @"delay"
delayDurationRuntime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delayDurationRuntime" a) =>
  Lens.Family2.LensLike' f s a
delayDurationRuntime
  = Data.ProtoLens.Field.field @"delayDurationRuntime"
delayPercentRuntime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delayPercentRuntime" a) =>
  Lens.Family2.LensLike' f s a
delayPercentRuntime
  = Data.ProtoLens.Field.field @"delayPercentRuntime"
disableDownstreamClusterStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disableDownstreamClusterStats" a) =>
  Lens.Family2.LensLike' f s a
disableDownstreamClusterStats
  = Data.ProtoLens.Field.field @"disableDownstreamClusterStats"
downstreamNodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "downstreamNodes" a) =>
  Lens.Family2.LensLike' f s a
downstreamNodes = Data.ProtoLens.Field.field @"downstreamNodes"
grpcStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcStatus" a) =>
  Lens.Family2.LensLike' f s a
grpcStatus = Data.ProtoLens.Field.field @"grpcStatus"
headerAbort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headerAbort" a) =>
  Lens.Family2.LensLike' f s a
headerAbort = Data.ProtoLens.Field.field @"headerAbort"
headers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "headers" a) =>
  Lens.Family2.LensLike' f s a
headers = Data.ProtoLens.Field.field @"headers"
httpStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpStatus" a) =>
  Lens.Family2.LensLike' f s a
httpStatus = Data.ProtoLens.Field.field @"httpStatus"
maxActiveFaults ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxActiveFaults" a) =>
  Lens.Family2.LensLike' f s a
maxActiveFaults = Data.ProtoLens.Field.field @"maxActiveFaults"
maxActiveFaultsRuntime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxActiveFaultsRuntime" a) =>
  Lens.Family2.LensLike' f s a
maxActiveFaultsRuntime
  = Data.ProtoLens.Field.field @"maxActiveFaultsRuntime"
maybe'abort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'abort" a) =>
  Lens.Family2.LensLike' f s a
maybe'abort = Data.ProtoLens.Field.field @"maybe'abort"
maybe'delay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'delay" a) =>
  Lens.Family2.LensLike' f s a
maybe'delay = Data.ProtoLens.Field.field @"maybe'delay"
maybe'errorType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'errorType" a) =>
  Lens.Family2.LensLike' f s a
maybe'errorType = Data.ProtoLens.Field.field @"maybe'errorType"
maybe'grpcStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcStatus" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcStatus = Data.ProtoLens.Field.field @"maybe'grpcStatus"
maybe'headerAbort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'headerAbort" a) =>
  Lens.Family2.LensLike' f s a
maybe'headerAbort = Data.ProtoLens.Field.field @"maybe'headerAbort"
maybe'httpStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpStatus" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpStatus = Data.ProtoLens.Field.field @"maybe'httpStatus"
maybe'maxActiveFaults ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxActiveFaults" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxActiveFaults
  = Data.ProtoLens.Field.field @"maybe'maxActiveFaults"
maybe'percentage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'percentage" a) =>
  Lens.Family2.LensLike' f s a
maybe'percentage = Data.ProtoLens.Field.field @"maybe'percentage"
maybe'responseRateLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'responseRateLimit" a) =>
  Lens.Family2.LensLike' f s a
maybe'responseRateLimit
  = Data.ProtoLens.Field.field @"maybe'responseRateLimit"
percentage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "percentage" a) =>
  Lens.Family2.LensLike' f s a
percentage = Data.ProtoLens.Field.field @"percentage"
responseRateLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseRateLimit" a) =>
  Lens.Family2.LensLike' f s a
responseRateLimit = Data.ProtoLens.Field.field @"responseRateLimit"
responseRateLimitPercentRuntime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseRateLimitPercentRuntime" a) =>
  Lens.Family2.LensLike' f s a
responseRateLimitPercentRuntime
  = Data.ProtoLens.Field.field @"responseRateLimitPercentRuntime"
upstreamCluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamCluster" a) =>
  Lens.Family2.LensLike' f s a
upstreamCluster = Data.ProtoLens.Field.field @"upstreamCluster"
vec'downstreamNodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'downstreamNodes" a) =>
  Lens.Family2.LensLike' f s a
vec'downstreamNodes
  = Data.ProtoLens.Field.field @"vec'downstreamNodes"
vec'headers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'headers" a) =>
  Lens.Family2.LensLike' f s a
vec'headers = Data.ProtoLens.Field.field @"vec'headers"