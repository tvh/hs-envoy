{- This file was auto-generated from envoy/extensions/filters/http/admission_control/v3alpha/admission_control.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields where
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
import qualified Proto.Envoy.Type.V3.Range
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
aggression ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "aggression" a) =>
  Lens.Family2.LensLike' f s a
aggression = Data.ProtoLens.Field.field @"aggression"
enabled ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "enabled" a) =>
  Lens.Family2.LensLike' f s a
enabled = Data.ProtoLens.Field.field @"enabled"
grpcCriteria ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcCriteria" a) =>
  Lens.Family2.LensLike' f s a
grpcCriteria = Data.ProtoLens.Field.field @"grpcCriteria"
grpcSuccessStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcSuccessStatus" a) =>
  Lens.Family2.LensLike' f s a
grpcSuccessStatus = Data.ProtoLens.Field.field @"grpcSuccessStatus"
httpCriteria ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpCriteria" a) =>
  Lens.Family2.LensLike' f s a
httpCriteria = Data.ProtoLens.Field.field @"httpCriteria"
httpSuccessStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpSuccessStatus" a) =>
  Lens.Family2.LensLike' f s a
httpSuccessStatus = Data.ProtoLens.Field.field @"httpSuccessStatus"
maxRejectionProbability ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxRejectionProbability" a) =>
  Lens.Family2.LensLike' f s a
maxRejectionProbability
  = Data.ProtoLens.Field.field @"maxRejectionProbability"
maybe'aggression ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'aggression" a) =>
  Lens.Family2.LensLike' f s a
maybe'aggression = Data.ProtoLens.Field.field @"maybe'aggression"
maybe'enabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'enabled = Data.ProtoLens.Field.field @"maybe'enabled"
maybe'evaluationCriteria ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'evaluationCriteria" a) =>
  Lens.Family2.LensLike' f s a
maybe'evaluationCriteria
  = Data.ProtoLens.Field.field @"maybe'evaluationCriteria"
maybe'grpcCriteria ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcCriteria" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcCriteria
  = Data.ProtoLens.Field.field @"maybe'grpcCriteria"
maybe'httpCriteria ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpCriteria" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpCriteria
  = Data.ProtoLens.Field.field @"maybe'httpCriteria"
maybe'maxRejectionProbability ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxRejectionProbability" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxRejectionProbability
  = Data.ProtoLens.Field.field @"maybe'maxRejectionProbability"
maybe'rpsThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rpsThreshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'rpsThreshold
  = Data.ProtoLens.Field.field @"maybe'rpsThreshold"
maybe'samplingWindow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'samplingWindow" a) =>
  Lens.Family2.LensLike' f s a
maybe'samplingWindow
  = Data.ProtoLens.Field.field @"maybe'samplingWindow"
maybe'srThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'srThreshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'srThreshold = Data.ProtoLens.Field.field @"maybe'srThreshold"
maybe'successCriteria ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'successCriteria" a) =>
  Lens.Family2.LensLike' f s a
maybe'successCriteria
  = Data.ProtoLens.Field.field @"maybe'successCriteria"
rpsThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rpsThreshold" a) =>
  Lens.Family2.LensLike' f s a
rpsThreshold = Data.ProtoLens.Field.field @"rpsThreshold"
samplingWindow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "samplingWindow" a) =>
  Lens.Family2.LensLike' f s a
samplingWindow = Data.ProtoLens.Field.field @"samplingWindow"
srThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "srThreshold" a) =>
  Lens.Family2.LensLike' f s a
srThreshold = Data.ProtoLens.Field.field @"srThreshold"
successCriteria ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "successCriteria" a) =>
  Lens.Family2.LensLike' f s a
successCriteria = Data.ProtoLens.Field.field @"successCriteria"
vec'grpcSuccessStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'grpcSuccessStatus" a) =>
  Lens.Family2.LensLike' f s a
vec'grpcSuccessStatus
  = Data.ProtoLens.Field.field @"vec'grpcSuccessStatus"
vec'httpSuccessStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'httpSuccessStatus" a) =>
  Lens.Family2.LensLike' f s a
vec'httpSuccessStatus
  = Data.ProtoLens.Field.field @"vec'httpSuccessStatus"