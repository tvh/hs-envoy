{- This file was auto-generated from envoy/extensions/filters/http/admission_control/v3alpha/admission_control.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl (
        AdmissionControl(), AdmissionControl'EvaluationCriteria(..),
        _AdmissionControl'SuccessCriteria',
        AdmissionControl'SuccessCriteria(),
        AdmissionControl'SuccessCriteria'GrpcCriteria(),
        AdmissionControl'SuccessCriteria'HttpCriteria()
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Type.V3.Range
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.enabled' @:: Lens' AdmissionControl Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maybe'enabled' @:: Lens' AdmissionControl (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.samplingWindow' @:: Lens' AdmissionControl Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maybe'samplingWindow' @:: Lens' AdmissionControl (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.aggression' @:: Lens' AdmissionControl Proto.Envoy.Config.Core.V3.Base.RuntimeDouble@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maybe'aggression' @:: Lens' AdmissionControl (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeDouble)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.srThreshold' @:: Lens' AdmissionControl Proto.Envoy.Config.Core.V3.Base.RuntimePercent@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maybe'srThreshold' @:: Lens' AdmissionControl (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimePercent)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.rpsThreshold' @:: Lens' AdmissionControl Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maybe'rpsThreshold' @:: Lens' AdmissionControl (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maxRejectionProbability' @:: Lens' AdmissionControl Proto.Envoy.Config.Core.V3.Base.RuntimePercent@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maybe'maxRejectionProbability' @:: Lens' AdmissionControl (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimePercent)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maybe'evaluationCriteria' @:: Lens' AdmissionControl (Prelude.Maybe AdmissionControl'EvaluationCriteria)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maybe'successCriteria' @:: Lens' AdmissionControl (Prelude.Maybe AdmissionControl'SuccessCriteria)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.successCriteria' @:: Lens' AdmissionControl AdmissionControl'SuccessCriteria@ -}
data AdmissionControl
  = AdmissionControl'_constructor {_AdmissionControl'enabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag),
                                   _AdmissionControl'samplingWindow :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                   _AdmissionControl'aggression :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeDouble),
                                   _AdmissionControl'srThreshold :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimePercent),
                                   _AdmissionControl'rpsThreshold :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32),
                                   _AdmissionControl'maxRejectionProbability :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimePercent),
                                   _AdmissionControl'evaluationCriteria :: !(Prelude.Maybe AdmissionControl'EvaluationCriteria),
                                   _AdmissionControl'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AdmissionControl where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AdmissionControl'EvaluationCriteria
  = AdmissionControl'SuccessCriteria' !AdmissionControl'SuccessCriteria
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AdmissionControl "enabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'enabled
           (\ x__ y__ -> x__ {_AdmissionControl'enabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AdmissionControl "maybe'enabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'enabled
           (\ x__ y__ -> x__ {_AdmissionControl'enabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AdmissionControl "samplingWindow" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'samplingWindow
           (\ x__ y__ -> x__ {_AdmissionControl'samplingWindow = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AdmissionControl "maybe'samplingWindow" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'samplingWindow
           (\ x__ y__ -> x__ {_AdmissionControl'samplingWindow = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AdmissionControl "aggression" Proto.Envoy.Config.Core.V3.Base.RuntimeDouble where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'aggression
           (\ x__ y__ -> x__ {_AdmissionControl'aggression = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AdmissionControl "maybe'aggression" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeDouble) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'aggression
           (\ x__ y__ -> x__ {_AdmissionControl'aggression = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AdmissionControl "srThreshold" Proto.Envoy.Config.Core.V3.Base.RuntimePercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'srThreshold
           (\ x__ y__ -> x__ {_AdmissionControl'srThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AdmissionControl "maybe'srThreshold" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimePercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'srThreshold
           (\ x__ y__ -> x__ {_AdmissionControl'srThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AdmissionControl "rpsThreshold" Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'rpsThreshold
           (\ x__ y__ -> x__ {_AdmissionControl'rpsThreshold = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AdmissionControl "maybe'rpsThreshold" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'rpsThreshold
           (\ x__ y__ -> x__ {_AdmissionControl'rpsThreshold = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AdmissionControl "maxRejectionProbability" Proto.Envoy.Config.Core.V3.Base.RuntimePercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'maxRejectionProbability
           (\ x__ y__
              -> x__ {_AdmissionControl'maxRejectionProbability = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AdmissionControl "maybe'maxRejectionProbability" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimePercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'maxRejectionProbability
           (\ x__ y__
              -> x__ {_AdmissionControl'maxRejectionProbability = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AdmissionControl "maybe'evaluationCriteria" (Prelude.Maybe AdmissionControl'EvaluationCriteria) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'evaluationCriteria
           (\ x__ y__ -> x__ {_AdmissionControl'evaluationCriteria = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AdmissionControl "maybe'successCriteria" (Prelude.Maybe AdmissionControl'SuccessCriteria) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'evaluationCriteria
           (\ x__ y__ -> x__ {_AdmissionControl'evaluationCriteria = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AdmissionControl'SuccessCriteria' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AdmissionControl'SuccessCriteria' y__))
instance Data.ProtoLens.Field.HasField AdmissionControl "successCriteria" AdmissionControl'SuccessCriteria where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'evaluationCriteria
           (\ x__ y__ -> x__ {_AdmissionControl'evaluationCriteria = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AdmissionControl'SuccessCriteria' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AdmissionControl'SuccessCriteria' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message AdmissionControl where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl"
  packedMessageDescriptor _
    = "\n\
      \\DLEAdmissionControl\DC2B\n\
      \\aenabled\CAN\SOH \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabled\DC2\134\SOH\n\
      \\DLEsuccess_criteria\CAN\STX \SOH(\v2Y.envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteriaH\NULR\SIsuccessCriteria\DC2B\n\
      \\SIsampling_window\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SOsamplingWindow\DC2C\n\
      \\n\
      \aggression\CAN\EOT \SOH(\v2#.envoy.config.core.v3.RuntimeDoubleR\n\
      \aggression\DC2G\n\
      \\fsr_threshold\CAN\ENQ \SOH(\v2$.envoy.config.core.v3.RuntimePercentR\vsrThreshold\DC2H\n\
      \\rrps_threshold\CAN\ACK \SOH(\v2#.envoy.config.core.v3.RuntimeUInt32R\frpsThreshold\DC2`\n\
      \\EMmax_rejection_probability\CAN\a \SOH(\v2$.envoy.config.core.v3.RuntimePercentR\ETBmaxRejectionProbability\SUB\220\ETX\n\
      \\SISuccessCriteria\DC2\139\SOH\n\
      \\rhttp_criteria\CAN\SOH \SOH(\v2f.envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteria.HttpCriteriaR\fhttpCriteria\DC2\139\SOH\n\
      \\rgrpc_criteria\CAN\STX \SOH(\v2f.envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteria.GrpcCriteriaR\fgrpcCriteria\SUBc\n\
      \\fHttpCriteria\DC2S\n\
      \\DC3http_success_status\CAN\SOH \ETX(\v2\EM.envoy.type.v3.Int32RangeR\DC1httpSuccessStatusB\b\250B\ENQ\146\SOH\STX\b\SOH\SUBH\n\
      \\fGrpcCriteria\DC28\n\
      \\DC3grpc_success_status\CAN\SOH \ETX(\rR\DC1grpcSuccessStatusB\b\250B\ENQ\146\SOH\STX\b\SOHB\SUB\n\
      \\DC3evaluation_criteria\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        enabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'enabled")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl
        samplingWindow__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sampling_window"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'samplingWindow")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl
        aggression__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "aggression"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeDouble)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'aggression")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl
        srThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sr_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimePercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srThreshold")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl
        rpsThreshold__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rps_threshold"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeUInt32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rpsThreshold")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl
        maxRejectionProbability__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_rejection_probability"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimePercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxRejectionProbability")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl
        successCriteria__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "success_criteria"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AdmissionControl'SuccessCriteria)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'successCriteria")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, enabled__field_descriptor),
           (Data.ProtoLens.Tag 3, samplingWindow__field_descriptor),
           (Data.ProtoLens.Tag 4, aggression__field_descriptor),
           (Data.ProtoLens.Tag 5, srThreshold__field_descriptor),
           (Data.ProtoLens.Tag 6, rpsThreshold__field_descriptor),
           (Data.ProtoLens.Tag 7, maxRejectionProbability__field_descriptor),
           (Data.ProtoLens.Tag 2, successCriteria__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AdmissionControl'_unknownFields
        (\ x__ y__ -> x__ {_AdmissionControl'_unknownFields = y__})
  defMessage
    = AdmissionControl'_constructor
        {_AdmissionControl'enabled = Prelude.Nothing,
         _AdmissionControl'samplingWindow = Prelude.Nothing,
         _AdmissionControl'aggression = Prelude.Nothing,
         _AdmissionControl'srThreshold = Prelude.Nothing,
         _AdmissionControl'rpsThreshold = Prelude.Nothing,
         _AdmissionControl'maxRejectionProbability = Prelude.Nothing,
         _AdmissionControl'evaluationCriteria = Prelude.Nothing,
         _AdmissionControl'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AdmissionControl
          -> Data.ProtoLens.Encoding.Bytes.Parser AdmissionControl
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
                                       "enabled"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"enabled") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sampling_window"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"samplingWindow") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "aggression"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"aggression") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sr_threshold"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"srThreshold") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rps_threshold"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rpsThreshold") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_rejection_probability"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxRejectionProbability") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "success_criteria"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"successCriteria") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AdmissionControl"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'enabled") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'samplingWindow") _x
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
                          (Data.ProtoLens.Field.field @"maybe'aggression") _x
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
                             (Data.ProtoLens.Field.field @"maybe'srThreshold") _x
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
                                (Data.ProtoLens.Field.field @"maybe'rpsThreshold") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                   (Data.ProtoLens.Field.field @"maybe'maxRejectionProbability") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'evaluationCriteria") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just (AdmissionControl'SuccessCriteria' v))
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData AdmissionControl where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AdmissionControl'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AdmissionControl'enabled x__)
                (Control.DeepSeq.deepseq
                   (_AdmissionControl'samplingWindow x__)
                   (Control.DeepSeq.deepseq
                      (_AdmissionControl'aggression x__)
                      (Control.DeepSeq.deepseq
                         (_AdmissionControl'srThreshold x__)
                         (Control.DeepSeq.deepseq
                            (_AdmissionControl'rpsThreshold x__)
                            (Control.DeepSeq.deepseq
                               (_AdmissionControl'maxRejectionProbability x__)
                               (Control.DeepSeq.deepseq
                                  (_AdmissionControl'evaluationCriteria x__) ())))))))
instance Control.DeepSeq.NFData AdmissionControl'EvaluationCriteria where
  rnf (AdmissionControl'SuccessCriteria' x__)
    = Control.DeepSeq.rnf x__
_AdmissionControl'SuccessCriteria' ::
  Data.ProtoLens.Prism.Prism' AdmissionControl'EvaluationCriteria AdmissionControl'SuccessCriteria
_AdmissionControl'SuccessCriteria'
  = Data.ProtoLens.Prism.prism'
      AdmissionControl'SuccessCriteria'
      (\ p__
         -> case p__ of {
              (AdmissionControl'SuccessCriteria' p__val)
                -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.httpCriteria' @:: Lens' AdmissionControl'SuccessCriteria AdmissionControl'SuccessCriteria'HttpCriteria@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maybe'httpCriteria' @:: Lens' AdmissionControl'SuccessCriteria (Prelude.Maybe AdmissionControl'SuccessCriteria'HttpCriteria)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.grpcCriteria' @:: Lens' AdmissionControl'SuccessCriteria AdmissionControl'SuccessCriteria'GrpcCriteria@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.maybe'grpcCriteria' @:: Lens' AdmissionControl'SuccessCriteria (Prelude.Maybe AdmissionControl'SuccessCriteria'GrpcCriteria)@ -}
data AdmissionControl'SuccessCriteria
  = AdmissionControl'SuccessCriteria'_constructor {_AdmissionControl'SuccessCriteria'httpCriteria :: !(Prelude.Maybe AdmissionControl'SuccessCriteria'HttpCriteria),
                                                   _AdmissionControl'SuccessCriteria'grpcCriteria :: !(Prelude.Maybe AdmissionControl'SuccessCriteria'GrpcCriteria),
                                                   _AdmissionControl'SuccessCriteria'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AdmissionControl'SuccessCriteria where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AdmissionControl'SuccessCriteria "httpCriteria" AdmissionControl'SuccessCriteria'HttpCriteria where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'SuccessCriteria'httpCriteria
           (\ x__ y__
              -> x__ {_AdmissionControl'SuccessCriteria'httpCriteria = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AdmissionControl'SuccessCriteria "maybe'httpCriteria" (Prelude.Maybe AdmissionControl'SuccessCriteria'HttpCriteria) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'SuccessCriteria'httpCriteria
           (\ x__ y__
              -> x__ {_AdmissionControl'SuccessCriteria'httpCriteria = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AdmissionControl'SuccessCriteria "grpcCriteria" AdmissionControl'SuccessCriteria'GrpcCriteria where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'SuccessCriteria'grpcCriteria
           (\ x__ y__
              -> x__ {_AdmissionControl'SuccessCriteria'grpcCriteria = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AdmissionControl'SuccessCriteria "maybe'grpcCriteria" (Prelude.Maybe AdmissionControl'SuccessCriteria'GrpcCriteria) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'SuccessCriteria'grpcCriteria
           (\ x__ y__
              -> x__ {_AdmissionControl'SuccessCriteria'grpcCriteria = y__}))
        Prelude.id
instance Data.ProtoLens.Message AdmissionControl'SuccessCriteria where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteria"
  packedMessageDescriptor _
    = "\n\
      \\SISuccessCriteria\DC2\139\SOH\n\
      \\rhttp_criteria\CAN\SOH \SOH(\v2f.envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteria.HttpCriteriaR\fhttpCriteria\DC2\139\SOH\n\
      \\rgrpc_criteria\CAN\STX \SOH(\v2f.envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteria.GrpcCriteriaR\fgrpcCriteria\SUBc\n\
      \\fHttpCriteria\DC2S\n\
      \\DC3http_success_status\CAN\SOH \ETX(\v2\EM.envoy.type.v3.Int32RangeR\DC1httpSuccessStatusB\b\250B\ENQ\146\SOH\STX\b\SOH\SUBH\n\
      \\fGrpcCriteria\DC28\n\
      \\DC3grpc_success_status\CAN\SOH \ETX(\rR\DC1grpcSuccessStatusB\b\250B\ENQ\146\SOH\STX\b\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        httpCriteria__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_criteria"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AdmissionControl'SuccessCriteria'HttpCriteria)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpCriteria")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl'SuccessCriteria
        grpcCriteria__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_criteria"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AdmissionControl'SuccessCriteria'GrpcCriteria)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcCriteria")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl'SuccessCriteria
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, httpCriteria__field_descriptor),
           (Data.ProtoLens.Tag 2, grpcCriteria__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AdmissionControl'SuccessCriteria'_unknownFields
        (\ x__ y__
           -> x__ {_AdmissionControl'SuccessCriteria'_unknownFields = y__})
  defMessage
    = AdmissionControl'SuccessCriteria'_constructor
        {_AdmissionControl'SuccessCriteria'httpCriteria = Prelude.Nothing,
         _AdmissionControl'SuccessCriteria'grpcCriteria = Prelude.Nothing,
         _AdmissionControl'SuccessCriteria'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AdmissionControl'SuccessCriteria
          -> Data.ProtoLens.Encoding.Bytes.Parser AdmissionControl'SuccessCriteria
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
                                       "http_criteria"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpCriteria") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grpc_criteria"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"grpcCriteria") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SuccessCriteria"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'httpCriteria") _x
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'grpcCriteria") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AdmissionControl'SuccessCriteria where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AdmissionControl'SuccessCriteria'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AdmissionControl'SuccessCriteria'httpCriteria x__)
                (Control.DeepSeq.deepseq
                   (_AdmissionControl'SuccessCriteria'grpcCriteria x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.grpcSuccessStatus' @:: Lens' AdmissionControl'SuccessCriteria'GrpcCriteria [Data.Word.Word32]@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.vec'grpcSuccessStatus' @:: Lens' AdmissionControl'SuccessCriteria'GrpcCriteria (Data.Vector.Unboxed.Vector Data.Word.Word32)@ -}
data AdmissionControl'SuccessCriteria'GrpcCriteria
  = AdmissionControl'SuccessCriteria'GrpcCriteria'_constructor {_AdmissionControl'SuccessCriteria'GrpcCriteria'grpcSuccessStatus :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                                                _AdmissionControl'SuccessCriteria'GrpcCriteria'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AdmissionControl'SuccessCriteria'GrpcCriteria where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AdmissionControl'SuccessCriteria'GrpcCriteria "grpcSuccessStatus" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'SuccessCriteria'GrpcCriteria'grpcSuccessStatus
           (\ x__ y__
              -> x__
                   {_AdmissionControl'SuccessCriteria'GrpcCriteria'grpcSuccessStatus = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AdmissionControl'SuccessCriteria'GrpcCriteria "vec'grpcSuccessStatus" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'SuccessCriteria'GrpcCriteria'grpcSuccessStatus
           (\ x__ y__
              -> x__
                   {_AdmissionControl'SuccessCriteria'GrpcCriteria'grpcSuccessStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message AdmissionControl'SuccessCriteria'GrpcCriteria where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteria.GrpcCriteria"
  packedMessageDescriptor _
    = "\n\
      \\fGrpcCriteria\DC28\n\
      \\DC3grpc_success_status\CAN\SOH \ETX(\rR\DC1grpcSuccessStatusB\b\250B\ENQ\146\SOH\STX\b\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        grpcSuccessStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_success_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"grpcSuccessStatus")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl'SuccessCriteria'GrpcCriteria
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grpcSuccessStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AdmissionControl'SuccessCriteria'GrpcCriteria'_unknownFields
        (\ x__ y__
           -> x__
                {_AdmissionControl'SuccessCriteria'GrpcCriteria'_unknownFields = y__})
  defMessage
    = AdmissionControl'SuccessCriteria'GrpcCriteria'_constructor
        {_AdmissionControl'SuccessCriteria'GrpcCriteria'grpcSuccessStatus = Data.Vector.Generic.empty,
         _AdmissionControl'SuccessCriteria'GrpcCriteria'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AdmissionControl'SuccessCriteria'GrpcCriteria
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
             -> Data.ProtoLens.Encoding.Bytes.Parser AdmissionControl'SuccessCriteria'GrpcCriteria
        loop x mutable'grpcSuccessStatus
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'grpcSuccessStatus <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'grpcSuccessStatus)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'grpcSuccessStatus")
                              frozen'grpcSuccessStatus
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "grpc_success_status"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'grpcSuccessStatus y)
                                loop x v
                        10
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "grpc_success_status"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'grpcSuccessStatus)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'grpcSuccessStatus
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'grpcSuccessStatus <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'grpcSuccessStatus)
          "GrpcCriteria"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                p = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'grpcSuccessStatus") _x
              in
                if Data.Vector.Generic.null p then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         (Data.ProtoLens.Encoding.Bytes.runBuilder
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               p))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AdmissionControl'SuccessCriteria'GrpcCriteria where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AdmissionControl'SuccessCriteria'GrpcCriteria'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AdmissionControl'SuccessCriteria'GrpcCriteria'grpcSuccessStatus
                   x__)
                ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.httpSuccessStatus' @:: Lens' AdmissionControl'SuccessCriteria'HttpCriteria [Proto.Envoy.Type.V3.Range.Int32Range]@
         * 'Proto.Envoy.Extensions.Filters.Http.AdmissionControl.V3alpha.AdmissionControl_Fields.vec'httpSuccessStatus' @:: Lens' AdmissionControl'SuccessCriteria'HttpCriteria (Data.Vector.Vector Proto.Envoy.Type.V3.Range.Int32Range)@ -}
data AdmissionControl'SuccessCriteria'HttpCriteria
  = AdmissionControl'SuccessCriteria'HttpCriteria'_constructor {_AdmissionControl'SuccessCriteria'HttpCriteria'httpSuccessStatus :: !(Data.Vector.Vector Proto.Envoy.Type.V3.Range.Int32Range),
                                                                _AdmissionControl'SuccessCriteria'HttpCriteria'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AdmissionControl'SuccessCriteria'HttpCriteria where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AdmissionControl'SuccessCriteria'HttpCriteria "httpSuccessStatus" [Proto.Envoy.Type.V3.Range.Int32Range] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'SuccessCriteria'HttpCriteria'httpSuccessStatus
           (\ x__ y__
              -> x__
                   {_AdmissionControl'SuccessCriteria'HttpCriteria'httpSuccessStatus = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AdmissionControl'SuccessCriteria'HttpCriteria "vec'httpSuccessStatus" (Data.Vector.Vector Proto.Envoy.Type.V3.Range.Int32Range) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdmissionControl'SuccessCriteria'HttpCriteria'httpSuccessStatus
           (\ x__ y__
              -> x__
                   {_AdmissionControl'SuccessCriteria'HttpCriteria'httpSuccessStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Message AdmissionControl'SuccessCriteria'HttpCriteria where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteria.HttpCriteria"
  packedMessageDescriptor _
    = "\n\
      \\fHttpCriteria\DC2S\n\
      \\DC3http_success_status\CAN\SOH \ETX(\v2\EM.envoy.type.v3.Int32RangeR\DC1httpSuccessStatusB\b\250B\ENQ\146\SOH\STX\b\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        httpSuccessStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_success_status"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Range.Int32Range)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"httpSuccessStatus")) ::
              Data.ProtoLens.FieldDescriptor AdmissionControl'SuccessCriteria'HttpCriteria
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, httpSuccessStatus__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AdmissionControl'SuccessCriteria'HttpCriteria'_unknownFields
        (\ x__ y__
           -> x__
                {_AdmissionControl'SuccessCriteria'HttpCriteria'_unknownFields = y__})
  defMessage
    = AdmissionControl'SuccessCriteria'HttpCriteria'_constructor
        {_AdmissionControl'SuccessCriteria'HttpCriteria'httpSuccessStatus = Data.Vector.Generic.empty,
         _AdmissionControl'SuccessCriteria'HttpCriteria'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AdmissionControl'SuccessCriteria'HttpCriteria
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Type.V3.Range.Int32Range
             -> Data.ProtoLens.Encoding.Bytes.Parser AdmissionControl'SuccessCriteria'HttpCriteria
        loop x mutable'httpSuccessStatus
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'httpSuccessStatus <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'httpSuccessStatus)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'httpSuccessStatus")
                              frozen'httpSuccessStatus
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "http_success_status"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'httpSuccessStatus y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'httpSuccessStatus
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'httpSuccessStatus <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'httpSuccessStatus)
          "HttpCriteria"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'httpSuccessStatus") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AdmissionControl'SuccessCriteria'HttpCriteria where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AdmissionControl'SuccessCriteria'HttpCriteria'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AdmissionControl'SuccessCriteria'HttpCriteria'httpSuccessStatus
                   x__)
                ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Oenvoy/extensions/filters/http/admission_control/v3alpha/admission_control.proto\DC27envoy.extensions.filters.http.admission_control.v3alpha\SUB\USenvoy/config/core/v3/base.proto\SUB\EMenvoy/type/v3/range.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\216\b\n\
    \\DLEAdmissionControl\DC2B\n\
    \\aenabled\CAN\SOH \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabled\DC2\134\SOH\n\
    \\DLEsuccess_criteria\CAN\STX \SOH(\v2Y.envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteriaH\NULR\SIsuccessCriteria\DC2B\n\
    \\SIsampling_window\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\SOsamplingWindow\DC2C\n\
    \\n\
    \aggression\CAN\EOT \SOH(\v2#.envoy.config.core.v3.RuntimeDoubleR\n\
    \aggression\DC2G\n\
    \\fsr_threshold\CAN\ENQ \SOH(\v2$.envoy.config.core.v3.RuntimePercentR\vsrThreshold\DC2H\n\
    \\rrps_threshold\CAN\ACK \SOH(\v2#.envoy.config.core.v3.RuntimeUInt32R\frpsThreshold\DC2`\n\
    \\EMmax_rejection_probability\CAN\a \SOH(\v2$.envoy.config.core.v3.RuntimePercentR\ETBmaxRejectionProbability\SUB\220\ETX\n\
    \\SISuccessCriteria\DC2\139\SOH\n\
    \\rhttp_criteria\CAN\SOH \SOH(\v2f.envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteria.HttpCriteriaR\fhttpCriteria\DC2\139\SOH\n\
    \\rgrpc_criteria\CAN\STX \SOH(\v2f.envoy.extensions.filters.http.admission_control.v3alpha.AdmissionControl.SuccessCriteria.GrpcCriteriaR\fgrpcCriteria\SUBc\n\
    \\fHttpCriteria\DC2S\n\
    \\DC3http_success_status\CAN\SOH \ETX(\v2\EM.envoy.type.v3.Int32RangeR\DC1httpSuccessStatusB\b\250B\ENQ\146\SOH\STX\b\SOH\SUBH\n\
    \\fGrpcCriteria\DC28\n\
    \\DC3grpc_success_status\CAN\SOH \ETX(\rR\DC1grpcSuccessStatusB\b\250B\ENQ\146\SOH\STX\b\SOHB\SUB\n\
    \\DC3evaluation_criteria\DC2\ETX\248B\SOHBp\n\
    \Eio.envoyproxy.envoy.extensions.filters.http.admission_control.v3alphaB\NAKAdmissionControlProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\255\US\n\
    \\ACK\DC2\EOT\NUL\NULf\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL@\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL^\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL^\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL6\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\SI\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\DEL\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NULf\SOH\SUB\ETB [#next-free-field: 8]\n\
    \2Z [#protodoc-title: Admission Control]\n\
    \ [#extension: envoy.filters.http.admission_control]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\CAN\n\
    \\205\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\SUB\STX<\ETX\SUB\190\SOH Default method of specifying what constitutes a successful request. All status codes that\n\
    \ indicate a successful request must be explicitly specified if not relying on the default\n\
    \ values.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\SUB\n\
    \\EM\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\ETX\NUL\DC2\EOT\ESC\EOT \ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\SOH\DC2\ETX\ESC\f\CAN\n\
    \}\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\DC2\EOT\RS\ACK\US7\SUBk Status code ranges that constitute a successful request. Configurable codes are in the\n\
    \ range [100, 600).\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\RS\ACK\SO\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX\RS\SI!\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\RS\"5\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\RS89\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\b\DC2\ETX\US\n\
    \6\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\b\175\b\DC2\DC2\ETX\US\v5\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\ETX\SOH\DC2\EOT\"\EOT&\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\ETX\SOH\SOH\DC2\ETX\"\f\CAN\n\
    \\158\SOH\n\
    \\b\EOT\NUL\ETX\NUL\ETX\SOH\STX\NUL\DC2\ETX%\ACK[\SUB\140\SOH Status codes that constitute a successful request.\n\
    \ Mappings can be found at: https://github.com/grpc/grpc/blob/master/doc/statuscodes.md.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\SOH\STX\NUL\EOT\DC2\ETX%\ACK\SO\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETX%\SI\NAK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX%\SYN)\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX%,-\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\SOH\STX\NUL\b\DC2\ETX%.Z\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\NUL\ETX\SOH\STX\NUL\b\175\b\DC2\DC2\ETX%/Y\n\
    \\167\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX1\EOT#\SUB\151\ETX If HTTP criteria are unspecified, all HTTP status codes below 500 are treated as successful\n\
    \ responses.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \    The default HTTP codes considered successful by the admission controller are done so due\n\
    \    to the unlikelihood that sending fewer requests would change their behavior (for example:\n\
    \    redirects, unauthorized access, or bad requests won't be alleviated by sending less\n\
    \    traffic).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX1\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX1\DC1\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX1!\"\n\
    \\192\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX;\EOT#\SUB\176\ETX GRPC status codes to consider as request successes. If unspecified, defaults to: Ok,\n\
    \ Cancelled, Unknown, InvalidArgument, NotFound, AlreadyExists, Unauthenticated,\n\
    \ FailedPrecondition, OutOfRange, PermissionDenied, and Unimplemented.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \    The default gRPC codes that are considered successful by the admission controller are\n\
    \    chosen because of the unlikelihood that sending fewer requests will change the behavior.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX;\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX;\DC1\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX;!\"\n\
    \\160\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX@\STX0\SUB\146\SOH If set to false, the admission control filter will operate as a pass-through filter. If the\n\
    \ message is unspecified, the filter will be enabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX@\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX@$+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX@./\n\
    \F\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOTC\STXG\ETX\SUB8 Defines how a request is considered a success/failure.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETXC\b\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETXD\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETXD\EOT&\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXF\EOT)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXF\EOT\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXF\DC4$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXF'(\n\
    \\145\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXK\STX/\SUB\131\SOH The sliding time window over which the success rate is calculated. The window is rounded to the\n\
    \ nearest second. Defaults to 30s.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXK\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXK\ESC*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXK-.\n\
    \\152\ENQ\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXW\STX.\SUB\138\ENQ Rejection probability is defined by the formula::\n\
    \\n\
    \     max(0, (rq_count -  rq_success_count / sr_threshold) / (rq_count + 1)) ^ (1 / aggression)\n\
    \\n\
    \ The aggression dictates how heavily the admission controller will throttle requests upon SR\n\
    \ dropping at or below the threshold. A value of 1 will result in a linear increase in\n\
    \ rejection probability as SR drops. Any values less than 1.0, will be set to 1.0. If the\n\
    \ message is unspecified, the aggression is 1.0. See `the admission control documentation\n\
    \ <https://www.envoyproxy.io/docs/envoy/latest/configuration/http/http_filters/admission_control_filter.html>`_\n\
    \ for a diagram illustrating this.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXW\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXW\US)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXW,-\n\
    \\139\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\\\STX1\SUB\253\SOH Dictates the success rate at which the rejection probability is non-zero. As success rate drops\n\
    \ below this threshold, rejection probability will increase. Any success rate above the threshold\n\
    \ results in a rejection probability of 0. Defaults to 95%.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX\\\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\\ ,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\\/0\n\
    \\186\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXa\STX1\SUB\172\SOH If the average RPS of the sampling window is below this threshold, the request\n\
    \ will not be rejected, even if the success rate is lower than sr_threshold.\n\
    \ Defaults to 0.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXa\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXa\US,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXa/0\n\
    \\DEL\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXe\STX>\SUBr The probability of rejection will never exceed this value, even if the failure rate is rising.\n\
    \ Defaults to 80%.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXe\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXe 9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXe<=b\ACKproto3"