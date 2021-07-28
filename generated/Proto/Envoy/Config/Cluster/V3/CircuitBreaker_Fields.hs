{- This file was auto-generated from envoy/config/cluster/v3/circuit_breaker.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Cluster.V3.CircuitBreaker_Fields where
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
budgetPercent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "budgetPercent" a) =>
  Lens.Family2.LensLike' f s a
budgetPercent = Data.ProtoLens.Field.field @"budgetPercent"
maxConnectionPools ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxConnectionPools" a) =>
  Lens.Family2.LensLike' f s a
maxConnectionPools
  = Data.ProtoLens.Field.field @"maxConnectionPools"
maxConnections ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxConnections" a) =>
  Lens.Family2.LensLike' f s a
maxConnections = Data.ProtoLens.Field.field @"maxConnections"
maxPendingRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxPendingRequests" a) =>
  Lens.Family2.LensLike' f s a
maxPendingRequests
  = Data.ProtoLens.Field.field @"maxPendingRequests"
maxRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxRequests" a) =>
  Lens.Family2.LensLike' f s a
maxRequests = Data.ProtoLens.Field.field @"maxRequests"
maxRetries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxRetries" a) =>
  Lens.Family2.LensLike' f s a
maxRetries = Data.ProtoLens.Field.field @"maxRetries"
maybe'budgetPercent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'budgetPercent" a) =>
  Lens.Family2.LensLike' f s a
maybe'budgetPercent
  = Data.ProtoLens.Field.field @"maybe'budgetPercent"
maybe'maxConnectionPools ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxConnectionPools" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxConnectionPools
  = Data.ProtoLens.Field.field @"maybe'maxConnectionPools"
maybe'maxConnections ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxConnections" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxConnections
  = Data.ProtoLens.Field.field @"maybe'maxConnections"
maybe'maxPendingRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxPendingRequests" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxPendingRequests
  = Data.ProtoLens.Field.field @"maybe'maxPendingRequests"
maybe'maxRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxRequests" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxRequests = Data.ProtoLens.Field.field @"maybe'maxRequests"
maybe'maxRetries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxRetries" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxRetries = Data.ProtoLens.Field.field @"maybe'maxRetries"
maybe'minRetryConcurrency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minRetryConcurrency" a) =>
  Lens.Family2.LensLike' f s a
maybe'minRetryConcurrency
  = Data.ProtoLens.Field.field @"maybe'minRetryConcurrency"
maybe'retryBudget ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'retryBudget" a) =>
  Lens.Family2.LensLike' f s a
maybe'retryBudget = Data.ProtoLens.Field.field @"maybe'retryBudget"
minRetryConcurrency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minRetryConcurrency" a) =>
  Lens.Family2.LensLike' f s a
minRetryConcurrency
  = Data.ProtoLens.Field.field @"minRetryConcurrency"
priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priority" a) =>
  Lens.Family2.LensLike' f s a
priority = Data.ProtoLens.Field.field @"priority"
retryBudget ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retryBudget" a) =>
  Lens.Family2.LensLike' f s a
retryBudget = Data.ProtoLens.Field.field @"retryBudget"
thresholds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "thresholds" a) =>
  Lens.Family2.LensLike' f s a
thresholds = Data.ProtoLens.Field.field @"thresholds"
trackRemaining ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trackRemaining" a) =>
  Lens.Family2.LensLike' f s a
trackRemaining = Data.ProtoLens.Field.field @"trackRemaining"
vec'thresholds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'thresholds" a) =>
  Lens.Family2.LensLike' f s a
vec'thresholds = Data.ProtoLens.Field.field @"vec'thresholds"