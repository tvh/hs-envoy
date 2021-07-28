{- This file was auto-generated from envoy/extensions/filters/common/fault/v3/fault.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault (
        FaultDelay(), FaultDelay'FaultDelaySecifier(..),
        _FaultDelay'FixedDelay, _FaultDelay'HeaderDelay',
        FaultDelay'FaultDelayType(..), FaultDelay'FaultDelayType(),
        FaultDelay'FaultDelayType'UnrecognizedValue,
        FaultDelay'HeaderDelay(), FaultRateLimit(),
        FaultRateLimit'LimitType(..), _FaultRateLimit'FixedLimit',
        _FaultRateLimit'HeaderLimit', FaultRateLimit'FixedLimit(),
        FaultRateLimit'HeaderLimit()
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
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.percentage' @:: Lens' FaultDelay Proto.Envoy.Type.V3.Percent.FractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.maybe'percentage' @:: Lens' FaultDelay (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.maybe'faultDelaySecifier' @:: Lens' FaultDelay (Prelude.Maybe FaultDelay'FaultDelaySecifier)@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.maybe'fixedDelay' @:: Lens' FaultDelay (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.fixedDelay' @:: Lens' FaultDelay Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.maybe'headerDelay' @:: Lens' FaultDelay (Prelude.Maybe FaultDelay'HeaderDelay)@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.headerDelay' @:: Lens' FaultDelay FaultDelay'HeaderDelay@ -}
data FaultDelay
  = FaultDelay'_constructor {_FaultDelay'percentage :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent),
                             _FaultDelay'faultDelaySecifier :: !(Prelude.Maybe FaultDelay'FaultDelaySecifier),
                             _FaultDelay'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FaultDelay where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data FaultDelay'FaultDelaySecifier
  = FaultDelay'FixedDelay !Proto.Google.Protobuf.Duration.Duration |
    FaultDelay'HeaderDelay' !FaultDelay'HeaderDelay
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField FaultDelay "percentage" Proto.Envoy.Type.V3.Percent.FractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultDelay'percentage
           (\ x__ y__ -> x__ {_FaultDelay'percentage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FaultDelay "maybe'percentage" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultDelay'percentage
           (\ x__ y__ -> x__ {_FaultDelay'percentage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FaultDelay "maybe'faultDelaySecifier" (Prelude.Maybe FaultDelay'FaultDelaySecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultDelay'faultDelaySecifier
           (\ x__ y__ -> x__ {_FaultDelay'faultDelaySecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FaultDelay "maybe'fixedDelay" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultDelay'faultDelaySecifier
           (\ x__ y__ -> x__ {_FaultDelay'faultDelaySecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FaultDelay'FixedDelay x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FaultDelay'FixedDelay y__))
instance Data.ProtoLens.Field.HasField FaultDelay "fixedDelay" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultDelay'faultDelaySecifier
           (\ x__ y__ -> x__ {_FaultDelay'faultDelaySecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FaultDelay'FixedDelay x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FaultDelay'FixedDelay y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FaultDelay "maybe'headerDelay" (Prelude.Maybe FaultDelay'HeaderDelay) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultDelay'faultDelaySecifier
           (\ x__ y__ -> x__ {_FaultDelay'faultDelaySecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FaultDelay'HeaderDelay' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FaultDelay'HeaderDelay' y__))
instance Data.ProtoLens.Field.HasField FaultDelay "headerDelay" FaultDelay'HeaderDelay where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultDelay'faultDelaySecifier
           (\ x__ y__ -> x__ {_FaultDelay'faultDelaySecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FaultDelay'HeaderDelay' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FaultDelay'HeaderDelay' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message FaultDelay where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.common.fault.v3.FaultDelay"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \FaultDelay\DC2F\n\
      \\vfixed_delay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationH\NULR\n\
      \fixedDelayB\b\250B\ENQ\170\SOH\STX*\NUL\DC2e\n\
      \\fheader_delay\CAN\ENQ \SOH(\v2@.envoy.extensions.filters.common.fault.v3.FaultDelay.HeaderDelayH\NULR\vheaderDelay\DC2@\n\
      \\n\
      \percentage\CAN\EOT \SOH(\v2 .envoy.type.v3.FractionalPercentR\n\
      \percentage\SUBI\n\
      \\vHeaderDelay::\154\197\136\RS5\n\
      \3envoy.config.filter.fault.v2.FaultDelay.HeaderDelay\"\ESC\n\
      \\SOFaultDelayType\DC2\t\n\
      \\ENQFIXED\DLE\NULB\ESC\n\
      \\DC4fault_delay_secifier\DC2\ETX\248B\SOH:.\154\197\136\RS)\n\
      \'envoy.config.filter.fault.v2.FaultDelayJ\EOT\b\STX\DLE\ETXJ\EOT\b\SOH\DLE\STXR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        percentage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "percentage"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.FractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'percentage")) ::
              Data.ProtoLens.FieldDescriptor FaultDelay
        fixedDelay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fixed_delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fixedDelay")) ::
              Data.ProtoLens.FieldDescriptor FaultDelay
        headerDelay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FaultDelay'HeaderDelay)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'headerDelay")) ::
              Data.ProtoLens.FieldDescriptor FaultDelay
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 4, percentage__field_descriptor),
           (Data.ProtoLens.Tag 3, fixedDelay__field_descriptor),
           (Data.ProtoLens.Tag 5, headerDelay__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FaultDelay'_unknownFields
        (\ x__ y__ -> x__ {_FaultDelay'_unknownFields = y__})
  defMessage
    = FaultDelay'_constructor
        {_FaultDelay'percentage = Prelude.Nothing,
         _FaultDelay'faultDelaySecifier = Prelude.Nothing,
         _FaultDelay'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FaultDelay -> Data.ProtoLens.Encoding.Bytes.Parser FaultDelay
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
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "percentage"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"percentage") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fixed_delay"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fixedDelay") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header_delay"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"headerDelay") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FaultDelay"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'percentage") _x
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
                       (Data.ProtoLens.Field.field @"maybe'faultDelaySecifier") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (FaultDelay'FixedDelay v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FaultDelay'HeaderDelay' v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
instance Control.DeepSeq.NFData FaultDelay where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FaultDelay'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FaultDelay'percentage x__)
                (Control.DeepSeq.deepseq (_FaultDelay'faultDelaySecifier x__) ()))
instance Control.DeepSeq.NFData FaultDelay'FaultDelaySecifier where
  rnf (FaultDelay'FixedDelay x__) = Control.DeepSeq.rnf x__
  rnf (FaultDelay'HeaderDelay' x__) = Control.DeepSeq.rnf x__
_FaultDelay'FixedDelay ::
  Data.ProtoLens.Prism.Prism' FaultDelay'FaultDelaySecifier Proto.Google.Protobuf.Duration.Duration
_FaultDelay'FixedDelay
  = Data.ProtoLens.Prism.prism'
      FaultDelay'FixedDelay
      (\ p__
         -> case p__ of
              (FaultDelay'FixedDelay p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FaultDelay'HeaderDelay' ::
  Data.ProtoLens.Prism.Prism' FaultDelay'FaultDelaySecifier FaultDelay'HeaderDelay
_FaultDelay'HeaderDelay'
  = Data.ProtoLens.Prism.prism'
      FaultDelay'HeaderDelay'
      (\ p__
         -> case p__ of
              (FaultDelay'HeaderDelay' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
newtype FaultDelay'FaultDelayType'UnrecognizedValue
  = FaultDelay'FaultDelayType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data FaultDelay'FaultDelayType
  = FaultDelay'FIXED |
    FaultDelay'FaultDelayType'Unrecognized !FaultDelay'FaultDelayType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum FaultDelay'FaultDelayType where
  maybeToEnum 0 = Prelude.Just FaultDelay'FIXED
  maybeToEnum k
    = Prelude.Just
        (FaultDelay'FaultDelayType'Unrecognized
           (FaultDelay'FaultDelayType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum FaultDelay'FIXED = "FIXED"
  showEnum
    (FaultDelay'FaultDelayType'Unrecognized (FaultDelay'FaultDelayType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "FIXED" = Prelude.Just FaultDelay'FIXED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded FaultDelay'FaultDelayType where
  minBound = FaultDelay'FIXED
  maxBound = FaultDelay'FIXED
instance Prelude.Enum FaultDelay'FaultDelayType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum FaultDelayType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum FaultDelay'FIXED = 0
  fromEnum
    (FaultDelay'FaultDelayType'Unrecognized (FaultDelay'FaultDelayType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ FaultDelay'FIXED
    = Prelude.error
        "FaultDelay'FaultDelayType.succ: bad argument FaultDelay'FIXED. This value would be out of bounds."
  succ (FaultDelay'FaultDelayType'Unrecognized _)
    = Prelude.error
        "FaultDelay'FaultDelayType.succ: bad argument: unrecognized value"
  pred FaultDelay'FIXED
    = Prelude.error
        "FaultDelay'FaultDelayType.pred: bad argument FaultDelay'FIXED. This value would be out of bounds."
  pred (FaultDelay'FaultDelayType'Unrecognized _)
    = Prelude.error
        "FaultDelay'FaultDelayType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault FaultDelay'FaultDelayType where
  fieldDefault = FaultDelay'FIXED
instance Control.DeepSeq.NFData FaultDelay'FaultDelayType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
      -}
data FaultDelay'HeaderDelay
  = FaultDelay'HeaderDelay'_constructor {_FaultDelay'HeaderDelay'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FaultDelay'HeaderDelay where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message FaultDelay'HeaderDelay where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.common.fault.v3.FaultDelay.HeaderDelay"
  packedMessageDescriptor _
    = "\n\
      \\vHeaderDelay::\154\197\136\RS5\n\
      \3envoy.config.filter.fault.v2.FaultDelay.HeaderDelay"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FaultDelay'HeaderDelay'_unknownFields
        (\ x__ y__ -> x__ {_FaultDelay'HeaderDelay'_unknownFields = y__})
  defMessage
    = FaultDelay'HeaderDelay'_constructor
        {_FaultDelay'HeaderDelay'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FaultDelay'HeaderDelay
          -> Data.ProtoLens.Encoding.Bytes.Parser FaultDelay'HeaderDelay
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeaderDelay"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData FaultDelay'HeaderDelay where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FaultDelay'HeaderDelay'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.percentage' @:: Lens' FaultRateLimit Proto.Envoy.Type.V3.Percent.FractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.maybe'percentage' @:: Lens' FaultRateLimit (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.maybe'limitType' @:: Lens' FaultRateLimit (Prelude.Maybe FaultRateLimit'LimitType)@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.maybe'fixedLimit' @:: Lens' FaultRateLimit (Prelude.Maybe FaultRateLimit'FixedLimit)@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.fixedLimit' @:: Lens' FaultRateLimit FaultRateLimit'FixedLimit@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.maybe'headerLimit' @:: Lens' FaultRateLimit (Prelude.Maybe FaultRateLimit'HeaderLimit)@
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.headerLimit' @:: Lens' FaultRateLimit FaultRateLimit'HeaderLimit@ -}
data FaultRateLimit
  = FaultRateLimit'_constructor {_FaultRateLimit'percentage :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent),
                                 _FaultRateLimit'limitType :: !(Prelude.Maybe FaultRateLimit'LimitType),
                                 _FaultRateLimit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FaultRateLimit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data FaultRateLimit'LimitType
  = FaultRateLimit'FixedLimit' !FaultRateLimit'FixedLimit |
    FaultRateLimit'HeaderLimit' !FaultRateLimit'HeaderLimit
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField FaultRateLimit "percentage" Proto.Envoy.Type.V3.Percent.FractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultRateLimit'percentage
           (\ x__ y__ -> x__ {_FaultRateLimit'percentage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FaultRateLimit "maybe'percentage" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.FractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultRateLimit'percentage
           (\ x__ y__ -> x__ {_FaultRateLimit'percentage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FaultRateLimit "maybe'limitType" (Prelude.Maybe FaultRateLimit'LimitType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultRateLimit'limitType
           (\ x__ y__ -> x__ {_FaultRateLimit'limitType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FaultRateLimit "maybe'fixedLimit" (Prelude.Maybe FaultRateLimit'FixedLimit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultRateLimit'limitType
           (\ x__ y__ -> x__ {_FaultRateLimit'limitType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FaultRateLimit'FixedLimit' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FaultRateLimit'FixedLimit' y__))
instance Data.ProtoLens.Field.HasField FaultRateLimit "fixedLimit" FaultRateLimit'FixedLimit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultRateLimit'limitType
           (\ x__ y__ -> x__ {_FaultRateLimit'limitType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FaultRateLimit'FixedLimit' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FaultRateLimit'FixedLimit' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FaultRateLimit "maybe'headerLimit" (Prelude.Maybe FaultRateLimit'HeaderLimit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultRateLimit'limitType
           (\ x__ y__ -> x__ {_FaultRateLimit'limitType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FaultRateLimit'HeaderLimit' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FaultRateLimit'HeaderLimit' y__))
instance Data.ProtoLens.Field.HasField FaultRateLimit "headerLimit" FaultRateLimit'HeaderLimit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultRateLimit'limitType
           (\ x__ y__ -> x__ {_FaultRateLimit'limitType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FaultRateLimit'HeaderLimit' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FaultRateLimit'HeaderLimit' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message FaultRateLimit where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.common.fault.v3.FaultRateLimit"
  packedMessageDescriptor _
    = "\n\
      \\SOFaultRateLimit\DC2f\n\
      \\vfixed_limit\CAN\SOH \SOH(\v2C.envoy.extensions.filters.common.fault.v3.FaultRateLimit.FixedLimitH\NULR\n\
      \fixedLimit\DC2i\n\
      \\fheader_limit\CAN\ETX \SOH(\v2D.envoy.extensions.filters.common.fault.v3.FaultRateLimit.HeaderLimitH\NULR\vheaderLimit\DC2@\n\
      \\n\
      \percentage\CAN\STX \SOH(\v2 .envoy.type.v3.FractionalPercentR\n\
      \percentage\SUBs\n\
      \\n\
      \FixedLimit\DC2&\n\
      \\n\
      \limit_kbps\CAN\SOH \SOH(\EOTR\tlimitKbpsB\a\250B\EOT2\STX(\SOH:=\154\197\136\RS8\n\
      \6envoy.config.filter.fault.v2.FaultRateLimit.FixedLimit\SUBM\n\
      \\vHeaderLimit:>\154\197\136\RS9\n\
      \7envoy.config.filter.fault.v2.FaultRateLimit.HeaderLimitB\DC1\n\
      \\n\
      \limit_type\DC2\ETX\248B\SOH:2\154\197\136\RS-\n\
      \+envoy.config.filter.fault.v2.FaultRateLimit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        percentage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "percentage"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.FractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'percentage")) ::
              Data.ProtoLens.FieldDescriptor FaultRateLimit
        fixedLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fixed_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FaultRateLimit'FixedLimit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fixedLimit")) ::
              Data.ProtoLens.FieldDescriptor FaultRateLimit
        headerLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_limit"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FaultRateLimit'HeaderLimit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'headerLimit")) ::
              Data.ProtoLens.FieldDescriptor FaultRateLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, percentage__field_descriptor),
           (Data.ProtoLens.Tag 1, fixedLimit__field_descriptor),
           (Data.ProtoLens.Tag 3, headerLimit__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FaultRateLimit'_unknownFields
        (\ x__ y__ -> x__ {_FaultRateLimit'_unknownFields = y__})
  defMessage
    = FaultRateLimit'_constructor
        {_FaultRateLimit'percentage = Prelude.Nothing,
         _FaultRateLimit'limitType = Prelude.Nothing,
         _FaultRateLimit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FaultRateLimit
          -> Data.ProtoLens.Encoding.Bytes.Parser FaultRateLimit
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
                                       "percentage"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"percentage") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fixed_limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fixedLimit") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header_limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"headerLimit") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FaultRateLimit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'percentage") _x
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
                       (Data.ProtoLens.Field.field @"maybe'limitType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (FaultRateLimit'FixedLimit' v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (FaultRateLimit'HeaderLimit' v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
instance Control.DeepSeq.NFData FaultRateLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FaultRateLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FaultRateLimit'percentage x__)
                (Control.DeepSeq.deepseq (_FaultRateLimit'limitType x__) ()))
instance Control.DeepSeq.NFData FaultRateLimit'LimitType where
  rnf (FaultRateLimit'FixedLimit' x__) = Control.DeepSeq.rnf x__
  rnf (FaultRateLimit'HeaderLimit' x__) = Control.DeepSeq.rnf x__
_FaultRateLimit'FixedLimit' ::
  Data.ProtoLens.Prism.Prism' FaultRateLimit'LimitType FaultRateLimit'FixedLimit
_FaultRateLimit'FixedLimit'
  = Data.ProtoLens.Prism.prism'
      FaultRateLimit'FixedLimit'
      (\ p__
         -> case p__ of
              (FaultRateLimit'FixedLimit' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FaultRateLimit'HeaderLimit' ::
  Data.ProtoLens.Prism.Prism' FaultRateLimit'LimitType FaultRateLimit'HeaderLimit
_FaultRateLimit'HeaderLimit'
  = Data.ProtoLens.Prism.prism'
      FaultRateLimit'HeaderLimit'
      (\ p__
         -> case p__ of
              (FaultRateLimit'HeaderLimit' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Common.Fault.V3.Fault_Fields.limitKbps' @:: Lens' FaultRateLimit'FixedLimit Data.Word.Word64@ -}
data FaultRateLimit'FixedLimit
  = FaultRateLimit'FixedLimit'_constructor {_FaultRateLimit'FixedLimit'limitKbps :: !Data.Word.Word64,
                                            _FaultRateLimit'FixedLimit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FaultRateLimit'FixedLimit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FaultRateLimit'FixedLimit "limitKbps" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FaultRateLimit'FixedLimit'limitKbps
           (\ x__ y__ -> x__ {_FaultRateLimit'FixedLimit'limitKbps = y__}))
        Prelude.id
instance Data.ProtoLens.Message FaultRateLimit'FixedLimit where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.common.fault.v3.FaultRateLimit.FixedLimit"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \FixedLimit\DC2&\n\
      \\n\
      \limit_kbps\CAN\SOH \SOH(\EOTR\tlimitKbpsB\a\250B\EOT2\STX(\SOH:=\154\197\136\RS8\n\
      \6envoy.config.filter.fault.v2.FaultRateLimit.FixedLimit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        limitKbps__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "limit_kbps"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"limitKbps")) ::
              Data.ProtoLens.FieldDescriptor FaultRateLimit'FixedLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, limitKbps__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FaultRateLimit'FixedLimit'_unknownFields
        (\ x__ y__
           -> x__ {_FaultRateLimit'FixedLimit'_unknownFields = y__})
  defMessage
    = FaultRateLimit'FixedLimit'_constructor
        {_FaultRateLimit'FixedLimit'limitKbps = Data.ProtoLens.fieldDefault,
         _FaultRateLimit'FixedLimit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FaultRateLimit'FixedLimit
          -> Data.ProtoLens.Encoding.Bytes.Parser FaultRateLimit'FixedLimit
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "limit_kbps"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"limitKbps") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FixedLimit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"limitKbps") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FaultRateLimit'FixedLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FaultRateLimit'FixedLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FaultRateLimit'FixedLimit'limitKbps x__) ())
{- | Fields :
      -}
data FaultRateLimit'HeaderLimit
  = FaultRateLimit'HeaderLimit'_constructor {_FaultRateLimit'HeaderLimit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FaultRateLimit'HeaderLimit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message FaultRateLimit'HeaderLimit where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.common.fault.v3.FaultRateLimit.HeaderLimit"
  packedMessageDescriptor _
    = "\n\
      \\vHeaderLimit:>\154\197\136\RS9\n\
      \7envoy.config.filter.fault.v2.FaultRateLimit.HeaderLimit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FaultRateLimit'HeaderLimit'_unknownFields
        (\ x__ y__
           -> x__ {_FaultRateLimit'HeaderLimit'_unknownFields = y__})
  defMessage
    = FaultRateLimit'HeaderLimit'_constructor
        {_FaultRateLimit'HeaderLimit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FaultRateLimit'HeaderLimit
          -> Data.ProtoLens.Encoding.Bytes.Parser FaultRateLimit'HeaderLimit
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeaderLimit"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData FaultRateLimit'HeaderLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FaultRateLimit'HeaderLimit'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \4envoy/extensions/filters/common/fault/v3/fault.proto\DC2(envoy.extensions.filters.common.fault.v3\SUB\ESCenvoy/type/v3/percent.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\196\ETX\n\
    \\n\
    \FaultDelay\DC2F\n\
    \\vfixed_delay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationH\NULR\n\
    \fixedDelayB\b\250B\ENQ\170\SOH\STX*\NUL\DC2e\n\
    \\fheader_delay\CAN\ENQ \SOH(\v2@.envoy.extensions.filters.common.fault.v3.FaultDelay.HeaderDelayH\NULR\vheaderDelay\DC2@\n\
    \\n\
    \percentage\CAN\EOT \SOH(\v2 .envoy.type.v3.FractionalPercentR\n\
    \percentage\SUBI\n\
    \\vHeaderDelay::\154\197\136\RS5\n\
    \3envoy.config.filter.fault.v2.FaultDelay.HeaderDelay\"\ESC\n\
    \\SOFaultDelayType\DC2\t\n\
    \\ENQFIXED\DLE\NULB\ESC\n\
    \\DC4fault_delay_secifier\DC2\ETX\248B\SOH:.\154\197\136\RS)\n\
    \'envoy.config.filter.fault.v2.FaultDelayJ\EOT\b\STX\DLE\ETXJ\EOT\b\SOH\DLE\STXR\EOTtype\"\176\EOT\n\
    \\SOFaultRateLimit\DC2f\n\
    \\vfixed_limit\CAN\SOH \SOH(\v2C.envoy.extensions.filters.common.fault.v3.FaultRateLimit.FixedLimitH\NULR\n\
    \fixedLimit\DC2i\n\
    \\fheader_limit\CAN\ETX \SOH(\v2D.envoy.extensions.filters.common.fault.v3.FaultRateLimit.HeaderLimitH\NULR\vheaderLimit\DC2@\n\
    \\n\
    \percentage\CAN\STX \SOH(\v2 .envoy.type.v3.FractionalPercentR\n\
    \percentage\SUBs\n\
    \\n\
    \FixedLimit\DC2&\n\
    \\n\
    \limit_kbps\CAN\SOH \SOH(\EOTR\tlimitKbpsB\a\250B\EOT2\STX(\SOH:=\154\197\136\RS8\n\
    \6envoy.config.filter.fault.v2.FaultRateLimit.FixedLimit\SUBM\n\
    \\vHeaderLimit:>\154\197\136\RS9\n\
    \7envoy.config.filter.fault.v2.FaultRateLimit.HeaderLimitB\DC1\n\
    \\n\
    \limit_type\DC2\ETX\248B\SOH:2\154\197\136\RS-\n\
    \+envoy.config.filter.fault.v2.FaultRateLimitBN\n\
    \6io.envoyproxy.envoy.extensions.filters.common.fault.v3B\n\
    \FaultProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\148\NAK\n\
    \\ACK\DC2\EOT\NUL\NUL`\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL1\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL%\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULO\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULO\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\214\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NUL<\SOH\SUB\150\SOH Delay specification is used to inject latency into the\n\
    \ HTTP/gRPC/Mongo/Redis operation or delay proxying of TCP connections.\n\
    \ [#next-free-field: 6]\n\
    \21 [#protodoc-title: Common fault injection types]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\DC2\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\ETB\STX\CAN0\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ETB\STX\CAN0\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\SUB\STX\GS\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\SUB\a\NAK\n\
    \'\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\FS\EOT\SO\SUB\CAN Unused and deprecated.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\FS\f\r\n\
    \\201\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\"\STX%\ETX\SUB\186\SOH Fault delays are controlled via an HTTP header (if applicable). See the\n\
    \ :ref:`HTTP fault filter <config_http_filters_fault_injection_http_header>` documentation for\n\
    \ more information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\"\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT#\EOT$>\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT#\EOT$>\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX'\STX\DLE\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX'\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX'\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX'\v\f\n\
    \\v\n\
    \\EOT\EOT\NUL\t\SOH\DC2\ETX'\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\SOH\DC2\ETX'\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\STX\DC2\ETX'\SO\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\n\
    \\DC2\ETX)\STX\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETX)\v\DC1\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT+\STX8\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX+\b\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX,\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX,\EOT&\n\
    \\157\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX4\EOTS\SUB\143\ETX Add a fixed delay before forwarding the operation upstream. See\n\
    \ https://developers.google.com/protocol-buffers/docs/proto3#json for\n\
    \ the JSON/YAML Duration mapping. For HTTP/Mongo/Redis, the specified\n\
    \ delay will be injected before a new request/operation. For TCP\n\
    \ connections, the proxying of the connection upstream will be delayed\n\
    \ for the specified period. This is required if type is FIXED.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX4\EOT\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX4\GS(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX4+,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX4-R\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\NAK\DC2\ETX4.Q\n\
    \N\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX7\EOT!\SUBA Fault delays are controlled via an HTTP header (if applicable).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX7\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX7\DLE\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX7\US \n\
    \e\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX;\STX+\SUBX The percentage of operations/connections/requests on which the delay will be injected.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX;\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX;\FS&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX;)*\n\
    \3\n\
    \\STX\EOT\SOH\DC2\EOT?\NUL`\SOH\SUB' Describes a rate limit to be applied.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX?\b\SYN\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT@\STXA4\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT@\STXA4\n\
    \6\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOTD\STXJ\ETX\SUB( Describes a fixed/constant rate limit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETXD\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\a\DC2\EOTE\EOTFA\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTE\EOTFA\n\
    \-\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETXI\EOT?\SUB\RS The limit supplied in KiB/s.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ENQ\DC2\ETXI\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETXI\v\NAK\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETXI\CAN\EM\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\b\DC2\ETXI\SUB>\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\NUL\b\175\b\ACK\DC2\ETXI\ESC=\n\
    \\200\SOH\n\
    \\EOT\EOT\SOH\ETX\SOH\DC2\EOTO\STXR\ETX\SUB\185\SOH Rate limits are controlled via an HTTP header (if applicable). See the\n\
    \ :ref:`HTTP fault filter <config_http_filters_fault_injection_http_header>` documentation for\n\
    \ more information.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\SOH\SOH\DC2\ETXO\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\SOH\a\DC2\EOTP\EOTQB\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOTP\EOTQB\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOTT\STX\\\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETXT\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETXU\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETXU\EOT&\n\
    \\"\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXX\EOT\US\SUB\NAK A fixed rate limit.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXX\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXX\SI\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXX\GS\RS\n\
    \M\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX[\EOT!\SUB@ Rate limits are controlled via an HTTP header (if applicable).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX[\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX[\DLE\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX[\US \n\
    \j\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX_\STX+\SUB] The percentage of operations/connections/requests on which the rate limit will be injected.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX_\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX_\FS&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX_)*b\ACKproto3"