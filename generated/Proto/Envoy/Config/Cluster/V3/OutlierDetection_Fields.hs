{- This file was auto-generated from envoy/config/cluster/v3/outlier_detection.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields where
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
baseEjectionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "baseEjectionTime" a) =>
  Lens.Family2.LensLike' f s a
baseEjectionTime = Data.ProtoLens.Field.field @"baseEjectionTime"
consecutive5xx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "consecutive5xx" a) =>
  Lens.Family2.LensLike' f s a
consecutive5xx = Data.ProtoLens.Field.field @"consecutive5xx"
consecutiveGatewayFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "consecutiveGatewayFailure" a) =>
  Lens.Family2.LensLike' f s a
consecutiveGatewayFailure
  = Data.ProtoLens.Field.field @"consecutiveGatewayFailure"
consecutiveLocalOriginFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "consecutiveLocalOriginFailure" a) =>
  Lens.Family2.LensLike' f s a
consecutiveLocalOriginFailure
  = Data.ProtoLens.Field.field @"consecutiveLocalOriginFailure"
enforcingConsecutive5xx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enforcingConsecutive5xx" a) =>
  Lens.Family2.LensLike' f s a
enforcingConsecutive5xx
  = Data.ProtoLens.Field.field @"enforcingConsecutive5xx"
enforcingConsecutiveGatewayFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enforcingConsecutiveGatewayFailure" a) =>
  Lens.Family2.LensLike' f s a
enforcingConsecutiveGatewayFailure
  = Data.ProtoLens.Field.field @"enforcingConsecutiveGatewayFailure"
enforcingConsecutiveLocalOriginFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enforcingConsecutiveLocalOriginFailure" a) =>
  Lens.Family2.LensLike' f s a
enforcingConsecutiveLocalOriginFailure
  = Data.ProtoLens.Field.field
      @"enforcingConsecutiveLocalOriginFailure"
enforcingFailurePercentage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enforcingFailurePercentage" a) =>
  Lens.Family2.LensLike' f s a
enforcingFailurePercentage
  = Data.ProtoLens.Field.field @"enforcingFailurePercentage"
enforcingFailurePercentageLocalOrigin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enforcingFailurePercentageLocalOrigin" a) =>
  Lens.Family2.LensLike' f s a
enforcingFailurePercentageLocalOrigin
  = Data.ProtoLens.Field.field
      @"enforcingFailurePercentageLocalOrigin"
enforcingLocalOriginSuccessRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enforcingLocalOriginSuccessRate" a) =>
  Lens.Family2.LensLike' f s a
enforcingLocalOriginSuccessRate
  = Data.ProtoLens.Field.field @"enforcingLocalOriginSuccessRate"
enforcingSuccessRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enforcingSuccessRate" a) =>
  Lens.Family2.LensLike' f s a
enforcingSuccessRate
  = Data.ProtoLens.Field.field @"enforcingSuccessRate"
failurePercentageMinimumHosts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failurePercentageMinimumHosts" a) =>
  Lens.Family2.LensLike' f s a
failurePercentageMinimumHosts
  = Data.ProtoLens.Field.field @"failurePercentageMinimumHosts"
failurePercentageRequestVolume ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failurePercentageRequestVolume" a) =>
  Lens.Family2.LensLike' f s a
failurePercentageRequestVolume
  = Data.ProtoLens.Field.field @"failurePercentageRequestVolume"
failurePercentageThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failurePercentageThreshold" a) =>
  Lens.Family2.LensLike' f s a
failurePercentageThreshold
  = Data.ProtoLens.Field.field @"failurePercentageThreshold"
interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "interval" a) =>
  Lens.Family2.LensLike' f s a
interval = Data.ProtoLens.Field.field @"interval"
maxEjectionPercent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxEjectionPercent" a) =>
  Lens.Family2.LensLike' f s a
maxEjectionPercent
  = Data.ProtoLens.Field.field @"maxEjectionPercent"
maxEjectionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxEjectionTime" a) =>
  Lens.Family2.LensLike' f s a
maxEjectionTime = Data.ProtoLens.Field.field @"maxEjectionTime"
maybe'baseEjectionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'baseEjectionTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'baseEjectionTime
  = Data.ProtoLens.Field.field @"maybe'baseEjectionTime"
maybe'consecutive5xx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'consecutive5xx" a) =>
  Lens.Family2.LensLike' f s a
maybe'consecutive5xx
  = Data.ProtoLens.Field.field @"maybe'consecutive5xx"
maybe'consecutiveGatewayFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'consecutiveGatewayFailure" a) =>
  Lens.Family2.LensLike' f s a
maybe'consecutiveGatewayFailure
  = Data.ProtoLens.Field.field @"maybe'consecutiveGatewayFailure"
maybe'consecutiveLocalOriginFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'consecutiveLocalOriginFailure" a) =>
  Lens.Family2.LensLike' f s a
maybe'consecutiveLocalOriginFailure
  = Data.ProtoLens.Field.field @"maybe'consecutiveLocalOriginFailure"
maybe'enforcingConsecutive5xx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enforcingConsecutive5xx" a) =>
  Lens.Family2.LensLike' f s a
maybe'enforcingConsecutive5xx
  = Data.ProtoLens.Field.field @"maybe'enforcingConsecutive5xx"
maybe'enforcingConsecutiveGatewayFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enforcingConsecutiveGatewayFailure" a) =>
  Lens.Family2.LensLike' f s a
maybe'enforcingConsecutiveGatewayFailure
  = Data.ProtoLens.Field.field
      @"maybe'enforcingConsecutiveGatewayFailure"
maybe'enforcingConsecutiveLocalOriginFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enforcingConsecutiveLocalOriginFailure" a) =>
  Lens.Family2.LensLike' f s a
maybe'enforcingConsecutiveLocalOriginFailure
  = Data.ProtoLens.Field.field
      @"maybe'enforcingConsecutiveLocalOriginFailure"
maybe'enforcingFailurePercentage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enforcingFailurePercentage" a) =>
  Lens.Family2.LensLike' f s a
maybe'enforcingFailurePercentage
  = Data.ProtoLens.Field.field @"maybe'enforcingFailurePercentage"
maybe'enforcingFailurePercentageLocalOrigin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enforcingFailurePercentageLocalOrigin" a) =>
  Lens.Family2.LensLike' f s a
maybe'enforcingFailurePercentageLocalOrigin
  = Data.ProtoLens.Field.field
      @"maybe'enforcingFailurePercentageLocalOrigin"
maybe'enforcingLocalOriginSuccessRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enforcingLocalOriginSuccessRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'enforcingLocalOriginSuccessRate
  = Data.ProtoLens.Field.field
      @"maybe'enforcingLocalOriginSuccessRate"
maybe'enforcingSuccessRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enforcingSuccessRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'enforcingSuccessRate
  = Data.ProtoLens.Field.field @"maybe'enforcingSuccessRate"
maybe'failurePercentageMinimumHosts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failurePercentageMinimumHosts" a) =>
  Lens.Family2.LensLike' f s a
maybe'failurePercentageMinimumHosts
  = Data.ProtoLens.Field.field @"maybe'failurePercentageMinimumHosts"
maybe'failurePercentageRequestVolume ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failurePercentageRequestVolume" a) =>
  Lens.Family2.LensLike' f s a
maybe'failurePercentageRequestVolume
  = Data.ProtoLens.Field.field
      @"maybe'failurePercentageRequestVolume"
maybe'failurePercentageThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'failurePercentageThreshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'failurePercentageThreshold
  = Data.ProtoLens.Field.field @"maybe'failurePercentageThreshold"
maybe'interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'interval" a) =>
  Lens.Family2.LensLike' f s a
maybe'interval = Data.ProtoLens.Field.field @"maybe'interval"
maybe'maxEjectionPercent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxEjectionPercent" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxEjectionPercent
  = Data.ProtoLens.Field.field @"maybe'maxEjectionPercent"
maybe'maxEjectionTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxEjectionTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxEjectionTime
  = Data.ProtoLens.Field.field @"maybe'maxEjectionTime"
maybe'successRateMinimumHosts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'successRateMinimumHosts" a) =>
  Lens.Family2.LensLike' f s a
maybe'successRateMinimumHosts
  = Data.ProtoLens.Field.field @"maybe'successRateMinimumHosts"
maybe'successRateRequestVolume ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'successRateRequestVolume" a) =>
  Lens.Family2.LensLike' f s a
maybe'successRateRequestVolume
  = Data.ProtoLens.Field.field @"maybe'successRateRequestVolume"
maybe'successRateStdevFactor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'successRateStdevFactor" a) =>
  Lens.Family2.LensLike' f s a
maybe'successRateStdevFactor
  = Data.ProtoLens.Field.field @"maybe'successRateStdevFactor"
splitExternalLocalOriginErrors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "splitExternalLocalOriginErrors" a) =>
  Lens.Family2.LensLike' f s a
splitExternalLocalOriginErrors
  = Data.ProtoLens.Field.field @"splitExternalLocalOriginErrors"
successRateMinimumHosts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "successRateMinimumHosts" a) =>
  Lens.Family2.LensLike' f s a
successRateMinimumHosts
  = Data.ProtoLens.Field.field @"successRateMinimumHosts"
successRateRequestVolume ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "successRateRequestVolume" a) =>
  Lens.Family2.LensLike' f s a
successRateRequestVolume
  = Data.ProtoLens.Field.field @"successRateRequestVolume"
successRateStdevFactor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "successRateStdevFactor" a) =>
  Lens.Family2.LensLike' f s a
successRateStdevFactor
  = Data.ProtoLens.Field.field @"successRateStdevFactor"