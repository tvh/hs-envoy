{- This file was auto-generated from envoy/config/cluster/v3/outlier_detection.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Cluster.V3.OutlierDetection (
        OutlierDetection()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
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
{- | Fields :
     
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.consecutive5xx' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'consecutive5xx' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.interval' @:: Lens' OutlierDetection Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'interval' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.baseEjectionTime' @:: Lens' OutlierDetection Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'baseEjectionTime' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maxEjectionPercent' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'maxEjectionPercent' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.enforcingConsecutive5xx' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'enforcingConsecutive5xx' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.enforcingSuccessRate' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'enforcingSuccessRate' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.successRateMinimumHosts' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'successRateMinimumHosts' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.successRateRequestVolume' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'successRateRequestVolume' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.successRateStdevFactor' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'successRateStdevFactor' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.consecutiveGatewayFailure' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'consecutiveGatewayFailure' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.enforcingConsecutiveGatewayFailure' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'enforcingConsecutiveGatewayFailure' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.splitExternalLocalOriginErrors' @:: Lens' OutlierDetection Prelude.Bool@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.consecutiveLocalOriginFailure' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'consecutiveLocalOriginFailure' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.enforcingConsecutiveLocalOriginFailure' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'enforcingConsecutiveLocalOriginFailure' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.enforcingLocalOriginSuccessRate' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'enforcingLocalOriginSuccessRate' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.failurePercentageThreshold' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'failurePercentageThreshold' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.enforcingFailurePercentage' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'enforcingFailurePercentage' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.enforcingFailurePercentageLocalOrigin' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'enforcingFailurePercentageLocalOrigin' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.failurePercentageMinimumHosts' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'failurePercentageMinimumHosts' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.failurePercentageRequestVolume' @:: Lens' OutlierDetection Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'failurePercentageRequestVolume' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maxEjectionTime' @:: Lens' OutlierDetection Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Cluster.V3.OutlierDetection_Fields.maybe'maxEjectionTime' @:: Lens' OutlierDetection (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data OutlierDetection
  = OutlierDetection'_constructor {_OutlierDetection'consecutive5xx :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'interval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                   _OutlierDetection'baseEjectionTime :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                   _OutlierDetection'maxEjectionPercent :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'enforcingConsecutive5xx :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'enforcingSuccessRate :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'successRateMinimumHosts :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'successRateRequestVolume :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'successRateStdevFactor :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'consecutiveGatewayFailure :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'enforcingConsecutiveGatewayFailure :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'splitExternalLocalOriginErrors :: !Prelude.Bool,
                                   _OutlierDetection'consecutiveLocalOriginFailure :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'enforcingConsecutiveLocalOriginFailure :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'enforcingLocalOriginSuccessRate :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'failurePercentageThreshold :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'enforcingFailurePercentage :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'enforcingFailurePercentageLocalOrigin :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'failurePercentageMinimumHosts :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'failurePercentageRequestVolume :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                   _OutlierDetection'maxEjectionTime :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                   _OutlierDetection'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OutlierDetection where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OutlierDetection "consecutive5xx" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'consecutive5xx
           (\ x__ y__ -> x__ {_OutlierDetection'consecutive5xx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'consecutive5xx" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'consecutive5xx
           (\ x__ y__ -> x__ {_OutlierDetection'consecutive5xx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "interval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'interval
           (\ x__ y__ -> x__ {_OutlierDetection'interval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'interval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'interval
           (\ x__ y__ -> x__ {_OutlierDetection'interval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "baseEjectionTime" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'baseEjectionTime
           (\ x__ y__ -> x__ {_OutlierDetection'baseEjectionTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'baseEjectionTime" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'baseEjectionTime
           (\ x__ y__ -> x__ {_OutlierDetection'baseEjectionTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "maxEjectionPercent" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'maxEjectionPercent
           (\ x__ y__ -> x__ {_OutlierDetection'maxEjectionPercent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'maxEjectionPercent" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'maxEjectionPercent
           (\ x__ y__ -> x__ {_OutlierDetection'maxEjectionPercent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "enforcingConsecutive5xx" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingConsecutive5xx
           (\ x__ y__
              -> x__ {_OutlierDetection'enforcingConsecutive5xx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'enforcingConsecutive5xx" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingConsecutive5xx
           (\ x__ y__
              -> x__ {_OutlierDetection'enforcingConsecutive5xx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "enforcingSuccessRate" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingSuccessRate
           (\ x__ y__ -> x__ {_OutlierDetection'enforcingSuccessRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'enforcingSuccessRate" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingSuccessRate
           (\ x__ y__ -> x__ {_OutlierDetection'enforcingSuccessRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "successRateMinimumHosts" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'successRateMinimumHosts
           (\ x__ y__
              -> x__ {_OutlierDetection'successRateMinimumHosts = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'successRateMinimumHosts" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'successRateMinimumHosts
           (\ x__ y__
              -> x__ {_OutlierDetection'successRateMinimumHosts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "successRateRequestVolume" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'successRateRequestVolume
           (\ x__ y__
              -> x__ {_OutlierDetection'successRateRequestVolume = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'successRateRequestVolume" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'successRateRequestVolume
           (\ x__ y__
              -> x__ {_OutlierDetection'successRateRequestVolume = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "successRateStdevFactor" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'successRateStdevFactor
           (\ x__ y__
              -> x__ {_OutlierDetection'successRateStdevFactor = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'successRateStdevFactor" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'successRateStdevFactor
           (\ x__ y__
              -> x__ {_OutlierDetection'successRateStdevFactor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "consecutiveGatewayFailure" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'consecutiveGatewayFailure
           (\ x__ y__
              -> x__ {_OutlierDetection'consecutiveGatewayFailure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'consecutiveGatewayFailure" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'consecutiveGatewayFailure
           (\ x__ y__
              -> x__ {_OutlierDetection'consecutiveGatewayFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "enforcingConsecutiveGatewayFailure" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingConsecutiveGatewayFailure
           (\ x__ y__
              -> x__
                   {_OutlierDetection'enforcingConsecutiveGatewayFailure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'enforcingConsecutiveGatewayFailure" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingConsecutiveGatewayFailure
           (\ x__ y__
              -> x__
                   {_OutlierDetection'enforcingConsecutiveGatewayFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "splitExternalLocalOriginErrors" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'splitExternalLocalOriginErrors
           (\ x__ y__
              -> x__ {_OutlierDetection'splitExternalLocalOriginErrors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "consecutiveLocalOriginFailure" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'consecutiveLocalOriginFailure
           (\ x__ y__
              -> x__ {_OutlierDetection'consecutiveLocalOriginFailure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'consecutiveLocalOriginFailure" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'consecutiveLocalOriginFailure
           (\ x__ y__
              -> x__ {_OutlierDetection'consecutiveLocalOriginFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "enforcingConsecutiveLocalOriginFailure" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingConsecutiveLocalOriginFailure
           (\ x__ y__
              -> x__
                   {_OutlierDetection'enforcingConsecutiveLocalOriginFailure = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'enforcingConsecutiveLocalOriginFailure" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingConsecutiveLocalOriginFailure
           (\ x__ y__
              -> x__
                   {_OutlierDetection'enforcingConsecutiveLocalOriginFailure = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "enforcingLocalOriginSuccessRate" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingLocalOriginSuccessRate
           (\ x__ y__
              -> x__ {_OutlierDetection'enforcingLocalOriginSuccessRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'enforcingLocalOriginSuccessRate" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingLocalOriginSuccessRate
           (\ x__ y__
              -> x__ {_OutlierDetection'enforcingLocalOriginSuccessRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "failurePercentageThreshold" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'failurePercentageThreshold
           (\ x__ y__
              -> x__ {_OutlierDetection'failurePercentageThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'failurePercentageThreshold" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'failurePercentageThreshold
           (\ x__ y__
              -> x__ {_OutlierDetection'failurePercentageThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "enforcingFailurePercentage" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingFailurePercentage
           (\ x__ y__
              -> x__ {_OutlierDetection'enforcingFailurePercentage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'enforcingFailurePercentage" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingFailurePercentage
           (\ x__ y__
              -> x__ {_OutlierDetection'enforcingFailurePercentage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "enforcingFailurePercentageLocalOrigin" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingFailurePercentageLocalOrigin
           (\ x__ y__
              -> x__
                   {_OutlierDetection'enforcingFailurePercentageLocalOrigin = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'enforcingFailurePercentageLocalOrigin" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'enforcingFailurePercentageLocalOrigin
           (\ x__ y__
              -> x__
                   {_OutlierDetection'enforcingFailurePercentageLocalOrigin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "failurePercentageMinimumHosts" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'failurePercentageMinimumHosts
           (\ x__ y__
              -> x__ {_OutlierDetection'failurePercentageMinimumHosts = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'failurePercentageMinimumHosts" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'failurePercentageMinimumHosts
           (\ x__ y__
              -> x__ {_OutlierDetection'failurePercentageMinimumHosts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "failurePercentageRequestVolume" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'failurePercentageRequestVolume
           (\ x__ y__
              -> x__ {_OutlierDetection'failurePercentageRequestVolume = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'failurePercentageRequestVolume" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'failurePercentageRequestVolume
           (\ x__ y__
              -> x__ {_OutlierDetection'failurePercentageRequestVolume = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OutlierDetection "maxEjectionTime" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'maxEjectionTime
           (\ x__ y__ -> x__ {_OutlierDetection'maxEjectionTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OutlierDetection "maybe'maxEjectionTime" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OutlierDetection'maxEjectionTime
           (\ x__ y__ -> x__ {_OutlierDetection'maxEjectionTime = y__}))
        Prelude.id
instance Data.ProtoLens.Message OutlierDetection where
  messageName _
    = Data.Text.pack "envoy.config.cluster.v3.OutlierDetection"
  packedMessageDescriptor _
    = "\n\
      \\DLEOutlierDetection\DC2E\n\
      \\SIconsecutive_5xx\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOconsecutive5xx\DC2?\n\
      \\binterval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\bintervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2Q\n\
      \\DC2base_ejection_time\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\DLEbaseEjectionTimeB\b\250B\ENQ\170\SOH\STX*\NUL\DC2W\n\
      \\DC4max_ejection_percent\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxEjectionPercentB\a\250B\EOT*\STX\CANd\DC2a\n\
      \\EMenforcing_consecutive_5xx\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\ETBenforcingConsecutive5xxB\a\250B\EOT*\STX\CANd\DC2[\n\
      \\SYNenforcing_success_rate\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC4enforcingSuccessRateB\a\250B\EOT*\STX\CANd\DC2Y\n\
      \\SUBsuccess_rate_minimum_hosts\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\ETBsuccessRateMinimumHosts\DC2[\n\
      \\ESCsuccess_rate_request_volume\CAN\b \SOH(\v2\FS.google.protobuf.UInt32ValueR\CANsuccessRateRequestVolume\DC2W\n\
      \\EMsuccess_rate_stdev_factor\CAN\t \SOH(\v2\FS.google.protobuf.UInt32ValueR\SYNsuccessRateStdevFactor\DC2\\\n\
      \\ESCconsecutive_gateway_failure\CAN\n\
      \ \SOH(\v2\FS.google.protobuf.UInt32ValueR\EMconsecutiveGatewayFailure\DC2x\n\
      \%enforcing_consecutive_gateway_failure\CAN\v \SOH(\v2\FS.google.protobuf.UInt32ValueR\"enforcingConsecutiveGatewayFailureB\a\250B\EOT*\STX\CANd\DC2J\n\
      \\"split_external_local_origin_errors\CAN\f \SOH(\bR\RSsplitExternalLocalOriginErrors\DC2e\n\
      \ consecutive_local_origin_failure\CAN\r \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSconsecutiveLocalOriginFailure\DC2\129\SOH\n\
      \*enforcing_consecutive_local_origin_failure\CAN\SO \SOH(\v2\FS.google.protobuf.UInt32ValueR&enforcingConsecutiveLocalOriginFailureB\a\250B\EOT*\STX\CANd\DC2s\n\
      \#enforcing_local_origin_success_rate\CAN\SI \SOH(\v2\FS.google.protobuf.UInt32ValueR\USenforcingLocalOriginSuccessRateB\a\250B\EOT*\STX\CANd\DC2g\n\
      \\FSfailure_percentage_threshold\CAN\DLE \SOH(\v2\FS.google.protobuf.UInt32ValueR\SUBfailurePercentageThresholdB\a\250B\EOT*\STX\CANd\DC2g\n\
      \\FSenforcing_failure_percentage\CAN\DC1 \SOH(\v2\FS.google.protobuf.UInt32ValueR\SUBenforcingFailurePercentageB\a\250B\EOT*\STX\CANd\DC2\DEL\n\
      \)enforcing_failure_percentage_local_origin\CAN\DC2 \SOH(\v2\FS.google.protobuf.UInt32ValueR%enforcingFailurePercentageLocalOriginB\a\250B\EOT*\STX\CANd\DC2e\n\
      \ failure_percentage_minimum_hosts\CAN\DC3 \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSfailurePercentageMinimumHosts\DC2g\n\
      \!failure_percentage_request_volume\CAN\DC4 \SOH(\v2\FS.google.protobuf.UInt32ValueR\RSfailurePercentageRequestVolume\DC2O\n\
      \\DC1max_ejection_time\CAN\NAK \SOH(\v2\EM.google.protobuf.DurationR\SImaxEjectionTimeB\b\250B\ENQ\170\SOH\STX*\NUL:,\154\197\136\RS'\n\
      \%envoy.api.v2.cluster.OutlierDetection"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        consecutive5xx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "consecutive_5xx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'consecutive5xx")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        interval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'interval")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        baseEjectionTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "base_ejection_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'baseEjectionTime")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        maxEjectionPercent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_ejection_percent"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxEjectionPercent")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        enforcingConsecutive5xx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enforcing_consecutive_5xx"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'enforcingConsecutive5xx")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        enforcingSuccessRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enforcing_success_rate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'enforcingSuccessRate")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        successRateMinimumHosts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success_rate_minimum_hosts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'successRateMinimumHosts")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        successRateRequestVolume__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success_rate_request_volume"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'successRateRequestVolume")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        successRateStdevFactor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success_rate_stdev_factor"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'successRateStdevFactor")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        consecutiveGatewayFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "consecutive_gateway_failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'consecutiveGatewayFailure")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        enforcingConsecutiveGatewayFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enforcing_consecutive_gateway_failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'enforcingConsecutiveGatewayFailure")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        splitExternalLocalOriginErrors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "split_external_local_origin_errors"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"splitExternalLocalOriginErrors")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        consecutiveLocalOriginFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "consecutive_local_origin_failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'consecutiveLocalOriginFailure")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        enforcingConsecutiveLocalOriginFailure__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enforcing_consecutive_local_origin_failure"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'enforcingConsecutiveLocalOriginFailure")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        enforcingLocalOriginSuccessRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enforcing_local_origin_success_rate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'enforcingLocalOriginSuccessRate")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        failurePercentageThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure_percentage_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'failurePercentageThreshold")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        enforcingFailurePercentage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enforcing_failure_percentage"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'enforcingFailurePercentage")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        enforcingFailurePercentageLocalOrigin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enforcing_failure_percentage_local_origin"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'enforcingFailurePercentageLocalOrigin")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        failurePercentageMinimumHosts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure_percentage_minimum_hosts"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'failurePercentageMinimumHosts")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        failurePercentageRequestVolume__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure_percentage_request_volume"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'failurePercentageRequestVolume")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
        maxEjectionTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_ejection_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxEjectionTime")) ::
              Data.ProtoLens.FieldDescriptor OutlierDetection
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, consecutive5xx__field_descriptor),
           (Data.ProtoLens.Tag 2, interval__field_descriptor),
           (Data.ProtoLens.Tag 3, baseEjectionTime__field_descriptor),
           (Data.ProtoLens.Tag 4, maxEjectionPercent__field_descriptor),
           (Data.ProtoLens.Tag 5, enforcingConsecutive5xx__field_descriptor),
           (Data.ProtoLens.Tag 6, enforcingSuccessRate__field_descriptor),
           (Data.ProtoLens.Tag 7, successRateMinimumHosts__field_descriptor),
           (Data.ProtoLens.Tag 8, successRateRequestVolume__field_descriptor),
           (Data.ProtoLens.Tag 9, successRateStdevFactor__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            consecutiveGatewayFailure__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            enforcingConsecutiveGatewayFailure__field_descriptor),
           (Data.ProtoLens.Tag 12, 
            splitExternalLocalOriginErrors__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            consecutiveLocalOriginFailure__field_descriptor),
           (Data.ProtoLens.Tag 14, 
            enforcingConsecutiveLocalOriginFailure__field_descriptor),
           (Data.ProtoLens.Tag 15, 
            enforcingLocalOriginSuccessRate__field_descriptor),
           (Data.ProtoLens.Tag 16, 
            failurePercentageThreshold__field_descriptor),
           (Data.ProtoLens.Tag 17, 
            enforcingFailurePercentage__field_descriptor),
           (Data.ProtoLens.Tag 18, 
            enforcingFailurePercentageLocalOrigin__field_descriptor),
           (Data.ProtoLens.Tag 19, 
            failurePercentageMinimumHosts__field_descriptor),
           (Data.ProtoLens.Tag 20, 
            failurePercentageRequestVolume__field_descriptor),
           (Data.ProtoLens.Tag 21, maxEjectionTime__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OutlierDetection'_unknownFields
        (\ x__ y__ -> x__ {_OutlierDetection'_unknownFields = y__})
  defMessage
    = OutlierDetection'_constructor
        {_OutlierDetection'consecutive5xx = Prelude.Nothing,
         _OutlierDetection'interval = Prelude.Nothing,
         _OutlierDetection'baseEjectionTime = Prelude.Nothing,
         _OutlierDetection'maxEjectionPercent = Prelude.Nothing,
         _OutlierDetection'enforcingConsecutive5xx = Prelude.Nothing,
         _OutlierDetection'enforcingSuccessRate = Prelude.Nothing,
         _OutlierDetection'successRateMinimumHosts = Prelude.Nothing,
         _OutlierDetection'successRateRequestVolume = Prelude.Nothing,
         _OutlierDetection'successRateStdevFactor = Prelude.Nothing,
         _OutlierDetection'consecutiveGatewayFailure = Prelude.Nothing,
         _OutlierDetection'enforcingConsecutiveGatewayFailure = Prelude.Nothing,
         _OutlierDetection'splitExternalLocalOriginErrors = Data.ProtoLens.fieldDefault,
         _OutlierDetection'consecutiveLocalOriginFailure = Prelude.Nothing,
         _OutlierDetection'enforcingConsecutiveLocalOriginFailure = Prelude.Nothing,
         _OutlierDetection'enforcingLocalOriginSuccessRate = Prelude.Nothing,
         _OutlierDetection'failurePercentageThreshold = Prelude.Nothing,
         _OutlierDetection'enforcingFailurePercentage = Prelude.Nothing,
         _OutlierDetection'enforcingFailurePercentageLocalOrigin = Prelude.Nothing,
         _OutlierDetection'failurePercentageMinimumHosts = Prelude.Nothing,
         _OutlierDetection'failurePercentageRequestVolume = Prelude.Nothing,
         _OutlierDetection'maxEjectionTime = Prelude.Nothing,
         _OutlierDetection'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OutlierDetection
          -> Data.ProtoLens.Encoding.Bytes.Parser OutlierDetection
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "consecutive_5xx"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"consecutive5xx") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "interval"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"interval") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "base_ejection_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"baseEjectionTime") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_ejection_percent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxEjectionPercent") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enforcing_consecutive_5xx"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enforcingConsecutive5xx") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enforcing_success_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enforcingSuccessRate") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "success_rate_minimum_hosts"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"successRateMinimumHosts") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "success_rate_request_volume"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"successRateRequestVolume") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "success_rate_stdev_factor"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"successRateStdevFactor") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "consecutive_gateway_failure"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"consecutiveGatewayFailure") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enforcing_consecutive_gateway_failure"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"enforcingConsecutiveGatewayFailure")
                                     y
                                     x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "split_external_local_origin_errors"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"splitExternalLocalOriginErrors")
                                     y
                                     x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "consecutive_local_origin_failure"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"consecutiveLocalOriginFailure")
                                     y
                                     x)
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enforcing_consecutive_local_origin_failure"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"enforcingConsecutiveLocalOriginFailure")
                                     y
                                     x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enforcing_local_origin_success_rate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enforcingLocalOriginSuccessRate")
                                     y
                                     x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure_percentage_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failurePercentageThreshold") y x)
                        138
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enforcing_failure_percentage"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enforcingFailurePercentage") y x)
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enforcing_failure_percentage_local_origin"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"enforcingFailurePercentageLocalOrigin")
                                     y
                                     x)
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure_percentage_minimum_hosts"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failurePercentageMinimumHosts")
                                     y
                                     x)
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "failure_percentage_request_volume"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failurePercentageRequestVolume")
                                     y
                                     x)
                        170
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_ejection_time"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxEjectionTime") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OutlierDetection"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'consecutive5xx") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'interval") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'baseEjectionTime") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'maxEjectionPercent") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'enforcingConsecutive5xx") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'enforcingSuccessRate") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'successRateMinimumHosts")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field
                                            @"maybe'successRateRequestVolume")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'successRateStdevFactor")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'consecutiveGatewayFailure")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage
                                                     _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'enforcingConsecutiveGatewayFailure")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                     ((Prelude..)
                                                        (\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                        Data.ProtoLens.encodeMessage
                                                        _v))
                                           ((Data.Monoid.<>)
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"splitExternalLocalOriginErrors")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (\ b -> if b then 1 else 0)
                                                          _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'consecutiveLocalOriginFailure")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              106)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage
                                                              _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'enforcingConsecutiveLocalOriginFailure")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 114)
                                                              ((Prelude..)
                                                                 (\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                 Data.ProtoLens.encodeMessage
                                                                 _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'enforcingLocalOriginSuccessRate")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    122)
                                                                 ((Prelude..)
                                                                    (\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                    Data.ProtoLens.encodeMessage
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'failurePercentageThreshold")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       130)
                                                                    ((Prelude..)
                                                                       (\ bs
                                                                          -> (Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                  (Prelude.fromIntegral
                                                                                     (Data.ByteString.length
                                                                                        bs)))
                                                                               (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                  bs))
                                                                       Data.ProtoLens.encodeMessage
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'enforcingFailurePercentage")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          138)
                                                                       ((Prelude..)
                                                                          (\ bs
                                                                             -> (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     (Prelude.fromIntegral
                                                                                        (Data.ByteString.length
                                                                                           bs)))
                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                     bs))
                                                                          Data.ProtoLens.encodeMessage
                                                                          _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'enforcingFailurePercentageLocalOrigin")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             146)
                                                                          ((Prelude..)
                                                                             (\ bs
                                                                                -> (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        (Prelude.fromIntegral
                                                                                           (Data.ByteString.length
                                                                                              bs)))
                                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                        bs))
                                                                             Data.ProtoLens.encodeMessage
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'failurePercentageMinimumHosts")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                154)
                                                                             ((Prelude..)
                                                                                (\ bs
                                                                                   -> (Data.Monoid.<>)
                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                           (Prelude.fromIntegral
                                                                                              (Data.ByteString.length
                                                                                                 bs)))
                                                                                        (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                           bs))
                                                                                Data.ProtoLens.encodeMessage
                                                                                _v))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'failurePercentageRequestVolume")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   162)
                                                                                ((Prelude..)
                                                                                   (\ bs
                                                                                      -> (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              (Prelude.fromIntegral
                                                                                                 (Data.ByteString.length
                                                                                                    bs)))
                                                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                              bs))
                                                                                   Data.ProtoLens.encodeMessage
                                                                                   _v))
                                                                      ((Data.Monoid.<>)
                                                                         (case
                                                                              Lens.Family2.view
                                                                                (Data.ProtoLens.Field.field
                                                                                   @"maybe'maxEjectionTime")
                                                                                _x
                                                                          of
                                                                            Prelude.Nothing
                                                                              -> Data.Monoid.mempty
                                                                            (Prelude.Just _v)
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      170)
                                                                                   ((Prelude..)
                                                                                      (\ bs
                                                                                         -> (Data.Monoid.<>)
                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                 (Prelude.fromIntegral
                                                                                                    (Data.ByteString.length
                                                                                                       bs)))
                                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                 bs))
                                                                                      Data.ProtoLens.encodeMessage
                                                                                      _v))
                                                                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                            (Lens.Family2.view
                                                                               Data.ProtoLens.unknownFields
                                                                               _x))))))))))))))))))))))
instance Control.DeepSeq.NFData OutlierDetection where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OutlierDetection'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OutlierDetection'consecutive5xx x__)
                (Control.DeepSeq.deepseq
                   (_OutlierDetection'interval x__)
                   (Control.DeepSeq.deepseq
                      (_OutlierDetection'baseEjectionTime x__)
                      (Control.DeepSeq.deepseq
                         (_OutlierDetection'maxEjectionPercent x__)
                         (Control.DeepSeq.deepseq
                            (_OutlierDetection'enforcingConsecutive5xx x__)
                            (Control.DeepSeq.deepseq
                               (_OutlierDetection'enforcingSuccessRate x__)
                               (Control.DeepSeq.deepseq
                                  (_OutlierDetection'successRateMinimumHosts x__)
                                  (Control.DeepSeq.deepseq
                                     (_OutlierDetection'successRateRequestVolume x__)
                                     (Control.DeepSeq.deepseq
                                        (_OutlierDetection'successRateStdevFactor x__)
                                        (Control.DeepSeq.deepseq
                                           (_OutlierDetection'consecutiveGatewayFailure x__)
                                           (Control.DeepSeq.deepseq
                                              (_OutlierDetection'enforcingConsecutiveGatewayFailure
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_OutlierDetection'splitExternalLocalOriginErrors
                                                    x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_OutlierDetection'consecutiveLocalOriginFailure
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_OutlierDetection'enforcingConsecutiveLocalOriginFailure
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_OutlierDetection'enforcingLocalOriginSuccessRate
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_OutlierDetection'failurePercentageThreshold
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_OutlierDetection'enforcingFailurePercentage
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_OutlierDetection'enforcingFailurePercentageLocalOrigin
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_OutlierDetection'failurePercentageMinimumHosts
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_OutlierDetection'failurePercentageRequestVolume
                                                                            x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_OutlierDetection'maxEjectionTime
                                                                               x__)
                                                                            ())))))))))))))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \/envoy/config/cluster/v3/outlier_detection.proto\DC2\ETBenvoy.config.cluster.v3\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\189\DLE\n\
    \\DLEOutlierDetection\DC2E\n\
    \\SIconsecutive_5xx\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOconsecutive5xx\DC2?\n\
    \\binterval\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\bintervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2Q\n\
    \\DC2base_ejection_time\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\DLEbaseEjectionTimeB\b\250B\ENQ\170\SOH\STX*\NUL\DC2W\n\
    \\DC4max_ejection_percent\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC2maxEjectionPercentB\a\250B\EOT*\STX\CANd\DC2a\n\
    \\EMenforcing_consecutive_5xx\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\ETBenforcingConsecutive5xxB\a\250B\EOT*\STX\CANd\DC2[\n\
    \\SYNenforcing_success_rate\CAN\ACK \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC4enforcingSuccessRateB\a\250B\EOT*\STX\CANd\DC2Y\n\
    \\SUBsuccess_rate_minimum_hosts\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\ETBsuccessRateMinimumHosts\DC2[\n\
    \\ESCsuccess_rate_request_volume\CAN\b \SOH(\v2\FS.google.protobuf.UInt32ValueR\CANsuccessRateRequestVolume\DC2W\n\
    \\EMsuccess_rate_stdev_factor\CAN\t \SOH(\v2\FS.google.protobuf.UInt32ValueR\SYNsuccessRateStdevFactor\DC2\\\n\
    \\ESCconsecutive_gateway_failure\CAN\n\
    \ \SOH(\v2\FS.google.protobuf.UInt32ValueR\EMconsecutiveGatewayFailure\DC2x\n\
    \%enforcing_consecutive_gateway_failure\CAN\v \SOH(\v2\FS.google.protobuf.UInt32ValueR\"enforcingConsecutiveGatewayFailureB\a\250B\EOT*\STX\CANd\DC2J\n\
    \\"split_external_local_origin_errors\CAN\f \SOH(\bR\RSsplitExternalLocalOriginErrors\DC2e\n\
    \ consecutive_local_origin_failure\CAN\r \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSconsecutiveLocalOriginFailure\DC2\129\SOH\n\
    \*enforcing_consecutive_local_origin_failure\CAN\SO \SOH(\v2\FS.google.protobuf.UInt32ValueR&enforcingConsecutiveLocalOriginFailureB\a\250B\EOT*\STX\CANd\DC2s\n\
    \#enforcing_local_origin_success_rate\CAN\SI \SOH(\v2\FS.google.protobuf.UInt32ValueR\USenforcingLocalOriginSuccessRateB\a\250B\EOT*\STX\CANd\DC2g\n\
    \\FSfailure_percentage_threshold\CAN\DLE \SOH(\v2\FS.google.protobuf.UInt32ValueR\SUBfailurePercentageThresholdB\a\250B\EOT*\STX\CANd\DC2g\n\
    \\FSenforcing_failure_percentage\CAN\DC1 \SOH(\v2\FS.google.protobuf.UInt32ValueR\SUBenforcingFailurePercentageB\a\250B\EOT*\STX\CANd\DC2\DEL\n\
    \)enforcing_failure_percentage_local_origin\CAN\DC2 \SOH(\v2\FS.google.protobuf.UInt32ValueR%enforcingFailurePercentageLocalOriginB\a\250B\EOT*\STX\CANd\DC2e\n\
    \ failure_percentage_minimum_hosts\CAN\DC3 \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSfailurePercentageMinimumHosts\DC2g\n\
    \!failure_percentage_request_volume\CAN\DC4 \SOH(\v2\FS.google.protobuf.UInt32ValueR\RSfailurePercentageRequestVolume\DC2O\n\
    \\DC1max_ejection_time\CAN\NAK \SOH(\v2\EM.google.protobuf.DurationR\SImaxEjectionTimeB\b\250B\ENQ\170\SOH\STX*\NUL:,\154\197\136\RS'\n\
    \%envoy.api.v2.cluster.OutlierDetectionBH\n\
    \%io.envoyproxy.envoy.config.cluster.v3B\NAKOutlierDetectionProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\201>\n\
    \\a\DC2\ENQ\NUL\NUL\156\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL>\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL6\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\194\SOH\n\
    \\STX\EOT\NUL\DC2\ENQ\NAK\NUL\156\SOH\SOH\SUB\140\SOH See the :ref:`architecture overview <arch_overview_outlier_detection>` for\n\
    \ more information on outlier detection.\n\
    \ [#next-free-field: 22]\n\
    \2& [#protodoc-title: Outlier detection]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\CAN\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SYN\STX\ETB.\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SYN\STX\ETB.\n\
    \\172\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\STX2\SUB\158\SOH The number of consecutive 5xx responses or local origin errors that are mapped\n\
    \ to 5xx error codes before a consecutive 5xx ejection\n\
    \ occurs. Defaults to 5.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\FS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\RS-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS01\n\
    \\179\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX!\STXN\SUB\165\SOH The time interval between ejection analysis sweeps. This can result in\n\
    \ both new ejections as well as hosts being returned to service. Defaults\n\
    \ to 10000ms or 10s.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX!\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX!\ESC#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX!&'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX!(M\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\NAK\DC2\ETX!)L\n\
    \\176\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX'\STXX\SUB\162\STX The base time that a host is ejected for. The real time is equal to the\n\
    \ base time multiplied by the number of times the host has been ejected and is\n\
    \ capped by :ref:`max_ejection_time<envoy_v3_api_field_config.cluster.v3.OutlierDetection.max_ejection_time>`.\n\
    \ Defaults to 30000ms or 30s.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX'\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX'\ESC-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX'01\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX'2W\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\NAK\DC2\ETX'3V\n\
    \\173\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX+\STX^\SUB\159\SOH The maximum % of an upstream cluster that can be ejected due to outlier\n\
    \ detection. Defaults to 10% but will eject at least one host regardless of the value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX+\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX+\RS2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX+56\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX+7]\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\ENQ\DC2\ETX+8\\\n\
    \\214\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX0\STXc\SUB\200\SOH The % chance that a host will be actually ejected when an outlier status\n\
    \ is detected through consecutive 5xx. This setting can be used to disable\n\
    \ ejection or to ramp it up slowly. Defaults to 100.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX0\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX0\RS7\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX0:;\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX0<b\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\ENQ\DC2\ETX0=a\n\
    \\222\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX5\STX`\SUB\208\SOH The % chance that a host will be actually ejected when an outlier status\n\
    \ is detected through success rate statistics. This setting can be used to\n\
    \ disable ejection or to ramp it up slowly. Defaults to 100.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX5\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX5\RS4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX578\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETX59_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\ENQ\DC2\ETX5:^\n\
    \\150\STX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX;\STX=\SUB\136\STX The number of hosts in a cluster that must have enough request volume to\n\
    \ detect success rate outliers. If the number of hosts is less than this\n\
    \ setting, outlier detection via success rate statistics is not performed\n\
    \ for any host in the cluster. Defaults to 5.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETX;\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX;\RS8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX;;<\n\
    \\210\STX\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETXB\STX>\SUB\196\STX The minimum number of total requests that must be collected in one\n\
    \ interval (as defined by the interval duration above) to include this host\n\
    \ in success rate based outlier detection. If the volume is lower than this\n\
    \ setting, outlier detection via success rate statistics is not performed\n\
    \ for that host. Defaults to 100.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETXB\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXB\RS9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXB<=\n\
    \\201\ETX\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXK\STX<\SUB\187\ETX This factor is used to determine the ejection threshold for success rate\n\
    \ outlier ejection. The ejection threshold is the difference between the\n\
    \ mean success rate, and the product of this factor and the standard\n\
    \ deviation of the mean success rate: mean - (stdev *\n\
    \ success_rate_stdev_factor). This factor is divided by a thousand to get a\n\
    \ double. That is, if the desired factor is 1.9, the runtime value should\n\
    \ be 1900. Defaults to 1900.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETXK\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXK\RS7\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXK:;\n\
    \\157\SOH\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETXO\STX?\SUB\143\SOH The number of consecutive gateway failures (502, 503, 504 status codes)\n\
    \ before a consecutive gateway failure ejection occurs. Defaults to 5.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETXO\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETXO\RS9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETXO<>\n\
    \\226\SOH\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\EOTT\STXU-\SUB\211\SOH The % chance that a host will be actually ejected when an outlier status\n\
    \ is detected through consecutive gateway failures. This setting can be\n\
    \ used to disable ejection or to ramp it up slowly. Defaults to 0.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETXT\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETXT\RSC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETXTFH\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\b\DC2\ETXU\ACK,\n\
    \\SI\n\
    \\b\EOT\NUL\STX\n\
    \\b\175\b\ENQ\DC2\ETXU\a+\n\
    \\228\EOT\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETX^\STX/\SUB\214\EOT Determines whether to distinguish local origin failures from external errors. If set to true\n\
    \ the following configuration parameters are taken into account:\n\
    \ :ref:`consecutive_local_origin_failure<envoy_v3_api_field_config.cluster.v3.OutlierDetection.consecutive_local_origin_failure>`,\n\
    \ :ref:`enforcing_consecutive_local_origin_failure<envoy_v3_api_field_config.cluster.v3.OutlierDetection.enforcing_consecutive_local_origin_failure>`\n\
    \ and\n\
    \ :ref:`enforcing_local_origin_success_rate<envoy_v3_api_field_config.cluster.v3.OutlierDetection.enforcing_local_origin_success_rate>`.\n\
    \ Defaults to false.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\ETX^\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETX^\a)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETX^,.\n\
    \\164\STX\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETXd\STXD\SUB\150\STX The number of consecutive locally originated failures before ejection\n\
    \ occurs. Defaults to 5. Parameter takes effect only when\n\
    \ :ref:`split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is set to true.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\ETXd\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETXd\RS>\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETXdAC\n\
    \\167\ETX\n\
    \\EOT\EOT\NUL\STX\r\DC2\EOTl\STXm-\SUB\152\ETX The % chance that a host will be actually ejected when an outlier status\n\
    \ is detected through consecutive locally originated failures. This setting can be\n\
    \ used to disable ejection or to ramp it up slowly. Defaults to 100.\n\
    \ Parameter takes effect only when\n\
    \ :ref:`split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is set to true.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ACK\DC2\ETXl\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\ETXl\RSH\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\ETXlKM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\b\DC2\ETXm\ACK,\n\
    \\SI\n\
    \\b\EOT\NUL\STX\r\b\175\b\ENQ\DC2\ETXm\a+\n\
    \\181\ETX\n\
    \\EOT\EOT\NUL\STX\SO\DC2\EOTu\STXv-\SUB\166\ETX The % chance that a host will be actually ejected when an outlier status\n\
    \ is detected through success rate statistics for locally originated errors.\n\
    \ This setting can be used to disable ejection or to ramp it up slowly. Defaults to 100.\n\
    \ Parameter takes effect only when\n\
    \ :ref:`split_external_local_origin_errors<envoy_v3_api_field_config.cluster.v3.OutlierDetection.split_external_local_origin_errors>`\n\
    \ is set to true.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ACK\DC2\ETXu\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\ETXu\RSA\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\ETXuDF\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\b\DC2\ETXv\ACK,\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SO\b\175\b\ENQ\DC2\ETXv\a+\n\
    \\227\SOH\n\
    \\EOT\EOT\NUL\STX\SI\DC2\EOT{\STX|-\SUB\212\SOH The failure percentage to use when determining failure percentage-based outlier detection. If\n\
    \ the failure percentage of a given host is greater than or equal to this value, it will be\n\
    \ ejected. Defaults to 85.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ACK\DC2\ETX{\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\ETX{\RS:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\ETX{=?\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\b\DC2\ETX|\ACK,\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SI\b\175\b\ENQ\DC2\ETX|\a+\n\
    \\210\STX\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\ACK\132\SOH\STX\133\SOH-\SUB\193\STX The % chance that a host will be actually ejected when an outlier status is detected through\n\
    \ failure percentage statistics. This setting can be used to disable ejection or to ramp it up\n\
    \ slowly. Defaults to 0.\n\
    \\n\
    \ [#next-major-version: setting this without setting failure_percentage_threshold should be\n\
    \ invalid in v4.]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ACK\DC2\EOT\132\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\EOT\132\SOH\RS:\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\EOT\132\SOH=?\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\b\DC2\EOT\133\SOH\ACK,\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\DLE\b\175\b\ENQ\DC2\EOT\133\SOH\a+\n\
    \\242\SOH\n\
    \\EOT\EOT\NUL\STX\DC1\DC2\ACK\138\SOH\STX\139\SOH-\SUB\225\SOH The % chance that a host will be actually ejected when an outlier status is detected through\n\
    \ local-origin failure percentage statistics. This setting can be used to disable ejection or to\n\
    \ ramp it up slowly. Defaults to 0.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ACK\DC2\EOT\138\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\SOH\DC2\EOT\138\SOH\RSG\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ETX\DC2\EOT\138\SOHJL\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\b\DC2\EOT\139\SOH\ACK,\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\DC1\b\175\b\ENQ\DC2\EOT\139\SOH\a+\n\
    \\255\SOH\n\
    \\EOT\EOT\NUL\STX\DC2\DC2\EOT\144\SOH\STXD\SUB\240\SOH The minimum number of hosts in a cluster in order to perform failure percentage-based ejection.\n\
    \ If the total number of hosts in the cluster is less than this value, failure percentage-based\n\
    \ ejection will not be performed. Defaults to 5.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ACK\DC2\EOT\144\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\SOH\DC2\EOT\144\SOH\RS>\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ETX\DC2\EOT\144\SOHAC\n\
    \\200\STX\n\
    \\EOT\EOT\NUL\STX\DC3\DC2\EOT\150\SOH\STXE\SUB\185\STX The minimum number of total requests that must be collected in one interval (as defined by the\n\
    \ interval duration above) to perform failure percentage-based ejection for this host. If the\n\
    \ volume is lower than this setting, failure percentage-based ejection will not be performed for\n\
    \ this host. Defaults to 50.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ACK\DC2\EOT\150\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\SOH\DC2\EOT\150\SOH\RS?\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ETX\DC2\EOT\150\SOHBD\n\
    \\129\ETX\n\
    \\EOT\EOT\NUL\STX\DC4\DC2\EOT\155\SOH\STXX\SUB\242\STX The maximum time that a host is ejected for. See :ref:`base_ejection_time<envoy_v3_api_field_config.cluster.v3.OutlierDetection.base_ejection_time>`\n\
    \ for more information. If not specified, the default value (300000ms or 300s) or\n\
    \ :ref:`base_ejection_time<envoy_v3_api_field_config.cluster.v3.OutlierDetection.base_ejection_time>` value is applied, whatever is larger.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ACK\DC2\EOT\155\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\SOH\DC2\EOT\155\SOH\ESC,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ETX\DC2\EOT\155\SOH/1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\b\DC2\EOT\155\SOH2W\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\DC4\b\175\b\NAK\DC2\EOT\155\SOH3Vb\ACKproto3"