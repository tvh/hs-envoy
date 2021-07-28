{- This file was auto-generated from envoy/type/v3/percent.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.V3.Percent (
        FractionalPercent(), FractionalPercent'DenominatorType(..),
        FractionalPercent'DenominatorType(),
        FractionalPercent'DenominatorType'UnrecognizedValue, Percent()
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.V3.Percent_Fields.numerator' @:: Lens' FractionalPercent Data.Word.Word32@
         * 'Proto.Envoy.Type.V3.Percent_Fields.denominator' @:: Lens' FractionalPercent FractionalPercent'DenominatorType@ -}
data FractionalPercent
  = FractionalPercent'_constructor {_FractionalPercent'numerator :: !Data.Word.Word32,
                                    _FractionalPercent'denominator :: !FractionalPercent'DenominatorType,
                                    _FractionalPercent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FractionalPercent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FractionalPercent "numerator" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FractionalPercent'numerator
           (\ x__ y__ -> x__ {_FractionalPercent'numerator = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FractionalPercent "denominator" FractionalPercent'DenominatorType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FractionalPercent'denominator
           (\ x__ y__ -> x__ {_FractionalPercent'denominator = y__}))
        Prelude.id
instance Data.ProtoLens.Message FractionalPercent where
  messageName _ = Data.Text.pack "envoy.type.v3.FractionalPercent"
  packedMessageDescriptor _
    = "\n\
      \\DC1FractionalPercent\DC2\FS\n\
      \\tnumerator\CAN\SOH \SOH(\rR\tnumerator\DC2\\\n\
      \\vdenominator\CAN\STX \SOH(\SO20.envoy.type.v3.FractionalPercent.DenominatorTypeR\vdenominatorB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"=\n\
      \\SIDenominatorType\DC2\v\n\
      \\aHUNDRED\DLE\NUL\DC2\DLE\n\
      \\fTEN_THOUSAND\DLE\SOH\DC2\v\n\
      \\aMILLION\DLE\STX:#\154\197\136\RS\RS\n\
      \\FSenvoy.type.FractionalPercent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        numerator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "numerator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"numerator")) ::
              Data.ProtoLens.FieldDescriptor FractionalPercent
        denominator__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "denominator"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor FractionalPercent'DenominatorType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"denominator")) ::
              Data.ProtoLens.FieldDescriptor FractionalPercent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, numerator__field_descriptor),
           (Data.ProtoLens.Tag 2, denominator__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FractionalPercent'_unknownFields
        (\ x__ y__ -> x__ {_FractionalPercent'_unknownFields = y__})
  defMessage
    = FractionalPercent'_constructor
        {_FractionalPercent'numerator = Data.ProtoLens.fieldDefault,
         _FractionalPercent'denominator = Data.ProtoLens.fieldDefault,
         _FractionalPercent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FractionalPercent
          -> Data.ProtoLens.Encoding.Bytes.Parser FractionalPercent
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "numerator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numerator") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "denominator"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"denominator") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FractionalPercent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"numerator") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"denominator") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData FractionalPercent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FractionalPercent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FractionalPercent'numerator x__)
                (Control.DeepSeq.deepseq (_FractionalPercent'denominator x__) ()))
newtype FractionalPercent'DenominatorType'UnrecognizedValue
  = FractionalPercent'DenominatorType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data FractionalPercent'DenominatorType
  = FractionalPercent'HUNDRED |
    FractionalPercent'TEN_THOUSAND |
    FractionalPercent'MILLION |
    FractionalPercent'DenominatorType'Unrecognized !FractionalPercent'DenominatorType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum FractionalPercent'DenominatorType where
  maybeToEnum 0 = Prelude.Just FractionalPercent'HUNDRED
  maybeToEnum 1 = Prelude.Just FractionalPercent'TEN_THOUSAND
  maybeToEnum 2 = Prelude.Just FractionalPercent'MILLION
  maybeToEnum k
    = Prelude.Just
        (FractionalPercent'DenominatorType'Unrecognized
           (FractionalPercent'DenominatorType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum FractionalPercent'HUNDRED = "HUNDRED"
  showEnum FractionalPercent'TEN_THOUSAND = "TEN_THOUSAND"
  showEnum FractionalPercent'MILLION = "MILLION"
  showEnum
    (FractionalPercent'DenominatorType'Unrecognized (FractionalPercent'DenominatorType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "HUNDRED" = Prelude.Just FractionalPercent'HUNDRED
    | (Prelude.==) k "TEN_THOUSAND"
    = Prelude.Just FractionalPercent'TEN_THOUSAND
    | (Prelude.==) k "MILLION" = Prelude.Just FractionalPercent'MILLION
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded FractionalPercent'DenominatorType where
  minBound = FractionalPercent'HUNDRED
  maxBound = FractionalPercent'MILLION
instance Prelude.Enum FractionalPercent'DenominatorType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum DenominatorType: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum FractionalPercent'HUNDRED = 0
  fromEnum FractionalPercent'TEN_THOUSAND = 1
  fromEnum FractionalPercent'MILLION = 2
  fromEnum
    (FractionalPercent'DenominatorType'Unrecognized (FractionalPercent'DenominatorType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ FractionalPercent'MILLION
    = Prelude.error
        "FractionalPercent'DenominatorType.succ: bad argument FractionalPercent'MILLION. This value would be out of bounds."
  succ FractionalPercent'HUNDRED = FractionalPercent'TEN_THOUSAND
  succ FractionalPercent'TEN_THOUSAND = FractionalPercent'MILLION
  succ (FractionalPercent'DenominatorType'Unrecognized _)
    = Prelude.error
        "FractionalPercent'DenominatorType.succ: bad argument: unrecognized value"
  pred FractionalPercent'HUNDRED
    = Prelude.error
        "FractionalPercent'DenominatorType.pred: bad argument FractionalPercent'HUNDRED. This value would be out of bounds."
  pred FractionalPercent'TEN_THOUSAND = FractionalPercent'HUNDRED
  pred FractionalPercent'MILLION = FractionalPercent'TEN_THOUSAND
  pred (FractionalPercent'DenominatorType'Unrecognized _)
    = Prelude.error
        "FractionalPercent'DenominatorType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault FractionalPercent'DenominatorType where
  fieldDefault = FractionalPercent'HUNDRED
instance Control.DeepSeq.NFData FractionalPercent'DenominatorType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Type.V3.Percent_Fields.value' @:: Lens' Percent Prelude.Double@ -}
data Percent
  = Percent'_constructor {_Percent'value :: !Prelude.Double,
                          _Percent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Percent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Percent "value" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Percent'value (\ x__ y__ -> x__ {_Percent'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Percent where
  messageName _ = Data.Text.pack "envoy.type.v3.Percent"
  packedMessageDescriptor _
    = "\n\
      \\aPercent\DC2-\n\
      \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalueB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NULY@)\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL:\EM\154\197\136\RS\DC4\n\
      \\DC2envoy.type.Percent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Percent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Percent'_unknownFields
        (\ x__ y__ -> x__ {_Percent'_unknownFields = y__})
  defMessage
    = Percent'_constructor
        {_Percent'value = Data.ProtoLens.fieldDefault,
         _Percent'_unknownFields = []}
  parseMessage
    = let
        loop :: Percent -> Data.ProtoLens.Encoding.Bytes.Parser Percent
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
                        9 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Percent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 9)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putFixed64
                         Data.ProtoLens.Encoding.Bytes.doubleToWord
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Percent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Percent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Percent'value x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\ESCenvoy/type/v3/percent.proto\DC2\renvoy.type.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"S\n\
    \\aPercent\DC2-\n\
    \\ENQvalue\CAN\SOH \SOH(\SOHR\ENQvalueB\ETB\250B\DC4\DC2\DC2\EM\NUL\NUL\NUL\NUL\NUL\NULY@)\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL:\EM\154\197\136\RS\DC4\n\
    \\DC2envoy.type.Percent\"\243\SOH\n\
    \\DC1FractionalPercent\DC2\FS\n\
    \\tnumerator\CAN\SOH \SOH(\rR\tnumerator\DC2\\\n\
    \\vdenominator\CAN\STX \SOH(\SO20.envoy.type.v3.FractionalPercent.DenominatorTypeR\vdenominatorB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"=\n\
    \\SIDenominatorType\DC2\v\n\
    \\aHUNDRED\DLE\NUL\DC2\DLE\n\
    \\fTEN_THOUSAND\DLE\SOH\DC2\v\n\
    \\aMILLION\DLE\STX:#\154\197\136\RS\RS\n\
    \\FSenvoy.type.FractionalPercentB5\n\
    \\ESCio.envoyproxy.envoy.type.v3B\fPercentProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\183\v\n\
    \\ACK\DC2\EOT\NUL\NUL7\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\n\
    \\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\v\NULF\n\
    \_\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\DC4\SOH\SUB5 Identifies a percentage, in the range [0.0, 100.0].\n\
    \2\FS [#protodoc-title: Percent]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC1\STXT\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC1\STXT\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC3\STXE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC3\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC3\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC3\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\DC3\DC3D\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\STX\DC2\ETX\DC3\DC4C\n\
    \\226\STX\n\
    \\STX\EOT\SOH\DC2\EOT\FS\NUL7\SOH\SUB\213\STX A fractional percentage is used in cases in which for performance reasons performing floating\n\
    \ point to integer conversions during randomness calculations is undesirable. The message includes\n\
    \ both a numerator and denominator that together determine the final fractional value.\n\
    \\n\
    \ * **Example**: 1/100 = 1%.\n\
    \ * **Example**: 3/10000 = 0.03%.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\FS\b\EM\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\GS\STX^\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX\GS\STX^\n\
    \N\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\EOT \STX/\ETX\SUB@ Fraction percentages support several fixed denominator values.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETX \a\SYN\n\
    \0\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETX$\EOT\DLE\SUB! 100.\n\
    \\n\
    \ **Example**: 1/100 = 1%.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETX$\EOT\v\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETX$\SO\SI\n\
    \8\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETX)\EOT\NAK\SUB) 10,000.\n\
    \\n\
    \ **Example**: 1/10000 = 0.01%.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETX)\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETX)\DC3\DC4\n\
    \?\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\STX\DC2\ETX.\EOT\DLE\SUB0 1,000,000.\n\
    \\n\
    \ **Example**: 1/1000000 = 0.0001%.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\SOH\DC2\ETX.\EOT\v\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\STX\DC2\ETX.\SO\SI\n\
    \6\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX2\STX\ETB\SUB) Specifies the numerator. Defaults to 0.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX2\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX2\t\DC2\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX2\NAK\SYN\n\
    \\155\SOH\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX6\STXQ\SUB\141\SOH Specifies the denominator. If the denominator specified is less than the numerator, the final\n\
    \ fractional percentage is capped at 1 (100%).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX6\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX6\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX6 !\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX6\"P\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\DLE\DC2\ETX6#Ob\ACKproto3"