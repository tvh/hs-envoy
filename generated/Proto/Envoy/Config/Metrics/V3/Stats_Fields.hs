{- This file was auto-generated from envoy/config/metrics/v3/stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Metrics.V3.Stats_Fields where
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
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
buckets ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "buckets" a) =>
  Lens.Family2.LensLike' f s a
buckets = Data.ProtoLens.Field.field @"buckets"
exclusionList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exclusionList" a) =>
  Lens.Family2.LensLike' f s a
exclusionList = Data.ProtoLens.Field.field @"exclusionList"
fixedValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fixedValue" a) =>
  Lens.Family2.LensLike' f s a
fixedValue = Data.ProtoLens.Field.field @"fixedValue"
histogramBucketSettings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "histogramBucketSettings" a) =>
  Lens.Family2.LensLike' f s a
histogramBucketSettings
  = Data.ProtoLens.Field.field @"histogramBucketSettings"
inclusionList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inclusionList" a) =>
  Lens.Family2.LensLike' f s a
inclusionList = Data.ProtoLens.Field.field @"inclusionList"
match ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "match" a) =>
  Lens.Family2.LensLike' f s a
match = Data.ProtoLens.Field.field @"match"
maxBytesPerDatagram ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxBytesPerDatagram" a) =>
  Lens.Family2.LensLike' f s a
maxBytesPerDatagram
  = Data.ProtoLens.Field.field @"maxBytesPerDatagram"
maybe'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'address" a) =>
  Lens.Family2.LensLike' f s a
maybe'address = Data.ProtoLens.Field.field @"maybe'address"
maybe'configType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configType" a) =>
  Lens.Family2.LensLike' f s a
maybe'configType = Data.ProtoLens.Field.field @"maybe'configType"
maybe'dogStatsdSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dogStatsdSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'dogStatsdSpecifier
  = Data.ProtoLens.Field.field @"maybe'dogStatsdSpecifier"
maybe'exclusionList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'exclusionList" a) =>
  Lens.Family2.LensLike' f s a
maybe'exclusionList
  = Data.ProtoLens.Field.field @"maybe'exclusionList"
maybe'fixedValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fixedValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'fixedValue = Data.ProtoLens.Field.field @"maybe'fixedValue"
maybe'inclusionList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'inclusionList" a) =>
  Lens.Family2.LensLike' f s a
maybe'inclusionList
  = Data.ProtoLens.Field.field @"maybe'inclusionList"
maybe'match ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'match" a) =>
  Lens.Family2.LensLike' f s a
maybe'match = Data.ProtoLens.Field.field @"maybe'match"
maybe'maxBytesPerDatagram ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxBytesPerDatagram" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxBytesPerDatagram
  = Data.ProtoLens.Field.field @"maybe'maxBytesPerDatagram"
maybe'regex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regex" a) =>
  Lens.Family2.LensLike' f s a
maybe'regex = Data.ProtoLens.Field.field @"maybe'regex"
maybe'rejectAll ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rejectAll" a) =>
  Lens.Family2.LensLike' f s a
maybe'rejectAll = Data.ProtoLens.Field.field @"maybe'rejectAll"
maybe'statsMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statsMatcher" a) =>
  Lens.Family2.LensLike' f s a
maybe'statsMatcher
  = Data.ProtoLens.Field.field @"maybe'statsMatcher"
maybe'statsdSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statsdSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'statsdSpecifier
  = Data.ProtoLens.Field.field @"maybe'statsdSpecifier"
maybe'tagValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tagValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'tagValue = Data.ProtoLens.Field.field @"maybe'tagValue"
maybe'tcpClusterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tcpClusterName" a) =>
  Lens.Family2.LensLike' f s a
maybe'tcpClusterName
  = Data.ProtoLens.Field.field @"maybe'tcpClusterName"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
maybe'useAllDefaultTags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'useAllDefaultTags" a) =>
  Lens.Family2.LensLike' f s a
maybe'useAllDefaultTags
  = Data.ProtoLens.Field.field @"maybe'useAllDefaultTags"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
numBuckets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numBuckets" a) =>
  Lens.Family2.LensLike' f s a
numBuckets = Data.ProtoLens.Field.field @"numBuckets"
prefix ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prefix" a) =>
  Lens.Family2.LensLike' f s a
prefix = Data.ProtoLens.Field.field @"prefix"
regex ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "regex" a) =>
  Lens.Family2.LensLike' f s a
regex = Data.ProtoLens.Field.field @"regex"
rejectAll ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rejectAll" a) =>
  Lens.Family2.LensLike' f s a
rejectAll = Data.ProtoLens.Field.field @"rejectAll"
statsMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statsMatcher" a) =>
  Lens.Family2.LensLike' f s a
statsMatcher = Data.ProtoLens.Field.field @"statsMatcher"
statsTags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statsTags" a) =>
  Lens.Family2.LensLike' f s a
statsTags = Data.ProtoLens.Field.field @"statsTags"
tagName ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tagName" a) =>
  Lens.Family2.LensLike' f s a
tagName = Data.ProtoLens.Field.field @"tagName"
tcpClusterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tcpClusterName" a) =>
  Lens.Family2.LensLike' f s a
tcpClusterName = Data.ProtoLens.Field.field @"tcpClusterName"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
useAllDefaultTags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useAllDefaultTags" a) =>
  Lens.Family2.LensLike' f s a
useAllDefaultTags = Data.ProtoLens.Field.field @"useAllDefaultTags"
vec'buckets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'buckets" a) =>
  Lens.Family2.LensLike' f s a
vec'buckets = Data.ProtoLens.Field.field @"vec'buckets"
vec'histogramBucketSettings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'histogramBucketSettings" a) =>
  Lens.Family2.LensLike' f s a
vec'histogramBucketSettings
  = Data.ProtoLens.Field.field @"vec'histogramBucketSettings"
vec'statsTags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'statsTags" a) =>
  Lens.Family2.LensLike' f s a
vec'statsTags = Data.ProtoLens.Field.field @"vec'statsTags"