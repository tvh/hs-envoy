{- This file was auto-generated from envoy/extensions/filters/http/adaptive_concurrency/v3/adaptive_concurrency.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency (
        AdaptiveConcurrency(),
        AdaptiveConcurrency'ConcurrencyControllerConfig(..),
        _AdaptiveConcurrency'GradientControllerConfig,
        GradientControllerConfig(),
        GradientControllerConfig'ConcurrencyLimitCalculationParams(),
        GradientControllerConfig'MinimumRTTCalculationParams()
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
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.enabled' @:: Lens' AdaptiveConcurrency Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'enabled' @:: Lens' AdaptiveConcurrency (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'concurrencyControllerConfig' @:: Lens' AdaptiveConcurrency (Prelude.Maybe AdaptiveConcurrency'ConcurrencyControllerConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'gradientControllerConfig' @:: Lens' AdaptiveConcurrency (Prelude.Maybe GradientControllerConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.gradientControllerConfig' @:: Lens' AdaptiveConcurrency GradientControllerConfig@ -}
data AdaptiveConcurrency
  = AdaptiveConcurrency'_constructor {_AdaptiveConcurrency'enabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag),
                                      _AdaptiveConcurrency'concurrencyControllerConfig :: !(Prelude.Maybe AdaptiveConcurrency'ConcurrencyControllerConfig),
                                      _AdaptiveConcurrency'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AdaptiveConcurrency where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AdaptiveConcurrency'ConcurrencyControllerConfig
  = AdaptiveConcurrency'GradientControllerConfig !GradientControllerConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AdaptiveConcurrency "enabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdaptiveConcurrency'enabled
           (\ x__ y__ -> x__ {_AdaptiveConcurrency'enabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AdaptiveConcurrency "maybe'enabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdaptiveConcurrency'enabled
           (\ x__ y__ -> x__ {_AdaptiveConcurrency'enabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AdaptiveConcurrency "maybe'concurrencyControllerConfig" (Prelude.Maybe AdaptiveConcurrency'ConcurrencyControllerConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdaptiveConcurrency'concurrencyControllerConfig
           (\ x__ y__
              -> x__ {_AdaptiveConcurrency'concurrencyControllerConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AdaptiveConcurrency "maybe'gradientControllerConfig" (Prelude.Maybe GradientControllerConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdaptiveConcurrency'concurrencyControllerConfig
           (\ x__ y__
              -> x__ {_AdaptiveConcurrency'concurrencyControllerConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AdaptiveConcurrency'GradientControllerConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap AdaptiveConcurrency'GradientControllerConfig y__))
instance Data.ProtoLens.Field.HasField AdaptiveConcurrency "gradientControllerConfig" GradientControllerConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AdaptiveConcurrency'concurrencyControllerConfig
           (\ x__ y__
              -> x__ {_AdaptiveConcurrency'concurrencyControllerConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AdaptiveConcurrency'GradientControllerConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap AdaptiveConcurrency'GradientControllerConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message AdaptiveConcurrency where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.adaptive_concurrency.v3.AdaptiveConcurrency"
  packedMessageDescriptor _
    = "\n\
      \\DC3AdaptiveConcurrency\DC2\153\SOH\n\
      \\SUBgradient_controller_config\CAN\SOH \SOH(\v2O.envoy.extensions.filters.http.adaptive_concurrency.v3.GradientControllerConfigH\NULR\CANgradientControllerConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2B\n\
      \\aenabled\CAN\STX \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabledB$\n\
      \\GSconcurrency_controller_config\DC2\ETX\248B\SOH:P\154\197\136\RSK\n\
      \Ienvoy.config.filter.http.adaptive_concurrency.v2alpha.AdaptiveConcurrency"
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
              Data.ProtoLens.FieldDescriptor AdaptiveConcurrency
        gradientControllerConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gradient_controller_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GradientControllerConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gradientControllerConfig")) ::
              Data.ProtoLens.FieldDescriptor AdaptiveConcurrency
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, enabled__field_descriptor),
           (Data.ProtoLens.Tag 1, gradientControllerConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AdaptiveConcurrency'_unknownFields
        (\ x__ y__ -> x__ {_AdaptiveConcurrency'_unknownFields = y__})
  defMessage
    = AdaptiveConcurrency'_constructor
        {_AdaptiveConcurrency'enabled = Prelude.Nothing,
         _AdaptiveConcurrency'concurrencyControllerConfig = Prelude.Nothing,
         _AdaptiveConcurrency'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AdaptiveConcurrency
          -> Data.ProtoLens.Encoding.Bytes.Parser AdaptiveConcurrency
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enabled"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"enabled") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "gradient_controller_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"gradientControllerConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AdaptiveConcurrency"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'enabled") _x
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
                       (Data.ProtoLens.Field.field @"maybe'concurrencyControllerConfig")
                       _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (AdaptiveConcurrency'GradientControllerConfig v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AdaptiveConcurrency where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AdaptiveConcurrency'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AdaptiveConcurrency'enabled x__)
                (Control.DeepSeq.deepseq
                   (_AdaptiveConcurrency'concurrencyControllerConfig x__) ()))
instance Control.DeepSeq.NFData AdaptiveConcurrency'ConcurrencyControllerConfig where
  rnf (AdaptiveConcurrency'GradientControllerConfig x__)
    = Control.DeepSeq.rnf x__
_AdaptiveConcurrency'GradientControllerConfig ::
  Data.ProtoLens.Prism.Prism' AdaptiveConcurrency'ConcurrencyControllerConfig GradientControllerConfig
_AdaptiveConcurrency'GradientControllerConfig
  = Data.ProtoLens.Prism.prism'
      AdaptiveConcurrency'GradientControllerConfig
      (\ p__
         -> case p__ of {
              (AdaptiveConcurrency'GradientControllerConfig p__val)
                -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.sampleAggregatePercentile' @:: Lens' GradientControllerConfig Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'sampleAggregatePercentile' @:: Lens' GradientControllerConfig (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.concurrencyLimitParams' @:: Lens' GradientControllerConfig GradientControllerConfig'ConcurrencyLimitCalculationParams@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'concurrencyLimitParams' @:: Lens' GradientControllerConfig (Prelude.Maybe GradientControllerConfig'ConcurrencyLimitCalculationParams)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.minRttCalcParams' @:: Lens' GradientControllerConfig GradientControllerConfig'MinimumRTTCalculationParams@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'minRttCalcParams' @:: Lens' GradientControllerConfig (Prelude.Maybe GradientControllerConfig'MinimumRTTCalculationParams)@ -}
data GradientControllerConfig
  = GradientControllerConfig'_constructor {_GradientControllerConfig'sampleAggregatePercentile :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                           _GradientControllerConfig'concurrencyLimitParams :: !(Prelude.Maybe GradientControllerConfig'ConcurrencyLimitCalculationParams),
                                           _GradientControllerConfig'minRttCalcParams :: !(Prelude.Maybe GradientControllerConfig'MinimumRTTCalculationParams),
                                           _GradientControllerConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GradientControllerConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GradientControllerConfig "sampleAggregatePercentile" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'sampleAggregatePercentile
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'sampleAggregatePercentile = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GradientControllerConfig "maybe'sampleAggregatePercentile" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'sampleAggregatePercentile
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'sampleAggregatePercentile = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GradientControllerConfig "concurrencyLimitParams" GradientControllerConfig'ConcurrencyLimitCalculationParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'concurrencyLimitParams
           (\ x__ y__
              -> x__ {_GradientControllerConfig'concurrencyLimitParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GradientControllerConfig "maybe'concurrencyLimitParams" (Prelude.Maybe GradientControllerConfig'ConcurrencyLimitCalculationParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'concurrencyLimitParams
           (\ x__ y__
              -> x__ {_GradientControllerConfig'concurrencyLimitParams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GradientControllerConfig "minRttCalcParams" GradientControllerConfig'MinimumRTTCalculationParams where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'minRttCalcParams
           (\ x__ y__
              -> x__ {_GradientControllerConfig'minRttCalcParams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GradientControllerConfig "maybe'minRttCalcParams" (Prelude.Maybe GradientControllerConfig'MinimumRTTCalculationParams) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'minRttCalcParams
           (\ x__ y__
              -> x__ {_GradientControllerConfig'minRttCalcParams = y__}))
        Prelude.id
instance Data.ProtoLens.Message GradientControllerConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.adaptive_concurrency.v3.GradientControllerConfig"
  packedMessageDescriptor _
    = "\n\
      \\CANGradientControllerConfig\DC2V\n\
      \\ESCsample_aggregate_percentile\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\EMsampleAggregatePercentile\DC2\181\SOH\n\
      \\CANconcurrency_limit_params\CAN\STX \SOH(\v2q.envoy.extensions.filters.http.adaptive_concurrency.v3.GradientControllerConfig.ConcurrencyLimitCalculationParamsR\SYNconcurrencyLimitParamsB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\164\SOH\n\
      \\DC3min_rtt_calc_params\CAN\ETX \SOH(\v2k.envoy.extensions.filters.http.adaptive_concurrency.v3.GradientControllerConfig.MinimumRTTCalculationParamsR\DLEminRttCalcParamsB\b\250B\ENQ\138\SOH\STX\DLE\SOH\SUB\222\STX\n\
      \!ConcurrencyLimitCalculationParams\DC2Y\n\
      \\NAKmax_concurrency_limit\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3maxConcurrencyLimitB\a\250B\EOT*\STX \NUL\DC2e\n\
      \\ESCconcurrency_update_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\EMconcurrencyUpdateIntervalB\n\
      \\250B\a\170\SOH\EOT\b\SOH*\NUL:w\154\197\136\RSr\n\
      \penvoy.config.filter.http.adaptive_concurrency.v2alpha.GradientControllerConfig.ConcurrencyLimitCalculationParams\SUB\211\ETX\n\
      \\ESCMinimumRTTCalculationParams\DC2E\n\
      \\binterval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\bintervalB\SO\250B\v\170\SOH\b\b\SOH2\EOT\DLE\192\132=\DC2J\n\
      \\rrequest_count\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\frequestCountB\a\250B\EOT*\STX \NUL\DC2.\n\
      \\ACKjitter\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentR\ACKjitter\DC2N\n\
      \\SImin_concurrency\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOminConcurrencyB\a\250B\EOT*\STX \NUL\DC2.\n\
      \\ACKbuffer\CAN\ENQ \SOH(\v2\SYN.envoy.type.v3.PercentR\ACKbuffer:q\154\197\136\RSl\n\
      \jenvoy.config.filter.http.adaptive_concurrency.v2alpha.GradientControllerConfig.MinimumRTTCalculationParams:U\154\197\136\RSP\n\
      \Nenvoy.config.filter.http.adaptive_concurrency.v2alpha.GradientControllerConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sampleAggregatePercentile__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sample_aggregate_percentile"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sampleAggregatePercentile")) ::
              Data.ProtoLens.FieldDescriptor GradientControllerConfig
        concurrencyLimitParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "concurrency_limit_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GradientControllerConfig'ConcurrencyLimitCalculationParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'concurrencyLimitParams")) ::
              Data.ProtoLens.FieldDescriptor GradientControllerConfig
        minRttCalcParams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_rtt_calc_params"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GradientControllerConfig'MinimumRTTCalculationParams)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minRttCalcParams")) ::
              Data.ProtoLens.FieldDescriptor GradientControllerConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            sampleAggregatePercentile__field_descriptor),
           (Data.ProtoLens.Tag 2, concurrencyLimitParams__field_descriptor),
           (Data.ProtoLens.Tag 3, minRttCalcParams__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GradientControllerConfig'_unknownFields
        (\ x__ y__ -> x__ {_GradientControllerConfig'_unknownFields = y__})
  defMessage
    = GradientControllerConfig'_constructor
        {_GradientControllerConfig'sampleAggregatePercentile = Prelude.Nothing,
         _GradientControllerConfig'concurrencyLimitParams = Prelude.Nothing,
         _GradientControllerConfig'minRttCalcParams = Prelude.Nothing,
         _GradientControllerConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GradientControllerConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser GradientControllerConfig
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
                                       "sample_aggregate_percentile"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sampleAggregatePercentile") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "concurrency_limit_params"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"concurrencyLimitParams") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "min_rtt_calc_params"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minRttCalcParams") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GradientControllerConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'sampleAggregatePercentile") _x
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
                       (Data.ProtoLens.Field.field @"maybe'concurrencyLimitParams") _x
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
                          (Data.ProtoLens.Field.field @"maybe'minRttCalcParams") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData GradientControllerConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GradientControllerConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GradientControllerConfig'sampleAggregatePercentile x__)
                (Control.DeepSeq.deepseq
                   (_GradientControllerConfig'concurrencyLimitParams x__)
                   (Control.DeepSeq.deepseq
                      (_GradientControllerConfig'minRttCalcParams x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maxConcurrencyLimit' @:: Lens' GradientControllerConfig'ConcurrencyLimitCalculationParams Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'maxConcurrencyLimit' @:: Lens' GradientControllerConfig'ConcurrencyLimitCalculationParams (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.concurrencyUpdateInterval' @:: Lens' GradientControllerConfig'ConcurrencyLimitCalculationParams Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'concurrencyUpdateInterval' @:: Lens' GradientControllerConfig'ConcurrencyLimitCalculationParams (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data GradientControllerConfig'ConcurrencyLimitCalculationParams
  = GradientControllerConfig'ConcurrencyLimitCalculationParams'_constructor {_GradientControllerConfig'ConcurrencyLimitCalculationParams'maxConcurrencyLimit :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                                             _GradientControllerConfig'ConcurrencyLimitCalculationParams'concurrencyUpdateInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                                             _GradientControllerConfig'ConcurrencyLimitCalculationParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GradientControllerConfig'ConcurrencyLimitCalculationParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GradientControllerConfig'ConcurrencyLimitCalculationParams "maxConcurrencyLimit" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'ConcurrencyLimitCalculationParams'maxConcurrencyLimit
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'ConcurrencyLimitCalculationParams'maxConcurrencyLimit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GradientControllerConfig'ConcurrencyLimitCalculationParams "maybe'maxConcurrencyLimit" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'ConcurrencyLimitCalculationParams'maxConcurrencyLimit
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'ConcurrencyLimitCalculationParams'maxConcurrencyLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GradientControllerConfig'ConcurrencyLimitCalculationParams "concurrencyUpdateInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'ConcurrencyLimitCalculationParams'concurrencyUpdateInterval
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'ConcurrencyLimitCalculationParams'concurrencyUpdateInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GradientControllerConfig'ConcurrencyLimitCalculationParams "maybe'concurrencyUpdateInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'ConcurrencyLimitCalculationParams'concurrencyUpdateInterval
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'ConcurrencyLimitCalculationParams'concurrencyUpdateInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Message GradientControllerConfig'ConcurrencyLimitCalculationParams where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.adaptive_concurrency.v3.GradientControllerConfig.ConcurrencyLimitCalculationParams"
  packedMessageDescriptor _
    = "\n\
      \!ConcurrencyLimitCalculationParams\DC2Y\n\
      \\NAKmax_concurrency_limit\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3maxConcurrencyLimitB\a\250B\EOT*\STX \NUL\DC2e\n\
      \\ESCconcurrency_update_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\EMconcurrencyUpdateIntervalB\n\
      \\250B\a\170\SOH\EOT\b\SOH*\NUL:w\154\197\136\RSr\n\
      \penvoy.config.filter.http.adaptive_concurrency.v2alpha.GradientControllerConfig.ConcurrencyLimitCalculationParams"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxConcurrencyLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_concurrency_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxConcurrencyLimit")) ::
              Data.ProtoLens.FieldDescriptor GradientControllerConfig'ConcurrencyLimitCalculationParams
        concurrencyUpdateInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "concurrency_update_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'concurrencyUpdateInterval")) ::
              Data.ProtoLens.FieldDescriptor GradientControllerConfig'ConcurrencyLimitCalculationParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, maxConcurrencyLimit__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            concurrencyUpdateInterval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GradientControllerConfig'ConcurrencyLimitCalculationParams'_unknownFields
        (\ x__ y__
           -> x__
                {_GradientControllerConfig'ConcurrencyLimitCalculationParams'_unknownFields = y__})
  defMessage
    = GradientControllerConfig'ConcurrencyLimitCalculationParams'_constructor
        {_GradientControllerConfig'ConcurrencyLimitCalculationParams'maxConcurrencyLimit = Prelude.Nothing,
         _GradientControllerConfig'ConcurrencyLimitCalculationParams'concurrencyUpdateInterval = Prelude.Nothing,
         _GradientControllerConfig'ConcurrencyLimitCalculationParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GradientControllerConfig'ConcurrencyLimitCalculationParams
          -> Data.ProtoLens.Encoding.Bytes.Parser GradientControllerConfig'ConcurrencyLimitCalculationParams
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_concurrency_limit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxConcurrencyLimit") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "concurrency_update_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"concurrencyUpdateInterval") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ConcurrencyLimitCalculationParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxConcurrencyLimit") _x
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
                       (Data.ProtoLens.Field.field @"maybe'concurrencyUpdateInterval") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GradientControllerConfig'ConcurrencyLimitCalculationParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GradientControllerConfig'ConcurrencyLimitCalculationParams'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_GradientControllerConfig'ConcurrencyLimitCalculationParams'maxConcurrencyLimit
                   x__)
                (Control.DeepSeq.deepseq
                   (_GradientControllerConfig'ConcurrencyLimitCalculationParams'concurrencyUpdateInterval
                      x__)
                   ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.interval' @:: Lens' GradientControllerConfig'MinimumRTTCalculationParams Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'interval' @:: Lens' GradientControllerConfig'MinimumRTTCalculationParams (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.requestCount' @:: Lens' GradientControllerConfig'MinimumRTTCalculationParams Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'requestCount' @:: Lens' GradientControllerConfig'MinimumRTTCalculationParams (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.jitter' @:: Lens' GradientControllerConfig'MinimumRTTCalculationParams Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'jitter' @:: Lens' GradientControllerConfig'MinimumRTTCalculationParams (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.minConcurrency' @:: Lens' GradientControllerConfig'MinimumRTTCalculationParams Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'minConcurrency' @:: Lens' GradientControllerConfig'MinimumRTTCalculationParams (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.buffer' @:: Lens' GradientControllerConfig'MinimumRTTCalculationParams Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Extensions.Filters.Http.AdaptiveConcurrency.V3.AdaptiveConcurrency_Fields.maybe'buffer' @:: Lens' GradientControllerConfig'MinimumRTTCalculationParams (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@ -}
data GradientControllerConfig'MinimumRTTCalculationParams
  = GradientControllerConfig'MinimumRTTCalculationParams'_constructor {_GradientControllerConfig'MinimumRTTCalculationParams'interval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                                                       _GradientControllerConfig'MinimumRTTCalculationParams'requestCount :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                                       _GradientControllerConfig'MinimumRTTCalculationParams'jitter :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                                                       _GradientControllerConfig'MinimumRTTCalculationParams'minConcurrency :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                                       _GradientControllerConfig'MinimumRTTCalculationParams'buffer :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                                                       _GradientControllerConfig'MinimumRTTCalculationParams'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GradientControllerConfig'MinimumRTTCalculationParams where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GradientControllerConfig'MinimumRTTCalculationParams "interval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'MinimumRTTCalculationParams'interval
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'MinimumRTTCalculationParams'interval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GradientControllerConfig'MinimumRTTCalculationParams "maybe'interval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'MinimumRTTCalculationParams'interval
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'MinimumRTTCalculationParams'interval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GradientControllerConfig'MinimumRTTCalculationParams "requestCount" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'MinimumRTTCalculationParams'requestCount
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'MinimumRTTCalculationParams'requestCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GradientControllerConfig'MinimumRTTCalculationParams "maybe'requestCount" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'MinimumRTTCalculationParams'requestCount
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'MinimumRTTCalculationParams'requestCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GradientControllerConfig'MinimumRTTCalculationParams "jitter" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'MinimumRTTCalculationParams'jitter
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'MinimumRTTCalculationParams'jitter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GradientControllerConfig'MinimumRTTCalculationParams "maybe'jitter" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'MinimumRTTCalculationParams'jitter
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'MinimumRTTCalculationParams'jitter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GradientControllerConfig'MinimumRTTCalculationParams "minConcurrency" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'MinimumRTTCalculationParams'minConcurrency
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'MinimumRTTCalculationParams'minConcurrency = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GradientControllerConfig'MinimumRTTCalculationParams "maybe'minConcurrency" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'MinimumRTTCalculationParams'minConcurrency
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'MinimumRTTCalculationParams'minConcurrency = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GradientControllerConfig'MinimumRTTCalculationParams "buffer" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'MinimumRTTCalculationParams'buffer
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'MinimumRTTCalculationParams'buffer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GradientControllerConfig'MinimumRTTCalculationParams "maybe'buffer" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GradientControllerConfig'MinimumRTTCalculationParams'buffer
           (\ x__ y__
              -> x__
                   {_GradientControllerConfig'MinimumRTTCalculationParams'buffer = y__}))
        Prelude.id
instance Data.ProtoLens.Message GradientControllerConfig'MinimumRTTCalculationParams where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.adaptive_concurrency.v3.GradientControllerConfig.MinimumRTTCalculationParams"
  packedMessageDescriptor _
    = "\n\
      \\ESCMinimumRTTCalculationParams\DC2E\n\
      \\binterval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\bintervalB\SO\250B\v\170\SOH\b\b\SOH2\EOT\DLE\192\132=\DC2J\n\
      \\rrequest_count\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\frequestCountB\a\250B\EOT*\STX \NUL\DC2.\n\
      \\ACKjitter\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentR\ACKjitter\DC2N\n\
      \\SImin_concurrency\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOminConcurrencyB\a\250B\EOT*\STX \NUL\DC2.\n\
      \\ACKbuffer\CAN\ENQ \SOH(\v2\SYN.envoy.type.v3.PercentR\ACKbuffer:q\154\197\136\RSl\n\
      \jenvoy.config.filter.http.adaptive_concurrency.v2alpha.GradientControllerConfig.MinimumRTTCalculationParams"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        interval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'interval")) ::
              Data.ProtoLens.FieldDescriptor GradientControllerConfig'MinimumRTTCalculationParams
        requestCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_count"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestCount")) ::
              Data.ProtoLens.FieldDescriptor GradientControllerConfig'MinimumRTTCalculationParams
        jitter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "jitter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jitter")) ::
              Data.ProtoLens.FieldDescriptor GradientControllerConfig'MinimumRTTCalculationParams
        minConcurrency__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_concurrency"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minConcurrency")) ::
              Data.ProtoLens.FieldDescriptor GradientControllerConfig'MinimumRTTCalculationParams
        buffer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'buffer")) ::
              Data.ProtoLens.FieldDescriptor GradientControllerConfig'MinimumRTTCalculationParams
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, interval__field_descriptor),
           (Data.ProtoLens.Tag 2, requestCount__field_descriptor),
           (Data.ProtoLens.Tag 3, jitter__field_descriptor),
           (Data.ProtoLens.Tag 4, minConcurrency__field_descriptor),
           (Data.ProtoLens.Tag 5, buffer__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GradientControllerConfig'MinimumRTTCalculationParams'_unknownFields
        (\ x__ y__
           -> x__
                {_GradientControllerConfig'MinimumRTTCalculationParams'_unknownFields = y__})
  defMessage
    = GradientControllerConfig'MinimumRTTCalculationParams'_constructor
        {_GradientControllerConfig'MinimumRTTCalculationParams'interval = Prelude.Nothing,
         _GradientControllerConfig'MinimumRTTCalculationParams'requestCount = Prelude.Nothing,
         _GradientControllerConfig'MinimumRTTCalculationParams'jitter = Prelude.Nothing,
         _GradientControllerConfig'MinimumRTTCalculationParams'minConcurrency = Prelude.Nothing,
         _GradientControllerConfig'MinimumRTTCalculationParams'buffer = Prelude.Nothing,
         _GradientControllerConfig'MinimumRTTCalculationParams'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GradientControllerConfig'MinimumRTTCalculationParams
          -> Data.ProtoLens.Encoding.Bytes.Parser GradientControllerConfig'MinimumRTTCalculationParams
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
                                       "interval"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"interval") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestCount") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "jitter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"jitter") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "min_concurrency"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minConcurrency") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "buffer"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"buffer") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MinimumRTTCalculationParams"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'interval") _x
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
                       (Data.ProtoLens.Field.field @"maybe'requestCount") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'jitter") _x
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
                             (Data.ProtoLens.Field.field @"maybe'minConcurrency") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'buffer") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData GradientControllerConfig'MinimumRTTCalculationParams where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GradientControllerConfig'MinimumRTTCalculationParams'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_GradientControllerConfig'MinimumRTTCalculationParams'interval
                   x__)
                (Control.DeepSeq.deepseq
                   (_GradientControllerConfig'MinimumRTTCalculationParams'requestCount
                      x__)
                   (Control.DeepSeq.deepseq
                      (_GradientControllerConfig'MinimumRTTCalculationParams'jitter x__)
                      (Control.DeepSeq.deepseq
                         (_GradientControllerConfig'MinimumRTTCalculationParams'minConcurrency
                            x__)
                         (Control.DeepSeq.deepseq
                            (_GradientControllerConfig'MinimumRTTCalculationParams'buffer x__)
                            ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Penvoy/extensions/filters/http/adaptive_concurrency/v3/adaptive_concurrency.proto\DC25envoy.extensions.filters.http.adaptive_concurrency.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\223\n\
    \\n\
    \\CANGradientControllerConfig\DC2V\n\
    \\ESCsample_aggregate_percentile\CAN\SOH \SOH(\v2\SYN.envoy.type.v3.PercentR\EMsampleAggregatePercentile\DC2\181\SOH\n\
    \\CANconcurrency_limit_params\CAN\STX \SOH(\v2q.envoy.extensions.filters.http.adaptive_concurrency.v3.GradientControllerConfig.ConcurrencyLimitCalculationParamsR\SYNconcurrencyLimitParamsB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\164\SOH\n\
    \\DC3min_rtt_calc_params\CAN\ETX \SOH(\v2k.envoy.extensions.filters.http.adaptive_concurrency.v3.GradientControllerConfig.MinimumRTTCalculationParamsR\DLEminRttCalcParamsB\b\250B\ENQ\138\SOH\STX\DLE\SOH\SUB\222\STX\n\
    \!ConcurrencyLimitCalculationParams\DC2Y\n\
    \\NAKmax_concurrency_limit\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC3maxConcurrencyLimitB\a\250B\EOT*\STX \NUL\DC2e\n\
    \\ESCconcurrency_update_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\EMconcurrencyUpdateIntervalB\n\
    \\250B\a\170\SOH\EOT\b\SOH*\NUL:w\154\197\136\RSr\n\
    \penvoy.config.filter.http.adaptive_concurrency.v2alpha.GradientControllerConfig.ConcurrencyLimitCalculationParams\SUB\211\ETX\n\
    \\ESCMinimumRTTCalculationParams\DC2E\n\
    \\binterval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\bintervalB\SO\250B\v\170\SOH\b\b\SOH2\EOT\DLE\192\132=\DC2J\n\
    \\rrequest_count\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\frequestCountB\a\250B\EOT*\STX \NUL\DC2.\n\
    \\ACKjitter\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentR\ACKjitter\DC2N\n\
    \\SImin_concurrency\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOminConcurrencyB\a\250B\EOT*\STX \NUL\DC2.\n\
    \\ACKbuffer\CAN\ENQ \SOH(\v2\SYN.envoy.type.v3.PercentR\ACKbuffer:q\154\197\136\RSl\n\
    \jenvoy.config.filter.http.adaptive_concurrency.v2alpha.GradientControllerConfig.MinimumRTTCalculationParams:U\154\197\136\RSP\n\
    \Nenvoy.config.filter.http.adaptive_concurrency.v2alpha.GradientControllerConfig\"\237\STX\n\
    \\DC3AdaptiveConcurrency\DC2\153\SOH\n\
    \\SUBgradient_controller_config\CAN\SOH \SOH(\v2O.envoy.extensions.filters.http.adaptive_concurrency.v3.GradientControllerConfigH\NULR\CANgradientControllerConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2B\n\
    \\aenabled\CAN\STX \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabledB$\n\
    \\GSconcurrency_controller_config\DC2\ETX\248B\SOH:P\154\197\136\RSK\n\
    \Ienvoy.config.filter.http.adaptive_concurrency.v2alpha.AdaptiveConcurrencyBi\n\
    \Cio.envoyproxy.envoy.extensions.filters.http.adaptive_concurrency.v3B\CANAdaptiveConcurrencyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\178\EM\n\
    \\ACK\DC2\EOT\NUL\NULj\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL>\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL%\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\\\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NUL\\\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL9\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL9\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\143\STX\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NULY\SOH\SUB7 Configuration parameters for the gradient controller.\n\
    \2\201\SOH [#protodoc-title: Adaptive Concurrency]\n\
    \ Adaptive Concurrency Control :ref:`configuration overview\n\
    \ <config_http_filters_adaptive_concurrency>`.\n\
    \ [#extension: envoy.filters.http.adaptive_concurrency]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b \n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SUB\STX\ESCW\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SUB\STX\ESCW\n\
    \{\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\US\STX,\ETX\SUBm Parameters controlling the periodic recalculation of the concurrency limit from sampled request\n\
    \ latencies.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\US\n\
    \+\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT \EOT\",\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT \EOT\",\n\
    \_\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX%\EOT^\SUBP The allowed upper-bound on the calculated concurrency limit. Defaults to 1000.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX%\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX% 5\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX%89\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX%:]\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\ENQ\DC2\ETX%;\\\n\
    \\\\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\EOT(\EOT+\a\SUBL The period of time samples are taken to recalculate the concurrency limit.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX(\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX(\GS8\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX(;<\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\b\DC2\EOT(=+\ACK\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\SOH\b\175\b\NAK\DC2\EOT(>+\ENQ\n\
    \`\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT0\STXP\ETX\SUBR Parameters controlling the periodic minRTT recalculation.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX0\n\
    \%\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\a\DC2\EOT1\EOT3&\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOT1\EOT3&\n\
    \s\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\EOT7\EOT:\a\SUBc The time interval between recalculating the minimum request round-trip time. Has to be\n\
    \ positive.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETX7\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX7\GS%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX7()\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\b\DC2\EOT7*:\ACK\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\NUL\b\175\b\NAK\DC2\EOT7+:\ENQ\n\
    \\132\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX>\EOTV\SUBu The number of requests to aggregate/sample during the minRTT recalculation window before\n\
    \ updating. Defaults to 50.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ACK\DC2\ETX>\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX> -\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX>01\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\b\DC2\ETX>2U\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\SOH\b\175\b\ENQ\DC2\ETX>3T\n\
    \\185\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\ETXE\EOT\US\SUB\169\STX Randomized time delta that will be introduced to the start of the minRTT calculation window.\n\
    \ This is represented as a percentage of the interval duration. Defaults to 15%.\n\
    \\n\
    \ Example: If the interval is 10s and the jitter is 15%, the next window will begin\n\
    \ somewhere in the range (10s - 11.5s).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ACK\DC2\ETXE\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\ETXE\DC4\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\ETXE\GS\RS\n\
    \U\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ETX\DC2\ETXH\EOTX\SUBF The concurrency limit set while measuring the minRTT. Defaults to 3.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ACK\DC2\ETXH\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\SOH\DC2\ETXH /\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ETX\DC2\ETXH23\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\b\DC2\ETXH4W\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\ETX\b\175\b\ENQ\DC2\ETXH5V\n\
    \\166\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\EOT\DC2\ETXO\EOT\US\SUB\150\STX Amount added to the measured minRTT to add stability to the concurrency limit during natural\n\
    \ variability in latency. This is expressed as a percentage of the measured value and can be\n\
    \ adjusted to allow more or less tolerance to the sampled latency values.\n\
    \\n\
    \ Defaults to 25%.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ACK\DC2\ETXO\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\SOH\DC2\ETXO\DC4\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ETX\DC2\ETXO\GS\RS\n\
    \Z\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXS\STX2\SUBM The percentile to use when summarizing aggregated samples. Defaults to p50.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXS\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXS\DC2-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXS01\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOTU\STXV4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXU\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXU$<\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXU?@\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETXV\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\ETXV\a2\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXX\STXd\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXX\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXX\RS1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXX45\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETXX6c\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DC1\DC2\ETXX7b\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT[\NULj\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX[\b\ESC\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT\\\STX]R\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT\\\STX]R\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT_\STXe\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX_\b%\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETX`\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETX`\EOT&\n\
    \:\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOTc\EOTd6\SUB, Gradient concurrency control will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXc\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXc\GS7\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXc:;\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXd\b5\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC1\DC2\ETXd\t4\n\
    \\163\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXi\STX0\SUB\149\SOH If set to false, the adaptive concurrency filter will operate as a pass-through filter. If the\n\
    \ message is unspecified, the filter will be enabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXi\STX#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXi$+\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXi./b\ACKproto3"