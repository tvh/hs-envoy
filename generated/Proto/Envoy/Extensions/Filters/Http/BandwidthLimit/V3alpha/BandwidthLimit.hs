{- This file was auto-generated from envoy/extensions/filters/http/bandwidth_limit/v3alpha/bandwidth_limit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.BandwidthLimit.V3alpha.BandwidthLimit (
        BandwidthLimit(), BandwidthLimit'EnableMode(..),
        BandwidthLimit'EnableMode(),
        BandwidthLimit'EnableMode'UnrecognizedValue
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.BandwidthLimit.V3alpha.BandwidthLimit_Fields.statPrefix' @:: Lens' BandwidthLimit Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.BandwidthLimit.V3alpha.BandwidthLimit_Fields.enableMode' @:: Lens' BandwidthLimit BandwidthLimit'EnableMode@
         * 'Proto.Envoy.Extensions.Filters.Http.BandwidthLimit.V3alpha.BandwidthLimit_Fields.limitKbps' @:: Lens' BandwidthLimit Proto.Google.Protobuf.Wrappers.UInt64Value@
         * 'Proto.Envoy.Extensions.Filters.Http.BandwidthLimit.V3alpha.BandwidthLimit_Fields.maybe'limitKbps' @:: Lens' BandwidthLimit (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value)@
         * 'Proto.Envoy.Extensions.Filters.Http.BandwidthLimit.V3alpha.BandwidthLimit_Fields.fillInterval' @:: Lens' BandwidthLimit Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.BandwidthLimit.V3alpha.BandwidthLimit_Fields.maybe'fillInterval' @:: Lens' BandwidthLimit (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Http.BandwidthLimit.V3alpha.BandwidthLimit_Fields.runtimeEnabled' @:: Lens' BandwidthLimit Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag@
         * 'Proto.Envoy.Extensions.Filters.Http.BandwidthLimit.V3alpha.BandwidthLimit_Fields.maybe'runtimeEnabled' @:: Lens' BandwidthLimit (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)@ -}
data BandwidthLimit
  = BandwidthLimit'_constructor {_BandwidthLimit'statPrefix :: !Data.Text.Text,
                                 _BandwidthLimit'enableMode :: !BandwidthLimit'EnableMode,
                                 _BandwidthLimit'limitKbps :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value),
                                 _BandwidthLimit'fillInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                 _BandwidthLimit'runtimeEnabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag),
                                 _BandwidthLimit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BandwidthLimit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BandwidthLimit "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BandwidthLimit'statPrefix
           (\ x__ y__ -> x__ {_BandwidthLimit'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BandwidthLimit "enableMode" BandwidthLimit'EnableMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BandwidthLimit'enableMode
           (\ x__ y__ -> x__ {_BandwidthLimit'enableMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BandwidthLimit "limitKbps" Proto.Google.Protobuf.Wrappers.UInt64Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BandwidthLimit'limitKbps
           (\ x__ y__ -> x__ {_BandwidthLimit'limitKbps = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BandwidthLimit "maybe'limitKbps" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt64Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BandwidthLimit'limitKbps
           (\ x__ y__ -> x__ {_BandwidthLimit'limitKbps = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BandwidthLimit "fillInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BandwidthLimit'fillInterval
           (\ x__ y__ -> x__ {_BandwidthLimit'fillInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BandwidthLimit "maybe'fillInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BandwidthLimit'fillInterval
           (\ x__ y__ -> x__ {_BandwidthLimit'fillInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BandwidthLimit "runtimeEnabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BandwidthLimit'runtimeEnabled
           (\ x__ y__ -> x__ {_BandwidthLimit'runtimeEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField BandwidthLimit "maybe'runtimeEnabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BandwidthLimit'runtimeEnabled
           (\ x__ y__ -> x__ {_BandwidthLimit'runtimeEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message BandwidthLimit where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.bandwidth_limit.v3alpha.BandwidthLimit"
  packedMessageDescriptor _
    = "\n\
      \\SOBandwidthLimit\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2{\n\
      \\venable_mode\CAN\STX \SOH(\SO2P.envoy.extensions.filters.http.bandwidth_limit.v3alpha.BandwidthLimit.EnableModeR\n\
      \enableModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2D\n\
      \\n\
      \limit_kbps\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt64ValueR\tlimitKbpsB\a\250B\EOT2\STX(\SOH\DC2Q\n\
      \\rfill_interval\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\ffillIntervalB\DC1\250B\SO\170\SOH\v\"\STX\b\SOH2\ENQ\DLE\128\218\196\t\DC2Q\n\
      \\SIruntime_enabled\CAN\ENQ \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\SOruntimeEnabled\"O\n\
      \\n\
      \EnableMode\DC2\f\n\
      \\bDISABLED\DLE\NUL\DC2\v\n\
      \\aREQUEST\DLE\SOH\DC2\f\n\
      \\bRESPONSE\DLE\STX\DC2\CAN\n\
      \\DC4REQUEST_AND_RESPONSE\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor BandwidthLimit
        enableMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor BandwidthLimit'EnableMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableMode")) ::
              Data.ProtoLens.FieldDescriptor BandwidthLimit
        limitKbps__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limit_kbps"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt64Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'limitKbps")) ::
              Data.ProtoLens.FieldDescriptor BandwidthLimit
        fillInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fill_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fillInterval")) ::
              Data.ProtoLens.FieldDescriptor BandwidthLimit
        runtimeEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'runtimeEnabled")) ::
              Data.ProtoLens.FieldDescriptor BandwidthLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, enableMode__field_descriptor),
           (Data.ProtoLens.Tag 3, limitKbps__field_descriptor),
           (Data.ProtoLens.Tag 4, fillInterval__field_descriptor),
           (Data.ProtoLens.Tag 5, runtimeEnabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BandwidthLimit'_unknownFields
        (\ x__ y__ -> x__ {_BandwidthLimit'_unknownFields = y__})
  defMessage
    = BandwidthLimit'_constructor
        {_BandwidthLimit'statPrefix = Data.ProtoLens.fieldDefault,
         _BandwidthLimit'enableMode = Data.ProtoLens.fieldDefault,
         _BandwidthLimit'limitKbps = Prelude.Nothing,
         _BandwidthLimit'fillInterval = Prelude.Nothing,
         _BandwidthLimit'runtimeEnabled = Prelude.Nothing,
         _BandwidthLimit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BandwidthLimit
          -> Data.ProtoLens.Encoding.Bytes.Parser BandwidthLimit
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "enable_mode"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"enableMode") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "limit_kbps"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"limitKbps") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fill_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fillInterval") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "runtime_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"runtimeEnabled") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BandwidthLimit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"enableMode") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'limitKbps") _x
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
                             (Data.ProtoLens.Field.field @"maybe'fillInterval") _x
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
                                (Data.ProtoLens.Field.field @"maybe'runtimeEnabled") _x
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
instance Control.DeepSeq.NFData BandwidthLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BandwidthLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BandwidthLimit'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_BandwidthLimit'enableMode x__)
                   (Control.DeepSeq.deepseq
                      (_BandwidthLimit'limitKbps x__)
                      (Control.DeepSeq.deepseq
                         (_BandwidthLimit'fillInterval x__)
                         (Control.DeepSeq.deepseq
                            (_BandwidthLimit'runtimeEnabled x__) ())))))
newtype BandwidthLimit'EnableMode'UnrecognizedValue
  = BandwidthLimit'EnableMode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data BandwidthLimit'EnableMode
  = BandwidthLimit'DISABLED |
    BandwidthLimit'REQUEST |
    BandwidthLimit'RESPONSE |
    BandwidthLimit'REQUEST_AND_RESPONSE |
    BandwidthLimit'EnableMode'Unrecognized !BandwidthLimit'EnableMode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum BandwidthLimit'EnableMode where
  maybeToEnum 0 = Prelude.Just BandwidthLimit'DISABLED
  maybeToEnum 1 = Prelude.Just BandwidthLimit'REQUEST
  maybeToEnum 2 = Prelude.Just BandwidthLimit'RESPONSE
  maybeToEnum 3 = Prelude.Just BandwidthLimit'REQUEST_AND_RESPONSE
  maybeToEnum k
    = Prelude.Just
        (BandwidthLimit'EnableMode'Unrecognized
           (BandwidthLimit'EnableMode'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum BandwidthLimit'DISABLED = "DISABLED"
  showEnum BandwidthLimit'REQUEST = "REQUEST"
  showEnum BandwidthLimit'RESPONSE = "RESPONSE"
  showEnum BandwidthLimit'REQUEST_AND_RESPONSE
    = "REQUEST_AND_RESPONSE"
  showEnum
    (BandwidthLimit'EnableMode'Unrecognized (BandwidthLimit'EnableMode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DISABLED" = Prelude.Just BandwidthLimit'DISABLED
    | (Prelude.==) k "REQUEST" = Prelude.Just BandwidthLimit'REQUEST
    | (Prelude.==) k "RESPONSE" = Prelude.Just BandwidthLimit'RESPONSE
    | (Prelude.==) k "REQUEST_AND_RESPONSE"
    = Prelude.Just BandwidthLimit'REQUEST_AND_RESPONSE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded BandwidthLimit'EnableMode where
  minBound = BandwidthLimit'DISABLED
  maxBound = BandwidthLimit'REQUEST_AND_RESPONSE
instance Prelude.Enum BandwidthLimit'EnableMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum EnableMode: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum BandwidthLimit'DISABLED = 0
  fromEnum BandwidthLimit'REQUEST = 1
  fromEnum BandwidthLimit'RESPONSE = 2
  fromEnum BandwidthLimit'REQUEST_AND_RESPONSE = 3
  fromEnum
    (BandwidthLimit'EnableMode'Unrecognized (BandwidthLimit'EnableMode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ BandwidthLimit'REQUEST_AND_RESPONSE
    = Prelude.error
        "BandwidthLimit'EnableMode.succ: bad argument BandwidthLimit'REQUEST_AND_RESPONSE. This value would be out of bounds."
  succ BandwidthLimit'DISABLED = BandwidthLimit'REQUEST
  succ BandwidthLimit'REQUEST = BandwidthLimit'RESPONSE
  succ BandwidthLimit'RESPONSE = BandwidthLimit'REQUEST_AND_RESPONSE
  succ (BandwidthLimit'EnableMode'Unrecognized _)
    = Prelude.error
        "BandwidthLimit'EnableMode.succ: bad argument: unrecognized value"
  pred BandwidthLimit'DISABLED
    = Prelude.error
        "BandwidthLimit'EnableMode.pred: bad argument BandwidthLimit'DISABLED. This value would be out of bounds."
  pred BandwidthLimit'REQUEST = BandwidthLimit'DISABLED
  pred BandwidthLimit'RESPONSE = BandwidthLimit'REQUEST
  pred BandwidthLimit'REQUEST_AND_RESPONSE = BandwidthLimit'RESPONSE
  pred (BandwidthLimit'EnableMode'Unrecognized _)
    = Prelude.error
        "BandwidthLimit'EnableMode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault BandwidthLimit'EnableMode where
  fieldDefault = BandwidthLimit'DISABLED
instance Control.DeepSeq.NFData BandwidthLimit'EnableMode where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Kenvoy/extensions/filters/http/bandwidth_limit/v3alpha/bandwidth_limit.proto\DC25envoy.extensions.filters.http.bandwidth_limit.v3alpha\SUB\USenvoy/config/core/v3/base.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\244\ETX\n\
    \\SOBandwidthLimit\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2{\n\
    \\venable_mode\CAN\STX \SOH(\SO2P.envoy.extensions.filters.http.bandwidth_limit.v3alpha.BandwidthLimit.EnableModeR\n\
    \enableModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2D\n\
    \\n\
    \limit_kbps\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt64ValueR\tlimitKbpsB\a\250B\EOT2\STX(\SOH\DC2Q\n\
    \\rfill_interval\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\ffillIntervalB\DC1\250B\SO\170\SOH\v\"\STX\b\SOH2\ENQ\DLE\128\218\196\t\DC2Q\n\
    \\SIruntime_enabled\CAN\ENQ \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\SOruntimeEnabled\"O\n\
    \\n\
    \EnableMode\DC2\f\n\
    \\bDISABLED\DLE\NUL\DC2\v\n\
    \\aREQUEST\DLE\SOH\DC2\f\n\
    \\bRESPONSE\DLE\STX\DC2\CAN\n\
    \\DC4REQUEST_AND_RESPONSE\DLE\ETXBl\n\
    \Cio.envoyproxy.envoy.extensions.filters.http.bandwidth_limit.v3alphaB\DC3BandwidthLimitProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\141\DLE\n\
    \\ACK\DC2\EOT\NUL\NULE\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL>\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\\\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL\\\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL4\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL4\n\
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
    \\210\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NULE\SOH\SUB\ETB [#next-free-field: 6]\n\
    \2\172\SOH [#protodoc-title: Bandwidth limit]\n\
    \ Bandwidth limit :ref:`configuration overview <config_http_filters_bandwidth_limit>`.\n\
    \ [#extension: envoy.filters.http.bandwidth_limit]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\SYN\n\
    \[\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\SUB\STX&\ETX\SUBM Defines the mode for the bandwidth limit filter.\n\
    \ Values represent bitmask.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\SUB\a\DC1\n\
    \$\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\FS\EOT\DC1\SUB\NAK Filter is disabled.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\FS\SI\DLE\n\
    \:\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\US\EOT\DLE\SUB+ Filter enabled only for incoming traffic.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\US\SO\SI\n\
    \:\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX\"\EOT\DC1\SUB+ Filter enabled only for outgoing traffic.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\"\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\"\SI\DLE\n\
    \G\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX%\EOT\GS\SUB8 Filter enabled for both incoming and outgoing traffic.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX%\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX%\ESC\FS\n\
    \D\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX)\STXB\SUB7 The human readable prefix to use when emitting stats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX)\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX)\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX)\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX)\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX)\SUB@\n\
    \T\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX-\STXL\SUBG The enable mode for the bandwidth limit filter.\n\
    \ Default is Disabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX-\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX-\r\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX-\ESC\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX-\GSK\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETX-\RSJ\n\
    \\144\ETX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX9\STXR\SUB\130\ETX The limit supplied in KiB/s.\n\
    \\n\
    \ .. note::\n\
    \   It's fine for the limit to be unset for the global configuration since the bandwidth limit\n\
    \   can be applied at a the virtual host or route level. Thus, the limit must be set for the\n\
    \   per route configuration otherwise the config will be rejected.\n\
    \\n\
    \ .. note::\n\
    \   When using per route configuration, the limit becomes unique to that route.\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX9\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX9\RS(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX9+,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX9-Q\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\ACK\DC2\ETX9.P\n\
    \\155\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT=\STX@\ENQ\SUB\140\SOH Optional Fill interval in milliseconds for the token refills. Defaults to 50ms.\n\
    \ It must be at least 20ms to avoid too aggressive refills.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX=\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX=\ESC(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX=+,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\EOT=-@\EOT\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\NAK\DC2\EOT=.@\ETX\n\
    \w\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXD\STX8\SUBj Runtime flag that controls whether the filter is enabled or not. If not specified, defaults\n\
    \ to enabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXD\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXD$3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXD67b\ACKproto3"