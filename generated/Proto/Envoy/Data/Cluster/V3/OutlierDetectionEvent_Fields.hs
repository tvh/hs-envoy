{- This file was auto-generated from envoy/data/cluster/v3/outlier_detection_event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Cluster.V3.OutlierDetectionEvent_Fields where
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
action ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "action" a) =>
  Lens.Family2.LensLike' f s a
action = Data.ProtoLens.Field.field @"action"
clusterAverageSuccessRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterAverageSuccessRate" a) =>
  Lens.Family2.LensLike' f s a
clusterAverageSuccessRate
  = Data.ProtoLens.Field.field @"clusterAverageSuccessRate"
clusterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterName" a) =>
  Lens.Family2.LensLike' f s a
clusterName = Data.ProtoLens.Field.field @"clusterName"
clusterSuccessRateEjectionThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterSuccessRateEjectionThreshold" a) =>
  Lens.Family2.LensLike' f s a
clusterSuccessRateEjectionThreshold
  = Data.ProtoLens.Field.field @"clusterSuccessRateEjectionThreshold"
ejectConsecutiveEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ejectConsecutiveEvent" a) =>
  Lens.Family2.LensLike' f s a
ejectConsecutiveEvent
  = Data.ProtoLens.Field.field @"ejectConsecutiveEvent"
ejectFailurePercentageEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ejectFailurePercentageEvent" a) =>
  Lens.Family2.LensLike' f s a
ejectFailurePercentageEvent
  = Data.ProtoLens.Field.field @"ejectFailurePercentageEvent"
ejectSuccessRateEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ejectSuccessRateEvent" a) =>
  Lens.Family2.LensLike' f s a
ejectSuccessRateEvent
  = Data.ProtoLens.Field.field @"ejectSuccessRateEvent"
enforced ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enforced" a) =>
  Lens.Family2.LensLike' f s a
enforced = Data.ProtoLens.Field.field @"enforced"
hostSuccessRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostSuccessRate" a) =>
  Lens.Family2.LensLike' f s a
hostSuccessRate = Data.ProtoLens.Field.field @"hostSuccessRate"
maybe'ejectConsecutiveEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ejectConsecutiveEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'ejectConsecutiveEvent
  = Data.ProtoLens.Field.field @"maybe'ejectConsecutiveEvent"
maybe'ejectFailurePercentageEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ejectFailurePercentageEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'ejectFailurePercentageEvent
  = Data.ProtoLens.Field.field @"maybe'ejectFailurePercentageEvent"
maybe'ejectSuccessRateEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ejectSuccessRateEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'ejectSuccessRateEvent
  = Data.ProtoLens.Field.field @"maybe'ejectSuccessRateEvent"
maybe'event ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'event" a) =>
  Lens.Family2.LensLike' f s a
maybe'event = Data.ProtoLens.Field.field @"maybe'event"
maybe'secsSinceLastAction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'secsSinceLastAction" a) =>
  Lens.Family2.LensLike' f s a
maybe'secsSinceLastAction
  = Data.ProtoLens.Field.field @"maybe'secsSinceLastAction"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
numEjections ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numEjections" a) =>
  Lens.Family2.LensLike' f s a
numEjections = Data.ProtoLens.Field.field @"numEjections"
secsSinceLastAction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "secsSinceLastAction" a) =>
  Lens.Family2.LensLike' f s a
secsSinceLastAction
  = Data.ProtoLens.Field.field @"secsSinceLastAction"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
upstreamUrl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamUrl" a) =>
  Lens.Family2.LensLike' f s a
upstreamUrl = Data.ProtoLens.Field.field @"upstreamUrl"