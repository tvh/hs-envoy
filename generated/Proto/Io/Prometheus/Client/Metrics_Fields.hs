{- This file was auto-generated from io/prometheus/client/metrics.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Io.Prometheus.Client.Metrics_Fields where
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
import qualified Proto.Google.Protobuf.Timestamp
bucket ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bucket" a) =>
  Lens.Family2.LensLike' f s a
bucket = Data.ProtoLens.Field.field @"bucket"
counter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "counter" a) =>
  Lens.Family2.LensLike' f s a
counter = Data.ProtoLens.Field.field @"counter"
cumulativeCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cumulativeCount" a) =>
  Lens.Family2.LensLike' f s a
cumulativeCount = Data.ProtoLens.Field.field @"cumulativeCount"
exemplar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exemplar" a) =>
  Lens.Family2.LensLike' f s a
exemplar = Data.ProtoLens.Field.field @"exemplar"
gauge ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gauge" a) =>
  Lens.Family2.LensLike' f s a
gauge = Data.ProtoLens.Field.field @"gauge"
help ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "help" a) =>
  Lens.Family2.LensLike' f s a
help = Data.ProtoLens.Field.field @"help"
histogram ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "histogram" a) =>
  Lens.Family2.LensLike' f s a
histogram = Data.ProtoLens.Field.field @"histogram"
label ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "label" a) =>
  Lens.Family2.LensLike' f s a
label = Data.ProtoLens.Field.field @"label"
maybe'counter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'counter" a) =>
  Lens.Family2.LensLike' f s a
maybe'counter = Data.ProtoLens.Field.field @"maybe'counter"
maybe'cumulativeCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cumulativeCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'cumulativeCount
  = Data.ProtoLens.Field.field @"maybe'cumulativeCount"
maybe'exemplar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'exemplar" a) =>
  Lens.Family2.LensLike' f s a
maybe'exemplar = Data.ProtoLens.Field.field @"maybe'exemplar"
maybe'gauge ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gauge" a) =>
  Lens.Family2.LensLike' f s a
maybe'gauge = Data.ProtoLens.Field.field @"maybe'gauge"
maybe'help ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'help" a) =>
  Lens.Family2.LensLike' f s a
maybe'help = Data.ProtoLens.Field.field @"maybe'help"
maybe'histogram ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'histogram" a) =>
  Lens.Family2.LensLike' f s a
maybe'histogram = Data.ProtoLens.Field.field @"maybe'histogram"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'quantile ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'quantile" a) =>
  Lens.Family2.LensLike' f s a
maybe'quantile = Data.ProtoLens.Field.field @"maybe'quantile"
maybe'sampleCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sampleCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'sampleCount = Data.ProtoLens.Field.field @"maybe'sampleCount"
maybe'sampleSum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sampleSum" a) =>
  Lens.Family2.LensLike' f s a
maybe'sampleSum = Data.ProtoLens.Field.field @"maybe'sampleSum"
maybe'summary ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'summary" a) =>
  Lens.Family2.LensLike' f s a
maybe'summary = Data.ProtoLens.Field.field @"maybe'summary"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'timestampMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestampMs" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestampMs = Data.ProtoLens.Field.field @"maybe'timestampMs"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'untyped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'untyped" a) =>
  Lens.Family2.LensLike' f s a
maybe'untyped = Data.ProtoLens.Field.field @"maybe'untyped"
maybe'upperBound ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upperBound" a) =>
  Lens.Family2.LensLike' f s a
maybe'upperBound = Data.ProtoLens.Field.field @"maybe'upperBound"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
metric ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "metric" a) =>
  Lens.Family2.LensLike' f s a
metric = Data.ProtoLens.Field.field @"metric"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
quantile ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "quantile" a) =>
  Lens.Family2.LensLike' f s a
quantile = Data.ProtoLens.Field.field @"quantile"
sampleCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sampleCount" a) =>
  Lens.Family2.LensLike' f s a
sampleCount = Data.ProtoLens.Field.field @"sampleCount"
sampleSum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sampleSum" a) =>
  Lens.Family2.LensLike' f s a
sampleSum = Data.ProtoLens.Field.field @"sampleSum"
summary ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "summary" a) =>
  Lens.Family2.LensLike' f s a
summary = Data.ProtoLens.Field.field @"summary"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
timestampMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestampMs" a) =>
  Lens.Family2.LensLike' f s a
timestampMs = Data.ProtoLens.Field.field @"timestampMs"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
untyped ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "untyped" a) =>
  Lens.Family2.LensLike' f s a
untyped = Data.ProtoLens.Field.field @"untyped"
upperBound ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upperBound" a) =>
  Lens.Family2.LensLike' f s a
upperBound = Data.ProtoLens.Field.field @"upperBound"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'bucket ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'bucket" a) =>
  Lens.Family2.LensLike' f s a
vec'bucket = Data.ProtoLens.Field.field @"vec'bucket"
vec'label ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'label" a) =>
  Lens.Family2.LensLike' f s a
vec'label = Data.ProtoLens.Field.field @"vec'label"
vec'metric ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'metric" a) =>
  Lens.Family2.LensLike' f s a
vec'metric = Data.ProtoLens.Field.field @"vec'metric"
vec'quantile ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'quantile" a) =>
  Lens.Family2.LensLike' f s a
vec'quantile = Data.ProtoLens.Field.field @"vec'quantile"