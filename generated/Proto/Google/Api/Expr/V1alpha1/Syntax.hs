{- This file was auto-generated from google/api/expr/v1alpha1/syntax.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Google.Api.Expr.V1alpha1.Syntax (
        Constant(), Constant'ConstantKind(..), _Constant'NullValue,
        _Constant'BoolValue, _Constant'Int64Value, _Constant'Uint64Value,
        _Constant'DoubleValue, _Constant'StringValue, _Constant'BytesValue,
        _Constant'DurationValue, _Constant'TimestampValue, Expr(),
        Expr'ExprKind(..), _Expr'ConstExpr, _Expr'IdentExpr,
        _Expr'SelectExpr, _Expr'CallExpr, _Expr'ListExpr, _Expr'StructExpr,
        _Expr'ComprehensionExpr, Expr'Call(), Expr'Comprehension(),
        Expr'CreateList(), Expr'CreateStruct(), Expr'CreateStruct'Entry(),
        Expr'CreateStruct'Entry'KeyKind(..),
        _Expr'CreateStruct'Entry'FieldKey, _Expr'CreateStruct'Entry'MapKey,
        Expr'Ident(), Expr'Select(), ParsedExpr(), SourceInfo(),
        SourceInfo'MacroCallsEntry(), SourceInfo'PositionsEntry(),
        SourcePosition()
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
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Timestamp
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'constantKind' @:: Lens' Constant (Prelude.Maybe Constant'ConstantKind)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'nullValue' @:: Lens' Constant (Prelude.Maybe Proto.Google.Protobuf.Struct.NullValue)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.nullValue' @:: Lens' Constant Proto.Google.Protobuf.Struct.NullValue@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'boolValue' @:: Lens' Constant (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.boolValue' @:: Lens' Constant Prelude.Bool@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'int64Value' @:: Lens' Constant (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.int64Value' @:: Lens' Constant Data.Int.Int64@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'uint64Value' @:: Lens' Constant (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.uint64Value' @:: Lens' Constant Data.Word.Word64@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'doubleValue' @:: Lens' Constant (Prelude.Maybe Prelude.Double)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.doubleValue' @:: Lens' Constant Prelude.Double@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'stringValue' @:: Lens' Constant (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.stringValue' @:: Lens' Constant Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'bytesValue' @:: Lens' Constant (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.bytesValue' @:: Lens' Constant Data.ByteString.ByteString@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'durationValue' @:: Lens' Constant (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.durationValue' @:: Lens' Constant Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'timestampValue' @:: Lens' Constant (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.timestampValue' @:: Lens' Constant Proto.Google.Protobuf.Timestamp.Timestamp@ -}
data Constant
  = Constant'_constructor {_Constant'constantKind :: !(Prelude.Maybe Constant'ConstantKind),
                           _Constant'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Constant where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Constant'ConstantKind
  = Constant'NullValue !Proto.Google.Protobuf.Struct.NullValue |
    Constant'BoolValue !Prelude.Bool |
    Constant'Int64Value !Data.Int.Int64 |
    Constant'Uint64Value !Data.Word.Word64 |
    Constant'DoubleValue !Prelude.Double |
    Constant'StringValue !Data.Text.Text |
    Constant'BytesValue !Data.ByteString.ByteString |
    Constant'DurationValue !Proto.Google.Protobuf.Duration.Duration |
    Constant'TimestampValue !Proto.Google.Protobuf.Timestamp.Timestamp
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Constant "maybe'constantKind" (Prelude.Maybe Constant'ConstantKind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Constant "maybe'nullValue" (Prelude.Maybe Proto.Google.Protobuf.Struct.NullValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Constant'NullValue x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Constant'NullValue y__))
instance Data.ProtoLens.Field.HasField Constant "nullValue" Proto.Google.Protobuf.Struct.NullValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Constant'NullValue x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Constant'NullValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Constant "maybe'boolValue" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Constant'BoolValue x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Constant'BoolValue y__))
instance Data.ProtoLens.Field.HasField Constant "boolValue" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Constant'BoolValue x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Constant'BoolValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Constant "maybe'int64Value" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Constant'Int64Value x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Constant'Int64Value y__))
instance Data.ProtoLens.Field.HasField Constant "int64Value" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Constant'Int64Value x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Constant'Int64Value y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Constant "maybe'uint64Value" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Constant'Uint64Value x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Constant'Uint64Value y__))
instance Data.ProtoLens.Field.HasField Constant "uint64Value" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Constant'Uint64Value x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Constant'Uint64Value y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Constant "maybe'doubleValue" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Constant'DoubleValue x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Constant'DoubleValue y__))
instance Data.ProtoLens.Field.HasField Constant "doubleValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Constant'DoubleValue x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Constant'DoubleValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Constant "maybe'stringValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Constant'StringValue x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Constant'StringValue y__))
instance Data.ProtoLens.Field.HasField Constant "stringValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Constant'StringValue x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Constant'StringValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Constant "maybe'bytesValue" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Constant'BytesValue x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Constant'BytesValue y__))
instance Data.ProtoLens.Field.HasField Constant "bytesValue" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Constant'BytesValue x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Constant'BytesValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Constant "maybe'durationValue" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Constant'DurationValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Constant'DurationValue y__))
instance Data.ProtoLens.Field.HasField Constant "durationValue" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Constant'DurationValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Constant'DurationValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Constant "maybe'timestampValue" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Constant'TimestampValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Constant'TimestampValue y__))
instance Data.ProtoLens.Field.HasField Constant "timestampValue" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Constant'constantKind
           (\ x__ y__ -> x__ {_Constant'constantKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Constant'TimestampValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Constant'TimestampValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Constant where
  messageName _ = Data.Text.pack "google.api.expr.v1alpha1.Constant"
  packedMessageDescriptor _
    = "\n\
      \\bConstant\DC2;\n\
      \\n\
      \null_value\CAN\SOH \SOH(\SO2\SUB.google.protobuf.NullValueH\NULR\tnullValue\DC2\US\n\
      \\n\
      \bool_value\CAN\STX \SOH(\bH\NULR\tboolValue\DC2!\n\
      \\vint64_value\CAN\ETX \SOH(\ETXH\NULR\n\
      \int64Value\DC2#\n\
      \\fuint64_value\CAN\EOT \SOH(\EOTH\NULR\vuint64Value\DC2#\n\
      \\fdouble_value\CAN\ENQ \SOH(\SOHH\NULR\vdoubleValue\DC2#\n\
      \\fstring_value\CAN\ACK \SOH(\tH\NULR\vstringValue\DC2!\n\
      \\vbytes_value\CAN\a \SOH(\fH\NULR\n\
      \bytesValue\DC2F\n\
      \\SOduration_value\CAN\b \SOH(\v2\EM.google.protobuf.DurationH\NULR\rdurationValueB\STX\CAN\SOH\DC2I\n\
      \\SItimestamp_value\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampH\NULR\SOtimestampValueB\STX\CAN\SOHB\SI\n\
      \\rconstant_kind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        nullValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "null_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.NullValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nullValue")) ::
              Data.ProtoLens.FieldDescriptor Constant
        boolValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'boolValue")) ::
              Data.ProtoLens.FieldDescriptor Constant
        int64Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int64_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'int64Value")) ::
              Data.ProtoLens.FieldDescriptor Constant
        uint64Value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uint64_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uint64Value")) ::
              Data.ProtoLens.FieldDescriptor Constant
        doubleValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "double_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'doubleValue")) ::
              Data.ProtoLens.FieldDescriptor Constant
        stringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringValue")) ::
              Data.ProtoLens.FieldDescriptor Constant
        bytesValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesValue")) ::
              Data.ProtoLens.FieldDescriptor Constant
        durationValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "duration_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'durationValue")) ::
              Data.ProtoLens.FieldDescriptor Constant
        timestampValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestampValue")) ::
              Data.ProtoLens.FieldDescriptor Constant
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, nullValue__field_descriptor),
           (Data.ProtoLens.Tag 2, boolValue__field_descriptor),
           (Data.ProtoLens.Tag 3, int64Value__field_descriptor),
           (Data.ProtoLens.Tag 4, uint64Value__field_descriptor),
           (Data.ProtoLens.Tag 5, doubleValue__field_descriptor),
           (Data.ProtoLens.Tag 6, stringValue__field_descriptor),
           (Data.ProtoLens.Tag 7, bytesValue__field_descriptor),
           (Data.ProtoLens.Tag 8, durationValue__field_descriptor),
           (Data.ProtoLens.Tag 9, timestampValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Constant'_unknownFields
        (\ x__ y__ -> x__ {_Constant'_unknownFields = y__})
  defMessage
    = Constant'_constructor
        {_Constant'constantKind = Prelude.Nothing,
         _Constant'_unknownFields = []}
  parseMessage
    = let
        loop :: Constant -> Data.ProtoLens.Encoding.Bytes.Parser Constant
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "null_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"nullValue") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bool_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"boolValue") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int64_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"int64Value") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "uint64_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uint64Value") y x)
                        41
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "double_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doubleValue") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "string_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringValue") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "bytes_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesValue") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "duration_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"durationValue") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timestamp_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timestampValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Constant"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'constantKind") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Constant'NullValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum
                          v)
                (Prelude.Just (Constant'BoolValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (Constant'Int64Value v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                (Prelude.Just (Constant'Uint64Value v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt v)
                (Prelude.Just (Constant'DoubleValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 41)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64
                          Data.ProtoLens.Encoding.Bytes.doubleToWord
                          v)
                (Prelude.Just (Constant'StringValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (Constant'BytesValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((\ bs
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          v)
                (Prelude.Just (Constant'DurationValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Constant'TimestampValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Constant where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Constant'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Constant'constantKind x__) ())
instance Control.DeepSeq.NFData Constant'ConstantKind where
  rnf (Constant'NullValue x__) = Control.DeepSeq.rnf x__
  rnf (Constant'BoolValue x__) = Control.DeepSeq.rnf x__
  rnf (Constant'Int64Value x__) = Control.DeepSeq.rnf x__
  rnf (Constant'Uint64Value x__) = Control.DeepSeq.rnf x__
  rnf (Constant'DoubleValue x__) = Control.DeepSeq.rnf x__
  rnf (Constant'StringValue x__) = Control.DeepSeq.rnf x__
  rnf (Constant'BytesValue x__) = Control.DeepSeq.rnf x__
  rnf (Constant'DurationValue x__) = Control.DeepSeq.rnf x__
  rnf (Constant'TimestampValue x__) = Control.DeepSeq.rnf x__
_Constant'NullValue ::
  Data.ProtoLens.Prism.Prism' Constant'ConstantKind Proto.Google.Protobuf.Struct.NullValue
_Constant'NullValue
  = Data.ProtoLens.Prism.prism'
      Constant'NullValue
      (\ p__
         -> case p__ of
              (Constant'NullValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Constant'BoolValue ::
  Data.ProtoLens.Prism.Prism' Constant'ConstantKind Prelude.Bool
_Constant'BoolValue
  = Data.ProtoLens.Prism.prism'
      Constant'BoolValue
      (\ p__
         -> case p__ of
              (Constant'BoolValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Constant'Int64Value ::
  Data.ProtoLens.Prism.Prism' Constant'ConstantKind Data.Int.Int64
_Constant'Int64Value
  = Data.ProtoLens.Prism.prism'
      Constant'Int64Value
      (\ p__
         -> case p__ of
              (Constant'Int64Value p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Constant'Uint64Value ::
  Data.ProtoLens.Prism.Prism' Constant'ConstantKind Data.Word.Word64
_Constant'Uint64Value
  = Data.ProtoLens.Prism.prism'
      Constant'Uint64Value
      (\ p__
         -> case p__ of
              (Constant'Uint64Value p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Constant'DoubleValue ::
  Data.ProtoLens.Prism.Prism' Constant'ConstantKind Prelude.Double
_Constant'DoubleValue
  = Data.ProtoLens.Prism.prism'
      Constant'DoubleValue
      (\ p__
         -> case p__ of
              (Constant'DoubleValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Constant'StringValue ::
  Data.ProtoLens.Prism.Prism' Constant'ConstantKind Data.Text.Text
_Constant'StringValue
  = Data.ProtoLens.Prism.prism'
      Constant'StringValue
      (\ p__
         -> case p__ of
              (Constant'StringValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Constant'BytesValue ::
  Data.ProtoLens.Prism.Prism' Constant'ConstantKind Data.ByteString.ByteString
_Constant'BytesValue
  = Data.ProtoLens.Prism.prism'
      Constant'BytesValue
      (\ p__
         -> case p__ of
              (Constant'BytesValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Constant'DurationValue ::
  Data.ProtoLens.Prism.Prism' Constant'ConstantKind Proto.Google.Protobuf.Duration.Duration
_Constant'DurationValue
  = Data.ProtoLens.Prism.prism'
      Constant'DurationValue
      (\ p__
         -> case p__ of
              (Constant'DurationValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Constant'TimestampValue ::
  Data.ProtoLens.Prism.Prism' Constant'ConstantKind Proto.Google.Protobuf.Timestamp.Timestamp
_Constant'TimestampValue
  = Data.ProtoLens.Prism.prism'
      Constant'TimestampValue
      (\ p__
         -> case p__ of
              (Constant'TimestampValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.id' @:: Lens' Expr Data.Int.Int64@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'exprKind' @:: Lens' Expr (Prelude.Maybe Expr'ExprKind)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'constExpr' @:: Lens' Expr (Prelude.Maybe Constant)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.constExpr' @:: Lens' Expr Constant@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'identExpr' @:: Lens' Expr (Prelude.Maybe Expr'Ident)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.identExpr' @:: Lens' Expr Expr'Ident@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'selectExpr' @:: Lens' Expr (Prelude.Maybe Expr'Select)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.selectExpr' @:: Lens' Expr Expr'Select@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'callExpr' @:: Lens' Expr (Prelude.Maybe Expr'Call)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.callExpr' @:: Lens' Expr Expr'Call@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'listExpr' @:: Lens' Expr (Prelude.Maybe Expr'CreateList)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.listExpr' @:: Lens' Expr Expr'CreateList@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'structExpr' @:: Lens' Expr (Prelude.Maybe Expr'CreateStruct)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.structExpr' @:: Lens' Expr Expr'CreateStruct@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'comprehensionExpr' @:: Lens' Expr (Prelude.Maybe Expr'Comprehension)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.comprehensionExpr' @:: Lens' Expr Expr'Comprehension@ -}
data Expr
  = Expr'_constructor {_Expr'id :: !Data.Int.Int64,
                       _Expr'exprKind :: !(Prelude.Maybe Expr'ExprKind),
                       _Expr'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Expr where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Expr'ExprKind
  = Expr'ConstExpr !Constant |
    Expr'IdentExpr !Expr'Ident |
    Expr'SelectExpr !Expr'Select |
    Expr'CallExpr !Expr'Call |
    Expr'ListExpr !Expr'CreateList |
    Expr'StructExpr !Expr'CreateStruct |
    Expr'ComprehensionExpr !Expr'Comprehension
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Expr "id" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'id (\ x__ y__ -> x__ {_Expr'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr "maybe'exprKind" (Prelude.Maybe Expr'ExprKind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr "maybe'constExpr" (Prelude.Maybe Constant) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Expr'ConstExpr x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Expr'ConstExpr y__))
instance Data.ProtoLens.Field.HasField Expr "constExpr" Constant where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Expr'ConstExpr x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Expr'ConstExpr y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Expr "maybe'identExpr" (Prelude.Maybe Expr'Ident) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Expr'IdentExpr x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Expr'IdentExpr y__))
instance Data.ProtoLens.Field.HasField Expr "identExpr" Expr'Ident where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Expr'IdentExpr x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Expr'IdentExpr y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Expr "maybe'selectExpr" (Prelude.Maybe Expr'Select) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Expr'SelectExpr x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Expr'SelectExpr y__))
instance Data.ProtoLens.Field.HasField Expr "selectExpr" Expr'Select where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Expr'SelectExpr x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Expr'SelectExpr y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Expr "maybe'callExpr" (Prelude.Maybe Expr'Call) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Expr'CallExpr x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Expr'CallExpr y__))
instance Data.ProtoLens.Field.HasField Expr "callExpr" Expr'Call where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Expr'CallExpr x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Expr'CallExpr y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Expr "maybe'listExpr" (Prelude.Maybe Expr'CreateList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Expr'ListExpr x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Expr'ListExpr y__))
instance Data.ProtoLens.Field.HasField Expr "listExpr" Expr'CreateList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Expr'ListExpr x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Expr'ListExpr y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Expr "maybe'structExpr" (Prelude.Maybe Expr'CreateStruct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Expr'StructExpr x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Expr'StructExpr y__))
instance Data.ProtoLens.Field.HasField Expr "structExpr" Expr'CreateStruct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Expr'StructExpr x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Expr'StructExpr y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Expr "maybe'comprehensionExpr" (Prelude.Maybe Expr'Comprehension) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Expr'ComprehensionExpr x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Expr'ComprehensionExpr y__))
instance Data.ProtoLens.Field.HasField Expr "comprehensionExpr" Expr'Comprehension where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'exprKind (\ x__ y__ -> x__ {_Expr'exprKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Expr'ComprehensionExpr x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Expr'ComprehensionExpr y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Expr where
  messageName _ = Data.Text.pack "google.api.expr.v1alpha1.Expr"
  packedMessageDescriptor _
    = "\n\
      \\EOTExpr\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\ETXR\STXid\DC2C\n\
      \\n\
      \const_expr\CAN\ETX \SOH(\v2\".google.api.expr.v1alpha1.ConstantH\NULR\tconstExpr\DC2E\n\
      \\n\
      \ident_expr\CAN\EOT \SOH(\v2$.google.api.expr.v1alpha1.Expr.IdentH\NULR\tidentExpr\DC2H\n\
      \\vselect_expr\CAN\ENQ \SOH(\v2%.google.api.expr.v1alpha1.Expr.SelectH\NULR\n\
      \selectExpr\DC2B\n\
      \\tcall_expr\CAN\ACK \SOH(\v2#.google.api.expr.v1alpha1.Expr.CallH\NULR\bcallExpr\DC2H\n\
      \\tlist_expr\CAN\a \SOH(\v2).google.api.expr.v1alpha1.Expr.CreateListH\NULR\blistExpr\DC2N\n\
      \\vstruct_expr\CAN\b \SOH(\v2+.google.api.expr.v1alpha1.Expr.CreateStructH\NULR\n\
      \structExpr\DC2]\n\
      \\DC2comprehension_expr\CAN\t \SOH(\v2,.google.api.expr.v1alpha1.Expr.ComprehensionH\NULR\DC1comprehensionExpr\SUB\ESC\n\
      \\ENQIdent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\SUBu\n\
      \\ACKSelect\DC28\n\
      \\aoperand\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\aoperand\DC2\DC4\n\
      \\ENQfield\CAN\STX \SOH(\tR\ENQfield\DC2\ESC\n\
      \\ttest_only\CAN\ETX \SOH(\bR\btestOnly\SUB\142\SOH\n\
      \\EOTCall\DC26\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ACKtarget\DC2\SUB\n\
      \\bfunction\CAN\STX \SOH(\tR\bfunction\DC22\n\
      \\EOTargs\CAN\ETX \ETX(\v2\RS.google.api.expr.v1alpha1.ExprR\EOTargs\SUBH\n\
      \\n\
      \CreateList\DC2:\n\
      \\belements\CAN\SOH \ETX(\v2\RS.google.api.expr.v1alpha1.ExprR\belements\SUB\180\STX\n\
      \\fCreateStruct\DC2!\n\
      \\fmessage_name\CAN\SOH \SOH(\tR\vmessageName\DC2K\n\
      \\aentries\CAN\STX \ETX(\v21.google.api.expr.v1alpha1.Expr.CreateStruct.EntryR\aentries\SUB\179\SOH\n\
      \\ENQEntry\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\ETXR\STXid\DC2\GS\n\
      \\tfield_key\CAN\STX \SOH(\tH\NULR\bfieldKey\DC29\n\
      \\amap_key\CAN\ETX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprH\NULR\ACKmapKey\DC24\n\
      \\ENQvalue\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ENQvalueB\n\
      \\n\
      \\bkey_kind\SUB\253\STX\n\
      \\rComprehension\DC2\EM\n\
      \\biter_var\CAN\SOH \SOH(\tR\aiterVar\DC2=\n\
      \\n\
      \iter_range\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\titerRange\DC2\EM\n\
      \\baccu_var\CAN\ETX \SOH(\tR\aaccuVar\DC2;\n\
      \\taccu_init\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\baccuInit\DC2E\n\
      \\SOloop_condition\CAN\ENQ \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\rloopCondition\DC2;\n\
      \\tloop_step\CAN\ACK \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\bloopStep\DC26\n\
      \\ACKresult\CAN\a \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ACKresultB\v\n\
      \\texpr_kind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Expr
        constExpr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "const_expr"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Constant)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'constExpr")) ::
              Data.ProtoLens.FieldDescriptor Expr
        identExpr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ident_expr"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr'Ident)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'identExpr")) ::
              Data.ProtoLens.FieldDescriptor Expr
        selectExpr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "select_expr"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr'Select)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'selectExpr")) ::
              Data.ProtoLens.FieldDescriptor Expr
        callExpr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "call_expr"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr'Call)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'callExpr")) ::
              Data.ProtoLens.FieldDescriptor Expr
        listExpr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "list_expr"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr'CreateList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listExpr")) ::
              Data.ProtoLens.FieldDescriptor Expr
        structExpr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "struct_expr"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr'CreateStruct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'structExpr")) ::
              Data.ProtoLens.FieldDescriptor Expr
        comprehensionExpr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comprehension_expr"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr'Comprehension)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comprehensionExpr")) ::
              Data.ProtoLens.FieldDescriptor Expr
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, constExpr__field_descriptor),
           (Data.ProtoLens.Tag 4, identExpr__field_descriptor),
           (Data.ProtoLens.Tag 5, selectExpr__field_descriptor),
           (Data.ProtoLens.Tag 6, callExpr__field_descriptor),
           (Data.ProtoLens.Tag 7, listExpr__field_descriptor),
           (Data.ProtoLens.Tag 8, structExpr__field_descriptor),
           (Data.ProtoLens.Tag 9, comprehensionExpr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Expr'_unknownFields
        (\ x__ y__ -> x__ {_Expr'_unknownFields = y__})
  defMessage
    = Expr'_constructor
        {_Expr'id = Data.ProtoLens.fieldDefault,
         _Expr'exprKind = Prelude.Nothing, _Expr'_unknownFields = []}
  parseMessage
    = let
        loop :: Expr -> Data.ProtoLens.Encoding.Bytes.Parser Expr
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "const_expr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"constExpr") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ident_expr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identExpr") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "select_expr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"selectExpr") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "call_expr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callExpr") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "list_expr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"listExpr") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "struct_expr"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"structExpr") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "comprehension_expr"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"comprehensionExpr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Expr"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'exprKind") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Expr'ConstExpr v))
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
                   (Prelude.Just (Expr'IdentExpr v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (Expr'SelectExpr v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (Expr'CallExpr v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (Expr'ListExpr v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (Expr'StructExpr v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (Expr'ComprehensionExpr v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
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
instance Control.DeepSeq.NFData Expr where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Expr'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Expr'id x__) (Control.DeepSeq.deepseq (_Expr'exprKind x__) ()))
instance Control.DeepSeq.NFData Expr'ExprKind where
  rnf (Expr'ConstExpr x__) = Control.DeepSeq.rnf x__
  rnf (Expr'IdentExpr x__) = Control.DeepSeq.rnf x__
  rnf (Expr'SelectExpr x__) = Control.DeepSeq.rnf x__
  rnf (Expr'CallExpr x__) = Control.DeepSeq.rnf x__
  rnf (Expr'ListExpr x__) = Control.DeepSeq.rnf x__
  rnf (Expr'StructExpr x__) = Control.DeepSeq.rnf x__
  rnf (Expr'ComprehensionExpr x__) = Control.DeepSeq.rnf x__
_Expr'ConstExpr ::
  Data.ProtoLens.Prism.Prism' Expr'ExprKind Constant
_Expr'ConstExpr
  = Data.ProtoLens.Prism.prism'
      Expr'ConstExpr
      (\ p__
         -> case p__ of
              (Expr'ConstExpr p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Expr'IdentExpr ::
  Data.ProtoLens.Prism.Prism' Expr'ExprKind Expr'Ident
_Expr'IdentExpr
  = Data.ProtoLens.Prism.prism'
      Expr'IdentExpr
      (\ p__
         -> case p__ of
              (Expr'IdentExpr p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Expr'SelectExpr ::
  Data.ProtoLens.Prism.Prism' Expr'ExprKind Expr'Select
_Expr'SelectExpr
  = Data.ProtoLens.Prism.prism'
      Expr'SelectExpr
      (\ p__
         -> case p__ of
              (Expr'SelectExpr p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Expr'CallExpr ::
  Data.ProtoLens.Prism.Prism' Expr'ExprKind Expr'Call
_Expr'CallExpr
  = Data.ProtoLens.Prism.prism'
      Expr'CallExpr
      (\ p__
         -> case p__ of
              (Expr'CallExpr p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Expr'ListExpr ::
  Data.ProtoLens.Prism.Prism' Expr'ExprKind Expr'CreateList
_Expr'ListExpr
  = Data.ProtoLens.Prism.prism'
      Expr'ListExpr
      (\ p__
         -> case p__ of
              (Expr'ListExpr p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Expr'StructExpr ::
  Data.ProtoLens.Prism.Prism' Expr'ExprKind Expr'CreateStruct
_Expr'StructExpr
  = Data.ProtoLens.Prism.prism'
      Expr'StructExpr
      (\ p__
         -> case p__ of
              (Expr'StructExpr p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Expr'ComprehensionExpr ::
  Data.ProtoLens.Prism.Prism' Expr'ExprKind Expr'Comprehension
_Expr'ComprehensionExpr
  = Data.ProtoLens.Prism.prism'
      Expr'ComprehensionExpr
      (\ p__
         -> case p__ of
              (Expr'ComprehensionExpr p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.target' @:: Lens' Expr'Call Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'target' @:: Lens' Expr'Call (Prelude.Maybe Expr)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.function' @:: Lens' Expr'Call Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.args' @:: Lens' Expr'Call [Expr]@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.vec'args' @:: Lens' Expr'Call (Data.Vector.Vector Expr)@ -}
data Expr'Call
  = Expr'Call'_constructor {_Expr'Call'target :: !(Prelude.Maybe Expr),
                            _Expr'Call'function :: !Data.Text.Text,
                            _Expr'Call'args :: !(Data.Vector.Vector Expr),
                            _Expr'Call'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Expr'Call where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Expr'Call "target" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Call'target (\ x__ y__ -> x__ {_Expr'Call'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Expr'Call "maybe'target" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Call'target (\ x__ y__ -> x__ {_Expr'Call'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'Call "function" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Call'function (\ x__ y__ -> x__ {_Expr'Call'function = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'Call "args" [Expr] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Call'args (\ x__ y__ -> x__ {_Expr'Call'args = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Expr'Call "vec'args" (Data.Vector.Vector Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Call'args (\ x__ y__ -> x__ {_Expr'Call'args = y__}))
        Prelude.id
instance Data.ProtoLens.Message Expr'Call where
  messageName _ = Data.Text.pack "google.api.expr.v1alpha1.Expr.Call"
  packedMessageDescriptor _
    = "\n\
      \\EOTCall\DC26\n\
      \\ACKtarget\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ACKtarget\DC2\SUB\n\
      \\bfunction\CAN\STX \SOH(\tR\bfunction\DC22\n\
      \\EOTargs\CAN\ETX \ETX(\v2\RS.google.api.expr.v1alpha1.ExprR\EOTargs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor Expr'Call
        function__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"function")) ::
              Data.ProtoLens.FieldDescriptor Expr'Call
        args__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "args"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"args")) ::
              Data.ProtoLens.FieldDescriptor Expr'Call
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, function__field_descriptor),
           (Data.ProtoLens.Tag 3, args__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Expr'Call'_unknownFields
        (\ x__ y__ -> x__ {_Expr'Call'_unknownFields = y__})
  defMessage
    = Expr'Call'_constructor
        {_Expr'Call'target = Prelude.Nothing,
         _Expr'Call'function = Data.ProtoLens.fieldDefault,
         _Expr'Call'args = Data.Vector.Generic.empty,
         _Expr'Call'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Expr'Call
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Expr
             -> Data.ProtoLens.Encoding.Bytes.Parser Expr'Call
        loop x mutable'args
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'args <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'args)
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
                              (Data.ProtoLens.Field.field @"vec'args") frozen'args x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "target"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                                  mutable'args
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "function"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"function") y x)
                                  mutable'args
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "args"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'args y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'args
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'args <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'args)
          "Call"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"function") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'args") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Expr'Call where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Expr'Call'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Expr'Call'target x__)
                (Control.DeepSeq.deepseq
                   (_Expr'Call'function x__)
                   (Control.DeepSeq.deepseq (_Expr'Call'args x__) ())))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.iterVar' @:: Lens' Expr'Comprehension Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.iterRange' @:: Lens' Expr'Comprehension Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'iterRange' @:: Lens' Expr'Comprehension (Prelude.Maybe Expr)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.accuVar' @:: Lens' Expr'Comprehension Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.accuInit' @:: Lens' Expr'Comprehension Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'accuInit' @:: Lens' Expr'Comprehension (Prelude.Maybe Expr)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.loopCondition' @:: Lens' Expr'Comprehension Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'loopCondition' @:: Lens' Expr'Comprehension (Prelude.Maybe Expr)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.loopStep' @:: Lens' Expr'Comprehension Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'loopStep' @:: Lens' Expr'Comprehension (Prelude.Maybe Expr)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.result' @:: Lens' Expr'Comprehension Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'result' @:: Lens' Expr'Comprehension (Prelude.Maybe Expr)@ -}
data Expr'Comprehension
  = Expr'Comprehension'_constructor {_Expr'Comprehension'iterVar :: !Data.Text.Text,
                                     _Expr'Comprehension'iterRange :: !(Prelude.Maybe Expr),
                                     _Expr'Comprehension'accuVar :: !Data.Text.Text,
                                     _Expr'Comprehension'accuInit :: !(Prelude.Maybe Expr),
                                     _Expr'Comprehension'loopCondition :: !(Prelude.Maybe Expr),
                                     _Expr'Comprehension'loopStep :: !(Prelude.Maybe Expr),
                                     _Expr'Comprehension'result :: !(Prelude.Maybe Expr),
                                     _Expr'Comprehension'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Expr'Comprehension where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Expr'Comprehension "iterVar" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'iterVar
           (\ x__ y__ -> x__ {_Expr'Comprehension'iterVar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'Comprehension "iterRange" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'iterRange
           (\ x__ y__ -> x__ {_Expr'Comprehension'iterRange = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Expr'Comprehension "maybe'iterRange" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'iterRange
           (\ x__ y__ -> x__ {_Expr'Comprehension'iterRange = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'Comprehension "accuVar" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'accuVar
           (\ x__ y__ -> x__ {_Expr'Comprehension'accuVar = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'Comprehension "accuInit" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'accuInit
           (\ x__ y__ -> x__ {_Expr'Comprehension'accuInit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Expr'Comprehension "maybe'accuInit" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'accuInit
           (\ x__ y__ -> x__ {_Expr'Comprehension'accuInit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'Comprehension "loopCondition" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'loopCondition
           (\ x__ y__ -> x__ {_Expr'Comprehension'loopCondition = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Expr'Comprehension "maybe'loopCondition" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'loopCondition
           (\ x__ y__ -> x__ {_Expr'Comprehension'loopCondition = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'Comprehension "loopStep" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'loopStep
           (\ x__ y__ -> x__ {_Expr'Comprehension'loopStep = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Expr'Comprehension "maybe'loopStep" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'loopStep
           (\ x__ y__ -> x__ {_Expr'Comprehension'loopStep = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'Comprehension "result" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'result
           (\ x__ y__ -> x__ {_Expr'Comprehension'result = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Expr'Comprehension "maybe'result" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Comprehension'result
           (\ x__ y__ -> x__ {_Expr'Comprehension'result = y__}))
        Prelude.id
instance Data.ProtoLens.Message Expr'Comprehension where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Expr.Comprehension"
  packedMessageDescriptor _
    = "\n\
      \\rComprehension\DC2\EM\n\
      \\biter_var\CAN\SOH \SOH(\tR\aiterVar\DC2=\n\
      \\n\
      \iter_range\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\titerRange\DC2\EM\n\
      \\baccu_var\CAN\ETX \SOH(\tR\aaccuVar\DC2;\n\
      \\taccu_init\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\baccuInit\DC2E\n\
      \\SOloop_condition\CAN\ENQ \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\rloopCondition\DC2;\n\
      \\tloop_step\CAN\ACK \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\bloopStep\DC26\n\
      \\ACKresult\CAN\a \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ACKresult"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        iterVar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iter_var"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"iterVar")) ::
              Data.ProtoLens.FieldDescriptor Expr'Comprehension
        iterRange__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iter_range"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iterRange")) ::
              Data.ProtoLens.FieldDescriptor Expr'Comprehension
        accuVar__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accu_var"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"accuVar")) ::
              Data.ProtoLens.FieldDescriptor Expr'Comprehension
        accuInit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accu_init"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'accuInit")) ::
              Data.ProtoLens.FieldDescriptor Expr'Comprehension
        loopCondition__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "loop_condition"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loopCondition")) ::
              Data.ProtoLens.FieldDescriptor Expr'Comprehension
        loopStep__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "loop_step"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loopStep")) ::
              Data.ProtoLens.FieldDescriptor Expr'Comprehension
        result__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "result"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'result")) ::
              Data.ProtoLens.FieldDescriptor Expr'Comprehension
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iterVar__field_descriptor),
           (Data.ProtoLens.Tag 2, iterRange__field_descriptor),
           (Data.ProtoLens.Tag 3, accuVar__field_descriptor),
           (Data.ProtoLens.Tag 4, accuInit__field_descriptor),
           (Data.ProtoLens.Tag 5, loopCondition__field_descriptor),
           (Data.ProtoLens.Tag 6, loopStep__field_descriptor),
           (Data.ProtoLens.Tag 7, result__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Expr'Comprehension'_unknownFields
        (\ x__ y__ -> x__ {_Expr'Comprehension'_unknownFields = y__})
  defMessage
    = Expr'Comprehension'_constructor
        {_Expr'Comprehension'iterVar = Data.ProtoLens.fieldDefault,
         _Expr'Comprehension'iterRange = Prelude.Nothing,
         _Expr'Comprehension'accuVar = Data.ProtoLens.fieldDefault,
         _Expr'Comprehension'accuInit = Prelude.Nothing,
         _Expr'Comprehension'loopCondition = Prelude.Nothing,
         _Expr'Comprehension'loopStep = Prelude.Nothing,
         _Expr'Comprehension'result = Prelude.Nothing,
         _Expr'Comprehension'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Expr'Comprehension
          -> Data.ProtoLens.Encoding.Bytes.Parser Expr'Comprehension
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
                                       "iter_var"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iterVar") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "iter_range"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"iterRange") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "accu_var"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"accuVar") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "accu_init"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"accuInit") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "loop_condition"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"loopCondition") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "loop_step"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"loopStep") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "result"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"result") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Comprehension"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"iterVar") _x
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'iterRange") _x
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
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"accuVar") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8
                               _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'accuInit") _x
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
                                (Data.ProtoLens.Field.field @"maybe'loopCondition") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'loopStep") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'result") _x
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
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData Expr'Comprehension where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Expr'Comprehension'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Expr'Comprehension'iterVar x__)
                (Control.DeepSeq.deepseq
                   (_Expr'Comprehension'iterRange x__)
                   (Control.DeepSeq.deepseq
                      (_Expr'Comprehension'accuVar x__)
                      (Control.DeepSeq.deepseq
                         (_Expr'Comprehension'accuInit x__)
                         (Control.DeepSeq.deepseq
                            (_Expr'Comprehension'loopCondition x__)
                            (Control.DeepSeq.deepseq
                               (_Expr'Comprehension'loopStep x__)
                               (Control.DeepSeq.deepseq (_Expr'Comprehension'result x__) ())))))))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.elements' @:: Lens' Expr'CreateList [Expr]@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.vec'elements' @:: Lens' Expr'CreateList (Data.Vector.Vector Expr)@ -}
data Expr'CreateList
  = Expr'CreateList'_constructor {_Expr'CreateList'elements :: !(Data.Vector.Vector Expr),
                                  _Expr'CreateList'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Expr'CreateList where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Expr'CreateList "elements" [Expr] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateList'elements
           (\ x__ y__ -> x__ {_Expr'CreateList'elements = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Expr'CreateList "vec'elements" (Data.Vector.Vector Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateList'elements
           (\ x__ y__ -> x__ {_Expr'CreateList'elements = y__}))
        Prelude.id
instance Data.ProtoLens.Message Expr'CreateList where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Expr.CreateList"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \CreateList\DC2:\n\
      \\belements\CAN\SOH \ETX(\v2\RS.google.api.expr.v1alpha1.ExprR\belements"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        elements__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "elements"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"elements")) ::
              Data.ProtoLens.FieldDescriptor Expr'CreateList
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, elements__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Expr'CreateList'_unknownFields
        (\ x__ y__ -> x__ {_Expr'CreateList'_unknownFields = y__})
  defMessage
    = Expr'CreateList'_constructor
        {_Expr'CreateList'elements = Data.Vector.Generic.empty,
         _Expr'CreateList'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Expr'CreateList
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Expr
             -> Data.ProtoLens.Encoding.Bytes.Parser Expr'CreateList
        loop x mutable'elements
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'elements <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'elements)
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
                              (Data.ProtoLens.Field.field @"vec'elements") frozen'elements x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "elements"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'elements y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'elements
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'elements <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'elements)
          "CreateList"
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
                   (Data.ProtoLens.Field.field @"vec'elements") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Expr'CreateList where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Expr'CreateList'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Expr'CreateList'elements x__) ())
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.messageName' @:: Lens' Expr'CreateStruct Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.entries' @:: Lens' Expr'CreateStruct [Expr'CreateStruct'Entry]@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.vec'entries' @:: Lens' Expr'CreateStruct (Data.Vector.Vector Expr'CreateStruct'Entry)@ -}
data Expr'CreateStruct
  = Expr'CreateStruct'_constructor {_Expr'CreateStruct'messageName :: !Data.Text.Text,
                                    _Expr'CreateStruct'entries :: !(Data.Vector.Vector Expr'CreateStruct'Entry),
                                    _Expr'CreateStruct'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Expr'CreateStruct where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Expr'CreateStruct "messageName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'messageName
           (\ x__ y__ -> x__ {_Expr'CreateStruct'messageName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'CreateStruct "entries" [Expr'CreateStruct'Entry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'entries
           (\ x__ y__ -> x__ {_Expr'CreateStruct'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Expr'CreateStruct "vec'entries" (Data.Vector.Vector Expr'CreateStruct'Entry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'entries
           (\ x__ y__ -> x__ {_Expr'CreateStruct'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message Expr'CreateStruct where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Expr.CreateStruct"
  packedMessageDescriptor _
    = "\n\
      \\fCreateStruct\DC2!\n\
      \\fmessage_name\CAN\SOH \SOH(\tR\vmessageName\DC2K\n\
      \\aentries\CAN\STX \ETX(\v21.google.api.expr.v1alpha1.Expr.CreateStruct.EntryR\aentries\SUB\179\SOH\n\
      \\ENQEntry\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\ETXR\STXid\DC2\GS\n\
      \\tfield_key\CAN\STX \SOH(\tH\NULR\bfieldKey\DC29\n\
      \\amap_key\CAN\ETX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprH\NULR\ACKmapKey\DC24\n\
      \\ENQvalue\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ENQvalueB\n\
      \\n\
      \\bkey_kind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        messageName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"messageName")) ::
              Data.ProtoLens.FieldDescriptor Expr'CreateStruct
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr'CreateStruct'Entry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor Expr'CreateStruct
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, messageName__field_descriptor),
           (Data.ProtoLens.Tag 2, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Expr'CreateStruct'_unknownFields
        (\ x__ y__ -> x__ {_Expr'CreateStruct'_unknownFields = y__})
  defMessage
    = Expr'CreateStruct'_constructor
        {_Expr'CreateStruct'messageName = Data.ProtoLens.fieldDefault,
         _Expr'CreateStruct'entries = Data.Vector.Generic.empty,
         _Expr'CreateStruct'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Expr'CreateStruct
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Expr'CreateStruct'Entry
             -> Data.ProtoLens.Encoding.Bytes.Parser Expr'CreateStruct
        loop x mutable'entries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
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
                              (Data.ProtoLens.Field.field @"vec'entries") frozen'entries x))
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
                                       "message_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"messageName") y x)
                                  mutable'entries
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'entries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'entries)
          "CreateStruct"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"messageName") _x
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Expr'CreateStruct where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Expr'CreateStruct'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Expr'CreateStruct'messageName x__)
                (Control.DeepSeq.deepseq (_Expr'CreateStruct'entries x__) ()))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.id' @:: Lens' Expr'CreateStruct'Entry Data.Int.Int64@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.value' @:: Lens' Expr'CreateStruct'Entry Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'value' @:: Lens' Expr'CreateStruct'Entry (Prelude.Maybe Expr)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'keyKind' @:: Lens' Expr'CreateStruct'Entry (Prelude.Maybe Expr'CreateStruct'Entry'KeyKind)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'fieldKey' @:: Lens' Expr'CreateStruct'Entry (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.fieldKey' @:: Lens' Expr'CreateStruct'Entry Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'mapKey' @:: Lens' Expr'CreateStruct'Entry (Prelude.Maybe Expr)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.mapKey' @:: Lens' Expr'CreateStruct'Entry Expr@ -}
data Expr'CreateStruct'Entry
  = Expr'CreateStruct'Entry'_constructor {_Expr'CreateStruct'Entry'id :: !Data.Int.Int64,
                                          _Expr'CreateStruct'Entry'value :: !(Prelude.Maybe Expr),
                                          _Expr'CreateStruct'Entry'keyKind :: !(Prelude.Maybe Expr'CreateStruct'Entry'KeyKind),
                                          _Expr'CreateStruct'Entry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Expr'CreateStruct'Entry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Expr'CreateStruct'Entry'KeyKind
  = Expr'CreateStruct'Entry'FieldKey !Data.Text.Text |
    Expr'CreateStruct'Entry'MapKey !Expr
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Expr'CreateStruct'Entry "id" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'Entry'id
           (\ x__ y__ -> x__ {_Expr'CreateStruct'Entry'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'CreateStruct'Entry "value" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'Entry'value
           (\ x__ y__ -> x__ {_Expr'CreateStruct'Entry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Expr'CreateStruct'Entry "maybe'value" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'Entry'value
           (\ x__ y__ -> x__ {_Expr'CreateStruct'Entry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'CreateStruct'Entry "maybe'keyKind" (Prelude.Maybe Expr'CreateStruct'Entry'KeyKind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'Entry'keyKind
           (\ x__ y__ -> x__ {_Expr'CreateStruct'Entry'keyKind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'CreateStruct'Entry "maybe'fieldKey" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'Entry'keyKind
           (\ x__ y__ -> x__ {_Expr'CreateStruct'Entry'keyKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Expr'CreateStruct'Entry'FieldKey x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Expr'CreateStruct'Entry'FieldKey y__))
instance Data.ProtoLens.Field.HasField Expr'CreateStruct'Entry "fieldKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'Entry'keyKind
           (\ x__ y__ -> x__ {_Expr'CreateStruct'Entry'keyKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Expr'CreateStruct'Entry'FieldKey x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Expr'CreateStruct'Entry'FieldKey y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Expr'CreateStruct'Entry "maybe'mapKey" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'Entry'keyKind
           (\ x__ y__ -> x__ {_Expr'CreateStruct'Entry'keyKind = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Expr'CreateStruct'Entry'MapKey x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Expr'CreateStruct'Entry'MapKey y__))
instance Data.ProtoLens.Field.HasField Expr'CreateStruct'Entry "mapKey" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'CreateStruct'Entry'keyKind
           (\ x__ y__ -> x__ {_Expr'CreateStruct'Entry'keyKind = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Expr'CreateStruct'Entry'MapKey x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Expr'CreateStruct'Entry'MapKey y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Expr'CreateStruct'Entry where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Expr.CreateStruct.Entry"
  packedMessageDescriptor _
    = "\n\
      \\ENQEntry\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\ETXR\STXid\DC2\GS\n\
      \\tfield_key\CAN\STX \SOH(\tH\NULR\bfieldKey\DC29\n\
      \\amap_key\CAN\ETX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprH\NULR\ACKmapKey\DC24\n\
      \\ENQvalue\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ENQvalueB\n\
      \\n\
      \\bkey_kind"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Expr'CreateStruct'Entry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Expr'CreateStruct'Entry
        fieldKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fieldKey")) ::
              Data.ProtoLens.FieldDescriptor Expr'CreateStruct'Entry
        mapKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mapKey")) ::
              Data.ProtoLens.FieldDescriptor Expr'CreateStruct'Entry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 4, value__field_descriptor),
           (Data.ProtoLens.Tag 2, fieldKey__field_descriptor),
           (Data.ProtoLens.Tag 3, mapKey__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Expr'CreateStruct'Entry'_unknownFields
        (\ x__ y__ -> x__ {_Expr'CreateStruct'Entry'_unknownFields = y__})
  defMessage
    = Expr'CreateStruct'Entry'_constructor
        {_Expr'CreateStruct'Entry'id = Data.ProtoLens.fieldDefault,
         _Expr'CreateStruct'Entry'value = Prelude.Nothing,
         _Expr'CreateStruct'Entry'keyKind = Prelude.Nothing,
         _Expr'CreateStruct'Entry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Expr'CreateStruct'Entry
          -> Data.ProtoLens.Encoding.Bytes.Parser Expr'CreateStruct'Entry
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "field_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fieldKey") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "map_key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mapKey") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Entry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'keyKind") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (Expr'CreateStruct'Entry'FieldKey v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8
                                v)
                      (Prelude.Just (Expr'CreateStruct'Entry'MapKey v))
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Expr'CreateStruct'Entry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Expr'CreateStruct'Entry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Expr'CreateStruct'Entry'id x__)
                (Control.DeepSeq.deepseq
                   (_Expr'CreateStruct'Entry'value x__)
                   (Control.DeepSeq.deepseq
                      (_Expr'CreateStruct'Entry'keyKind x__) ())))
instance Control.DeepSeq.NFData Expr'CreateStruct'Entry'KeyKind where
  rnf (Expr'CreateStruct'Entry'FieldKey x__)
    = Control.DeepSeq.rnf x__
  rnf (Expr'CreateStruct'Entry'MapKey x__) = Control.DeepSeq.rnf x__
_Expr'CreateStruct'Entry'FieldKey ::
  Data.ProtoLens.Prism.Prism' Expr'CreateStruct'Entry'KeyKind Data.Text.Text
_Expr'CreateStruct'Entry'FieldKey
  = Data.ProtoLens.Prism.prism'
      Expr'CreateStruct'Entry'FieldKey
      (\ p__
         -> case p__ of
              (Expr'CreateStruct'Entry'FieldKey p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Expr'CreateStruct'Entry'MapKey ::
  Data.ProtoLens.Prism.Prism' Expr'CreateStruct'Entry'KeyKind Expr
_Expr'CreateStruct'Entry'MapKey
  = Data.ProtoLens.Prism.prism'
      Expr'CreateStruct'Entry'MapKey
      (\ p__
         -> case p__ of
              (Expr'CreateStruct'Entry'MapKey p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.name' @:: Lens' Expr'Ident Data.Text.Text@ -}
data Expr'Ident
  = Expr'Ident'_constructor {_Expr'Ident'name :: !Data.Text.Text,
                             _Expr'Ident'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Expr'Ident where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Expr'Ident "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Ident'name (\ x__ y__ -> x__ {_Expr'Ident'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message Expr'Ident where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Expr.Ident"
  packedMessageDescriptor _
    = "\n\
      \\ENQIdent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Expr'Ident
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Expr'Ident'_unknownFields
        (\ x__ y__ -> x__ {_Expr'Ident'_unknownFields = y__})
  defMessage
    = Expr'Ident'_constructor
        {_Expr'Ident'name = Data.ProtoLens.fieldDefault,
         _Expr'Ident'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Expr'Ident -> Data.ProtoLens.Encoding.Bytes.Parser Expr'Ident
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Ident"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Expr'Ident where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Expr'Ident'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Expr'Ident'name x__) ())
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.operand' @:: Lens' Expr'Select Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'operand' @:: Lens' Expr'Select (Prelude.Maybe Expr)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.field' @:: Lens' Expr'Select Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.testOnly' @:: Lens' Expr'Select Prelude.Bool@ -}
data Expr'Select
  = Expr'Select'_constructor {_Expr'Select'operand :: !(Prelude.Maybe Expr),
                              _Expr'Select'field :: !Data.Text.Text,
                              _Expr'Select'testOnly :: !Prelude.Bool,
                              _Expr'Select'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Expr'Select where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Expr'Select "operand" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Select'operand
           (\ x__ y__ -> x__ {_Expr'Select'operand = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Expr'Select "maybe'operand" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Select'operand
           (\ x__ y__ -> x__ {_Expr'Select'operand = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'Select "field" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Select'field (\ x__ y__ -> x__ {_Expr'Select'field = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Expr'Select "testOnly" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Expr'Select'testOnly
           (\ x__ y__ -> x__ {_Expr'Select'testOnly = y__}))
        Prelude.id
instance Data.ProtoLens.Message Expr'Select where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.Expr.Select"
  packedMessageDescriptor _
    = "\n\
      \\ACKSelect\DC28\n\
      \\aoperand\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\aoperand\DC2\DC4\n\
      \\ENQfield\CAN\STX \SOH(\tR\ENQfield\DC2\ESC\n\
      \\ttest_only\CAN\ETX \SOH(\bR\btestOnly"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        operand__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "operand"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'operand")) ::
              Data.ProtoLens.FieldDescriptor Expr'Select
        field__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"field")) ::
              Data.ProtoLens.FieldDescriptor Expr'Select
        testOnly__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "test_only"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"testOnly")) ::
              Data.ProtoLens.FieldDescriptor Expr'Select
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, operand__field_descriptor),
           (Data.ProtoLens.Tag 2, field__field_descriptor),
           (Data.ProtoLens.Tag 3, testOnly__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Expr'Select'_unknownFields
        (\ x__ y__ -> x__ {_Expr'Select'_unknownFields = y__})
  defMessage
    = Expr'Select'_constructor
        {_Expr'Select'operand = Prelude.Nothing,
         _Expr'Select'field = Data.ProtoLens.fieldDefault,
         _Expr'Select'testOnly = Data.ProtoLens.fieldDefault,
         _Expr'Select'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Expr'Select -> Data.ProtoLens.Encoding.Bytes.Parser Expr'Select
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
                                       "operand"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"operand") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "field"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"field") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "test_only"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"testOnly") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Select"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'operand") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"field") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"testOnly") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Expr'Select where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Expr'Select'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Expr'Select'operand x__)
                (Control.DeepSeq.deepseq
                   (_Expr'Select'field x__)
                   (Control.DeepSeq.deepseq (_Expr'Select'testOnly x__) ())))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.expr' @:: Lens' ParsedExpr Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'expr' @:: Lens' ParsedExpr (Prelude.Maybe Expr)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.sourceInfo' @:: Lens' ParsedExpr SourceInfo@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'sourceInfo' @:: Lens' ParsedExpr (Prelude.Maybe SourceInfo)@ -}
data ParsedExpr
  = ParsedExpr'_constructor {_ParsedExpr'expr :: !(Prelude.Maybe Expr),
                             _ParsedExpr'sourceInfo :: !(Prelude.Maybe SourceInfo),
                             _ParsedExpr'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ParsedExpr where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ParsedExpr "expr" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParsedExpr'expr (\ x__ y__ -> x__ {_ParsedExpr'expr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ParsedExpr "maybe'expr" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParsedExpr'expr (\ x__ y__ -> x__ {_ParsedExpr'expr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ParsedExpr "sourceInfo" SourceInfo where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParsedExpr'sourceInfo
           (\ x__ y__ -> x__ {_ParsedExpr'sourceInfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ParsedExpr "maybe'sourceInfo" (Prelude.Maybe SourceInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ParsedExpr'sourceInfo
           (\ x__ y__ -> x__ {_ParsedExpr'sourceInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Message ParsedExpr where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.ParsedExpr"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \ParsedExpr\DC22\n\
      \\EOTexpr\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\EOTexpr\DC2E\n\
      \\vsource_info\CAN\ETX \SOH(\v2$.google.api.expr.v1alpha1.SourceInfoR\n\
      \sourceInfo"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        expr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "expr"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'expr")) ::
              Data.ProtoLens.FieldDescriptor ParsedExpr
        sourceInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SourceInfo)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceInfo")) ::
              Data.ProtoLens.FieldDescriptor ParsedExpr
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, expr__field_descriptor),
           (Data.ProtoLens.Tag 3, sourceInfo__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ParsedExpr'_unknownFields
        (\ x__ y__ -> x__ {_ParsedExpr'_unknownFields = y__})
  defMessage
    = ParsedExpr'_constructor
        {_ParsedExpr'expr = Prelude.Nothing,
         _ParsedExpr'sourceInfo = Prelude.Nothing,
         _ParsedExpr'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ParsedExpr -> Data.ProtoLens.Encoding.Bytes.Parser ParsedExpr
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
                                       "expr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"expr") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "source_info"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sourceInfo") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ParsedExpr"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'expr") _x
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
                       (Data.ProtoLens.Field.field @"maybe'sourceInfo") _x
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
instance Control.DeepSeq.NFData ParsedExpr where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ParsedExpr'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ParsedExpr'expr x__)
                (Control.DeepSeq.deepseq (_ParsedExpr'sourceInfo x__) ()))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.syntaxVersion' @:: Lens' SourceInfo Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.location' @:: Lens' SourceInfo Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.lineOffsets' @:: Lens' SourceInfo [Data.Int.Int32]@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.vec'lineOffsets' @:: Lens' SourceInfo (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.positions' @:: Lens' SourceInfo (Data.Map.Map Data.Int.Int64 Data.Int.Int32)@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.macroCalls' @:: Lens' SourceInfo (Data.Map.Map Data.Int.Int64 Expr)@ -}
data SourceInfo
  = SourceInfo'_constructor {_SourceInfo'syntaxVersion :: !Data.Text.Text,
                             _SourceInfo'location :: !Data.Text.Text,
                             _SourceInfo'lineOffsets :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                             _SourceInfo'positions :: !(Data.Map.Map Data.Int.Int64 Data.Int.Int32),
                             _SourceInfo'macroCalls :: !(Data.Map.Map Data.Int.Int64 Expr),
                             _SourceInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SourceInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SourceInfo "syntaxVersion" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'syntaxVersion
           (\ x__ y__ -> x__ {_SourceInfo'syntaxVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourceInfo "location" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'location
           (\ x__ y__ -> x__ {_SourceInfo'location = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourceInfo "lineOffsets" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'lineOffsets
           (\ x__ y__ -> x__ {_SourceInfo'lineOffsets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SourceInfo "vec'lineOffsets" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'lineOffsets
           (\ x__ y__ -> x__ {_SourceInfo'lineOffsets = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourceInfo "positions" (Data.Map.Map Data.Int.Int64 Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'positions
           (\ x__ y__ -> x__ {_SourceInfo'positions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourceInfo "macroCalls" (Data.Map.Map Data.Int.Int64 Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'macroCalls
           (\ x__ y__ -> x__ {_SourceInfo'macroCalls = y__}))
        Prelude.id
instance Data.ProtoLens.Message SourceInfo where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.SourceInfo"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \SourceInfo\DC2%\n\
      \\SOsyntax_version\CAN\SOH \SOH(\tR\rsyntaxVersion\DC2\SUB\n\
      \\blocation\CAN\STX \SOH(\tR\blocation\DC2!\n\
      \\fline_offsets\CAN\ETX \ETX(\ENQR\vlineOffsets\DC2Q\n\
      \\tpositions\CAN\EOT \ETX(\v23.google.api.expr.v1alpha1.SourceInfo.PositionsEntryR\tpositions\DC2U\n\
      \\vmacro_calls\CAN\ENQ \ETX(\v24.google.api.expr.v1alpha1.SourceInfo.MacroCallsEntryR\n\
      \macroCalls\SUB<\n\
      \\SOPositionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB]\n\
      \\SIMacroCallsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC24\n\
      \\ENQvalue\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        syntaxVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "syntax_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"syntaxVersion")) ::
              Data.ProtoLens.FieldDescriptor SourceInfo
        location__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "location"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"location")) ::
              Data.ProtoLens.FieldDescriptor SourceInfo
        lineOffsets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "line_offsets"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"lineOffsets")) ::
              Data.ProtoLens.FieldDescriptor SourceInfo
        positions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "positions"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SourceInfo'PositionsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"positions")) ::
              Data.ProtoLens.FieldDescriptor SourceInfo
        macroCalls__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "macro_calls"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SourceInfo'MacroCallsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"macroCalls")) ::
              Data.ProtoLens.FieldDescriptor SourceInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, syntaxVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, location__field_descriptor),
           (Data.ProtoLens.Tag 3, lineOffsets__field_descriptor),
           (Data.ProtoLens.Tag 4, positions__field_descriptor),
           (Data.ProtoLens.Tag 5, macroCalls__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SourceInfo'_unknownFields
        (\ x__ y__ -> x__ {_SourceInfo'_unknownFields = y__})
  defMessage
    = SourceInfo'_constructor
        {_SourceInfo'syntaxVersion = Data.ProtoLens.fieldDefault,
         _SourceInfo'location = Data.ProtoLens.fieldDefault,
         _SourceInfo'lineOffsets = Data.Vector.Generic.empty,
         _SourceInfo'positions = Data.Map.empty,
         _SourceInfo'macroCalls = Data.Map.empty,
         _SourceInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SourceInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
             -> Data.ProtoLens.Encoding.Bytes.Parser SourceInfo
        loop x mutable'lineOffsets
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'lineOffsets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'lineOffsets)
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
                              (Data.ProtoLens.Field.field @"vec'lineOffsets")
                              frozen'lineOffsets
                              x))
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
                                       "syntax_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"syntaxVersion") y x)
                                  mutable'lineOffsets
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "location"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"location") y x)
                                  mutable'lineOffsets
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "line_offsets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'lineOffsets y)
                                loop x v
                        26
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
                                                                    "line_offsets"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'lineOffsets)
                                loop x y
                        34
                          -> do !(entry :: SourceInfo'PositionsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                           (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                               Data.ProtoLens.Encoding.Bytes.isolate
                                                                                 (Prelude.fromIntegral
                                                                                    len)
                                                                                 Data.ProtoLens.parseMessage)
                                                                           "positions"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"positions")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'lineOffsets)
                        42
                          -> do !(entry :: SourceInfo'MacroCallsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                            (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                Data.ProtoLens.Encoding.Bytes.isolate
                                                                                  (Prelude.fromIntegral
                                                                                     len)
                                                                                  Data.ProtoLens.parseMessage)
                                                                            "macro_calls"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"macroCalls")
                                        (\ !t -> Data.Map.insert key value t)
                                        x)
                                     mutable'lineOffsets)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'lineOffsets
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'lineOffsets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'lineOffsets)
          "SourceInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"syntaxVersion") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"location") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
                      p = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'lineOffsets") _x
                    in
                      if Data.Vector.Generic.null p then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               (Data.ProtoLens.Encoding.Bytes.runBuilder
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     p))))
                   ((Data.Monoid.<>)
                      (Data.Monoid.mconcat
                         (Prelude.map
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"key")
                                          (Prelude.fst _v)
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"value")
                                             (Prelude.snd _v)
                                             (Data.ProtoLens.defMessage ::
                                                SourceInfo'PositionsEntry)))))
                            (Data.Map.toList
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"positions") _x))))
                      ((Data.Monoid.<>)
                         (Data.Monoid.mconcat
                            (Prelude.map
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"key")
                                             (Prelude.fst _v)
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"value")
                                                (Prelude.snd _v)
                                                (Data.ProtoLens.defMessage ::
                                                   SourceInfo'MacroCallsEntry)))))
                               (Data.Map.toList
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"macroCalls") _x))))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData SourceInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SourceInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SourceInfo'syntaxVersion x__)
                (Control.DeepSeq.deepseq
                   (_SourceInfo'location x__)
                   (Control.DeepSeq.deepseq
                      (_SourceInfo'lineOffsets x__)
                      (Control.DeepSeq.deepseq
                         (_SourceInfo'positions x__)
                         (Control.DeepSeq.deepseq (_SourceInfo'macroCalls x__) ())))))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.key' @:: Lens' SourceInfo'MacroCallsEntry Data.Int.Int64@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.value' @:: Lens' SourceInfo'MacroCallsEntry Expr@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.maybe'value' @:: Lens' SourceInfo'MacroCallsEntry (Prelude.Maybe Expr)@ -}
data SourceInfo'MacroCallsEntry
  = SourceInfo'MacroCallsEntry'_constructor {_SourceInfo'MacroCallsEntry'key :: !Data.Int.Int64,
                                             _SourceInfo'MacroCallsEntry'value :: !(Prelude.Maybe Expr),
                                             _SourceInfo'MacroCallsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SourceInfo'MacroCallsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SourceInfo'MacroCallsEntry "key" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'MacroCallsEntry'key
           (\ x__ y__ -> x__ {_SourceInfo'MacroCallsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourceInfo'MacroCallsEntry "value" Expr where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'MacroCallsEntry'value
           (\ x__ y__ -> x__ {_SourceInfo'MacroCallsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField SourceInfo'MacroCallsEntry "maybe'value" (Prelude.Maybe Expr) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'MacroCallsEntry'value
           (\ x__ y__ -> x__ {_SourceInfo'MacroCallsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message SourceInfo'MacroCallsEntry where
  messageName _
    = Data.Text.pack
        "google.api.expr.v1alpha1.SourceInfo.MacroCallsEntry"
  packedMessageDescriptor _
    = "\n\
      \\SIMacroCallsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC24\n\
      \\ENQvalue\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor SourceInfo'MacroCallsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Expr)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor SourceInfo'MacroCallsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SourceInfo'MacroCallsEntry'_unknownFields
        (\ x__ y__
           -> x__ {_SourceInfo'MacroCallsEntry'_unknownFields = y__})
  defMessage
    = SourceInfo'MacroCallsEntry'_constructor
        {_SourceInfo'MacroCallsEntry'key = Data.ProtoLens.fieldDefault,
         _SourceInfo'MacroCallsEntry'value = Prelude.Nothing,
         _SourceInfo'MacroCallsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SourceInfo'MacroCallsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser SourceInfo'MacroCallsEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
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
          (do loop Data.ProtoLens.defMessage) "MacroCallsEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData SourceInfo'MacroCallsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SourceInfo'MacroCallsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SourceInfo'MacroCallsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_SourceInfo'MacroCallsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.key' @:: Lens' SourceInfo'PositionsEntry Data.Int.Int64@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.value' @:: Lens' SourceInfo'PositionsEntry Data.Int.Int32@ -}
data SourceInfo'PositionsEntry
  = SourceInfo'PositionsEntry'_constructor {_SourceInfo'PositionsEntry'key :: !Data.Int.Int64,
                                            _SourceInfo'PositionsEntry'value :: !Data.Int.Int32,
                                            _SourceInfo'PositionsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SourceInfo'PositionsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SourceInfo'PositionsEntry "key" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'PositionsEntry'key
           (\ x__ y__ -> x__ {_SourceInfo'PositionsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourceInfo'PositionsEntry "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourceInfo'PositionsEntry'value
           (\ x__ y__ -> x__ {_SourceInfo'PositionsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message SourceInfo'PositionsEntry where
  messageName _
    = Data.Text.pack
        "google.api.expr.v1alpha1.SourceInfo.PositionsEntry"
  packedMessageDescriptor _
    = "\n\
      \\SOPositionsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor SourceInfo'PositionsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor SourceInfo'PositionsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SourceInfo'PositionsEntry'_unknownFields
        (\ x__ y__
           -> x__ {_SourceInfo'PositionsEntry'_unknownFields = y__})
  defMessage
    = SourceInfo'PositionsEntry'_constructor
        {_SourceInfo'PositionsEntry'key = Data.ProtoLens.fieldDefault,
         _SourceInfo'PositionsEntry'value = Data.ProtoLens.fieldDefault,
         _SourceInfo'PositionsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SourceInfo'PositionsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser SourceInfo'PositionsEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
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
          (do loop Data.ProtoLens.defMessage) "PositionsEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SourceInfo'PositionsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SourceInfo'PositionsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SourceInfo'PositionsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_SourceInfo'PositionsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.location' @:: Lens' SourcePosition Data.Text.Text@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.offset' @:: Lens' SourcePosition Data.Int.Int32@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.line' @:: Lens' SourcePosition Data.Int.Int32@
         * 'Proto.Google.Api.Expr.V1alpha1.Syntax_Fields.column' @:: Lens' SourcePosition Data.Int.Int32@ -}
data SourcePosition
  = SourcePosition'_constructor {_SourcePosition'location :: !Data.Text.Text,
                                 _SourcePosition'offset :: !Data.Int.Int32,
                                 _SourcePosition'line :: !Data.Int.Int32,
                                 _SourcePosition'column :: !Data.Int.Int32,
                                 _SourcePosition'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SourcePosition where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SourcePosition "location" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourcePosition'location
           (\ x__ y__ -> x__ {_SourcePosition'location = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourcePosition "offset" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourcePosition'offset
           (\ x__ y__ -> x__ {_SourcePosition'offset = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourcePosition "line" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourcePosition'line
           (\ x__ y__ -> x__ {_SourcePosition'line = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SourcePosition "column" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SourcePosition'column
           (\ x__ y__ -> x__ {_SourcePosition'column = y__}))
        Prelude.id
instance Data.ProtoLens.Message SourcePosition where
  messageName _
    = Data.Text.pack "google.api.expr.v1alpha1.SourcePosition"
  packedMessageDescriptor _
    = "\n\
      \\SOSourcePosition\DC2\SUB\n\
      \\blocation\CAN\SOH \SOH(\tR\blocation\DC2\SYN\n\
      \\ACKoffset\CAN\STX \SOH(\ENQR\ACKoffset\DC2\DC2\n\
      \\EOTline\CAN\ETX \SOH(\ENQR\EOTline\DC2\SYN\n\
      \\ACKcolumn\CAN\EOT \SOH(\ENQR\ACKcolumn"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        location__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "location"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"location")) ::
              Data.ProtoLens.FieldDescriptor SourcePosition
        offset__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offset"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"offset")) ::
              Data.ProtoLens.FieldDescriptor SourcePosition
        line__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "line"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"line")) ::
              Data.ProtoLens.FieldDescriptor SourcePosition
        column__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "column"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"column")) ::
              Data.ProtoLens.FieldDescriptor SourcePosition
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, location__field_descriptor),
           (Data.ProtoLens.Tag 2, offset__field_descriptor),
           (Data.ProtoLens.Tag 3, line__field_descriptor),
           (Data.ProtoLens.Tag 4, column__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SourcePosition'_unknownFields
        (\ x__ y__ -> x__ {_SourcePosition'_unknownFields = y__})
  defMessage
    = SourcePosition'_constructor
        {_SourcePosition'location = Data.ProtoLens.fieldDefault,
         _SourcePosition'offset = Data.ProtoLens.fieldDefault,
         _SourcePosition'line = Data.ProtoLens.fieldDefault,
         _SourcePosition'column = Data.ProtoLens.fieldDefault,
         _SourcePosition'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SourcePosition
          -> Data.ProtoLens.Encoding.Bytes.Parser SourcePosition
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
                                       "location"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"location") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "offset"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"offset") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "line"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"line") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "column"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"column") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SourcePosition"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"location") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"offset") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"line") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"column") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SourcePosition where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SourcePosition'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SourcePosition'location x__)
                (Control.DeepSeq.deepseq
                   (_SourcePosition'offset x__)
                   (Control.DeepSeq.deepseq
                      (_SourcePosition'line x__)
                      (Control.DeepSeq.deepseq (_SourcePosition'column x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%google/api/expr/v1alpha1/syntax.proto\DC2\CANgoogle.api.expr.v1alpha1\SUB\RSgoogle/protobuf/duration.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\USgoogle/protobuf/timestamp.proto\"\135\SOH\n\
    \\n\
    \ParsedExpr\DC22\n\
    \\EOTexpr\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\EOTexpr\DC2E\n\
    \\vsource_info\CAN\ETX \SOH(\v2$.google.api.expr.v1alpha1.SourceInfoR\n\
    \sourceInfo\"\220\f\n\
    \\EOTExpr\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\ETXR\STXid\DC2C\n\
    \\n\
    \const_expr\CAN\ETX \SOH(\v2\".google.api.expr.v1alpha1.ConstantH\NULR\tconstExpr\DC2E\n\
    \\n\
    \ident_expr\CAN\EOT \SOH(\v2$.google.api.expr.v1alpha1.Expr.IdentH\NULR\tidentExpr\DC2H\n\
    \\vselect_expr\CAN\ENQ \SOH(\v2%.google.api.expr.v1alpha1.Expr.SelectH\NULR\n\
    \selectExpr\DC2B\n\
    \\tcall_expr\CAN\ACK \SOH(\v2#.google.api.expr.v1alpha1.Expr.CallH\NULR\bcallExpr\DC2H\n\
    \\tlist_expr\CAN\a \SOH(\v2).google.api.expr.v1alpha1.Expr.CreateListH\NULR\blistExpr\DC2N\n\
    \\vstruct_expr\CAN\b \SOH(\v2+.google.api.expr.v1alpha1.Expr.CreateStructH\NULR\n\
    \structExpr\DC2]\n\
    \\DC2comprehension_expr\CAN\t \SOH(\v2,.google.api.expr.v1alpha1.Expr.ComprehensionH\NULR\DC1comprehensionExpr\SUB\ESC\n\
    \\ENQIdent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\SUBu\n\
    \\ACKSelect\DC28\n\
    \\aoperand\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\aoperand\DC2\DC4\n\
    \\ENQfield\CAN\STX \SOH(\tR\ENQfield\DC2\ESC\n\
    \\ttest_only\CAN\ETX \SOH(\bR\btestOnly\SUB\142\SOH\n\
    \\EOTCall\DC26\n\
    \\ACKtarget\CAN\SOH \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ACKtarget\DC2\SUB\n\
    \\bfunction\CAN\STX \SOH(\tR\bfunction\DC22\n\
    \\EOTargs\CAN\ETX \ETX(\v2\RS.google.api.expr.v1alpha1.ExprR\EOTargs\SUBH\n\
    \\n\
    \CreateList\DC2:\n\
    \\belements\CAN\SOH \ETX(\v2\RS.google.api.expr.v1alpha1.ExprR\belements\SUB\180\STX\n\
    \\fCreateStruct\DC2!\n\
    \\fmessage_name\CAN\SOH \SOH(\tR\vmessageName\DC2K\n\
    \\aentries\CAN\STX \ETX(\v21.google.api.expr.v1alpha1.Expr.CreateStruct.EntryR\aentries\SUB\179\SOH\n\
    \\ENQEntry\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\ETXR\STXid\DC2\GS\n\
    \\tfield_key\CAN\STX \SOH(\tH\NULR\bfieldKey\DC29\n\
    \\amap_key\CAN\ETX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprH\NULR\ACKmapKey\DC24\n\
    \\ENQvalue\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ENQvalueB\n\
    \\n\
    \\bkey_kind\SUB\253\STX\n\
    \\rComprehension\DC2\EM\n\
    \\biter_var\CAN\SOH \SOH(\tR\aiterVar\DC2=\n\
    \\n\
    \iter_range\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\titerRange\DC2\EM\n\
    \\baccu_var\CAN\ETX \SOH(\tR\aaccuVar\DC2;\n\
    \\taccu_init\CAN\EOT \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\baccuInit\DC2E\n\
    \\SOloop_condition\CAN\ENQ \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\rloopCondition\DC2;\n\
    \\tloop_step\CAN\ACK \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\bloopStep\DC26\n\
    \\ACKresult\CAN\a \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ACKresultB\v\n\
    \\texpr_kind\"\193\ETX\n\
    \\bConstant\DC2;\n\
    \\n\
    \null_value\CAN\SOH \SOH(\SO2\SUB.google.protobuf.NullValueH\NULR\tnullValue\DC2\US\n\
    \\n\
    \bool_value\CAN\STX \SOH(\bH\NULR\tboolValue\DC2!\n\
    \\vint64_value\CAN\ETX \SOH(\ETXH\NULR\n\
    \int64Value\DC2#\n\
    \\fuint64_value\CAN\EOT \SOH(\EOTH\NULR\vuint64Value\DC2#\n\
    \\fdouble_value\CAN\ENQ \SOH(\SOHH\NULR\vdoubleValue\DC2#\n\
    \\fstring_value\CAN\ACK \SOH(\tH\NULR\vstringValue\DC2!\n\
    \\vbytes_value\CAN\a \SOH(\fH\NULR\n\
    \bytesValue\DC2F\n\
    \\SOduration_value\CAN\b \SOH(\v2\EM.google.protobuf.DurationH\NULR\rdurationValueB\STX\CAN\SOH\DC2I\n\
    \\SItimestamp_value\CAN\t \SOH(\v2\SUB.google.protobuf.TimestampH\NULR\SOtimestampValueB\STX\CAN\SOHB\SI\n\
    \\rconstant_kind\"\185\ETX\n\
    \\n\
    \SourceInfo\DC2%\n\
    \\SOsyntax_version\CAN\SOH \SOH(\tR\rsyntaxVersion\DC2\SUB\n\
    \\blocation\CAN\STX \SOH(\tR\blocation\DC2!\n\
    \\fline_offsets\CAN\ETX \ETX(\ENQR\vlineOffsets\DC2Q\n\
    \\tpositions\CAN\EOT \ETX(\v23.google.api.expr.v1alpha1.SourceInfo.PositionsEntryR\tpositions\DC2U\n\
    \\vmacro_calls\CAN\ENQ \ETX(\v24.google.api.expr.v1alpha1.SourceInfo.MacroCallsEntryR\n\
    \macroCalls\SUB<\n\
    \\SOPositionsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\ENQR\ENQvalue:\STX8\SOH\SUB]\n\
    \\SIMacroCallsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\ETXR\ETXkey\DC24\n\
    \\ENQvalue\CAN\STX \SOH(\v2\RS.google.api.expr.v1alpha1.ExprR\ENQvalue:\STX8\SOH\"p\n\
    \\SOSourcePosition\DC2\SUB\n\
    \\blocation\CAN\SOH \SOH(\tR\blocation\DC2\SYN\n\
    \\ACKoffset\CAN\STX \SOH(\ENQR\ACKoffset\DC2\DC2\n\
    \\EOTline\CAN\ETX \SOH(\ENQR\EOTline\DC2\SYN\n\
    \\ACKcolumn\CAN\EOT \SOH(\ENQR\ACKcolumnBn\n\
    \\FScom.google.api.expr.v1alpha1B\vSyntaxProtoP\SOHZ<google.golang.org/genproto/googleapis/api/expr/v1alpha1;expr\248\SOH\SOHJ\193^\n\
    \\a\DC2\ENQ\SO\NUL\198\STX\SOH\n\
    \\188\EOT\n\
    \\SOH\f\DC2\ETX\SO\NUL\DC22\177\EOT Copyright 2020 Google LLC\n\
    \\n\
    \ Licensed under the Apache License, Version 2.0 (the \"License\");\n\
    \ you may not use this file except in compliance with the License.\n\
    \ You may obtain a copy of the License at\n\
    \\n\
    \     http://www.apache.org/licenses/LICENSE-2.0\n\
    \\n\
    \ Unless required by applicable law or agreed to in writing, software\n\
    \ distributed under the License is distributed on an \"AS IS\" BASIS,\n\
    \ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
    \ See the License for the specific language governing permissions and\n\
    \ limitations under the License.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\DLE\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\DC2\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\DC3\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\DC4\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SYN\NUL\US\n\
    \\t\n\
    \\STX\b\US\DC2\ETX\SYN\NUL\US\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETB\NULS\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ETB\NULS\n\
    \\b\n\
    \\SOH\b\DC2\ETX\CAN\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\CAN\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EM\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\EM\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SUB\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SUB\NUL5\n\
    \\165\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\US\NUL%\SOH\SUBK An expression together with source information as returned by the parser.\n\
    \2L A representation of the abstract syntax of the Common Expression Language.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\US\b\DC2\n\
    \%\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX!\STX\DLE\SUB\CAN The parsed expression.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX!\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX!\a\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX!\SO\SI\n\
    \S\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX$\STX\GS\SUBF The source info derived from input that generated the parsed `expr`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX$\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX$\r\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX$\ESC\FS\n\
    \\134\a\n\
    \\STX\EOT\SOH\DC2\ENQ6\NUL\226\SOH\SOH\SUB\248\ACK An abstract representation of a common expression.\n\
    \\n\
    \ Expressions are abstractly represented as a collection of identifiers,\n\
    \ select statements, function calls, literals, and comprehensions. All\n\
    \ operators with the exception of the '.' operator are modelled as function\n\
    \ calls. This makes it easy to represent new operators into the existing AST.\n\
    \\n\
    \ All references within expressions must resolve to a [Decl][google.api.expr.v1alpha1.Decl] provided at\n\
    \ type-check for an expression to be valid. A reference may either be a bare\n\
    \ identifier `name` or a qualified identifier `google.api.name`. References\n\
    \ may either refer to a value or a function declaration.\n\
    \\n\
    \ For example, the expression `google.api.name.startsWith('expr')` references\n\
    \ the declaration `google.api.name` within a [Expr.Select][google.api.expr.v1alpha1.Expr.Select] expression, and\n\
    \ the function declaration `startsWith`.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX6\b\f\n\
    \9\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOT8\STX>\ETX\SUB+ An identifier expression. e.g. `request`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETX8\n\
    \\SI\n\
    \\201\SOH\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETX=\EOT\DC4\SUB\185\SOH Required. Holds a single, unqualified identifier, possibly preceded by a\n\
    \ '.'.\n\
    \\n\
    \ Qualified names are represented by the [Expr.Select][google.api.expr.v1alpha1.Expr.Select] expression.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ENQ\DC2\ETX=\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETX=\v\SI\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETX=\DC2\DC3\n\
    \B\n\
    \\EOT\EOT\SOH\ETX\SOH\DC2\EOTA\STXR\ETX\SUB4 A field selection expression. e.g. `request.auth`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\SOH\SOH\DC2\ETXA\n\
    \\DLE\n\
    \\182\SOH\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\NUL\DC2\ETXF\EOT\NAK\SUB\166\SOH Required. The target of the selection expression.\n\
    \\n\
    \ For example, in the select expression `request.auth`, the `request`\n\
    \ portion of the expression is the `operand`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ACK\DC2\ETXF\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\SOH\DC2\ETXF\t\DLE\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ETX\DC2\ETXF\DC3\DC4\n\
    \\176\SOH\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\SOH\DC2\ETXL\EOT\NAK\SUB\160\SOH Required. The name of the field to select.\n\
    \\n\
    \ For example, in the select expression `request.auth`, the `auth` portion\n\
    \ of the expression would be the `field`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ENQ\DC2\ETXL\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\SOH\DC2\ETXL\v\DLE\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\SOH\ETX\DC2\ETXL\DC3\DC4\n\
    \\133\SOH\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\STX\DC2\ETXQ\EOT\ETB\SUBv Whether the select is to be interpreted as a field presence test.\n\
    \\n\
    \ This results from the macro `has(request.auth)`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\STX\ENQ\DC2\ETXQ\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\STX\SOH\DC2\ETXQ\t\DC2\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\STX\ETX\DC2\ETXQ\NAK\SYN\n\
    \\138\SOH\n\
    \\EOT\EOT\SOH\ETX\STX\DC2\EOTW\STXa\ETX\SUB| A call expression, including calls to predefined functions and operators.\n\
    \\n\
    \ For example, `value == 10`, `size(map_value)`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\STX\SOH\DC2\ETXW\n\
    \\SO\n\
    \]\n\
    \\ACK\EOT\SOH\ETX\STX\STX\NUL\DC2\ETXZ\EOT\DC4\SUBN The target of an method call-style expression. For example, `x` in\n\
    \ `x.f()`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ACK\DC2\ETXZ\EOT\b\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\SOH\DC2\ETXZ\t\SI\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\NUL\ETX\DC2\ETXZ\DC2\DC3\n\
    \K\n\
    \\ACK\EOT\SOH\ETX\STX\STX\SOH\DC2\ETX]\EOT\CAN\SUB< Required. The name of the function or method being called.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\ENQ\DC2\ETX]\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\SOH\DC2\ETX]\v\DC3\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\SOH\ETX\DC2\ETX]\SYN\ETB\n\
    \\US\n\
    \\ACK\EOT\SOH\ETX\STX\STX\STX\DC2\ETX`\EOT\ESC\SUB\DLE The arguments.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\EOT\DC2\ETX`\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\ACK\DC2\ETX`\r\DC1\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\SOH\DC2\ETX`\DC2\SYN\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\STX\STX\STX\ETX\DC2\ETX`\EM\SUB\n\
    \\144\SOH\n\
    \\EOT\EOT\SOH\ETX\ETX\DC2\EOTg\STXj\ETX\SUB\129\SOH A list creation expression.\n\
    \\n\
    \ Lists may either be homogenous, e.g. `[1, 2, 3]`, or heterogenous, e.g.\n\
    \ `dyn([1, 'hello', 2.0])`\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\ETX\SOH\DC2\ETXg\n\
    \\DC4\n\
    \/\n\
    \\ACK\EOT\SOH\ETX\ETX\STX\NUL\DC2\ETXi\EOT\US\SUB  The elements part of the list.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\EOT\DC2\ETXi\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\ACK\DC2\ETXi\r\DC1\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\SOH\DC2\ETXi\DC2\SUB\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\ETX\STX\NUL\ETX\DC2\ETXi\GS\RS\n\
    \\233\SOH\n\
    \\EOT\EOT\SOH\ETX\EOT\DC2\ENQq\STX\140\SOH\ETX\SUB\217\SOH A map or message creation expression.\n\
    \\n\
    \ Maps are constructed as `{'key_name': 'value'}`. Message construction is\n\
    \ similar, but prefixed with a type name and composed of field ids:\n\
    \ `types.MyType{field_id: 'value'}`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\EOT\SOH\DC2\ETXq\n\
    \\SYN\n\
    \'\n\
    \\ACK\EOT\SOH\ETX\EOT\ETX\NUL\DC2\ENQs\EOT\132\SOH\ENQ\SUB\SYN Represents an entry.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\EOT\ETX\NUL\SOH\DC2\ETXs\f\DC1\n\
    \\194\SOH\n\
    \\b\EOT\SOH\ETX\EOT\ETX\NUL\STX\NUL\DC2\ETXw\ACK\DC3\SUB\176\SOH Required. An id assigned to this node by the parser which is unique\n\
    \ in a given expression tree. This is used to associate type\n\
    \ information and other attributes to the node.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\NUL\ENQ\DC2\ETXw\ACK\v\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\NUL\SOH\DC2\ETXw\f\SO\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\NUL\ETX\DC2\ETXw\DC1\DC2\n\
    \+\n\
    \\b\EOT\SOH\ETX\EOT\ETX\NUL\b\NUL\DC2\ENQz\ACK\128\SOH\a\SUB\CAN The `Entry` key kinds.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\b\NUL\SOH\DC2\ETXz\f\DC4\n\
    \A\n\
    \\b\EOT\SOH\ETX\EOT\ETX\NUL\STX\SOH\DC2\ETX|\b\GS\SUB0 The field key for a message creator statement.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\SOH\ENQ\DC2\ETX|\b\SO\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\SOH\SOH\DC2\ETX|\SI\CAN\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\SOH\ETX\DC2\ETX|\ESC\FS\n\
    \C\n\
    \\b\EOT\SOH\ETX\EOT\ETX\NUL\STX\STX\DC2\ETX\DEL\b\EM\SUB2 The key expression for a map creation statement.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\STX\ACK\DC2\ETX\DEL\b\f\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\STX\SOH\DC2\ETX\DEL\r\DC4\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\STX\ETX\DC2\ETX\DEL\ETB\CAN\n\
    \<\n\
    \\b\EOT\SOH\ETX\EOT\ETX\NUL\STX\ETX\DC2\EOT\131\SOH\ACK\NAK\SUB* Required. The value assigned to the key.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\ETX\ACK\DC2\EOT\131\SOH\ACK\n\
    \\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\ETX\SOH\DC2\EOT\131\SOH\v\DLE\n\
    \\DC1\n\
    \\t\EOT\SOH\ETX\EOT\ETX\NUL\STX\ETX\ETX\DC2\EOT\131\SOH\DC3\DC4\n\
    \`\n\
    \\ACK\EOT\SOH\ETX\EOT\STX\NUL\DC2\EOT\136\SOH\EOT\FS\SUBP The type name of the message to be created, empty when creating map\n\
    \ literals.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\NUL\ENQ\DC2\EOT\136\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\NUL\SOH\DC2\EOT\136\SOH\v\ETB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\NUL\ETX\DC2\EOT\136\SOH\SUB\ESC\n\
    \9\n\
    \\ACK\EOT\SOH\ETX\EOT\STX\SOH\DC2\EOT\139\SOH\EOT\US\SUB) The entries in the creation expression.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\SOH\EOT\DC2\EOT\139\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\SOH\ACK\DC2\EOT\139\SOH\r\DC2\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\SOH\SOH\DC2\EOT\139\SOH\DC3\SUB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\EOT\STX\SOH\ETX\DC2\EOT\139\SOH\GS\RS\n\
    \\143\n\
    \\n\
    \\EOT\EOT\SOH\ETX\ENQ\DC2\ACK\168\SOH\STX\196\SOH\ETX\SUB\254\t A comprehension expression applied to a list or map.\n\
    \\n\
    \ Comprehensions are not part of the core syntax, but enabled with macros.\n\
    \ A macro matches a specific call signature within a parsed AST and replaces\n\
    \ the call with an alternate AST block. Macro expansion happens at parse\n\
    \ time.\n\
    \\n\
    \ The following macros are supported within CEL:\n\
    \\n\
    \ Aggregate type macros may be applied to all elements in a list or all keys\n\
    \ in a map:\n\
    \\n\
    \ *  `all`, `exists`, `exists_one` -  test a predicate expression against\n\
    \    the inputs and return `true` if the predicate is satisfied for all,\n\
    \    any, or only one value `list.all(x, x < 10)`.\n\
    \ *  `filter` - test a predicate expression against the inputs and return\n\
    \    the subset of elements which satisfy the predicate:\n\
    \    `payments.filter(p, p > 1000)`.\n\
    \ *  `map` - apply an expression to all elements in the input and return the\n\
    \    output aggregate type: `[1, 2, 3].map(i, i * i)`.\n\
    \\n\
    \ The `has(m.x)` macro tests whether the property `x` is present in struct\n\
    \ `m`. The semantics of this macro depend on the type of `m`. For proto2\n\
    \ messages `has(m.x)` is defined as 'defined, but not set`. For proto3, the\n\
    \ macro tests whether the property is set to its default. For map and struct\n\
    \ types, the macro tests whether the property `x` is defined on `m`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\ENQ\SOH\DC2\EOT\168\SOH\n\
    \\ETB\n\
    \5\n\
    \\ACK\EOT\SOH\ETX\ENQ\STX\NUL\DC2\EOT\170\SOH\EOT\CAN\SUB% The name of the iteration variable.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\NUL\ENQ\DC2\EOT\170\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\NUL\SOH\DC2\EOT\170\SOH\v\DC3\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\NUL\ETX\DC2\EOT\170\SOH\SYN\ETB\n\
    \4\n\
    \\ACK\EOT\SOH\ETX\ENQ\STX\SOH\DC2\EOT\173\SOH\EOT\CAN\SUB$ The range over which var iterates.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\SOH\ACK\DC2\EOT\173\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\SOH\SOH\DC2\EOT\173\SOH\t\DC3\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\SOH\ETX\DC2\EOT\173\SOH\SYN\ETB\n\
    \O\n\
    \\ACK\EOT\SOH\ETX\ENQ\STX\STX\DC2\EOT\176\SOH\EOT\CAN\SUB? The name of the variable used for accumulation of the result.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\STX\ENQ\DC2\EOT\176\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\STX\SOH\DC2\EOT\176\SOH\v\DC3\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\STX\ETX\DC2\EOT\176\SOH\SYN\ETB\n\
    \7\n\
    \\ACK\EOT\SOH\ETX\ENQ\STX\ETX\DC2\EOT\179\SOH\EOT\ETB\SUB' The initial value of the accumulator.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\ETX\ACK\DC2\EOT\179\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\ETX\SOH\DC2\EOT\179\SOH\t\DC2\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\ETX\ETX\DC2\EOT\179\SOH\NAK\SYN\n\
    \\203\SOH\n\
    \\ACK\EOT\SOH\ETX\ENQ\STX\EOT\DC2\EOT\185\SOH\EOT\FS\SUB\186\SOH An expression which can contain iter_var and accu_var.\n\
    \\n\
    \ Returns false when the result has been computed and may be used as\n\
    \ a hint to short-circuit the remainder of the comprehension.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\EOT\ACK\DC2\EOT\185\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\EOT\SOH\DC2\EOT\185\SOH\t\ETB\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\EOT\ETX\DC2\EOT\185\SOH\SUB\ESC\n\
    \o\n\
    \\ACK\EOT\SOH\ETX\ENQ\STX\ENQ\DC2\EOT\190\SOH\EOT\ETB\SUB_ An expression which can contain iter_var and accu_var.\n\
    \\n\
    \ Computes the next value of accu_var.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\ENQ\ACK\DC2\EOT\190\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\ENQ\SOH\DC2\EOT\190\SOH\t\DC2\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\ENQ\ETX\DC2\EOT\190\SOH\NAK\SYN\n\
    \R\n\
    \\ACK\EOT\SOH\ETX\ENQ\STX\ACK\DC2\EOT\195\SOH\EOT\DC4\SUBB An expression which can contain accu_var.\n\
    \\n\
    \ Computes the result.\n\
    \\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\ACK\ACK\DC2\EOT\195\SOH\EOT\b\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\ACK\SOH\DC2\EOT\195\SOH\t\SI\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\ENQ\STX\ACK\ETX\DC2\EOT\195\SOH\DC2\DC3\n\
    \\207\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\201\SOH\STX\SI\SUB\192\SOH Required. An id assigned to this node by the parser which is unique in a\n\
    \ given expression tree. This is used to associate type information and other\n\
    \ attributes to a node in the parse tree.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\EOT\201\SOH\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\201\SOH\b\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\201\SOH\r\SO\n\
    \4\n\
    \\EOT\EOT\SOH\b\NUL\DC2\ACK\204\SOH\STX\225\SOH\ETX\SUB$ Required. Variants of expressions.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\EOT\204\SOH\b\DC1\n\
    \%\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\206\SOH\EOT\FS\SUB\ETB A literal expression.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\206\SOH\EOT\f\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\206\SOH\r\ETB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\206\SOH\SUB\ESC\n\
    \)\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\209\SOH\EOT\EM\SUB\ESC An identifier expression.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\EOT\209\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\209\SOH\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\209\SOH\ETB\CAN\n\
    \B\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\212\SOH\EOT\ESC\SUB4 A field selection expression, e.g. `request.auth`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\EOT\212\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\212\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\212\SOH\EM\SUB\n\
    \Y\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT\215\SOH\EOT\ETB\SUBK A call expression, including calls to predefined functions and operators.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\EOT\215\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\EOT\215\SOH\t\DC2\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\EOT\215\SOH\NAK\SYN\n\
    \+\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\218\SOH\EOT\GS\SUB\GS A list creation expression.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\EOT\218\SOH\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\218\SOH\SI\CAN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\218\SOH\ESC\FS\n\
    \5\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\EOT\221\SOH\EOT!\SUB' A map or message creation expression.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\EOT\221\SOH\EOT\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\EOT\221\SOH\DC1\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\EOT\221\SOH\US \n\
    \+\n\
    \\EOT\EOT\SOH\STX\a\DC2\EOT\224\SOH\EOT)\SUB\GS A comprehension expression.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\EOT\224\SOH\EOT\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\EOT\224\SOH\DC2$\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\EOT\224\SOH'(\n\
    \\154\EOT\n\
    \\STX\EOT\STX\DC2\ACK\241\SOH\NUL\147\STX\SOH\SUB\139\EOT Represents a primitive literal.\n\
    \\n\
    \ Named 'Constant' here for backwards compatibility.\n\
    \\n\
    \ This is similar as the primitives supported in the well-known type\n\
    \ `google.protobuf.Value`, but richer so it can represent CEL's full range of\n\
    \ primitives.\n\
    \\n\
    \ Lists and structs are not included as constants as these aggregate types may\n\
    \ contain [Expr][google.api.expr.v1alpha1.Expr] elements which require evaluation and are thus not constant.\n\
    \\n\
    \ Examples of literals include: `\"hello\"`, `b'bytes'`, `1u`, `4.2`, `-2`,\n\
    \ `true`, `null`.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\241\SOH\b\DLE\n\
    \5\n\
    \\EOT\EOT\STX\b\NUL\DC2\ACK\243\SOH\STX\146\STX\ETX\SUB% Required. The valid constant kinds.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\EOT\243\SOH\b\NAK\n\
    \\ESC\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\245\SOH\EOT-\SUB\r null value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\245\SOH\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\245\SOH\RS(\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\245\SOH+,\n\
    \\RS\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\248\SOH\EOT\CAN\SUB\DLE boolean value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\EOT\248\SOH\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\248\SOH\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\248\SOH\SYN\ETB\n\
    \\FS\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\251\SOH\EOT\SUB\SUB\SO int64 value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\EOT\251\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\251\SOH\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\251\SOH\CAN\EM\n\
    \\GS\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\254\SOH\EOT\FS\SUB\SI uint64 value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\EOT\254\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\254\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\254\SOH\SUB\ESC\n\
    \\GS\n\
    \\EOT\EOT\STX\STX\EOT\DC2\EOT\129\STX\EOT\FS\SUB\SI double value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\EOT\129\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\EOT\129\STX\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\EOT\129\STX\SUB\ESC\n\
    \\GS\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\EOT\132\STX\EOT\FS\SUB\SI string value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\EOT\132\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\EOT\132\STX\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\EOT\132\STX\SUB\ESC\n\
    \\FS\n\
    \\EOT\EOT\STX\STX\ACK\DC2\EOT\135\STX\EOT\SUB\SUB\SO bytes value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\EOT\135\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\EOT\135\STX\n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\EOT\135\STX\CAN\EM\n\
    \k\n\
    \\EOT\EOT\STX\STX\a\DC2\EOT\140\STX\EOTD\SUB] protobuf.Duration value.\n\
    \\n\
    \ Deprecated: duration is no longer considered a builtin cel type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ACK\DC2\EOT\140\STX\EOT\FS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\EOT\140\STX\GS+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\EOT\140\STX./\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\a\b\DC2\EOT\140\STX0C\n\
    \\SO\n\
    \\ACK\EOT\STX\STX\a\b\ETX\DC2\EOT\140\STX1B\n\
    \m\n\
    \\EOT\EOT\STX\STX\b\DC2\EOT\145\STX\EOTF\SUB_ protobuf.Timestamp value.\n\
    \\n\
    \ Deprecated: timestamp is no longer considered a builtin cel type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\ACK\DC2\EOT\145\STX\EOT\GS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\EOT\145\STX\RS-\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\EOT\145\STX01\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\b\b\DC2\EOT\145\STX2E\n\
    \\SO\n\
    \\ACK\EOT\STX\STX\b\b\ETX\DC2\EOT\145\STX3D\n\
    \;\n\
    \\STX\EOT\ETX\DC2\ACK\150\STX\NUL\181\STX\SOH\SUB- Source information collected at parse time.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\150\STX\b\DC2\n\
    \>\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\152\STX\STX\FS\SUB0 The syntax version of the source, e.g. `cel1`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\152\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\152\STX\t\ETB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\152\STX\SUB\ESC\n\
    \\215\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\159\STX\STX\SYN\SUB\200\SOH The location name. All position information attached to an expression is\n\
    \ relative to this location.\n\
    \\n\
    \ The location could be a file, UI element, or similar. For example,\n\
    \ `acme/app/AnvilPolicy.cel`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\159\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\159\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\159\STX\DC4\NAK\n\
    \\172\STX\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\166\STX\STX\"\SUB\157\STX Monotonically increasing list of character offsets where newlines appear.\n\
    \\n\
    \ The line number of a given position is the index `i` where for a given\n\
    \ `id` the `line_offsets[i] < id_positions[id] < line_offsets[i+1]`. The\n\
    \ column may be derivd from `id_positions[id] - line_offsets[i]`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\EOT\166\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\EOT\166\STX\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\166\STX\DC1\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\166\STX !\n\
    \e\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\EOT\170\STX\STX\"\SUBW A map from the parse node id (e.g. `Expr.id`) to the character offset\n\
    \ within source.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ACK\DC2\EOT\170\STX\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\EOT\170\STX\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\EOT\170\STX !\n\
    \\212\ETX\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\EOT\180\STX\STX#\SUB\197\ETX A map from the parse node id where a macro replacement was made to the\n\
    \ call `Expr` that resulted in a macro expansion.\n\
    \\n\
    \ For example, `has(value.field)` is a function call that is replaced by a\n\
    \ `test_only` field selection in the AST. Likewise, the call\n\
    \ `list.exists(e, e > 10)` translates to a comprehension expression. The key\n\
    \ in the map corresponds to the expression id of the expanded macro, and the\n\
    \ value is the call `Expr` that was replaced.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ACK\DC2\EOT\180\STX\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\EOT\180\STX\DC3\RS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\EOT\180\STX!\"\n\
    \.\n\
    \\STX\EOT\EOT\DC2\ACK\184\STX\NUL\198\STX\SOH\SUB  A specific position in source.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\184\STX\b\SYN\n\
    \:\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\186\STX\STX\SYN\SUB, The soucre location name (e.g. file name).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\EOT\186\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\186\STX\t\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\186\STX\DC4\NAK\n\
    \%\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\189\STX\STX\DC3\SUB\ETB The character offset.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\189\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\189\STX\b\SO\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\189\STX\DC1\DC2\n\
    \s\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\193\STX\STX\DC1\SUBe The 1-based index of the starting line in the source text\n\
    \ where the issue occurs, or 0 if unknown.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\EOT\193\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\193\STX\b\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\193\STX\SI\DLE\n\
    \\152\SOH\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\197\STX\STX\DC3\SUB\137\SOH The 0-based index of the starting position within the line of source text\n\
    \ where the issue occurs.  Only meaningful if line is nonzero.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\EOT\197\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\197\STX\b\SO\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\197\STX\DC1\DC2b\ACKproto3"