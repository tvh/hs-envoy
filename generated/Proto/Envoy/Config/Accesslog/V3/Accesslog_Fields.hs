{- This file was auto-generated from envoy/config/accesslog/v3/accesslog.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Accesslog.V3.Accesslog_Fields where
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
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Type.Matcher.V3.Metadata
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
andFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "andFilter" a) =>
  Lens.Family2.LensLike' f s a
andFilter = Data.ProtoLens.Field.field @"andFilter"
comparison ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "comparison" a) =>
  Lens.Family2.LensLike' f s a
comparison = Data.ProtoLens.Field.field @"comparison"
durationFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "durationFilter" a) =>
  Lens.Family2.LensLike' f s a
durationFilter = Data.ProtoLens.Field.field @"durationFilter"
exclude ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "exclude" a) =>
  Lens.Family2.LensLike' f s a
exclude = Data.ProtoLens.Field.field @"exclude"
extensionFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extensionFilter" a) =>
  Lens.Family2.LensLike' f s a
extensionFilter = Data.ProtoLens.Field.field @"extensionFilter"
filter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "filter" a) =>
  Lens.Family2.LensLike' f s a
filter = Data.ProtoLens.Field.field @"filter"
filters ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "filters" a) =>
  Lens.Family2.LensLike' f s a
filters = Data.ProtoLens.Field.field @"filters"
flags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flags" a) =>
  Lens.Family2.LensLike' f s a
flags = Data.ProtoLens.Field.field @"flags"
grpcStatusFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcStatusFilter" a) =>
  Lens.Family2.LensLike' f s a
grpcStatusFilter = Data.ProtoLens.Field.field @"grpcStatusFilter"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
headerFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headerFilter" a) =>
  Lens.Family2.LensLike' f s a
headerFilter = Data.ProtoLens.Field.field @"headerFilter"
matchIfKeyNotFound ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchIfKeyNotFound" a) =>
  Lens.Family2.LensLike' f s a
matchIfKeyNotFound
  = Data.ProtoLens.Field.field @"matchIfKeyNotFound"
matcher ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "matcher" a) =>
  Lens.Family2.LensLike' f s a
matcher = Data.ProtoLens.Field.field @"matcher"
maybe'andFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'andFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'andFilter = Data.ProtoLens.Field.field @"maybe'andFilter"
maybe'comparison ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'comparison" a) =>
  Lens.Family2.LensLike' f s a
maybe'comparison = Data.ProtoLens.Field.field @"maybe'comparison"
maybe'configType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configType" a) =>
  Lens.Family2.LensLike' f s a
maybe'configType = Data.ProtoLens.Field.field @"maybe'configType"
maybe'durationFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'durationFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'durationFilter
  = Data.ProtoLens.Field.field @"maybe'durationFilter"
maybe'extensionFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'extensionFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'extensionFilter
  = Data.ProtoLens.Field.field @"maybe'extensionFilter"
maybe'filter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filter" a) =>
  Lens.Family2.LensLike' f s a
maybe'filter = Data.ProtoLens.Field.field @"maybe'filter"
maybe'filterSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterSpecifier
  = Data.ProtoLens.Field.field @"maybe'filterSpecifier"
maybe'grpcStatusFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcStatusFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcStatusFilter
  = Data.ProtoLens.Field.field @"maybe'grpcStatusFilter"
maybe'header ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'header" a) =>
  Lens.Family2.LensLike' f s a
maybe'header = Data.ProtoLens.Field.field @"maybe'header"
maybe'headerFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'headerFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'headerFilter
  = Data.ProtoLens.Field.field @"maybe'headerFilter"
maybe'matchIfKeyNotFound ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'matchIfKeyNotFound" a) =>
  Lens.Family2.LensLike' f s a
maybe'matchIfKeyNotFound
  = Data.ProtoLens.Field.field @"maybe'matchIfKeyNotFound"
maybe'matcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'matcher" a) =>
  Lens.Family2.LensLike' f s a
maybe'matcher = Data.ProtoLens.Field.field @"maybe'matcher"
maybe'metadataFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadataFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadataFilter
  = Data.ProtoLens.Field.field @"maybe'metadataFilter"
maybe'notHealthCheckFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'notHealthCheckFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'notHealthCheckFilter
  = Data.ProtoLens.Field.field @"maybe'notHealthCheckFilter"
maybe'orFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'orFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'orFilter = Data.ProtoLens.Field.field @"maybe'orFilter"
maybe'percentSampled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'percentSampled" a) =>
  Lens.Family2.LensLike' f s a
maybe'percentSampled
  = Data.ProtoLens.Field.field @"maybe'percentSampled"
maybe'responseFlagFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'responseFlagFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'responseFlagFilter
  = Data.ProtoLens.Field.field @"maybe'responseFlagFilter"
maybe'runtimeFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'runtimeFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'runtimeFilter
  = Data.ProtoLens.Field.field @"maybe'runtimeFilter"
maybe'statusCodeFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statusCodeFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'statusCodeFilter
  = Data.ProtoLens.Field.field @"maybe'statusCodeFilter"
maybe'traceableFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'traceableFilter" a) =>
  Lens.Family2.LensLike' f s a
maybe'traceableFilter
  = Data.ProtoLens.Field.field @"maybe'traceableFilter"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
metadataFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadataFilter" a) =>
  Lens.Family2.LensLike' f s a
metadataFilter = Data.ProtoLens.Field.field @"metadataFilter"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
notHealthCheckFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "notHealthCheckFilter" a) =>
  Lens.Family2.LensLike' f s a
notHealthCheckFilter
  = Data.ProtoLens.Field.field @"notHealthCheckFilter"
op ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "op" a) =>
  Lens.Family2.LensLike' f s a
op = Data.ProtoLens.Field.field @"op"
orFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "orFilter" a) =>
  Lens.Family2.LensLike' f s a
orFilter = Data.ProtoLens.Field.field @"orFilter"
percentSampled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "percentSampled" a) =>
  Lens.Family2.LensLike' f s a
percentSampled = Data.ProtoLens.Field.field @"percentSampled"
responseFlagFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseFlagFilter" a) =>
  Lens.Family2.LensLike' f s a
responseFlagFilter
  = Data.ProtoLens.Field.field @"responseFlagFilter"
runtimeFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "runtimeFilter" a) =>
  Lens.Family2.LensLike' f s a
runtimeFilter = Data.ProtoLens.Field.field @"runtimeFilter"
runtimeKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "runtimeKey" a) =>
  Lens.Family2.LensLike' f s a
runtimeKey = Data.ProtoLens.Field.field @"runtimeKey"
statusCodeFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statusCodeFilter" a) =>
  Lens.Family2.LensLike' f s a
statusCodeFilter = Data.ProtoLens.Field.field @"statusCodeFilter"
statuses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statuses" a) =>
  Lens.Family2.LensLike' f s a
statuses = Data.ProtoLens.Field.field @"statuses"
traceableFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "traceableFilter" a) =>
  Lens.Family2.LensLike' f s a
traceableFilter = Data.ProtoLens.Field.field @"traceableFilter"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
useIndependentRandomness ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useIndependentRandomness" a) =>
  Lens.Family2.LensLike' f s a
useIndependentRandomness
  = Data.ProtoLens.Field.field @"useIndependentRandomness"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'filters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'filters" a) =>
  Lens.Family2.LensLike' f s a
vec'filters = Data.ProtoLens.Field.field @"vec'filters"
vec'flags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'flags" a) =>
  Lens.Family2.LensLike' f s a
vec'flags = Data.ProtoLens.Field.field @"vec'flags"
vec'statuses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'statuses" a) =>
  Lens.Family2.LensLike' f s a
vec'statuses = Data.ProtoLens.Field.field @"vec'statuses"