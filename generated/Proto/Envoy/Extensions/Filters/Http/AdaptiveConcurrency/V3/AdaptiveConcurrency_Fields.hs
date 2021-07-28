{- This file was auto-generated from envoy/extensions/filters/http/adaptive_concurrency/v3/adaptive_concurrency.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
buffer ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "buffer" a) =>
  Lens.Family2.LensLike' f s a
buffer = Data.ProtoLens.Field.field @"buffer"
concurrencyLimitParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "concurrencyLimitParams" a) =>
  Lens.Family2.LensLike' f s a
concurrencyLimitParams
  = Data.ProtoLens.Field.field @"concurrencyLimitParams"
concurrencyUpdateInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "concurrencyUpdateInterval" a) =>
  Lens.Family2.LensLike' f s a
concurrencyUpdateInterval
  = Data.ProtoLens.Field.field @"concurrencyUpdateInterval"
enabled ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "enabled" a) =>
  Lens.Family2.LensLike' f s a
enabled = Data.ProtoLens.Field.field @"enabled"
gradientControllerConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "gradientControllerConfig" a) =>
  Lens.Family2.LensLike' f s a
gradientControllerConfig
  = Data.ProtoLens.Field.field @"gradientControllerConfig"
interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "interval" a) =>
  Lens.Family2.LensLike' f s a
interval = Data.ProtoLens.Field.field @"interval"
jitter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "jitter" a) =>
  Lens.Family2.LensLike' f s a
jitter = Data.ProtoLens.Field.field @"jitter"
maxConcurrencyLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxConcurrencyLimit" a) =>
  Lens.Family2.LensLike' f s a
maxConcurrencyLimit
  = Data.ProtoLens.Field.field @"maxConcurrencyLimit"
maybe'buffer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'buffer" a) =>
  Lens.Family2.LensLike' f s a
maybe'buffer = Data.ProtoLens.Field.field @"maybe'buffer"
maybe'concurrencyControllerConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'concurrencyControllerConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'concurrencyControllerConfig
  = Data.ProtoLens.Field.field @"maybe'concurrencyControllerConfig"
maybe'concurrencyLimitParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'concurrencyLimitParams" a) =>
  Lens.Family2.LensLike' f s a
maybe'concurrencyLimitParams
  = Data.ProtoLens.Field.field @"maybe'concurrencyLimitParams"
maybe'concurrencyUpdateInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'concurrencyUpdateInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'concurrencyUpdateInterval
  = Data.ProtoLens.Field.field @"maybe'concurrencyUpdateInterval"
maybe'enabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'enabled = Data.ProtoLens.Field.field @"maybe'enabled"
maybe'gradientControllerConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gradientControllerConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'gradientControllerConfig
  = Data.ProtoLens.Field.field @"maybe'gradientControllerConfig"
maybe'interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'interval" a) =>
  Lens.Family2.LensLike' f s a
maybe'interval = Data.ProtoLens.Field.field @"maybe'interval"
maybe'jitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'jitter" a) =>
  Lens.Family2.LensLike' f s a
maybe'jitter = Data.ProtoLens.Field.field @"maybe'jitter"
maybe'maxConcurrencyLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxConcurrencyLimit" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxConcurrencyLimit
  = Data.ProtoLens.Field.field @"maybe'maxConcurrencyLimit"
maybe'minConcurrency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minConcurrency" a) =>
  Lens.Family2.LensLike' f s a
maybe'minConcurrency
  = Data.ProtoLens.Field.field @"maybe'minConcurrency"
maybe'minRttCalcParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minRttCalcParams" a) =>
  Lens.Family2.LensLike' f s a
maybe'minRttCalcParams
  = Data.ProtoLens.Field.field @"maybe'minRttCalcParams"
maybe'requestCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestCount
  = Data.ProtoLens.Field.field @"maybe'requestCount"
maybe'sampleAggregatePercentile ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sampleAggregatePercentile" a) =>
  Lens.Family2.LensLike' f s a
maybe'sampleAggregatePercentile
  = Data.ProtoLens.Field.field @"maybe'sampleAggregatePercentile"
minConcurrency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minConcurrency" a) =>
  Lens.Family2.LensLike' f s a
minConcurrency = Data.ProtoLens.Field.field @"minConcurrency"
minRttCalcParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minRttCalcParams" a) =>
  Lens.Family2.LensLike' f s a
minRttCalcParams = Data.ProtoLens.Field.field @"minRttCalcParams"
requestCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestCount" a) =>
  Lens.Family2.LensLike' f s a
requestCount = Data.ProtoLens.Field.field @"requestCount"
sampleAggregatePercentile ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sampleAggregatePercentile" a) =>
  Lens.Family2.LensLike' f s a
sampleAggregatePercentile
  = Data.ProtoLens.Field.field @"sampleAggregatePercentile"