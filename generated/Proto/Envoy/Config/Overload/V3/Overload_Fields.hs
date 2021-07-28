{- This file was auto-generated from envoy/config/overload/v3/overload.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Overload.V3.Overload_Fields where
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
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
actions ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "actions" a) =>
  Lens.Family2.LensLike' f s a
actions = Data.ProtoLens.Field.field @"actions"
maybe'configType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configType" a) =>
  Lens.Family2.LensLike' f s a
maybe'configType = Data.ProtoLens.Field.field @"maybe'configType"
maybe'minScale ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minScale" a) =>
  Lens.Family2.LensLike' f s a
maybe'minScale = Data.ProtoLens.Field.field @"maybe'minScale"
maybe'minTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'minTimeout = Data.ProtoLens.Field.field @"maybe'minTimeout"
maybe'overloadAdjust ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'overloadAdjust" a) =>
  Lens.Family2.LensLike' f s a
maybe'overloadAdjust
  = Data.ProtoLens.Field.field @"maybe'overloadAdjust"
maybe'refreshInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'refreshInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'refreshInterval
  = Data.ProtoLens.Field.field @"maybe'refreshInterval"
maybe'scaled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scaled" a) =>
  Lens.Family2.LensLike' f s a
maybe'scaled = Data.ProtoLens.Field.field @"maybe'scaled"
maybe'threshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'threshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'threshold = Data.ProtoLens.Field.field @"maybe'threshold"
maybe'triggerOneof ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'triggerOneof" a) =>
  Lens.Family2.LensLike' f s a
maybe'triggerOneof
  = Data.ProtoLens.Field.field @"maybe'triggerOneof"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
minScale ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minScale" a) =>
  Lens.Family2.LensLike' f s a
minScale = Data.ProtoLens.Field.field @"minScale"
minTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minTimeout" a) =>
  Lens.Family2.LensLike' f s a
minTimeout = Data.ProtoLens.Field.field @"minTimeout"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
refreshInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "refreshInterval" a) =>
  Lens.Family2.LensLike' f s a
refreshInterval = Data.ProtoLens.Field.field @"refreshInterval"
resourceMonitors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resourceMonitors" a) =>
  Lens.Family2.LensLike' f s a
resourceMonitors = Data.ProtoLens.Field.field @"resourceMonitors"
saturationThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "saturationThreshold" a) =>
  Lens.Family2.LensLike' f s a
saturationThreshold
  = Data.ProtoLens.Field.field @"saturationThreshold"
scaled ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "scaled" a) =>
  Lens.Family2.LensLike' f s a
scaled = Data.ProtoLens.Field.field @"scaled"
scalingThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scalingThreshold" a) =>
  Lens.Family2.LensLike' f s a
scalingThreshold = Data.ProtoLens.Field.field @"scalingThreshold"
threshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threshold" a) =>
  Lens.Family2.LensLike' f s a
threshold = Data.ProtoLens.Field.field @"threshold"
timer ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "timer" a) =>
  Lens.Family2.LensLike' f s a
timer = Data.ProtoLens.Field.field @"timer"
timerScaleFactors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timerScaleFactors" a) =>
  Lens.Family2.LensLike' f s a
timerScaleFactors = Data.ProtoLens.Field.field @"timerScaleFactors"
triggers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "triggers" a) =>
  Lens.Family2.LensLike' f s a
triggers = Data.ProtoLens.Field.field @"triggers"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'actions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'actions" a) =>
  Lens.Family2.LensLike' f s a
vec'actions = Data.ProtoLens.Field.field @"vec'actions"
vec'resourceMonitors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'resourceMonitors" a) =>
  Lens.Family2.LensLike' f s a
vec'resourceMonitors
  = Data.ProtoLens.Field.field @"vec'resourceMonitors"
vec'timerScaleFactors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'timerScaleFactors" a) =>
  Lens.Family2.LensLike' f s a
vec'timerScaleFactors
  = Data.ProtoLens.Field.field @"vec'timerScaleFactors"
vec'triggers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'triggers" a) =>
  Lens.Family2.LensLike' f s a
vec'triggers = Data.ProtoLens.Field.field @"vec'triggers"