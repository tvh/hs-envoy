{- This file was auto-generated from opencensus/proto/trace/v1/trace.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Opencensus.Proto.Trace.V1.Trace (
        AttributeValue(), AttributeValue'Value(..),
        _AttributeValue'StringValue, _AttributeValue'IntValue,
        _AttributeValue'BoolValue, _AttributeValue'DoubleValue, Module(),
        Span(), Span'Attributes(), Span'Attributes'AttributeMapEntry(),
        Span'Link(), Span'Link'Type(..), Span'Link'Type(),
        Span'Link'Type'UnrecognizedValue, Span'Links(), Span'SpanKind(..),
        Span'SpanKind(), Span'SpanKind'UnrecognizedValue, Span'TimeEvent(),
        Span'TimeEvent'Value(..), _Span'TimeEvent'Annotation',
        _Span'TimeEvent'MessageEvent', Span'TimeEvent'Annotation(),
        Span'TimeEvent'MessageEvent(),
        Span'TimeEvent'MessageEvent'Type(..),
        Span'TimeEvent'MessageEvent'Type(),
        Span'TimeEvent'MessageEvent'Type'UnrecognizedValue,
        Span'TimeEvents(), Span'Tracestate(), Span'Tracestate'Entry(),
        StackTrace(), StackTrace'StackFrame(), StackTrace'StackFrames(),
        Status(), TruncatableString()
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
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Opencensus.Proto.Resource.V1.Resource
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'value' @:: Lens' AttributeValue (Prelude.Maybe AttributeValue'Value)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'stringValue' @:: Lens' AttributeValue (Prelude.Maybe TruncatableString)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.stringValue' @:: Lens' AttributeValue TruncatableString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'intValue' @:: Lens' AttributeValue (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.intValue' @:: Lens' AttributeValue Data.Int.Int64@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'boolValue' @:: Lens' AttributeValue (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.boolValue' @:: Lens' AttributeValue Prelude.Bool@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'doubleValue' @:: Lens' AttributeValue (Prelude.Maybe Prelude.Double)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.doubleValue' @:: Lens' AttributeValue Prelude.Double@ -}
data AttributeValue
  = AttributeValue'_constructor {_AttributeValue'value :: !(Prelude.Maybe AttributeValue'Value),
                                 _AttributeValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AttributeValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AttributeValue'Value
  = AttributeValue'StringValue !TruncatableString |
    AttributeValue'IntValue !Data.Int.Int64 |
    AttributeValue'BoolValue !Prelude.Bool |
    AttributeValue'DoubleValue !Prelude.Double
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AttributeValue "maybe'value" (Prelude.Maybe AttributeValue'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeValue'value
           (\ x__ y__ -> x__ {_AttributeValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AttributeValue "maybe'stringValue" (Prelude.Maybe TruncatableString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeValue'value
           (\ x__ y__ -> x__ {_AttributeValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AttributeValue'StringValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AttributeValue'StringValue y__))
instance Data.ProtoLens.Field.HasField AttributeValue "stringValue" TruncatableString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeValue'value
           (\ x__ y__ -> x__ {_AttributeValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AttributeValue'StringValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AttributeValue'StringValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField AttributeValue "maybe'intValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeValue'value
           (\ x__ y__ -> x__ {_AttributeValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AttributeValue'IntValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AttributeValue'IntValue y__))
instance Data.ProtoLens.Field.HasField AttributeValue "intValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeValue'value
           (\ x__ y__ -> x__ {_AttributeValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AttributeValue'IntValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AttributeValue'IntValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField AttributeValue "maybe'boolValue" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeValue'value
           (\ x__ y__ -> x__ {_AttributeValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AttributeValue'BoolValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AttributeValue'BoolValue y__))
instance Data.ProtoLens.Field.HasField AttributeValue "boolValue" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeValue'value
           (\ x__ y__ -> x__ {_AttributeValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AttributeValue'BoolValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AttributeValue'BoolValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField AttributeValue "maybe'doubleValue" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeValue'value
           (\ x__ y__ -> x__ {_AttributeValue'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AttributeValue'DoubleValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap AttributeValue'DoubleValue y__))
instance Data.ProtoLens.Field.HasField AttributeValue "doubleValue" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AttributeValue'value
           (\ x__ y__ -> x__ {_AttributeValue'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AttributeValue'DoubleValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap AttributeValue'DoubleValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message AttributeValue where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.AttributeValue"
  packedMessageDescriptor _
    = "\n\
      \\SOAttributeValue\DC2Q\n\
      \\fstring_value\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringH\NULR\vstringValue\DC2\GS\n\
      \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValue\DC2\US\n\
      \\n\
      \bool_value\CAN\ETX \SOH(\bH\NULR\tboolValue\DC2#\n\
      \\fdouble_value\CAN\EOT \SOH(\SOHH\NULR\vdoubleValueB\a\n\
      \\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TruncatableString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringValue")) ::
              Data.ProtoLens.FieldDescriptor AttributeValue
        intValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intValue")) ::
              Data.ProtoLens.FieldDescriptor AttributeValue
        boolValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bool_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'boolValue")) ::
              Data.ProtoLens.FieldDescriptor AttributeValue
        doubleValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "double_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'doubleValue")) ::
              Data.ProtoLens.FieldDescriptor AttributeValue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stringValue__field_descriptor),
           (Data.ProtoLens.Tag 2, intValue__field_descriptor),
           (Data.ProtoLens.Tag 3, boolValue__field_descriptor),
           (Data.ProtoLens.Tag 4, doubleValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AttributeValue'_unknownFields
        (\ x__ y__ -> x__ {_AttributeValue'_unknownFields = y__})
  defMessage
    = AttributeValue'_constructor
        {_AttributeValue'value = Prelude.Nothing,
         _AttributeValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AttributeValue
          -> Data.ProtoLens.Encoding.Bytes.Parser AttributeValue
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
                                       "string_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringValue") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"intValue") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bool_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"boolValue") y x)
                        33
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "double_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"doubleValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "AttributeValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (AttributeValue'StringValue v))
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
                (Prelude.Just (AttributeValue'IntValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                (Prelude.Just (AttributeValue'BoolValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (AttributeValue'DoubleValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 33)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putFixed64
                          Data.ProtoLens.Encoding.Bytes.doubleToWord
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AttributeValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AttributeValue'_unknownFields x__)
             (Control.DeepSeq.deepseq (_AttributeValue'value x__) ())
instance Control.DeepSeq.NFData AttributeValue'Value where
  rnf (AttributeValue'StringValue x__) = Control.DeepSeq.rnf x__
  rnf (AttributeValue'IntValue x__) = Control.DeepSeq.rnf x__
  rnf (AttributeValue'BoolValue x__) = Control.DeepSeq.rnf x__
  rnf (AttributeValue'DoubleValue x__) = Control.DeepSeq.rnf x__
_AttributeValue'StringValue ::
  Data.ProtoLens.Prism.Prism' AttributeValue'Value TruncatableString
_AttributeValue'StringValue
  = Data.ProtoLens.Prism.prism'
      AttributeValue'StringValue
      (\ p__
         -> case p__ of
              (AttributeValue'StringValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AttributeValue'IntValue ::
  Data.ProtoLens.Prism.Prism' AttributeValue'Value Data.Int.Int64
_AttributeValue'IntValue
  = Data.ProtoLens.Prism.prism'
      AttributeValue'IntValue
      (\ p__
         -> case p__ of
              (AttributeValue'IntValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AttributeValue'BoolValue ::
  Data.ProtoLens.Prism.Prism' AttributeValue'Value Prelude.Bool
_AttributeValue'BoolValue
  = Data.ProtoLens.Prism.prism'
      AttributeValue'BoolValue
      (\ p__
         -> case p__ of
              (AttributeValue'BoolValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AttributeValue'DoubleValue ::
  Data.ProtoLens.Prism.Prism' AttributeValue'Value Prelude.Double
_AttributeValue'DoubleValue
  = Data.ProtoLens.Prism.prism'
      AttributeValue'DoubleValue
      (\ p__
         -> case p__ of
              (AttributeValue'DoubleValue p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.module'' @:: Lens' Module TruncatableString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'module'' @:: Lens' Module (Prelude.Maybe TruncatableString)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.buildId' @:: Lens' Module TruncatableString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'buildId' @:: Lens' Module (Prelude.Maybe TruncatableString)@ -}
data Module
  = Module'_constructor {_Module'module' :: !(Prelude.Maybe TruncatableString),
                         _Module'buildId :: !(Prelude.Maybe TruncatableString),
                         _Module'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Module where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Module "module'" TruncatableString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'module' (\ x__ y__ -> x__ {_Module'module' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Module "maybe'module'" (Prelude.Maybe TruncatableString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'module' (\ x__ y__ -> x__ {_Module'module' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Module "buildId" TruncatableString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'buildId (\ x__ y__ -> x__ {_Module'buildId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Module "maybe'buildId" (Prelude.Maybe TruncatableString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Module'buildId (\ x__ y__ -> x__ {_Module'buildId = y__}))
        Prelude.id
instance Data.ProtoLens.Message Module where
  messageName _ = Data.Text.pack "opencensus.proto.trace.v1.Module"
  packedMessageDescriptor _
    = "\n\
      \\ACKModule\DC2D\n\
      \\ACKmodule\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\ACKmodule\DC2G\n\
      \\bbuild_id\CAN\STX \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\abuildId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        module'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "module"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TruncatableString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'module'")) ::
              Data.ProtoLens.FieldDescriptor Module
        buildId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_id"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TruncatableString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'buildId")) ::
              Data.ProtoLens.FieldDescriptor Module
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, module'__field_descriptor),
           (Data.ProtoLens.Tag 2, buildId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Module'_unknownFields
        (\ x__ y__ -> x__ {_Module'_unknownFields = y__})
  defMessage
    = Module'_constructor
        {_Module'module' = Prelude.Nothing,
         _Module'buildId = Prelude.Nothing, _Module'_unknownFields = []}
  parseMessage
    = let
        loop :: Module -> Data.ProtoLens.Encoding.Bytes.Parser Module
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
                                       "module"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"module'") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "build_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"buildId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Module"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'module'") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'buildId") _x
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
instance Control.DeepSeq.NFData Module where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Module'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Module'module' x__)
                (Control.DeepSeq.deepseq (_Module'buildId x__) ()))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.traceId' @:: Lens' Span Data.ByteString.ByteString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.spanId' @:: Lens' Span Data.ByteString.ByteString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.tracestate' @:: Lens' Span Span'Tracestate@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'tracestate' @:: Lens' Span (Prelude.Maybe Span'Tracestate)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.parentSpanId' @:: Lens' Span Data.ByteString.ByteString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.name' @:: Lens' Span TruncatableString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'name' @:: Lens' Span (Prelude.Maybe TruncatableString)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.kind' @:: Lens' Span Span'SpanKind@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.startTime' @:: Lens' Span Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'startTime' @:: Lens' Span (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.endTime' @:: Lens' Span Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'endTime' @:: Lens' Span (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.attributes' @:: Lens' Span Span'Attributes@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'attributes' @:: Lens' Span (Prelude.Maybe Span'Attributes)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.stackTrace' @:: Lens' Span StackTrace@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'stackTrace' @:: Lens' Span (Prelude.Maybe StackTrace)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.timeEvents' @:: Lens' Span Span'TimeEvents@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'timeEvents' @:: Lens' Span (Prelude.Maybe Span'TimeEvents)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.links' @:: Lens' Span Span'Links@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'links' @:: Lens' Span (Prelude.Maybe Span'Links)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.status' @:: Lens' Span Status@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'status' @:: Lens' Span (Prelude.Maybe Status)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.resource' @:: Lens' Span Proto.Opencensus.Proto.Resource.V1.Resource.Resource@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'resource' @:: Lens' Span (Prelude.Maybe Proto.Opencensus.Proto.Resource.V1.Resource.Resource)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.sameProcessAsParentSpan' @:: Lens' Span Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'sameProcessAsParentSpan' @:: Lens' Span (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.childSpanCount' @:: Lens' Span Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'childSpanCount' @:: Lens' Span (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data Span
  = Span'_constructor {_Span'traceId :: !Data.ByteString.ByteString,
                       _Span'spanId :: !Data.ByteString.ByteString,
                       _Span'tracestate :: !(Prelude.Maybe Span'Tracestate),
                       _Span'parentSpanId :: !Data.ByteString.ByteString,
                       _Span'name :: !(Prelude.Maybe TruncatableString),
                       _Span'kind :: !Span'SpanKind,
                       _Span'startTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                       _Span'endTime :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                       _Span'attributes :: !(Prelude.Maybe Span'Attributes),
                       _Span'stackTrace :: !(Prelude.Maybe StackTrace),
                       _Span'timeEvents :: !(Prelude.Maybe Span'TimeEvents),
                       _Span'links :: !(Prelude.Maybe Span'Links),
                       _Span'status :: !(Prelude.Maybe Status),
                       _Span'resource :: !(Prelude.Maybe Proto.Opencensus.Proto.Resource.V1.Resource.Resource),
                       _Span'sameProcessAsParentSpan :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                       _Span'childSpanCount :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                       _Span'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Span "traceId" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'traceId (\ x__ y__ -> x__ {_Span'traceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "spanId" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'spanId (\ x__ y__ -> x__ {_Span'spanId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "tracestate" Span'Tracestate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'tracestate (\ x__ y__ -> x__ {_Span'tracestate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'tracestate" (Prelude.Maybe Span'Tracestate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'tracestate (\ x__ y__ -> x__ {_Span'tracestate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "parentSpanId" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'parentSpanId (\ x__ y__ -> x__ {_Span'parentSpanId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "name" TruncatableString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'name (\ x__ y__ -> x__ {_Span'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'name" (Prelude.Maybe TruncatableString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'name (\ x__ y__ -> x__ {_Span'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "kind" Span'SpanKind where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'kind (\ x__ y__ -> x__ {_Span'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "startTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'startTime (\ x__ y__ -> x__ {_Span'startTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'startTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'startTime (\ x__ y__ -> x__ {_Span'startTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "endTime" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'endTime (\ x__ y__ -> x__ {_Span'endTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'endTime" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'endTime (\ x__ y__ -> x__ {_Span'endTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "attributes" Span'Attributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'attributes (\ x__ y__ -> x__ {_Span'attributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'attributes" (Prelude.Maybe Span'Attributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'attributes (\ x__ y__ -> x__ {_Span'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "stackTrace" StackTrace where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'stackTrace (\ x__ y__ -> x__ {_Span'stackTrace = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'stackTrace" (Prelude.Maybe StackTrace) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'stackTrace (\ x__ y__ -> x__ {_Span'stackTrace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "timeEvents" Span'TimeEvents where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'timeEvents (\ x__ y__ -> x__ {_Span'timeEvents = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'timeEvents" (Prelude.Maybe Span'TimeEvents) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'timeEvents (\ x__ y__ -> x__ {_Span'timeEvents = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "links" Span'Links where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'links (\ x__ y__ -> x__ {_Span'links = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'links" (Prelude.Maybe Span'Links) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'links (\ x__ y__ -> x__ {_Span'links = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "status" Status where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'status (\ x__ y__ -> x__ {_Span'status = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'status" (Prelude.Maybe Status) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'status (\ x__ y__ -> x__ {_Span'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "resource" Proto.Opencensus.Proto.Resource.V1.Resource.Resource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'resource (\ x__ y__ -> x__ {_Span'resource = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'resource" (Prelude.Maybe Proto.Opencensus.Proto.Resource.V1.Resource.Resource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'resource (\ x__ y__ -> x__ {_Span'resource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "sameProcessAsParentSpan" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'sameProcessAsParentSpan
           (\ x__ y__ -> x__ {_Span'sameProcessAsParentSpan = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'sameProcessAsParentSpan" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'sameProcessAsParentSpan
           (\ x__ y__ -> x__ {_Span'sameProcessAsParentSpan = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span "childSpanCount" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'childSpanCount
           (\ x__ y__ -> x__ {_Span'childSpanCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span "maybe'childSpanCount" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'childSpanCount
           (\ x__ y__ -> x__ {_Span'childSpanCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message Span where
  messageName _ = Data.Text.pack "opencensus.proto.trace.v1.Span"
  packedMessageDescriptor _
    = "\n\
      \\EOTSpan\DC2\EM\n\
      \\btrace_id\CAN\SOH \SOH(\fR\atraceId\DC2\ETB\n\
      \\aspan_id\CAN\STX \SOH(\fR\ACKspanId\DC2J\n\
      \\n\
      \tracestate\CAN\SI \SOH(\v2*.opencensus.proto.trace.v1.Span.TracestateR\n\
      \tracestate\DC2$\n\
      \\SOparent_span_id\CAN\ETX \SOH(\fR\fparentSpanId\DC2@\n\
      \\EOTname\CAN\EOT \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\EOTname\DC2<\n\
      \\EOTkind\CAN\SO \SOH(\SO2(.opencensus.proto.trace.v1.Span.SpanKindR\EOTkind\DC29\n\
      \\n\
      \start_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC25\n\
      \\bend_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\aendTime\DC2J\n\
      \\n\
      \attributes\CAN\a \SOH(\v2*.opencensus.proto.trace.v1.Span.AttributesR\n\
      \attributes\DC2F\n\
      \\vstack_trace\CAN\b \SOH(\v2%.opencensus.proto.trace.v1.StackTraceR\n\
      \stackTrace\DC2K\n\
      \\vtime_events\CAN\t \SOH(\v2*.opencensus.proto.trace.v1.Span.TimeEventsR\n\
      \timeEvents\DC2;\n\
      \\ENQlinks\CAN\n\
      \ \SOH(\v2%.opencensus.proto.trace.v1.Span.LinksR\ENQlinks\DC29\n\
      \\ACKstatus\CAN\v \SOH(\v2!.opencensus.proto.trace.v1.StatusR\ACKstatus\DC2B\n\
      \\bresource\CAN\DLE \SOH(\v2&.opencensus.proto.resource.v1.ResourceR\bresource\DC2X\n\
      \\ESCsame_process_as_parent_span\CAN\f \SOH(\v2\SUB.google.protobuf.BoolValueR\ETBsameProcessAsParentSpan\DC2F\n\
      \\DLEchild_span_count\CAN\r \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOchildSpanCount\SUB\137\SOH\n\
      \\n\
      \Tracestate\DC2J\n\
      \\aentries\CAN\SOH \ETX(\v20.opencensus.proto.trace.v1.Span.Tracestate.EntryR\aentries\SUB/\n\
      \\ENQEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue\SUB\149\STX\n\
      \\n\
      \Attributes\DC2a\n\
      \\rattribute_map\CAN\SOH \ETX(\v2<.opencensus.proto.trace.v1.Span.Attributes.AttributeMapEntryR\fattributeMap\DC28\n\
      \\CANdropped_attributes_count\CAN\STX \SOH(\ENQR\SYNdroppedAttributesCount\SUBj\n\
      \\DC1AttributeMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2?\n\
      \\ENQvalue\CAN\STX \SOH(\v2).opencensus.proto.trace.v1.AttributeValueR\ENQvalue:\STX8\SOH\SUB\164\ENQ\n\
      \\tTimeEvent\DC2.\n\
      \\EOTtime\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtime\DC2V\n\
      \\n\
      \annotation\CAN\STX \SOH(\v24.opencensus.proto.trace.v1.Span.TimeEvent.AnnotationH\NULR\n\
      \annotation\DC2]\n\
      \\rmessage_event\CAN\ETX \SOH(\v26.opencensus.proto.trace.v1.Span.TimeEvent.MessageEventH\NULR\fmessageEvent\SUB\168\SOH\n\
      \\n\
      \Annotation\DC2N\n\
      \\vdescription\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\vdescription\DC2J\n\
      \\n\
      \attributes\CAN\STX \SOH(\v2*.opencensus.proto.trace.v1.Span.AttributesR\n\
      \attributes\SUB\251\SOH\n\
      \\fMessageEvent\DC2O\n\
      \\EOTtype\CAN\SOH \SOH(\SO2;.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent.TypeR\EOTtype\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\EOTR\STXid\DC2+\n\
      \\DC1uncompressed_size\CAN\ETX \SOH(\EOTR\DLEuncompressedSize\DC2'\n\
      \\SIcompressed_size\CAN\EOT \SOH(\EOTR\SOcompressedSize\"4\n\
      \\EOTType\DC2\DC4\n\
      \\DLETYPE_UNSPECIFIED\DLE\NUL\DC2\b\n\
      \\EOTSENT\DLE\SOH\DC2\f\n\
      \\bRECEIVED\DLE\STXB\a\n\
      \\ENQvalue\SUB\211\SOH\n\
      \\n\
      \TimeEvents\DC2H\n\
      \\n\
      \time_event\CAN\SOH \ETX(\v2).opencensus.proto.trace.v1.Span.TimeEventR\ttimeEvent\DC2:\n\
      \\EMdropped_annotations_count\CAN\STX \SOH(\ENQR\ETBdroppedAnnotationsCount\DC2?\n\
      \\FSdropped_message_events_count\CAN\ETX \SOH(\ENQR\EMdroppedMessageEventsCount\SUB\222\STX\n\
      \\EOTLink\DC2\EM\n\
      \\btrace_id\CAN\SOH \SOH(\fR\atraceId\DC2\ETB\n\
      \\aspan_id\CAN\STX \SOH(\fR\ACKspanId\DC2=\n\
      \\EOTtype\CAN\ETX \SOH(\SO2).opencensus.proto.trace.v1.Span.Link.TypeR\EOTtype\DC2J\n\
      \\n\
      \attributes\CAN\EOT \SOH(\v2*.opencensus.proto.trace.v1.Span.AttributesR\n\
      \attributes\DC2J\n\
      \\n\
      \tracestate\CAN\ENQ \SOH(\v2*.opencensus.proto.trace.v1.Span.TracestateR\n\
      \tracestate\"K\n\
      \\EOTType\DC2\DC4\n\
      \\DLETYPE_UNSPECIFIED\DLE\NUL\DC2\NAK\n\
      \\DC1CHILD_LINKED_SPAN\DLE\SOH\DC2\SYN\n\
      \\DC2PARENT_LINKED_SPAN\DLE\STX\SUBq\n\
      \\ENQLinks\DC28\n\
      \\EOTlink\CAN\SOH \ETX(\v2$.opencensus.proto.trace.v1.Span.LinkR\EOTlink\DC2.\n\
      \\DC3dropped_links_count\CAN\STX \SOH(\ENQR\DC1droppedLinksCount\"=\n\
      \\bSpanKind\DC2\EM\n\
      \\NAKSPAN_KIND_UNSPECIFIED\DLE\NUL\DC2\n\
      \\n\
      \\ACKSERVER\DLE\SOH\DC2\n\
      \\n\
      \\ACKCLIENT\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        traceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"traceId")) ::
              Data.ProtoLens.FieldDescriptor Span
        spanId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "span_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"spanId")) ::
              Data.ProtoLens.FieldDescriptor Span
        tracestate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tracestate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'Tracestate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tracestate")) ::
              Data.ProtoLens.FieldDescriptor Span
        parentSpanId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "parent_span_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"parentSpanId")) ::
              Data.ProtoLens.FieldDescriptor Span
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TruncatableString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor Span
        kind__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kind"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Span'SpanKind)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"kind")) ::
              Data.ProtoLens.FieldDescriptor Span
        startTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startTime")) ::
              Data.ProtoLens.FieldDescriptor Span
        endTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end_time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'endTime")) ::
              Data.ProtoLens.FieldDescriptor Span
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'Attributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'attributes")) ::
              Data.ProtoLens.FieldDescriptor Span
        stackTrace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stack_trace"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StackTrace)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stackTrace")) ::
              Data.ProtoLens.FieldDescriptor Span
        timeEvents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'TimeEvents)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeEvents")) ::
              Data.ProtoLens.FieldDescriptor Span
        links__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "links"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'Links)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'links")) ::
              Data.ProtoLens.FieldDescriptor Span
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Status)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'status")) ::
              Data.ProtoLens.FieldDescriptor Span
        resource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Opencensus.Proto.Resource.V1.Resource.Resource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'resource")) ::
              Data.ProtoLens.FieldDescriptor Span
        sameProcessAsParentSpan__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "same_process_as_parent_span"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sameProcessAsParentSpan")) ::
              Data.ProtoLens.FieldDescriptor Span
        childSpanCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "child_span_count"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'childSpanCount")) ::
              Data.ProtoLens.FieldDescriptor Span
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, traceId__field_descriptor),
           (Data.ProtoLens.Tag 2, spanId__field_descriptor),
           (Data.ProtoLens.Tag 15, tracestate__field_descriptor),
           (Data.ProtoLens.Tag 3, parentSpanId__field_descriptor),
           (Data.ProtoLens.Tag 4, name__field_descriptor),
           (Data.ProtoLens.Tag 14, kind__field_descriptor),
           (Data.ProtoLens.Tag 5, startTime__field_descriptor),
           (Data.ProtoLens.Tag 6, endTime__field_descriptor),
           (Data.ProtoLens.Tag 7, attributes__field_descriptor),
           (Data.ProtoLens.Tag 8, stackTrace__field_descriptor),
           (Data.ProtoLens.Tag 9, timeEvents__field_descriptor),
           (Data.ProtoLens.Tag 10, links__field_descriptor),
           (Data.ProtoLens.Tag 11, status__field_descriptor),
           (Data.ProtoLens.Tag 16, resource__field_descriptor),
           (Data.ProtoLens.Tag 12, sameProcessAsParentSpan__field_descriptor),
           (Data.ProtoLens.Tag 13, childSpanCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'_unknownFields
        (\ x__ y__ -> x__ {_Span'_unknownFields = y__})
  defMessage
    = Span'_constructor
        {_Span'traceId = Data.ProtoLens.fieldDefault,
         _Span'spanId = Data.ProtoLens.fieldDefault,
         _Span'tracestate = Prelude.Nothing,
         _Span'parentSpanId = Data.ProtoLens.fieldDefault,
         _Span'name = Prelude.Nothing,
         _Span'kind = Data.ProtoLens.fieldDefault,
         _Span'startTime = Prelude.Nothing, _Span'endTime = Prelude.Nothing,
         _Span'attributes = Prelude.Nothing,
         _Span'stackTrace = Prelude.Nothing,
         _Span'timeEvents = Prelude.Nothing, _Span'links = Prelude.Nothing,
         _Span'status = Prelude.Nothing, _Span'resource = Prelude.Nothing,
         _Span'sameProcessAsParentSpan = Prelude.Nothing,
         _Span'childSpanCount = Prelude.Nothing, _Span'_unknownFields = []}
  parseMessage
    = let
        loop :: Span -> Data.ProtoLens.Encoding.Bytes.Parser Span
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "trace_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"traceId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "span_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"spanId") y x)
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tracestate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tracestate") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "parent_span_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"parentSpanId") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "kind"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kind") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "start_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"startTime") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "end_time"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"endTime") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "attributes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attributes") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stack_trace"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stackTrace") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "time_events"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeEvents") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "links"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"links") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        130
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "resource"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resource") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "same_process_as_parent_span"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sameProcessAsParentSpan") y x)
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "child_span_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"childSpanCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Span"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"traceId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"spanId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'tracestate") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 122)
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
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"parentSpanId") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                               ((\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                            (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"kind") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 112)
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum
                                        _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'startTime") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
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
                                            _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'endTime") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'attributes") _x
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
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'stackTrace") _x
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
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage
                                                     _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'timeEvents")
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
                                                     (Data.ProtoLens.Field.field @"maybe'links") _x
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
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage
                                                           _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field @"maybe'status")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              90)
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
                                                              @"maybe'resource")
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
                                                                 @"maybe'sameProcessAsParentSpan")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    98)
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
                                                                    @"maybe'childSpanCount")
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
                                                          (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                             (Lens.Family2.view
                                                                Data.ProtoLens.unknownFields
                                                                _x)))))))))))))))))
instance Control.DeepSeq.NFData Span where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Span'traceId x__)
                (Control.DeepSeq.deepseq
                   (_Span'spanId x__)
                   (Control.DeepSeq.deepseq
                      (_Span'tracestate x__)
                      (Control.DeepSeq.deepseq
                         (_Span'parentSpanId x__)
                         (Control.DeepSeq.deepseq
                            (_Span'name x__)
                            (Control.DeepSeq.deepseq
                               (_Span'kind x__)
                               (Control.DeepSeq.deepseq
                                  (_Span'startTime x__)
                                  (Control.DeepSeq.deepseq
                                     (_Span'endTime x__)
                                     (Control.DeepSeq.deepseq
                                        (_Span'attributes x__)
                                        (Control.DeepSeq.deepseq
                                           (_Span'stackTrace x__)
                                           (Control.DeepSeq.deepseq
                                              (_Span'timeEvents x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Span'links x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Span'status x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Span'resource x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Span'sameProcessAsParentSpan x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_Span'childSpanCount x__)
                                                             ()))))))))))))))))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.attributeMap' @:: Lens' Span'Attributes (Data.Map.Map Data.Text.Text AttributeValue)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.droppedAttributesCount' @:: Lens' Span'Attributes Data.Int.Int32@ -}
data Span'Attributes
  = Span'Attributes'_constructor {_Span'Attributes'attributeMap :: !(Data.Map.Map Data.Text.Text AttributeValue),
                                  _Span'Attributes'droppedAttributesCount :: !Data.Int.Int32,
                                  _Span'Attributes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span'Attributes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Span'Attributes "attributeMap" (Data.Map.Map Data.Text.Text AttributeValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Attributes'attributeMap
           (\ x__ y__ -> x__ {_Span'Attributes'attributeMap = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'Attributes "droppedAttributesCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Attributes'droppedAttributesCount
           (\ x__ y__ -> x__ {_Span'Attributes'droppedAttributesCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message Span'Attributes where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.Span.Attributes"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Attributes\DC2a\n\
      \\rattribute_map\CAN\SOH \ETX(\v2<.opencensus.proto.trace.v1.Span.Attributes.AttributeMapEntryR\fattributeMap\DC28\n\
      \\CANdropped_attributes_count\CAN\STX \SOH(\ENQR\SYNdroppedAttributesCount\SUBj\n\
      \\DC1AttributeMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2?\n\
      \\ENQvalue\CAN\STX \SOH(\v2).opencensus.proto.trace.v1.AttributeValueR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        attributeMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attribute_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'Attributes'AttributeMapEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"attributeMap")) ::
              Data.ProtoLens.FieldDescriptor Span'Attributes
        droppedAttributesCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dropped_attributes_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"droppedAttributesCount")) ::
              Data.ProtoLens.FieldDescriptor Span'Attributes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, attributeMap__field_descriptor),
           (Data.ProtoLens.Tag 2, droppedAttributesCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'Attributes'_unknownFields
        (\ x__ y__ -> x__ {_Span'Attributes'_unknownFields = y__})
  defMessage
    = Span'Attributes'_constructor
        {_Span'Attributes'attributeMap = Data.Map.empty,
         _Span'Attributes'droppedAttributesCount = Data.ProtoLens.fieldDefault,
         _Span'Attributes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Span'Attributes
          -> Data.ProtoLens.Encoding.Bytes.Parser Span'Attributes
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
                          -> do !(entry :: Span'Attributes'AttributeMapEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                   (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                       Data.ProtoLens.Encoding.Bytes.isolate
                                                                                         (Prelude.fromIntegral
                                                                                            len)
                                                                                         Data.ProtoLens.parseMessage)
                                                                                   "attribute_map"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"attributeMap")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dropped_attributes_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"droppedAttributesCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Attributes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
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
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key")
                                 (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value")
                                    (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage ::
                                       Span'Attributes'AttributeMapEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"attributeMap") _x))))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"droppedAttributesCount") _x
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
instance Control.DeepSeq.NFData Span'Attributes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'Attributes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Span'Attributes'attributeMap x__)
                (Control.DeepSeq.deepseq
                   (_Span'Attributes'droppedAttributesCount x__) ()))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.key' @:: Lens' Span'Attributes'AttributeMapEntry Data.Text.Text@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.value' @:: Lens' Span'Attributes'AttributeMapEntry AttributeValue@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'value' @:: Lens' Span'Attributes'AttributeMapEntry (Prelude.Maybe AttributeValue)@ -}
data Span'Attributes'AttributeMapEntry
  = Span'Attributes'AttributeMapEntry'_constructor {_Span'Attributes'AttributeMapEntry'key :: !Data.Text.Text,
                                                    _Span'Attributes'AttributeMapEntry'value :: !(Prelude.Maybe AttributeValue),
                                                    _Span'Attributes'AttributeMapEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span'Attributes'AttributeMapEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Span'Attributes'AttributeMapEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Attributes'AttributeMapEntry'key
           (\ x__ y__ -> x__ {_Span'Attributes'AttributeMapEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'Attributes'AttributeMapEntry "value" AttributeValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Attributes'AttributeMapEntry'value
           (\ x__ y__
              -> x__ {_Span'Attributes'AttributeMapEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span'Attributes'AttributeMapEntry "maybe'value" (Prelude.Maybe AttributeValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Attributes'AttributeMapEntry'value
           (\ x__ y__
              -> x__ {_Span'Attributes'AttributeMapEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Span'Attributes'AttributeMapEntry where
  messageName _
    = Data.Text.pack
        "opencensus.proto.trace.v1.Span.Attributes.AttributeMapEntry"
  packedMessageDescriptor _
    = "\n\
      \\DC1AttributeMapEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2?\n\
      \\ENQvalue\CAN\STX \SOH(\v2).opencensus.proto.trace.v1.AttributeValueR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Span'Attributes'AttributeMapEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AttributeValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Span'Attributes'AttributeMapEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'Attributes'AttributeMapEntry'_unknownFields
        (\ x__ y__
           -> x__ {_Span'Attributes'AttributeMapEntry'_unknownFields = y__})
  defMessage
    = Span'Attributes'AttributeMapEntry'_constructor
        {_Span'Attributes'AttributeMapEntry'key = Data.ProtoLens.fieldDefault,
         _Span'Attributes'AttributeMapEntry'value = Prelude.Nothing,
         _Span'Attributes'AttributeMapEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Span'Attributes'AttributeMapEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser Span'Attributes'AttributeMapEntry
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
          (do loop Data.ProtoLens.defMessage) "AttributeMapEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
instance Control.DeepSeq.NFData Span'Attributes'AttributeMapEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'Attributes'AttributeMapEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Span'Attributes'AttributeMapEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_Span'Attributes'AttributeMapEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.traceId' @:: Lens' Span'Link Data.ByteString.ByteString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.spanId' @:: Lens' Span'Link Data.ByteString.ByteString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.type'' @:: Lens' Span'Link Span'Link'Type@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.attributes' @:: Lens' Span'Link Span'Attributes@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'attributes' @:: Lens' Span'Link (Prelude.Maybe Span'Attributes)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.tracestate' @:: Lens' Span'Link Span'Tracestate@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'tracestate' @:: Lens' Span'Link (Prelude.Maybe Span'Tracestate)@ -}
data Span'Link
  = Span'Link'_constructor {_Span'Link'traceId :: !Data.ByteString.ByteString,
                            _Span'Link'spanId :: !Data.ByteString.ByteString,
                            _Span'Link'type' :: !Span'Link'Type,
                            _Span'Link'attributes :: !(Prelude.Maybe Span'Attributes),
                            _Span'Link'tracestate :: !(Prelude.Maybe Span'Tracestate),
                            _Span'Link'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span'Link where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Span'Link "traceId" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Link'traceId (\ x__ y__ -> x__ {_Span'Link'traceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'Link "spanId" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Link'spanId (\ x__ y__ -> x__ {_Span'Link'spanId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'Link "type'" Span'Link'Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Link'type' (\ x__ y__ -> x__ {_Span'Link'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'Link "attributes" Span'Attributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Link'attributes
           (\ x__ y__ -> x__ {_Span'Link'attributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span'Link "maybe'attributes" (Prelude.Maybe Span'Attributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Link'attributes
           (\ x__ y__ -> x__ {_Span'Link'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'Link "tracestate" Span'Tracestate where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Link'tracestate
           (\ x__ y__ -> x__ {_Span'Link'tracestate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span'Link "maybe'tracestate" (Prelude.Maybe Span'Tracestate) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Link'tracestate
           (\ x__ y__ -> x__ {_Span'Link'tracestate = y__}))
        Prelude.id
instance Data.ProtoLens.Message Span'Link where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.Span.Link"
  packedMessageDescriptor _
    = "\n\
      \\EOTLink\DC2\EM\n\
      \\btrace_id\CAN\SOH \SOH(\fR\atraceId\DC2\ETB\n\
      \\aspan_id\CAN\STX \SOH(\fR\ACKspanId\DC2=\n\
      \\EOTtype\CAN\ETX \SOH(\SO2).opencensus.proto.trace.v1.Span.Link.TypeR\EOTtype\DC2J\n\
      \\n\
      \attributes\CAN\EOT \SOH(\v2*.opencensus.proto.trace.v1.Span.AttributesR\n\
      \attributes\DC2J\n\
      \\n\
      \tracestate\CAN\ENQ \SOH(\v2*.opencensus.proto.trace.v1.Span.TracestateR\n\
      \tracestate\"K\n\
      \\EOTType\DC2\DC4\n\
      \\DLETYPE_UNSPECIFIED\DLE\NUL\DC2\NAK\n\
      \\DC1CHILD_LINKED_SPAN\DLE\SOH\DC2\SYN\n\
      \\DC2PARENT_LINKED_SPAN\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        traceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"traceId")) ::
              Data.ProtoLens.FieldDescriptor Span'Link
        spanId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "span_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"spanId")) ::
              Data.ProtoLens.FieldDescriptor Span'Link
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Span'Link'Type)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Span'Link
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'Attributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'attributes")) ::
              Data.ProtoLens.FieldDescriptor Span'Link
        tracestate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tracestate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'Tracestate)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tracestate")) ::
              Data.ProtoLens.FieldDescriptor Span'Link
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, traceId__field_descriptor),
           (Data.ProtoLens.Tag 2, spanId__field_descriptor),
           (Data.ProtoLens.Tag 3, type'__field_descriptor),
           (Data.ProtoLens.Tag 4, attributes__field_descriptor),
           (Data.ProtoLens.Tag 5, tracestate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'Link'_unknownFields
        (\ x__ y__ -> x__ {_Span'Link'_unknownFields = y__})
  defMessage
    = Span'Link'_constructor
        {_Span'Link'traceId = Data.ProtoLens.fieldDefault,
         _Span'Link'spanId = Data.ProtoLens.fieldDefault,
         _Span'Link'type' = Data.ProtoLens.fieldDefault,
         _Span'Link'attributes = Prelude.Nothing,
         _Span'Link'tracestate = Prelude.Nothing,
         _Span'Link'_unknownFields = []}
  parseMessage
    = let
        loop :: Span'Link -> Data.ProtoLens.Encoding.Bytes.Parser Span'Link
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
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "trace_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"traceId") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "span_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"spanId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "attributes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attributes") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tracestate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tracestate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Link"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"traceId") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"spanId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum
                               _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'attributes") _x
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
                                (Data.ProtoLens.Field.field @"maybe'tracestate") _x
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
instance Control.DeepSeq.NFData Span'Link where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'Link'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Span'Link'traceId x__)
                (Control.DeepSeq.deepseq
                   (_Span'Link'spanId x__)
                   (Control.DeepSeq.deepseq
                      (_Span'Link'type' x__)
                      (Control.DeepSeq.deepseq
                         (_Span'Link'attributes x__)
                         (Control.DeepSeq.deepseq (_Span'Link'tracestate x__) ())))))
newtype Span'Link'Type'UnrecognizedValue
  = Span'Link'Type'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Span'Link'Type
  = Span'Link'TYPE_UNSPECIFIED |
    Span'Link'CHILD_LINKED_SPAN |
    Span'Link'PARENT_LINKED_SPAN |
    Span'Link'Type'Unrecognized !Span'Link'Type'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Span'Link'Type where
  maybeToEnum 0 = Prelude.Just Span'Link'TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just Span'Link'CHILD_LINKED_SPAN
  maybeToEnum 2 = Prelude.Just Span'Link'PARENT_LINKED_SPAN
  maybeToEnum k
    = Prelude.Just
        (Span'Link'Type'Unrecognized
           (Span'Link'Type'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Span'Link'TYPE_UNSPECIFIED = "TYPE_UNSPECIFIED"
  showEnum Span'Link'CHILD_LINKED_SPAN = "CHILD_LINKED_SPAN"
  showEnum Span'Link'PARENT_LINKED_SPAN = "PARENT_LINKED_SPAN"
  showEnum
    (Span'Link'Type'Unrecognized (Span'Link'Type'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "TYPE_UNSPECIFIED"
    = Prelude.Just Span'Link'TYPE_UNSPECIFIED
    | (Prelude.==) k "CHILD_LINKED_SPAN"
    = Prelude.Just Span'Link'CHILD_LINKED_SPAN
    | (Prelude.==) k "PARENT_LINKED_SPAN"
    = Prelude.Just Span'Link'PARENT_LINKED_SPAN
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Span'Link'Type where
  minBound = Span'Link'TYPE_UNSPECIFIED
  maxBound = Span'Link'PARENT_LINKED_SPAN
instance Prelude.Enum Span'Link'Type where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Type: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Span'Link'TYPE_UNSPECIFIED = 0
  fromEnum Span'Link'CHILD_LINKED_SPAN = 1
  fromEnum Span'Link'PARENT_LINKED_SPAN = 2
  fromEnum
    (Span'Link'Type'Unrecognized (Span'Link'Type'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Span'Link'PARENT_LINKED_SPAN
    = Prelude.error
        "Span'Link'Type.succ: bad argument Span'Link'PARENT_LINKED_SPAN. This value would be out of bounds."
  succ Span'Link'TYPE_UNSPECIFIED = Span'Link'CHILD_LINKED_SPAN
  succ Span'Link'CHILD_LINKED_SPAN = Span'Link'PARENT_LINKED_SPAN
  succ (Span'Link'Type'Unrecognized _)
    = Prelude.error
        "Span'Link'Type.succ: bad argument: unrecognized value"
  pred Span'Link'TYPE_UNSPECIFIED
    = Prelude.error
        "Span'Link'Type.pred: bad argument Span'Link'TYPE_UNSPECIFIED. This value would be out of bounds."
  pred Span'Link'CHILD_LINKED_SPAN = Span'Link'TYPE_UNSPECIFIED
  pred Span'Link'PARENT_LINKED_SPAN = Span'Link'CHILD_LINKED_SPAN
  pred (Span'Link'Type'Unrecognized _)
    = Prelude.error
        "Span'Link'Type.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Span'Link'Type where
  fieldDefault = Span'Link'TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData Span'Link'Type where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.link' @:: Lens' Span'Links [Span'Link]@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.vec'link' @:: Lens' Span'Links (Data.Vector.Vector Span'Link)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.droppedLinksCount' @:: Lens' Span'Links Data.Int.Int32@ -}
data Span'Links
  = Span'Links'_constructor {_Span'Links'link :: !(Data.Vector.Vector Span'Link),
                             _Span'Links'droppedLinksCount :: !Data.Int.Int32,
                             _Span'Links'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span'Links where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Span'Links "link" [Span'Link] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Links'link (\ x__ y__ -> x__ {_Span'Links'link = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Span'Links "vec'link" (Data.Vector.Vector Span'Link) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Links'link (\ x__ y__ -> x__ {_Span'Links'link = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'Links "droppedLinksCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Links'droppedLinksCount
           (\ x__ y__ -> x__ {_Span'Links'droppedLinksCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message Span'Links where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.Span.Links"
  packedMessageDescriptor _
    = "\n\
      \\ENQLinks\DC28\n\
      \\EOTlink\CAN\SOH \ETX(\v2$.opencensus.proto.trace.v1.Span.LinkR\EOTlink\DC2.\n\
      \\DC3dropped_links_count\CAN\STX \SOH(\ENQR\DC1droppedLinksCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        link__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "link"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'Link)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"link")) ::
              Data.ProtoLens.FieldDescriptor Span'Links
        droppedLinksCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dropped_links_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"droppedLinksCount")) ::
              Data.ProtoLens.FieldDescriptor Span'Links
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, link__field_descriptor),
           (Data.ProtoLens.Tag 2, droppedLinksCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'Links'_unknownFields
        (\ x__ y__ -> x__ {_Span'Links'_unknownFields = y__})
  defMessage
    = Span'Links'_constructor
        {_Span'Links'link = Data.Vector.Generic.empty,
         _Span'Links'droppedLinksCount = Data.ProtoLens.fieldDefault,
         _Span'Links'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Span'Links
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Span'Link
             -> Data.ProtoLens.Encoding.Bytes.Parser Span'Links
        loop x mutable'link
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'link <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'link)
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
                              (Data.ProtoLens.Field.field @"vec'link") frozen'link x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "link"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'link y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dropped_links_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"droppedLinksCount") y x)
                                  mutable'link
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'link
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'link <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'link)
          "Links"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'link") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"droppedLinksCount") _x
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
instance Control.DeepSeq.NFData Span'Links where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'Links'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Span'Links'link x__)
                (Control.DeepSeq.deepseq (_Span'Links'droppedLinksCount x__) ()))
newtype Span'SpanKind'UnrecognizedValue
  = Span'SpanKind'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Span'SpanKind
  = Span'SPAN_KIND_UNSPECIFIED |
    Span'SERVER |
    Span'CLIENT |
    Span'SpanKind'Unrecognized !Span'SpanKind'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Span'SpanKind where
  maybeToEnum 0 = Prelude.Just Span'SPAN_KIND_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just Span'SERVER
  maybeToEnum 2 = Prelude.Just Span'CLIENT
  maybeToEnum k
    = Prelude.Just
        (Span'SpanKind'Unrecognized
           (Span'SpanKind'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Span'SPAN_KIND_UNSPECIFIED = "SPAN_KIND_UNSPECIFIED"
  showEnum Span'SERVER = "SERVER"
  showEnum Span'CLIENT = "CLIENT"
  showEnum
    (Span'SpanKind'Unrecognized (Span'SpanKind'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "SPAN_KIND_UNSPECIFIED"
    = Prelude.Just Span'SPAN_KIND_UNSPECIFIED
    | (Prelude.==) k "SERVER" = Prelude.Just Span'SERVER
    | (Prelude.==) k "CLIENT" = Prelude.Just Span'CLIENT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Span'SpanKind where
  minBound = Span'SPAN_KIND_UNSPECIFIED
  maxBound = Span'CLIENT
instance Prelude.Enum Span'SpanKind where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum SpanKind: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Span'SPAN_KIND_UNSPECIFIED = 0
  fromEnum Span'SERVER = 1
  fromEnum Span'CLIENT = 2
  fromEnum
    (Span'SpanKind'Unrecognized (Span'SpanKind'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Span'CLIENT
    = Prelude.error
        "Span'SpanKind.succ: bad argument Span'CLIENT. This value would be out of bounds."
  succ Span'SPAN_KIND_UNSPECIFIED = Span'SERVER
  succ Span'SERVER = Span'CLIENT
  succ (Span'SpanKind'Unrecognized _)
    = Prelude.error
        "Span'SpanKind.succ: bad argument: unrecognized value"
  pred Span'SPAN_KIND_UNSPECIFIED
    = Prelude.error
        "Span'SpanKind.pred: bad argument Span'SPAN_KIND_UNSPECIFIED. This value would be out of bounds."
  pred Span'SERVER = Span'SPAN_KIND_UNSPECIFIED
  pred Span'CLIENT = Span'SERVER
  pred (Span'SpanKind'Unrecognized _)
    = Prelude.error
        "Span'SpanKind.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Span'SpanKind where
  fieldDefault = Span'SPAN_KIND_UNSPECIFIED
instance Control.DeepSeq.NFData Span'SpanKind where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.time' @:: Lens' Span'TimeEvent Proto.Google.Protobuf.Timestamp.Timestamp@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'time' @:: Lens' Span'TimeEvent (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'value' @:: Lens' Span'TimeEvent (Prelude.Maybe Span'TimeEvent'Value)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'annotation' @:: Lens' Span'TimeEvent (Prelude.Maybe Span'TimeEvent'Annotation)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.annotation' @:: Lens' Span'TimeEvent Span'TimeEvent'Annotation@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'messageEvent' @:: Lens' Span'TimeEvent (Prelude.Maybe Span'TimeEvent'MessageEvent)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.messageEvent' @:: Lens' Span'TimeEvent Span'TimeEvent'MessageEvent@ -}
data Span'TimeEvent
  = Span'TimeEvent'_constructor {_Span'TimeEvent'time :: !(Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp),
                                 _Span'TimeEvent'value :: !(Prelude.Maybe Span'TimeEvent'Value),
                                 _Span'TimeEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span'TimeEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Span'TimeEvent'Value
  = Span'TimeEvent'Annotation' !Span'TimeEvent'Annotation |
    Span'TimeEvent'MessageEvent' !Span'TimeEvent'MessageEvent
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Span'TimeEvent "time" Proto.Google.Protobuf.Timestamp.Timestamp where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'time
           (\ x__ y__ -> x__ {_Span'TimeEvent'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span'TimeEvent "maybe'time" (Prelude.Maybe Proto.Google.Protobuf.Timestamp.Timestamp) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'time
           (\ x__ y__ -> x__ {_Span'TimeEvent'time = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'TimeEvent "maybe'value" (Prelude.Maybe Span'TimeEvent'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'value
           (\ x__ y__ -> x__ {_Span'TimeEvent'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'TimeEvent "maybe'annotation" (Prelude.Maybe Span'TimeEvent'Annotation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'value
           (\ x__ y__ -> x__ {_Span'TimeEvent'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Span'TimeEvent'Annotation' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Span'TimeEvent'Annotation' y__))
instance Data.ProtoLens.Field.HasField Span'TimeEvent "annotation" Span'TimeEvent'Annotation where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'value
           (\ x__ y__ -> x__ {_Span'TimeEvent'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Span'TimeEvent'Annotation' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Span'TimeEvent'Annotation' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Span'TimeEvent "maybe'messageEvent" (Prelude.Maybe Span'TimeEvent'MessageEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'value
           (\ x__ y__ -> x__ {_Span'TimeEvent'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Span'TimeEvent'MessageEvent' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Span'TimeEvent'MessageEvent' y__))
instance Data.ProtoLens.Field.HasField Span'TimeEvent "messageEvent" Span'TimeEvent'MessageEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'value
           (\ x__ y__ -> x__ {_Span'TimeEvent'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Span'TimeEvent'MessageEvent' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Span'TimeEvent'MessageEvent' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Span'TimeEvent where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.Span.TimeEvent"
  packedMessageDescriptor _
    = "\n\
      \\tTimeEvent\DC2.\n\
      \\EOTtime\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtime\DC2V\n\
      \\n\
      \annotation\CAN\STX \SOH(\v24.opencensus.proto.trace.v1.Span.TimeEvent.AnnotationH\NULR\n\
      \annotation\DC2]\n\
      \\rmessage_event\CAN\ETX \SOH(\v26.opencensus.proto.trace.v1.Span.TimeEvent.MessageEventH\NULR\fmessageEvent\SUB\168\SOH\n\
      \\n\
      \Annotation\DC2N\n\
      \\vdescription\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\vdescription\DC2J\n\
      \\n\
      \attributes\CAN\STX \SOH(\v2*.opencensus.proto.trace.v1.Span.AttributesR\n\
      \attributes\SUB\251\SOH\n\
      \\fMessageEvent\DC2O\n\
      \\EOTtype\CAN\SOH \SOH(\SO2;.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent.TypeR\EOTtype\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\EOTR\STXid\DC2+\n\
      \\DC1uncompressed_size\CAN\ETX \SOH(\EOTR\DLEuncompressedSize\DC2'\n\
      \\SIcompressed_size\CAN\EOT \SOH(\EOTR\SOcompressedSize\"4\n\
      \\EOTType\DC2\DC4\n\
      \\DLETYPE_UNSPECIFIED\DLE\NUL\DC2\b\n\
      \\EOTSENT\DLE\SOH\DC2\f\n\
      \\bRECEIVED\DLE\STXB\a\n\
      \\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Timestamp.Timestamp)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvent
        annotation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "annotation"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'TimeEvent'Annotation)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'annotation")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvent
        messageEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'TimeEvent'MessageEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'messageEvent")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, time__field_descriptor),
           (Data.ProtoLens.Tag 2, annotation__field_descriptor),
           (Data.ProtoLens.Tag 3, messageEvent__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'TimeEvent'_unknownFields
        (\ x__ y__ -> x__ {_Span'TimeEvent'_unknownFields = y__})
  defMessage
    = Span'TimeEvent'_constructor
        {_Span'TimeEvent'time = Prelude.Nothing,
         _Span'TimeEvent'value = Prelude.Nothing,
         _Span'TimeEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Span'TimeEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser Span'TimeEvent
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
                                       "time"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "annotation"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"annotation") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "message_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"messageEvent") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TimeEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (Span'TimeEvent'Annotation' v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v)
                   (Prelude.Just (Span'TimeEvent'MessageEvent' v))
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
instance Control.DeepSeq.NFData Span'TimeEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'TimeEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Span'TimeEvent'time x__)
                (Control.DeepSeq.deepseq (_Span'TimeEvent'value x__) ()))
instance Control.DeepSeq.NFData Span'TimeEvent'Value where
  rnf (Span'TimeEvent'Annotation' x__) = Control.DeepSeq.rnf x__
  rnf (Span'TimeEvent'MessageEvent' x__) = Control.DeepSeq.rnf x__
_Span'TimeEvent'Annotation' ::
  Data.ProtoLens.Prism.Prism' Span'TimeEvent'Value Span'TimeEvent'Annotation
_Span'TimeEvent'Annotation'
  = Data.ProtoLens.Prism.prism'
      Span'TimeEvent'Annotation'
      (\ p__
         -> case p__ of
              (Span'TimeEvent'Annotation' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Span'TimeEvent'MessageEvent' ::
  Data.ProtoLens.Prism.Prism' Span'TimeEvent'Value Span'TimeEvent'MessageEvent
_Span'TimeEvent'MessageEvent'
  = Data.ProtoLens.Prism.prism'
      Span'TimeEvent'MessageEvent'
      (\ p__
         -> case p__ of
              (Span'TimeEvent'MessageEvent' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.description' @:: Lens' Span'TimeEvent'Annotation TruncatableString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'description' @:: Lens' Span'TimeEvent'Annotation (Prelude.Maybe TruncatableString)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.attributes' @:: Lens' Span'TimeEvent'Annotation Span'Attributes@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'attributes' @:: Lens' Span'TimeEvent'Annotation (Prelude.Maybe Span'Attributes)@ -}
data Span'TimeEvent'Annotation
  = Span'TimeEvent'Annotation'_constructor {_Span'TimeEvent'Annotation'description :: !(Prelude.Maybe TruncatableString),
                                            _Span'TimeEvent'Annotation'attributes :: !(Prelude.Maybe Span'Attributes),
                                            _Span'TimeEvent'Annotation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span'TimeEvent'Annotation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Span'TimeEvent'Annotation "description" TruncatableString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'Annotation'description
           (\ x__ y__ -> x__ {_Span'TimeEvent'Annotation'description = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span'TimeEvent'Annotation "maybe'description" (Prelude.Maybe TruncatableString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'Annotation'description
           (\ x__ y__ -> x__ {_Span'TimeEvent'Annotation'description = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'TimeEvent'Annotation "attributes" Span'Attributes where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'Annotation'attributes
           (\ x__ y__ -> x__ {_Span'TimeEvent'Annotation'attributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Span'TimeEvent'Annotation "maybe'attributes" (Prelude.Maybe Span'Attributes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'Annotation'attributes
           (\ x__ y__ -> x__ {_Span'TimeEvent'Annotation'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Message Span'TimeEvent'Annotation where
  messageName _
    = Data.Text.pack
        "opencensus.proto.trace.v1.Span.TimeEvent.Annotation"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Annotation\DC2N\n\
      \\vdescription\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\vdescription\DC2J\n\
      \\n\
      \attributes\CAN\STX \SOH(\v2*.opencensus.proto.trace.v1.Span.AttributesR\n\
      \attributes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        description__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "description"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TruncatableString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'description")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvent'Annotation
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'Attributes)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'attributes")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvent'Annotation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, description__field_descriptor),
           (Data.ProtoLens.Tag 2, attributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'TimeEvent'Annotation'_unknownFields
        (\ x__ y__
           -> x__ {_Span'TimeEvent'Annotation'_unknownFields = y__})
  defMessage
    = Span'TimeEvent'Annotation'_constructor
        {_Span'TimeEvent'Annotation'description = Prelude.Nothing,
         _Span'TimeEvent'Annotation'attributes = Prelude.Nothing,
         _Span'TimeEvent'Annotation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Span'TimeEvent'Annotation
          -> Data.ProtoLens.Encoding.Bytes.Parser Span'TimeEvent'Annotation
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
                                       "description"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"description") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "attributes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attributes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Annotation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'description") _x
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
                       (Data.ProtoLens.Field.field @"maybe'attributes") _x
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
instance Control.DeepSeq.NFData Span'TimeEvent'Annotation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'TimeEvent'Annotation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Span'TimeEvent'Annotation'description x__)
                (Control.DeepSeq.deepseq
                   (_Span'TimeEvent'Annotation'attributes x__) ()))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.type'' @:: Lens' Span'TimeEvent'MessageEvent Span'TimeEvent'MessageEvent'Type@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.id' @:: Lens' Span'TimeEvent'MessageEvent Data.Word.Word64@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.uncompressedSize' @:: Lens' Span'TimeEvent'MessageEvent Data.Word.Word64@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.compressedSize' @:: Lens' Span'TimeEvent'MessageEvent Data.Word.Word64@ -}
data Span'TimeEvent'MessageEvent
  = Span'TimeEvent'MessageEvent'_constructor {_Span'TimeEvent'MessageEvent'type' :: !Span'TimeEvent'MessageEvent'Type,
                                              _Span'TimeEvent'MessageEvent'id :: !Data.Word.Word64,
                                              _Span'TimeEvent'MessageEvent'uncompressedSize :: !Data.Word.Word64,
                                              _Span'TimeEvent'MessageEvent'compressedSize :: !Data.Word.Word64,
                                              _Span'TimeEvent'MessageEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span'TimeEvent'MessageEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Span'TimeEvent'MessageEvent "type'" Span'TimeEvent'MessageEvent'Type where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'MessageEvent'type'
           (\ x__ y__ -> x__ {_Span'TimeEvent'MessageEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'TimeEvent'MessageEvent "id" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'MessageEvent'id
           (\ x__ y__ -> x__ {_Span'TimeEvent'MessageEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'TimeEvent'MessageEvent "uncompressedSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'MessageEvent'uncompressedSize
           (\ x__ y__
              -> x__ {_Span'TimeEvent'MessageEvent'uncompressedSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'TimeEvent'MessageEvent "compressedSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvent'MessageEvent'compressedSize
           (\ x__ y__
              -> x__ {_Span'TimeEvent'MessageEvent'compressedSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message Span'TimeEvent'MessageEvent where
  messageName _
    = Data.Text.pack
        "opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent"
  packedMessageDescriptor _
    = "\n\
      \\fMessageEvent\DC2O\n\
      \\EOTtype\CAN\SOH \SOH(\SO2;.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent.TypeR\EOTtype\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\EOTR\STXid\DC2+\n\
      \\DC1uncompressed_size\CAN\ETX \SOH(\EOTR\DLEuncompressedSize\DC2'\n\
      \\SIcompressed_size\CAN\EOT \SOH(\EOTR\SOcompressedSize\"4\n\
      \\EOTType\DC2\DC4\n\
      \\DLETYPE_UNSPECIFIED\DLE\NUL\DC2\b\n\
      \\EOTSENT\DLE\SOH\DC2\f\n\
      \\bRECEIVED\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Span'TimeEvent'MessageEvent'Type)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvent'MessageEvent
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvent'MessageEvent
        uncompressedSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uncompressed_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"uncompressedSize")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvent'MessageEvent
        compressedSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "compressed_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"compressedSize")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvent'MessageEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, uncompressedSize__field_descriptor),
           (Data.ProtoLens.Tag 4, compressedSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'TimeEvent'MessageEvent'_unknownFields
        (\ x__ y__
           -> x__ {_Span'TimeEvent'MessageEvent'_unknownFields = y__})
  defMessage
    = Span'TimeEvent'MessageEvent'_constructor
        {_Span'TimeEvent'MessageEvent'type' = Data.ProtoLens.fieldDefault,
         _Span'TimeEvent'MessageEvent'id = Data.ProtoLens.fieldDefault,
         _Span'TimeEvent'MessageEvent'uncompressedSize = Data.ProtoLens.fieldDefault,
         _Span'TimeEvent'MessageEvent'compressedSize = Data.ProtoLens.fieldDefault,
         _Span'TimeEvent'MessageEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Span'TimeEvent'MessageEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser Span'TimeEvent'MessageEvent
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
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "uncompressed_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"uncompressedSize") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "compressed_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"compressedSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MessageEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"uncompressedSize") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"compressedSize") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData Span'TimeEvent'MessageEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'TimeEvent'MessageEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Span'TimeEvent'MessageEvent'type' x__)
                (Control.DeepSeq.deepseq
                   (_Span'TimeEvent'MessageEvent'id x__)
                   (Control.DeepSeq.deepseq
                      (_Span'TimeEvent'MessageEvent'uncompressedSize x__)
                      (Control.DeepSeq.deepseq
                         (_Span'TimeEvent'MessageEvent'compressedSize x__) ()))))
newtype Span'TimeEvent'MessageEvent'Type'UnrecognizedValue
  = Span'TimeEvent'MessageEvent'Type'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Span'TimeEvent'MessageEvent'Type
  = Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED |
    Span'TimeEvent'MessageEvent'SENT |
    Span'TimeEvent'MessageEvent'RECEIVED |
    Span'TimeEvent'MessageEvent'Type'Unrecognized !Span'TimeEvent'MessageEvent'Type'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Span'TimeEvent'MessageEvent'Type where
  maybeToEnum 0
    = Prelude.Just Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just Span'TimeEvent'MessageEvent'SENT
  maybeToEnum 2 = Prelude.Just Span'TimeEvent'MessageEvent'RECEIVED
  maybeToEnum k
    = Prelude.Just
        (Span'TimeEvent'MessageEvent'Type'Unrecognized
           (Span'TimeEvent'MessageEvent'Type'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED
    = "TYPE_UNSPECIFIED"
  showEnum Span'TimeEvent'MessageEvent'SENT = "SENT"
  showEnum Span'TimeEvent'MessageEvent'RECEIVED = "RECEIVED"
  showEnum
    (Span'TimeEvent'MessageEvent'Type'Unrecognized (Span'TimeEvent'MessageEvent'Type'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "TYPE_UNSPECIFIED"
    = Prelude.Just Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED
    | (Prelude.==) k "SENT"
    = Prelude.Just Span'TimeEvent'MessageEvent'SENT
    | (Prelude.==) k "RECEIVED"
    = Prelude.Just Span'TimeEvent'MessageEvent'RECEIVED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Span'TimeEvent'MessageEvent'Type where
  minBound = Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED
  maxBound = Span'TimeEvent'MessageEvent'RECEIVED
instance Prelude.Enum Span'TimeEvent'MessageEvent'Type where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Type: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED = 0
  fromEnum Span'TimeEvent'MessageEvent'SENT = 1
  fromEnum Span'TimeEvent'MessageEvent'RECEIVED = 2
  fromEnum
    (Span'TimeEvent'MessageEvent'Type'Unrecognized (Span'TimeEvent'MessageEvent'Type'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Span'TimeEvent'MessageEvent'RECEIVED
    = Prelude.error
        "Span'TimeEvent'MessageEvent'Type.succ: bad argument Span'TimeEvent'MessageEvent'RECEIVED. This value would be out of bounds."
  succ Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED
    = Span'TimeEvent'MessageEvent'SENT
  succ Span'TimeEvent'MessageEvent'SENT
    = Span'TimeEvent'MessageEvent'RECEIVED
  succ (Span'TimeEvent'MessageEvent'Type'Unrecognized _)
    = Prelude.error
        "Span'TimeEvent'MessageEvent'Type.succ: bad argument: unrecognized value"
  pred Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED
    = Prelude.error
        "Span'TimeEvent'MessageEvent'Type.pred: bad argument Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED. This value would be out of bounds."
  pred Span'TimeEvent'MessageEvent'SENT
    = Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED
  pred Span'TimeEvent'MessageEvent'RECEIVED
    = Span'TimeEvent'MessageEvent'SENT
  pred (Span'TimeEvent'MessageEvent'Type'Unrecognized _)
    = Prelude.error
        "Span'TimeEvent'MessageEvent'Type.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Span'TimeEvent'MessageEvent'Type where
  fieldDefault = Span'TimeEvent'MessageEvent'TYPE_UNSPECIFIED
instance Control.DeepSeq.NFData Span'TimeEvent'MessageEvent'Type where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.timeEvent' @:: Lens' Span'TimeEvents [Span'TimeEvent]@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.vec'timeEvent' @:: Lens' Span'TimeEvents (Data.Vector.Vector Span'TimeEvent)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.droppedAnnotationsCount' @:: Lens' Span'TimeEvents Data.Int.Int32@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.droppedMessageEventsCount' @:: Lens' Span'TimeEvents Data.Int.Int32@ -}
data Span'TimeEvents
  = Span'TimeEvents'_constructor {_Span'TimeEvents'timeEvent :: !(Data.Vector.Vector Span'TimeEvent),
                                  _Span'TimeEvents'droppedAnnotationsCount :: !Data.Int.Int32,
                                  _Span'TimeEvents'droppedMessageEventsCount :: !Data.Int.Int32,
                                  _Span'TimeEvents'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span'TimeEvents where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Span'TimeEvents "timeEvent" [Span'TimeEvent] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvents'timeEvent
           (\ x__ y__ -> x__ {_Span'TimeEvents'timeEvent = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Span'TimeEvents "vec'timeEvent" (Data.Vector.Vector Span'TimeEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvents'timeEvent
           (\ x__ y__ -> x__ {_Span'TimeEvents'timeEvent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'TimeEvents "droppedAnnotationsCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvents'droppedAnnotationsCount
           (\ x__ y__
              -> x__ {_Span'TimeEvents'droppedAnnotationsCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'TimeEvents "droppedMessageEventsCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'TimeEvents'droppedMessageEventsCount
           (\ x__ y__
              -> x__ {_Span'TimeEvents'droppedMessageEventsCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message Span'TimeEvents where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.Span.TimeEvents"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \TimeEvents\DC2H\n\
      \\n\
      \time_event\CAN\SOH \ETX(\v2).opencensus.proto.trace.v1.Span.TimeEventR\ttimeEvent\DC2:\n\
      \\EMdropped_annotations_count\CAN\STX \SOH(\ENQR\ETBdroppedAnnotationsCount\DC2?\n\
      \\FSdropped_message_events_count\CAN\ETX \SOH(\ENQR\EMdroppedMessageEventsCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timeEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'TimeEvent)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"timeEvent")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvents
        droppedAnnotationsCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dropped_annotations_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"droppedAnnotationsCount")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvents
        droppedMessageEventsCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dropped_message_events_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"droppedMessageEventsCount")) ::
              Data.ProtoLens.FieldDescriptor Span'TimeEvents
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timeEvent__field_descriptor),
           (Data.ProtoLens.Tag 2, droppedAnnotationsCount__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            droppedMessageEventsCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'TimeEvents'_unknownFields
        (\ x__ y__ -> x__ {_Span'TimeEvents'_unknownFields = y__})
  defMessage
    = Span'TimeEvents'_constructor
        {_Span'TimeEvents'timeEvent = Data.Vector.Generic.empty,
         _Span'TimeEvents'droppedAnnotationsCount = Data.ProtoLens.fieldDefault,
         _Span'TimeEvents'droppedMessageEventsCount = Data.ProtoLens.fieldDefault,
         _Span'TimeEvents'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Span'TimeEvents
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Span'TimeEvent
             -> Data.ProtoLens.Encoding.Bytes.Parser Span'TimeEvents
        loop x mutable'timeEvent
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'timeEvent <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'timeEvent)
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
                              (Data.ProtoLens.Field.field @"vec'timeEvent") frozen'timeEvent x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "time_event"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'timeEvent y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dropped_annotations_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"droppedAnnotationsCount") y x)
                                  mutable'timeEvent
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dropped_message_events_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"droppedMessageEventsCount") y x)
                                  mutable'timeEvent
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'timeEvent
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'timeEvent <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'timeEvent)
          "TimeEvents"
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
                   (Data.ProtoLens.Field.field @"vec'timeEvent") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"droppedAnnotationsCount") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"droppedMessageEventsCount") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Span'TimeEvents where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'TimeEvents'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Span'TimeEvents'timeEvent x__)
                (Control.DeepSeq.deepseq
                   (_Span'TimeEvents'droppedAnnotationsCount x__)
                   (Control.DeepSeq.deepseq
                      (_Span'TimeEvents'droppedMessageEventsCount x__) ())))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.entries' @:: Lens' Span'Tracestate [Span'Tracestate'Entry]@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.vec'entries' @:: Lens' Span'Tracestate (Data.Vector.Vector Span'Tracestate'Entry)@ -}
data Span'Tracestate
  = Span'Tracestate'_constructor {_Span'Tracestate'entries :: !(Data.Vector.Vector Span'Tracestate'Entry),
                                  _Span'Tracestate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span'Tracestate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Span'Tracestate "entries" [Span'Tracestate'Entry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Tracestate'entries
           (\ x__ y__ -> x__ {_Span'Tracestate'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Span'Tracestate "vec'entries" (Data.Vector.Vector Span'Tracestate'Entry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Tracestate'entries
           (\ x__ y__ -> x__ {_Span'Tracestate'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message Span'Tracestate where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.Span.Tracestate"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Tracestate\DC2J\n\
      \\aentries\CAN\SOH \ETX(\v20.opencensus.proto.trace.v1.Span.Tracestate.EntryR\aentries\SUB/\n\
      \\ENQEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Span'Tracestate'Entry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor Span'Tracestate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'Tracestate'_unknownFields
        (\ x__ y__ -> x__ {_Span'Tracestate'_unknownFields = y__})
  defMessage
    = Span'Tracestate'_constructor
        {_Span'Tracestate'entries = Data.Vector.Generic.empty,
         _Span'Tracestate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Span'Tracestate
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Span'Tracestate'Entry
             -> Data.ProtoLens.Encoding.Bytes.Parser Span'Tracestate
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
          "Tracestate"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Span'Tracestate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'Tracestate'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Span'Tracestate'entries x__) ())
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.key' @:: Lens' Span'Tracestate'Entry Data.Text.Text@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.value' @:: Lens' Span'Tracestate'Entry Data.Text.Text@ -}
data Span'Tracestate'Entry
  = Span'Tracestate'Entry'_constructor {_Span'Tracestate'Entry'key :: !Data.Text.Text,
                                        _Span'Tracestate'Entry'value :: !Data.Text.Text,
                                        _Span'Tracestate'Entry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Span'Tracestate'Entry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Span'Tracestate'Entry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Tracestate'Entry'key
           (\ x__ y__ -> x__ {_Span'Tracestate'Entry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Span'Tracestate'Entry "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Span'Tracestate'Entry'value
           (\ x__ y__ -> x__ {_Span'Tracestate'Entry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Span'Tracestate'Entry where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.Span.Tracestate.Entry"
  packedMessageDescriptor _
    = "\n\
      \\ENQEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Span'Tracestate'Entry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Span'Tracestate'Entry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Span'Tracestate'Entry'_unknownFields
        (\ x__ y__ -> x__ {_Span'Tracestate'Entry'_unknownFields = y__})
  defMessage
    = Span'Tracestate'Entry'_constructor
        {_Span'Tracestate'Entry'key = Data.ProtoLens.fieldDefault,
         _Span'Tracestate'Entry'value = Data.ProtoLens.fieldDefault,
         _Span'Tracestate'Entry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Span'Tracestate'Entry
          -> Data.ProtoLens.Encoding.Bytes.Parser Span'Tracestate'Entry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
          (do loop Data.ProtoLens.defMessage) "Entry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Span'Tracestate'Entry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Span'Tracestate'Entry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Span'Tracestate'Entry'key x__)
                (Control.DeepSeq.deepseq (_Span'Tracestate'Entry'value x__) ()))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.stackFrames' @:: Lens' StackTrace StackTrace'StackFrames@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'stackFrames' @:: Lens' StackTrace (Prelude.Maybe StackTrace'StackFrames)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.stackTraceHashId' @:: Lens' StackTrace Data.Word.Word64@ -}
data StackTrace
  = StackTrace'_constructor {_StackTrace'stackFrames :: !(Prelude.Maybe StackTrace'StackFrames),
                             _StackTrace'stackTraceHashId :: !Data.Word.Word64,
                             _StackTrace'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StackTrace where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StackTrace "stackFrames" StackTrace'StackFrames where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'stackFrames
           (\ x__ y__ -> x__ {_StackTrace'stackFrames = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StackTrace "maybe'stackFrames" (Prelude.Maybe StackTrace'StackFrames) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'stackFrames
           (\ x__ y__ -> x__ {_StackTrace'stackFrames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StackTrace "stackTraceHashId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'stackTraceHashId
           (\ x__ y__ -> x__ {_StackTrace'stackTraceHashId = y__}))
        Prelude.id
instance Data.ProtoLens.Message StackTrace where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.StackTrace"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \StackTrace\DC2T\n\
      \\fstack_frames\CAN\SOH \SOH(\v21.opencensus.proto.trace.v1.StackTrace.StackFramesR\vstackFrames\DC2-\n\
      \\DC3stack_trace_hash_id\CAN\STX \SOH(\EOTR\DLEstackTraceHashId\SUB\237\ETX\n\
      \\n\
      \StackFrame\DC2Q\n\
      \\rfunction_name\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\ffunctionName\DC2b\n\
      \\SYNoriginal_function_name\CAN\STX \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\DC4originalFunctionName\DC2I\n\
      \\tfile_name\CAN\ETX \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\bfileName\DC2\US\n\
      \\vline_number\CAN\EOT \SOH(\ETXR\n\
      \lineNumber\DC2#\n\
      \\rcolumn_number\CAN\ENQ \SOH(\ETXR\fcolumnNumber\DC2B\n\
      \\vload_module\CAN\ACK \SOH(\v2!.opencensus.proto.trace.v1.ModuleR\n\
      \loadModule\DC2S\n\
      \\SOsource_version\CAN\a \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\rsourceVersion\SUB\135\SOH\n\
      \\vStackFrames\DC2F\n\
      \\ENQframe\CAN\SOH \ETX(\v20.opencensus.proto.trace.v1.StackTrace.StackFrameR\ENQframe\DC20\n\
      \\DC4dropped_frames_count\CAN\STX \SOH(\ENQR\DC2droppedFramesCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stackFrames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stack_frames"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StackTrace'StackFrames)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stackFrames")) ::
              Data.ProtoLens.FieldDescriptor StackTrace
        stackTraceHashId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stack_trace_hash_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stackTraceHashId")) ::
              Data.ProtoLens.FieldDescriptor StackTrace
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stackFrames__field_descriptor),
           (Data.ProtoLens.Tag 2, stackTraceHashId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StackTrace'_unknownFields
        (\ x__ y__ -> x__ {_StackTrace'_unknownFields = y__})
  defMessage
    = StackTrace'_constructor
        {_StackTrace'stackFrames = Prelude.Nothing,
         _StackTrace'stackTraceHashId = Data.ProtoLens.fieldDefault,
         _StackTrace'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StackTrace -> Data.ProtoLens.Encoding.Bytes.Parser StackTrace
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
                                       "stack_frames"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stackFrames") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "stack_trace_hash_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stackTraceHashId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StackTrace"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'stackFrames") _x
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
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"stackTraceHashId") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StackTrace where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StackTrace'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StackTrace'stackFrames x__)
                (Control.DeepSeq.deepseq (_StackTrace'stackTraceHashId x__) ()))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.functionName' @:: Lens' StackTrace'StackFrame TruncatableString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'functionName' @:: Lens' StackTrace'StackFrame (Prelude.Maybe TruncatableString)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.originalFunctionName' @:: Lens' StackTrace'StackFrame TruncatableString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'originalFunctionName' @:: Lens' StackTrace'StackFrame (Prelude.Maybe TruncatableString)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.fileName' @:: Lens' StackTrace'StackFrame TruncatableString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'fileName' @:: Lens' StackTrace'StackFrame (Prelude.Maybe TruncatableString)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.lineNumber' @:: Lens' StackTrace'StackFrame Data.Int.Int64@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.columnNumber' @:: Lens' StackTrace'StackFrame Data.Int.Int64@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.loadModule' @:: Lens' StackTrace'StackFrame Module@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'loadModule' @:: Lens' StackTrace'StackFrame (Prelude.Maybe Module)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.sourceVersion' @:: Lens' StackTrace'StackFrame TruncatableString@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.maybe'sourceVersion' @:: Lens' StackTrace'StackFrame (Prelude.Maybe TruncatableString)@ -}
data StackTrace'StackFrame
  = StackTrace'StackFrame'_constructor {_StackTrace'StackFrame'functionName :: !(Prelude.Maybe TruncatableString),
                                        _StackTrace'StackFrame'originalFunctionName :: !(Prelude.Maybe TruncatableString),
                                        _StackTrace'StackFrame'fileName :: !(Prelude.Maybe TruncatableString),
                                        _StackTrace'StackFrame'lineNumber :: !Data.Int.Int64,
                                        _StackTrace'StackFrame'columnNumber :: !Data.Int.Int64,
                                        _StackTrace'StackFrame'loadModule :: !(Prelude.Maybe Module),
                                        _StackTrace'StackFrame'sourceVersion :: !(Prelude.Maybe TruncatableString),
                                        _StackTrace'StackFrame'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StackTrace'StackFrame where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "functionName" TruncatableString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'functionName
           (\ x__ y__ -> x__ {_StackTrace'StackFrame'functionName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "maybe'functionName" (Prelude.Maybe TruncatableString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'functionName
           (\ x__ y__ -> x__ {_StackTrace'StackFrame'functionName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "originalFunctionName" TruncatableString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'originalFunctionName
           (\ x__ y__
              -> x__ {_StackTrace'StackFrame'originalFunctionName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "maybe'originalFunctionName" (Prelude.Maybe TruncatableString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'originalFunctionName
           (\ x__ y__
              -> x__ {_StackTrace'StackFrame'originalFunctionName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "fileName" TruncatableString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'fileName
           (\ x__ y__ -> x__ {_StackTrace'StackFrame'fileName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "maybe'fileName" (Prelude.Maybe TruncatableString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'fileName
           (\ x__ y__ -> x__ {_StackTrace'StackFrame'fileName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "lineNumber" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'lineNumber
           (\ x__ y__ -> x__ {_StackTrace'StackFrame'lineNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "columnNumber" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'columnNumber
           (\ x__ y__ -> x__ {_StackTrace'StackFrame'columnNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "loadModule" Module where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'loadModule
           (\ x__ y__ -> x__ {_StackTrace'StackFrame'loadModule = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "maybe'loadModule" (Prelude.Maybe Module) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'loadModule
           (\ x__ y__ -> x__ {_StackTrace'StackFrame'loadModule = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "sourceVersion" TruncatableString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'sourceVersion
           (\ x__ y__ -> x__ {_StackTrace'StackFrame'sourceVersion = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StackTrace'StackFrame "maybe'sourceVersion" (Prelude.Maybe TruncatableString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrame'sourceVersion
           (\ x__ y__ -> x__ {_StackTrace'StackFrame'sourceVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Message StackTrace'StackFrame where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.StackTrace.StackFrame"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \StackFrame\DC2Q\n\
      \\rfunction_name\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\ffunctionName\DC2b\n\
      \\SYNoriginal_function_name\CAN\STX \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\DC4originalFunctionName\DC2I\n\
      \\tfile_name\CAN\ETX \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\bfileName\DC2\US\n\
      \\vline_number\CAN\EOT \SOH(\ETXR\n\
      \lineNumber\DC2#\n\
      \\rcolumn_number\CAN\ENQ \SOH(\ETXR\fcolumnNumber\DC2B\n\
      \\vload_module\CAN\ACK \SOH(\v2!.opencensus.proto.trace.v1.ModuleR\n\
      \loadModule\DC2S\n\
      \\SOsource_version\CAN\a \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\rsourceVersion"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        functionName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function_name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TruncatableString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'functionName")) ::
              Data.ProtoLens.FieldDescriptor StackTrace'StackFrame
        originalFunctionName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "original_function_name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TruncatableString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'originalFunctionName")) ::
              Data.ProtoLens.FieldDescriptor StackTrace'StackFrame
        fileName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "file_name"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TruncatableString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fileName")) ::
              Data.ProtoLens.FieldDescriptor StackTrace'StackFrame
        lineNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "line_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"lineNumber")) ::
              Data.ProtoLens.FieldDescriptor StackTrace'StackFrame
        columnNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "column_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"columnNumber")) ::
              Data.ProtoLens.FieldDescriptor StackTrace'StackFrame
        loadModule__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "load_module"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Module)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'loadModule")) ::
              Data.ProtoLens.FieldDescriptor StackTrace'StackFrame
        sourceVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_version"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TruncatableString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceVersion")) ::
              Data.ProtoLens.FieldDescriptor StackTrace'StackFrame
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, functionName__field_descriptor),
           (Data.ProtoLens.Tag 2, originalFunctionName__field_descriptor),
           (Data.ProtoLens.Tag 3, fileName__field_descriptor),
           (Data.ProtoLens.Tag 4, lineNumber__field_descriptor),
           (Data.ProtoLens.Tag 5, columnNumber__field_descriptor),
           (Data.ProtoLens.Tag 6, loadModule__field_descriptor),
           (Data.ProtoLens.Tag 7, sourceVersion__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StackTrace'StackFrame'_unknownFields
        (\ x__ y__ -> x__ {_StackTrace'StackFrame'_unknownFields = y__})
  defMessage
    = StackTrace'StackFrame'_constructor
        {_StackTrace'StackFrame'functionName = Prelude.Nothing,
         _StackTrace'StackFrame'originalFunctionName = Prelude.Nothing,
         _StackTrace'StackFrame'fileName = Prelude.Nothing,
         _StackTrace'StackFrame'lineNumber = Data.ProtoLens.fieldDefault,
         _StackTrace'StackFrame'columnNumber = Data.ProtoLens.fieldDefault,
         _StackTrace'StackFrame'loadModule = Prelude.Nothing,
         _StackTrace'StackFrame'sourceVersion = Prelude.Nothing,
         _StackTrace'StackFrame'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StackTrace'StackFrame
          -> Data.ProtoLens.Encoding.Bytes.Parser StackTrace'StackFrame
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
                                       "function_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"functionName") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "original_function_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"originalFunctionName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "file_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fileName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "line_number"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lineNumber") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "column_number"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"columnNumber") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "load_module"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"loadModule") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "source_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceVersion") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StackFrame"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'functionName") _x
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
                       (Data.ProtoLens.Field.field @"maybe'originalFunctionName") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fileName") _x
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
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"lineNumber") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"columnNumber") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     Prelude.fromIntegral
                                     _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'loadModule") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'sourceVersion") _x
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
instance Control.DeepSeq.NFData StackTrace'StackFrame where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StackTrace'StackFrame'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StackTrace'StackFrame'functionName x__)
                (Control.DeepSeq.deepseq
                   (_StackTrace'StackFrame'originalFunctionName x__)
                   (Control.DeepSeq.deepseq
                      (_StackTrace'StackFrame'fileName x__)
                      (Control.DeepSeq.deepseq
                         (_StackTrace'StackFrame'lineNumber x__)
                         (Control.DeepSeq.deepseq
                            (_StackTrace'StackFrame'columnNumber x__)
                            (Control.DeepSeq.deepseq
                               (_StackTrace'StackFrame'loadModule x__)
                               (Control.DeepSeq.deepseq
                                  (_StackTrace'StackFrame'sourceVersion x__) ())))))))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.frame' @:: Lens' StackTrace'StackFrames [StackTrace'StackFrame]@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.vec'frame' @:: Lens' StackTrace'StackFrames (Data.Vector.Vector StackTrace'StackFrame)@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.droppedFramesCount' @:: Lens' StackTrace'StackFrames Data.Int.Int32@ -}
data StackTrace'StackFrames
  = StackTrace'StackFrames'_constructor {_StackTrace'StackFrames'frame :: !(Data.Vector.Vector StackTrace'StackFrame),
                                         _StackTrace'StackFrames'droppedFramesCount :: !Data.Int.Int32,
                                         _StackTrace'StackFrames'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StackTrace'StackFrames where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StackTrace'StackFrames "frame" [StackTrace'StackFrame] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrames'frame
           (\ x__ y__ -> x__ {_StackTrace'StackFrames'frame = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StackTrace'StackFrames "vec'frame" (Data.Vector.Vector StackTrace'StackFrame) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrames'frame
           (\ x__ y__ -> x__ {_StackTrace'StackFrames'frame = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StackTrace'StackFrames "droppedFramesCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StackTrace'StackFrames'droppedFramesCount
           (\ x__ y__
              -> x__ {_StackTrace'StackFrames'droppedFramesCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message StackTrace'StackFrames where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.StackTrace.StackFrames"
  packedMessageDescriptor _
    = "\n\
      \\vStackFrames\DC2F\n\
      \\ENQframe\CAN\SOH \ETX(\v20.opencensus.proto.trace.v1.StackTrace.StackFrameR\ENQframe\DC20\n\
      \\DC4dropped_frames_count\CAN\STX \SOH(\ENQR\DC2droppedFramesCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        frame__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "frame"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StackTrace'StackFrame)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"frame")) ::
              Data.ProtoLens.FieldDescriptor StackTrace'StackFrames
        droppedFramesCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dropped_frames_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"droppedFramesCount")) ::
              Data.ProtoLens.FieldDescriptor StackTrace'StackFrames
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, frame__field_descriptor),
           (Data.ProtoLens.Tag 2, droppedFramesCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StackTrace'StackFrames'_unknownFields
        (\ x__ y__ -> x__ {_StackTrace'StackFrames'_unknownFields = y__})
  defMessage
    = StackTrace'StackFrames'_constructor
        {_StackTrace'StackFrames'frame = Data.Vector.Generic.empty,
         _StackTrace'StackFrames'droppedFramesCount = Data.ProtoLens.fieldDefault,
         _StackTrace'StackFrames'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StackTrace'StackFrames
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld StackTrace'StackFrame
             -> Data.ProtoLens.Encoding.Bytes.Parser StackTrace'StackFrames
        loop x mutable'frame
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'frame <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'frame)
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
                              (Data.ProtoLens.Field.field @"vec'frame") frozen'frame x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "frame"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'frame y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dropped_frames_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"droppedFramesCount") y x)
                                  mutable'frame
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'frame
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'frame <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'frame)
          "StackFrames"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'frame") _x))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"droppedFramesCount") _x
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
instance Control.DeepSeq.NFData StackTrace'StackFrames where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StackTrace'StackFrames'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StackTrace'StackFrames'frame x__)
                (Control.DeepSeq.deepseq
                   (_StackTrace'StackFrames'droppedFramesCount x__) ()))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.code' @:: Lens' Status Data.Int.Int32@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.message' @:: Lens' Status Data.Text.Text@ -}
data Status
  = Status'_constructor {_Status'code :: !Data.Int.Int32,
                         _Status'message :: !Data.Text.Text,
                         _Status'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Status where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Status "code" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Status'code (\ x__ y__ -> x__ {_Status'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Status "message" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Status'message (\ x__ y__ -> x__ {_Status'message = y__}))
        Prelude.id
instance Data.ProtoLens.Message Status where
  messageName _ = Data.Text.pack "opencensus.proto.trace.v1.Status"
  packedMessageDescriptor _
    = "\n\
      \\ACKStatus\DC2\DC2\n\
      \\EOTcode\CAN\SOH \SOH(\ENQR\EOTcode\DC2\CAN\n\
      \\amessage\CAN\STX \SOH(\tR\amessage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"code")) ::
              Data.ProtoLens.FieldDescriptor Status
        message__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"message")) ::
              Data.ProtoLens.FieldDescriptor Status
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, code__field_descriptor),
           (Data.ProtoLens.Tag 2, message__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Status'_unknownFields
        (\ x__ y__ -> x__ {_Status'_unknownFields = y__})
  defMessage
    = Status'_constructor
        {_Status'code = Data.ProtoLens.fieldDefault,
         _Status'message = Data.ProtoLens.fieldDefault,
         _Status'_unknownFields = []}
  parseMessage
    = let
        loop :: Status -> Data.ProtoLens.Encoding.Bytes.Parser Status
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
                                       "code"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
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
                                       "message"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"message") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Status"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"code") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"message") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Status where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Status'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Status'code x__)
                (Control.DeepSeq.deepseq (_Status'message x__) ()))
{- | Fields :
     
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.value' @:: Lens' TruncatableString Data.Text.Text@
         * 'Proto.Opencensus.Proto.Trace.V1.Trace_Fields.truncatedByteCount' @:: Lens' TruncatableString Data.Int.Int32@ -}
data TruncatableString
  = TruncatableString'_constructor {_TruncatableString'value :: !Data.Text.Text,
                                    _TruncatableString'truncatedByteCount :: !Data.Int.Int32,
                                    _TruncatableString'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TruncatableString where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TruncatableString "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TruncatableString'value
           (\ x__ y__ -> x__ {_TruncatableString'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TruncatableString "truncatedByteCount" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TruncatableString'truncatedByteCount
           (\ x__ y__ -> x__ {_TruncatableString'truncatedByteCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message TruncatableString where
  messageName _
    = Data.Text.pack "opencensus.proto.trace.v1.TruncatableString"
  packedMessageDescriptor _
    = "\n\
      \\DC1TruncatableString\DC2\DC4\n\
      \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\DC20\n\
      \\DC4truncated_byte_count\CAN\STX \SOH(\ENQR\DC2truncatedByteCount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor TruncatableString
        truncatedByteCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "truncated_byte_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"truncatedByteCount")) ::
              Data.ProtoLens.FieldDescriptor TruncatableString
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, value__field_descriptor),
           (Data.ProtoLens.Tag 2, truncatedByteCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TruncatableString'_unknownFields
        (\ x__ y__ -> x__ {_TruncatableString'_unknownFields = y__})
  defMessage
    = TruncatableString'_constructor
        {_TruncatableString'value = Data.ProtoLens.fieldDefault,
         _TruncatableString'truncatedByteCount = Data.ProtoLens.fieldDefault,
         _TruncatableString'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TruncatableString
          -> Data.ProtoLens.Encoding.Bytes.Parser TruncatableString
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "truncated_byte_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"truncatedByteCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TruncatableString"
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"truncatedByteCount") _x
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
instance Control.DeepSeq.NFData TruncatableString where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TruncatableString'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TruncatableString'value x__)
                (Control.DeepSeq.deepseq
                   (_TruncatableString'truncatedByteCount x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \%opencensus/proto/trace/v1/trace.proto\DC2\EMopencensus.proto.trace.v1\SUB+opencensus/proto/resource/v1/resource.proto\SUB\USgoogle/protobuf/timestamp.proto\SUB\RSgoogle/protobuf/wrappers.proto\"\145\SYN\n\
    \\EOTSpan\DC2\EM\n\
    \\btrace_id\CAN\SOH \SOH(\fR\atraceId\DC2\ETB\n\
    \\aspan_id\CAN\STX \SOH(\fR\ACKspanId\DC2J\n\
    \\n\
    \tracestate\CAN\SI \SOH(\v2*.opencensus.proto.trace.v1.Span.TracestateR\n\
    \tracestate\DC2$\n\
    \\SOparent_span_id\CAN\ETX \SOH(\fR\fparentSpanId\DC2@\n\
    \\EOTname\CAN\EOT \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\EOTname\DC2<\n\
    \\EOTkind\CAN\SO \SOH(\SO2(.opencensus.proto.trace.v1.Span.SpanKindR\EOTkind\DC29\n\
    \\n\
    \start_time\CAN\ENQ \SOH(\v2\SUB.google.protobuf.TimestampR\tstartTime\DC25\n\
    \\bend_time\CAN\ACK \SOH(\v2\SUB.google.protobuf.TimestampR\aendTime\DC2J\n\
    \\n\
    \attributes\CAN\a \SOH(\v2*.opencensus.proto.trace.v1.Span.AttributesR\n\
    \attributes\DC2F\n\
    \\vstack_trace\CAN\b \SOH(\v2%.opencensus.proto.trace.v1.StackTraceR\n\
    \stackTrace\DC2K\n\
    \\vtime_events\CAN\t \SOH(\v2*.opencensus.proto.trace.v1.Span.TimeEventsR\n\
    \timeEvents\DC2;\n\
    \\ENQlinks\CAN\n\
    \ \SOH(\v2%.opencensus.proto.trace.v1.Span.LinksR\ENQlinks\DC29\n\
    \\ACKstatus\CAN\v \SOH(\v2!.opencensus.proto.trace.v1.StatusR\ACKstatus\DC2B\n\
    \\bresource\CAN\DLE \SOH(\v2&.opencensus.proto.resource.v1.ResourceR\bresource\DC2X\n\
    \\ESCsame_process_as_parent_span\CAN\f \SOH(\v2\SUB.google.protobuf.BoolValueR\ETBsameProcessAsParentSpan\DC2F\n\
    \\DLEchild_span_count\CAN\r \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOchildSpanCount\SUB\137\SOH\n\
    \\n\
    \Tracestate\DC2J\n\
    \\aentries\CAN\SOH \ETX(\v20.opencensus.proto.trace.v1.Span.Tracestate.EntryR\aentries\SUB/\n\
    \\ENQEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\tR\ENQvalue\SUB\149\STX\n\
    \\n\
    \Attributes\DC2a\n\
    \\rattribute_map\CAN\SOH \ETX(\v2<.opencensus.proto.trace.v1.Span.Attributes.AttributeMapEntryR\fattributeMap\DC28\n\
    \\CANdropped_attributes_count\CAN\STX \SOH(\ENQR\SYNdroppedAttributesCount\SUBj\n\
    \\DC1AttributeMapEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2?\n\
    \\ENQvalue\CAN\STX \SOH(\v2).opencensus.proto.trace.v1.AttributeValueR\ENQvalue:\STX8\SOH\SUB\164\ENQ\n\
    \\tTimeEvent\DC2.\n\
    \\EOTtime\CAN\SOH \SOH(\v2\SUB.google.protobuf.TimestampR\EOTtime\DC2V\n\
    \\n\
    \annotation\CAN\STX \SOH(\v24.opencensus.proto.trace.v1.Span.TimeEvent.AnnotationH\NULR\n\
    \annotation\DC2]\n\
    \\rmessage_event\CAN\ETX \SOH(\v26.opencensus.proto.trace.v1.Span.TimeEvent.MessageEventH\NULR\fmessageEvent\SUB\168\SOH\n\
    \\n\
    \Annotation\DC2N\n\
    \\vdescription\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\vdescription\DC2J\n\
    \\n\
    \attributes\CAN\STX \SOH(\v2*.opencensus.proto.trace.v1.Span.AttributesR\n\
    \attributes\SUB\251\SOH\n\
    \\fMessageEvent\DC2O\n\
    \\EOTtype\CAN\SOH \SOH(\SO2;.opencensus.proto.trace.v1.Span.TimeEvent.MessageEvent.TypeR\EOTtype\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\EOTR\STXid\DC2+\n\
    \\DC1uncompressed_size\CAN\ETX \SOH(\EOTR\DLEuncompressedSize\DC2'\n\
    \\SIcompressed_size\CAN\EOT \SOH(\EOTR\SOcompressedSize\"4\n\
    \\EOTType\DC2\DC4\n\
    \\DLETYPE_UNSPECIFIED\DLE\NUL\DC2\b\n\
    \\EOTSENT\DLE\SOH\DC2\f\n\
    \\bRECEIVED\DLE\STXB\a\n\
    \\ENQvalue\SUB\211\SOH\n\
    \\n\
    \TimeEvents\DC2H\n\
    \\n\
    \time_event\CAN\SOH \ETX(\v2).opencensus.proto.trace.v1.Span.TimeEventR\ttimeEvent\DC2:\n\
    \\EMdropped_annotations_count\CAN\STX \SOH(\ENQR\ETBdroppedAnnotationsCount\DC2?\n\
    \\FSdropped_message_events_count\CAN\ETX \SOH(\ENQR\EMdroppedMessageEventsCount\SUB\222\STX\n\
    \\EOTLink\DC2\EM\n\
    \\btrace_id\CAN\SOH \SOH(\fR\atraceId\DC2\ETB\n\
    \\aspan_id\CAN\STX \SOH(\fR\ACKspanId\DC2=\n\
    \\EOTtype\CAN\ETX \SOH(\SO2).opencensus.proto.trace.v1.Span.Link.TypeR\EOTtype\DC2J\n\
    \\n\
    \attributes\CAN\EOT \SOH(\v2*.opencensus.proto.trace.v1.Span.AttributesR\n\
    \attributes\DC2J\n\
    \\n\
    \tracestate\CAN\ENQ \SOH(\v2*.opencensus.proto.trace.v1.Span.TracestateR\n\
    \tracestate\"K\n\
    \\EOTType\DC2\DC4\n\
    \\DLETYPE_UNSPECIFIED\DLE\NUL\DC2\NAK\n\
    \\DC1CHILD_LINKED_SPAN\DLE\SOH\DC2\SYN\n\
    \\DC2PARENT_LINKED_SPAN\DLE\STX\SUBq\n\
    \\ENQLinks\DC28\n\
    \\EOTlink\CAN\SOH \ETX(\v2$.opencensus.proto.trace.v1.Span.LinkR\EOTlink\DC2.\n\
    \\DC3dropped_links_count\CAN\STX \SOH(\ENQR\DC1droppedLinksCount\"=\n\
    \\bSpanKind\DC2\EM\n\
    \\NAKSPAN_KIND_UNSPECIFIED\DLE\NUL\DC2\n\
    \\n\
    \\ACKSERVER\DLE\SOH\DC2\n\
    \\n\
    \\ACKCLIENT\DLE\STX\"6\n\
    \\ACKStatus\DC2\DC2\n\
    \\EOTcode\CAN\SOH \SOH(\ENQR\EOTcode\DC2\CAN\n\
    \\amessage\CAN\STX \SOH(\tR\amessage\"\209\SOH\n\
    \\SOAttributeValue\DC2Q\n\
    \\fstring_value\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringH\NULR\vstringValue\DC2\GS\n\
    \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValue\DC2\US\n\
    \\n\
    \bool_value\CAN\ETX \SOH(\bH\NULR\tboolValue\DC2#\n\
    \\fdouble_value\CAN\EOT \SOH(\SOHH\NULR\vdoubleValueB\a\n\
    \\ENQvalue\"\139\ACK\n\
    \\n\
    \StackTrace\DC2T\n\
    \\fstack_frames\CAN\SOH \SOH(\v21.opencensus.proto.trace.v1.StackTrace.StackFramesR\vstackFrames\DC2-\n\
    \\DC3stack_trace_hash_id\CAN\STX \SOH(\EOTR\DLEstackTraceHashId\SUB\237\ETX\n\
    \\n\
    \StackFrame\DC2Q\n\
    \\rfunction_name\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\ffunctionName\DC2b\n\
    \\SYNoriginal_function_name\CAN\STX \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\DC4originalFunctionName\DC2I\n\
    \\tfile_name\CAN\ETX \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\bfileName\DC2\US\n\
    \\vline_number\CAN\EOT \SOH(\ETXR\n\
    \lineNumber\DC2#\n\
    \\rcolumn_number\CAN\ENQ \SOH(\ETXR\fcolumnNumber\DC2B\n\
    \\vload_module\CAN\ACK \SOH(\v2!.opencensus.proto.trace.v1.ModuleR\n\
    \loadModule\DC2S\n\
    \\SOsource_version\CAN\a \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\rsourceVersion\SUB\135\SOH\n\
    \\vStackFrames\DC2F\n\
    \\ENQframe\CAN\SOH \ETX(\v20.opencensus.proto.trace.v1.StackTrace.StackFrameR\ENQframe\DC20\n\
    \\DC4dropped_frames_count\CAN\STX \SOH(\ENQR\DC2droppedFramesCount\"\151\SOH\n\
    \\ACKModule\DC2D\n\
    \\ACKmodule\CAN\SOH \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\ACKmodule\DC2G\n\
    \\bbuild_id\CAN\STX \SOH(\v2,.opencensus.proto.trace.v1.TruncatableStringR\abuildId\"[\n\
    \\DC1TruncatableString\DC2\DC4\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalue\DC20\n\
    \\DC4truncated_byte_count\CAN\STX \SOH(\ENQR\DC2truncatedByteCountB\140\SOH\n\
    \\FSio.opencensus.proto.trace.v1B\n\
    \TraceProtoP\SOHZBgithub.com/census-instrumentation/opencensus-proto/gen-go/trace/v1\234\STX\EMOpenCensus.Proto.Trace.V1J\154\136\SOH\n\
    \\a\DC2\ENQ\SO\NUL\165\ETX\SOH\n\
    \\197\EOT\n\
    \\SOH\f\DC2\ETX\SO\NUL\DC22\186\EOT Copyright 2017, OpenCensus Authors\n\
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
    \\SOH\STX\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\DC2\NUL5\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\DC3\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\DC4\NUL(\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SYN\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SYN\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETB\NUL5\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ETB\NUL5\n\
    \\b\n\
    \\SOH\b\DC2\ETX\CAN\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\CAN\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SUB\NULY\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\SUB\NULY\n\
    \\b\n\
    \\SOH\b\DC2\ETX\FS\NUL2\n\
    \\t\n\
    \\STX\b-\DC2\ETX\FS\NUL2\n\
    \\154\EOT\n\
    \\STX\EOT\NUL\DC2\ENQ(\NUL\185\STX\SOH\SUB\140\EOT A span represents a single operation within a trace. Spans can be\n\
    \ nested to form a trace tree. Spans may also be linked to other spans\n\
    \ from the same or different trace. And form graphs. Often, a trace\n\
    \ contains a root span that describes the end-to-end latency, and one\n\
    \ or more subspans for its sub-operations. A trace can also contain\n\
    \ multiple root spans, or none at all. Spans do not need to be\n\
    \ contiguous - there may be gaps or overlaps between spans in a trace.\n\
    \\n\
    \ The next id is 17.\n\
    \ TODO(bdrutu): Add an example.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX(\b\f\n\
    \\205\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX1\STX\NAK\SUB\191\STX A unique identifier for a trace. All spans from the same trace share\n\
    \ the same `trace_id`. The ID is a 16-byte array. An ID with all zeroes\n\
    \ is considered invalid.\n\
    \\n\
    \ This field is semantically required. Receiver should generate new\n\
    \ random trace_id if empty or invalid trace_id was received.\n\
    \\n\
    \ This field is required.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX1\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX1\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX1\DC3\DC4\n\
    \\195\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX;\STX\DC4\SUB\181\STX A unique identifier for a span within a trace, assigned when the span\n\
    \ is created. The ID is an 8-byte array. An ID with all zeroes is considered\n\
    \ invalid.\n\
    \\n\
    \ This field is semantically required. Receiver should generate new\n\
    \ random span_id if empty or invalid span_id was received.\n\
    \\n\
    \ This field is required.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX;\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX;\b\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX;\DC2\DC3\n\
    \\146\STX\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOTA\STXP\ETX\SUB\131\STX This field conveys information about request position in multiple distributed tracing graphs.\n\
    \ It is a list of Tracestate.Entry with a maximum of 32 members in the list.\n\
    \\n\
    \ See the https://github.com/w3c/distributed-tracing for more details about this field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETXA\n\
    \\DC4\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\ETX\NUL\DC2\EOTB\EOTL\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\SOH\DC2\ETXB\f\DC1\n\
    \\198\SOH\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\DC2\ETXF\ACK\NAK\SUB\180\SOH The key must begin with a lowercase letter, and can only contain\n\
    \ lowercase letters 'a'-'z', digits '0'-'9', underscores '_', dashes\n\
    \ '-', asterisks '*', and forward slashes '/'.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETXF\ACK\f\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXF\r\DLE\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXF\DC3\DC4\n\
    \\223\SOH\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\DC2\ETXK\ACK\ETB\SUB\205\SOH The value is opaque string up to 256 characters printable ASCII\n\
    \ RFC0020 characters (i.e., the range 0x20 to 0x7E) except ',' and '='.\n\
    \ Note that this also excludes tabs, newlines, carriage returns, etc.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETXK\ACK\f\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETXK\r\DC2\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETXK\NAK\SYN\n\
    \A\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXO\EOT\US\SUB2 A list of entries that represent the Tracestate.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETXO\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETXO\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXO\DC3\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXO\GS\RS\n\
    \*\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXS\STX\GS\SUB\GS The Tracestate on the span.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXS\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXS\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXS\SUB\FS\n\
    \\139\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXW\STX\ESC\SUB~ The `span_id` of this span's parent span. If this is a root span, then this\n\
    \ field must be empty. The ID is an 8-byte array.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXW\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXW\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXW\EM\SUB\n\
    \\213\EOT\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXf\STX\GS\SUB\199\EOT A description of the span's operation.\n\
    \\n\
    \ For example, the name can be a qualified method name or a file name\n\
    \ and a line number where the operation is called. A best practice is to use\n\
    \ the same display name at the same call point in an application.\n\
    \ This makes it easier to correlate spans in different traces.\n\
    \\n\
    \ This field is semantically required to be set to non-empty string.\n\
    \ When null or empty string received - receiver may use string \"name\"\n\
    \ as a replacement. There might be smarted algorithms implemented by\n\
    \ receiver to fix the empty span name.\n\
    \\n\
    \ This field is required.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXf\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXf\DC4\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXf\ESC\FS\n\
    \\136\SOH\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOTj\STXu\ETX\SUBz Type of span. Can be used to specify additional relationships between spans\n\
    \ in addition to a parent/child relationship.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETXj\a\SI\n\
    \\GS\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETXl\EOT\RS\SUB\SO Unspecified.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETXl\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETXl\FS\GS\n\
    \p\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETXp\EOT\SI\SUBa Indicates that the span covers server-side handling of an RPC or other\n\
    \ remote network request.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETXp\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETXp\r\SO\n\
    \o\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETXt\EOT\SI\SUB` Indicates that the span covers the client-side wrapper around an RPC or\n\
    \ other remote request.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETXt\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETXt\r\SO\n\
    \\244\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXz\STX\NAK\SUB\230\SOH Distinguishes between spans generated in a particular context. For example,\n\
    \ two spans with the same name may be distinguished using `CLIENT` (caller)\n\
    \ and `SERVER` (callee) to identify queueing latency associated with the span.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXz\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXz\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXz\DC2\DC4\n\
    \\246\ETX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\134\SOH\STX+\SUB\231\ETX The start time of the span. On the client side, this is the time kept by\n\
    \ the local machine where the span execution starts. On the server side, this\n\
    \ is the time when the server's application handler starts running.\n\
    \\n\
    \ This field is semantically required. When not set on receive -\n\
    \ receiver should set it to the value of end_time field if it was\n\
    \ set. Or to the current time if neither was set. It is important to\n\
    \ keep end_time > start_time for consistency.\n\
    \\n\
    \ This field is required.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\EOT\134\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\134\SOH\FS&\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\134\SOH)*\n\
    \\170\ETX\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOT\145\SOH\STX)\SUB\155\ETX The end time of the span. On the client side, this is the time kept by\n\
    \ the local machine where the span execution ends. On the server side, this\n\
    \ is the time when the server application handler stops running.\n\
    \\n\
    \ This field is semantically required. When not set on receive -\n\
    \ receiver should set it to start_time value. It is important to\n\
    \ keep end_time > start_time for consistency.\n\
    \\n\
    \ This field is required.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\EOT\145\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\145\SOH\FS$\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\EOT\145\SOH'(\n\
    \C\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\ACK\148\SOH\STX\163\SOH\ETX\SUB3 A set of attributes, each with a key and a value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\EOT\148\SOH\n\
    \\DC4\n\
    \\225\ETX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\EOT\157\SOH\EOT2\SUB\208\ETX The set of attributes. The value can be a string, an integer, a double\n\
    \ or the Boolean values `true` or `false`. Note, global attributes like \n\
    \ server name can be set as tags using resource API. Examples of attributes:\n\
    \\n\
    \     \"/http/user_agent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\"\n\
    \     \"/http/server_latency\": 300\n\
    \     \"abc.com/myattribute\": true\n\
    \     \"abc.com/score\": 10.239\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\EOT\157\SOH\EOT\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\EOT\157\SOH -\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\EOT\157\SOH01\n\
    \\221\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\EOT\162\SOH\EOT'\SUB\204\SOH The number of attributes that were discarded. Attributes can be discarded\n\
    \ because their keys are too long or because there are too many attributes.\n\
    \ If this value is 0, then no attributes were dropped.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\EOT\162\SOH\EOT\t\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\EOT\162\SOH\n\
    \\"\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\EOT\162\SOH%&\n\
    \0\n\
    \\EOT\EOT\NUL\STX\b\DC2\EOT\166\SOH\STX\FS\SUB\" A set of attributes on the span.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\EOT\166\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\166\SOH\r\ETB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\EOT\166\SOH\SUB\ESC\n\
    \@\n\
    \\EOT\EOT\NUL\STX\t\DC2\EOT\169\SOH\STX\GS\SUB2 A stack trace captured at the start of the span.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\EOT\169\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\169\SOH\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\EOT\169\SOH\ESC\FS\n\
    \I\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\ACK\172\SOH\STX\224\SOH\ETX\SUB9 A time-stamped annotation or message event in the Span.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\EOT\172\SOH\n\
    \\DC3\n\
    \.\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\EOT\174\SOH\EOT'\SUB\RS The time the event occurred.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ACK\DC2\EOT\174\SOH\EOT\GS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\EOT\174\SOH\RS\"\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\EOT\174\SOH%&\n\
    \?\n\
    \\ACK\EOT\NUL\ETX\STX\ETX\NUL\DC2\ACK\177\SOH\EOT\183\SOH\ENQ\SUB- A text annotation with a set of attributes.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\ETX\NUL\SOH\DC2\EOT\177\SOH\f\SYN\n\
    \A\n\
    \\b\EOT\NUL\ETX\STX\ETX\NUL\STX\NUL\DC2\EOT\179\SOH\ACK(\SUB/ A user-supplied message describing the event.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\NUL\STX\NUL\ACK\DC2\EOT\179\SOH\ACK\ETB\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\NUL\STX\NUL\SOH\DC2\EOT\179\SOH\CAN#\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\NUL\STX\NUL\ETX\DC2\EOT\179\SOH&'\n\
    \:\n\
    \\b\EOT\NUL\ETX\STX\ETX\NUL\STX\SOH\DC2\EOT\182\SOH\ACK \SUB( A set of attributes on the annotation.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\NUL\STX\SOH\ACK\DC2\EOT\182\SOH\ACK\DLE\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\NUL\STX\SOH\SOH\DC2\EOT\182\SOH\DC1\ESC\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\NUL\STX\SOH\ETX\DC2\EOT\182\SOH\RS\US\n\
    \N\n\
    \\ACK\EOT\NUL\ETX\STX\ETX\SOH\DC2\ACK\186\SOH\EOT\213\SOH\ENQ\SUB< An event describing a message sent/received between Spans.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\ETX\SOH\SOH\DC2\EOT\186\SOH\f\CAN\n\
    \I\n\
    \\b\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\DC2\ACK\188\SOH\ACK\195\SOH\a\SUB5 Indicates whether the message was sent or received.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\SOH\DC2\EOT\188\SOH\v\SI\n\
    \)\n\
    \\n\
    \\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\STX\NUL\DC2\EOT\190\SOH\b\GS\SUB\NAK Unknown event type.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\STX\NUL\SOH\DC2\EOT\190\SOH\b\CAN\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\STX\NUL\STX\DC2\EOT\190\SOH\ESC\FS\n\
    \/\n\
    \\n\
    \\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\STX\SOH\DC2\EOT\192\SOH\b\DC1\SUB\ESC Indicates a sent message.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\STX\SOH\SOH\DC2\EOT\192\SOH\b\f\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\STX\SOH\STX\DC2\EOT\192\SOH\SI\DLE\n\
    \3\n\
    \\n\
    \\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\STX\STX\DC2\EOT\194\SOH\b\NAK\SUB\US Indicates a received message.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\STX\STX\SOH\DC2\EOT\194\SOH\b\DLE\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\STX\ETX\SOH\EOT\NUL\STX\STX\STX\DC2\EOT\194\SOH\DC3\DC4\n\
    \b\n\
    \\b\EOT\NUL\ETX\STX\ETX\SOH\STX\NUL\DC2\EOT\199\SOH\ACK\DC4\SUBP The type of MessageEvent. Indicates whether the message was sent or\n\
    \ received.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\NUL\ACK\DC2\EOT\199\SOH\ACK\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\NUL\SOH\DC2\EOT\199\SOH\v\SI\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\NUL\ETX\DC2\EOT\199\SOH\DC2\DC3\n\
    \\248\SOH\n\
    \\b\EOT\NUL\ETX\STX\ETX\SOH\STX\SOH\DC2\EOT\205\SOH\ACK\DC4\SUB\229\SOH An identifier for the MessageEvent's message that can be used to match\n\
    \ SENT and RECEIVED MessageEvents. For example, this field could\n\
    \ represent a sequence ID for a streaming RPC. It is recommended to be\n\
    \ unique within a Span.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\SOH\ENQ\DC2\EOT\205\SOH\ACK\f\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\SOH\SOH\DC2\EOT\205\SOH\r\SI\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\SOH\ETX\DC2\EOT\205\SOH\DC2\DC3\n\
    \F\n\
    \\b\EOT\NUL\ETX\STX\ETX\SOH\STX\STX\DC2\EOT\208\SOH\ACK#\SUB4 The number of uncompressed bytes sent or received.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\STX\ENQ\DC2\EOT\208\SOH\ACK\f\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\STX\SOH\DC2\EOT\208\SOH\r\RS\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\STX\ETX\DC2\EOT\208\SOH!\"\n\
    \{\n\
    \\b\EOT\NUL\ETX\STX\ETX\SOH\STX\ETX\DC2\EOT\212\SOH\ACK!\SUBi The number of compressed bytes sent or received. If zero, assumed to\n\
    \ be the same size as uncompressed.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\ETX\ENQ\DC2\EOT\212\SOH\ACK\f\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\ETX\SOH\DC2\EOT\212\SOH\r\FS\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\STX\ETX\SOH\STX\ETX\ETX\DC2\EOT\212\SOH\US \n\
    \v\n\
    \\ACK\EOT\NUL\ETX\STX\b\NUL\DC2\ACK\217\SOH\EOT\223\SOH\ENQ\SUBd A `TimeEvent` can contain either an `Annotation` object or a\n\
    \ `MessageEvent` object, but not both.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\b\NUL\SOH\DC2\EOT\217\SOH\n\
    \\SI\n\
    \=\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\EOT\219\SOH\ACK \SUB- A text annotation with a set of attributes.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ACK\DC2\EOT\219\SOH\ACK\DLE\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\EOT\219\SOH\DC1\ESC\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\EOT\219\SOH\RS\US\n\
    \L\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\EOT\222\SOH\ACK%\SUB< An event describing a message sent/received between Spans.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ACK\DC2\EOT\222\SOH\ACK\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\EOT\222\SOH\DC3 \n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\EOT\222\SOH#$\n\
    \\211\SOH\n\
    \\EOT\EOT\NUL\ETX\ETX\DC2\ACK\229\SOH\STX\240\SOH\ETX\SUB\194\SOH A collection of `TimeEvent`s. A `TimeEvent` is a time-stamped annotation\n\
    \ on the span, consisting of either user-supplied key-value pairs, or\n\
    \ details of a message sent/received between Spans.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ETX\SOH\DC2\EOT\229\SOH\n\
    \\DC4\n\
    \/\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\NUL\DC2\EOT\231\SOH\EOT&\SUB\US A collection of `TimeEvent`s.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\EOT\DC2\EOT\231\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ACK\DC2\EOT\231\SOH\r\SYN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\SOH\DC2\EOT\231\SOH\ETB!\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ETX\DC2\EOT\231\SOH$%\n\
    \\138\SOH\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\SOH\DC2\EOT\235\SOH\EOT(\SUBz The number of dropped annotations in all the included time events.\n\
    \ If the value is 0, then no annotations were dropped.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ENQ\DC2\EOT\235\SOH\EOT\t\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\SOH\DC2\EOT\235\SOH\n\
    \#\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ETX\DC2\EOT\235\SOH&'\n\
    \\145\SOH\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\STX\DC2\EOT\239\SOH\EOT+\SUB\128\SOH The number of dropped message events in all the included time events.\n\
    \ If the value is 0, then no message events were dropped.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\ENQ\DC2\EOT\239\SOH\EOT\t\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\SOH\DC2\EOT\239\SOH\n\
    \&\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\ETX\DC2\EOT\239\SOH)*\n\
    \)\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\EOT\243\SOH\STX\GS\SUB\ESC The included time events.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\EOT\243\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\243\SOH\r\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\EOT\243\SOH\ESC\FS\n\
    \\182\STX\n\
    \\EOT\EOT\NUL\ETX\EOT\DC2\ACK\249\SOH\STX\149\STX\ETX\SUB\165\STX A pointer from the current span to another span in the same trace or in a\n\
    \ different trace. For example, this can be used in batching operations,\n\
    \ where a single batch handler processes multiple requests from different\n\
    \ traces or when the handler receives a request from a different project.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\EOT\SOH\DC2\EOT\249\SOH\n\
    \\SO\n\
    \o\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\NUL\DC2\EOT\252\SOH\EOT\ETB\SUB_ A unique identifier of a trace that this linked span is part of. The ID is a \n\
    \ 16-byte array.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\ENQ\DC2\EOT\252\SOH\EOT\t\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\SOH\DC2\EOT\252\SOH\n\
    \\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\ETX\DC2\EOT\252\SOH\NAK\SYN\n\
    \U\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\SOH\DC2\EOT\255\SOH\EOT\SYN\SUBE A unique identifier for the linked span. The ID is an 8-byte array.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\ENQ\DC2\EOT\255\SOH\EOT\t\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\SOH\DC2\EOT\255\SOH\n\
    \\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\ETX\DC2\EOT\255\SOH\DC4\NAK\n\
    \u\n\
    \\ACK\EOT\NUL\ETX\EOT\EOT\NUL\DC2\ACK\131\STX\EOT\139\STX\ENQ\SUBc The relationship of the current span relative to the linked span: child,\n\
    \ parent, or unspecified.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\EOT\NUL\SOH\DC2\EOT\131\STX\t\r\n\
    \h\n\
    \\b\EOT\NUL\ETX\EOT\EOT\NUL\STX\NUL\DC2\EOT\134\STX\ACK\ESC\SUBV The relationship of the two spans is unknown, or known but other\n\
    \ than parent-child.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\EOT\EOT\NUL\STX\NUL\SOH\DC2\EOT\134\STX\ACK\SYN\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\EOT\EOT\NUL\STX\NUL\STX\DC2\EOT\134\STX\EM\SUB\n\
    \C\n\
    \\b\EOT\NUL\ETX\EOT\EOT\NUL\STX\SOH\DC2\EOT\136\STX\ACK\FS\SUB1 The linked span is a child of the current span.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\EOT\EOT\NUL\STX\SOH\SOH\DC2\EOT\136\STX\ACK\ETB\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\EOT\EOT\NUL\STX\SOH\STX\DC2\EOT\136\STX\SUB\ESC\n\
    \D\n\
    \\b\EOT\NUL\ETX\EOT\EOT\NUL\STX\STX\DC2\EOT\138\STX\ACK\GS\SUB2 The linked span is a parent of the current span.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\EOT\EOT\NUL\STX\STX\SOH\DC2\EOT\138\STX\ACK\CAN\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\EOT\EOT\NUL\STX\STX\STX\DC2\EOT\138\STX\ESC\FS\n\
    \S\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\STX\DC2\EOT\142\STX\EOT\DC2\SUBC The relationship of the current span relative to the linked span.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\STX\ACK\DC2\EOT\142\STX\EOT\b\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\STX\SOH\DC2\EOT\142\STX\t\r\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\STX\ETX\DC2\EOT\142\STX\DLE\DC1\n\
    \2\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\ETX\DC2\EOT\145\STX\EOT\RS\SUB\" A set of attributes on the link.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\ETX\ACK\DC2\EOT\145\STX\EOT\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\ETX\SOH\DC2\EOT\145\STX\SI\EM\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\ETX\ETX\DC2\EOT\145\STX\FS\GS\n\
    \:\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\EOT\DC2\EOT\148\STX\EOT\RS\SUB* The Tracestate associated with the link.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\EOT\ACK\DC2\EOT\148\STX\EOT\SO\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\EOT\SOH\DC2\EOT\148\STX\SI\EM\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\EOT\STX\EOT\ETX\DC2\EOT\148\STX\FS\GS\n\
    \w\n\
    \\EOT\EOT\NUL\ETX\ENQ\DC2\ACK\153\STX\STX\160\STX\ETX\SUBg A collection of links, which are references from this span to a span\n\
    \ in the same or different trace.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ENQ\SOH\DC2\EOT\153\STX\n\
    \\SI\n\
    \(\n\
    \\ACK\EOT\NUL\ETX\ENQ\STX\NUL\DC2\EOT\155\STX\EOT\ESC\SUB\CAN A collection of links.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\EOT\DC2\EOT\155\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\ACK\DC2\EOT\155\STX\r\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\SOH\DC2\EOT\155\STX\DC2\SYN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\ETX\DC2\EOT\155\STX\EM\SUB\n\
    \\131\SOH\n\
    \\ACK\EOT\NUL\ETX\ENQ\STX\SOH\DC2\EOT\159\STX\EOT\"\SUBs The number of dropped links after the maximum size was enforced. If\n\
    \ this value is 0, then no links were dropped.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\ENQ\DC2\EOT\159\STX\EOT\t\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\SOH\DC2\EOT\159\STX\n\
    \\GS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\ETX\DC2\EOT\159\STX !\n\
    \#\n\
    \\EOT\EOT\NUL\STX\v\DC2\EOT\163\STX\STX\DC3\SUB\NAK The included links.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\EOT\163\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\EOT\163\STX\b\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\EOT\163\STX\DLE\DC2\n\
    \\165\SOH\n\
    \\EOT\EOT\NUL\STX\f\DC2\EOT\168\STX\STX\NAK\SUB\150\SOH An optional final status for this span. Semantically when Status\n\
    \ wasn't set it is means span ended without errors and assume\n\
    \ Status.Ok (code = 0).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\EOT\168\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\EOT\168\STX\t\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\EOT\168\STX\DC2\DC4\n\
    \\208\SOH\n\
    \\EOT\EOT\NUL\STX\r\DC2\EOT\173\STX\STX6\SUB\193\SOH An optional resource that is associated with this span. If not set, this span \n\
    \ should be part of a batch that does include the resource information, unless resource \n\
    \ information is unknown.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ACK\DC2\EOT\173\STX\STX'\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\EOT\173\STX(0\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\EOT\173\STX35\n\
    \\193\STX\n\
    \\EOT\EOT\NUL\STX\SO\DC2\EOT\180\STX\STX=\SUB\178\STX A highly recommended but not required flag that identifies when a\n\
    \ trace crosses a process boundary. True when the parent_span belongs\n\
    \ to the same process as the current span. This flag is most commonly\n\
    \ used to indicate the need to adjust time as clocks in different\n\
    \ processes may not be synchronized.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ACK\DC2\EOT\180\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\EOT\180\STX\FS7\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\EOT\180\STX:<\n\
    \\163\SOH\n\
    \\EOT\EOT\NUL\STX\SI\DC2\EOT\184\STX\STX4\SUB\148\SOH An optional number of child spans that were generated while this span\n\
    \ was active. If set, allows an implementation to detect missing child spans.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ACK\DC2\EOT\184\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\EOT\184\STX\RS.\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\EOT\184\STX13\n\
    \\225\STX\n\
    \\STX\EOT\SOH\DC2\ACK\192\STX\NUL\199\STX\SOH\SUB\210\STX The `Status` type defines a logical error model that is suitable for different\n\
    \ programming environments, including REST APIs and RPC APIs. This proto's fields\n\
    \ are a subset of those of\n\
    \ [google.rpc.Status](https://github.com/googleapis/googleapis/blob/master/google/rpc/status.proto),\n\
    \ which is used by [gRPC](https://github.com/grpc).\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\192\STX\b\SO\n\
    \c\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\195\STX\STX\DC1\SUBU The status code. This is optional field. It is safe to assume 0 (OK)\n\
    \ when not set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\EOT\195\STX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\195\STX\b\f\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\195\STX\SI\DLE\n\
    \M\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\198\STX\STX\NAK\SUB? A developer-facing error message, which should be in English.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\EOT\198\STX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\198\STX\t\DLE\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\198\STX\DC3\DC4\n\
    \*\n\
    \\STX\EOT\STX\DC2\ACK\202\STX\NUL\214\STX\SOH\SUB\FS The value of an Attribute.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\202\STX\b\SYN\n\
    \(\n\
    \\EOT\EOT\STX\b\NUL\DC2\ACK\204\STX\STX\213\STX\ETX\SUB\CAN The type of the value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\EOT\204\STX\b\r\n\
    \.\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\206\STX\EOT'\SUB  A string up to 256 bytes long.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\206\STX\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\206\STX\SYN\"\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\206\STX%&\n\
    \(\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\208\STX\EOT\CAN\SUB\SUB A 64-bit signed integer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\EOT\208\STX\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\208\STX\n\
    \\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\208\STX\SYN\ETB\n\
    \A\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\210\STX\EOT\CAN\SUB3 A Boolean value represented by `true` or `false`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\EOT\210\STX\EOT\b\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\210\STX\t\DC3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\210\STX\SYN\ETB\n\
    \\US\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\212\STX\EOT\FS\SUB\DC1 A double value.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\EOT\212\STX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\212\STX\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\212\STX\SUB\ESC\n\
    \:\n\
    \\STX\EOT\ETX\DC2\ACK\217\STX\NUL\138\ETX\SOH\SUB, The call stack which originated this span.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\217\STX\b\DC2\n\
    \8\n\
    \\EOT\EOT\ETX\ETX\NUL\DC2\ACK\219\STX\STX\238\STX\ETX\SUB( A single stack frame in a stack trace.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\NUL\SOH\DC2\EOT\219\STX\n\
    \\DC4\n\
    \y\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\NUL\DC2\EOT\222\STX\EOT(\SUBi The fully-qualified name that uniquely identifies the function or\n\
    \ method that is active in this frame.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ACK\DC2\EOT\222\STX\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\SOH\DC2\EOT\222\STX\SYN#\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\NUL\ETX\DC2\EOT\222\STX&'\n\
    \\163\SOH\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\SOH\DC2\EOT\226\STX\EOT1\SUB\146\SOH An un-mangled function name, if `function_name` is\n\
    \ [mangled](http://www.avabodh.com/cxxin/namemangling.html). The name can\n\
    \ be fully qualified.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ACK\DC2\EOT\226\STX\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\SOH\DC2\EOT\226\STX\SYN,\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\SOH\ETX\DC2\EOT\226\STX/0\n\
    \N\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\STX\DC2\EOT\228\STX\EOT$\SUB> The name of the source file where the function call appears.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\STX\ACK\DC2\EOT\228\STX\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\STX\SOH\DC2\EOT\228\STX\SYN\US\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\STX\ETX\DC2\EOT\228\STX\"#\n\
    \Q\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\ETX\DC2\EOT\230\STX\EOT\SUB\SUBA The line number in `file_name` where the function call appears.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\ETX\ENQ\DC2\EOT\230\STX\EOT\t\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\ETX\SOH\DC2\EOT\230\STX\n\
    \\NAK\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\ETX\ETX\DC2\EOT\230\STX\CAN\EM\n\
    \\152\SOH\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\EOT\DC2\EOT\233\STX\EOT\FS\SUB\135\SOH The column number where the function call appears, if available.\n\
    \ This is important in JavaScript because of its anonymous functions.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\EOT\ENQ\DC2\EOT\233\STX\EOT\t\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\EOT\SOH\DC2\EOT\233\STX\n\
    \\ETB\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\EOT\ETX\DC2\EOT\233\STX\SUB\ESC\n\
    \C\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\ENQ\DC2\EOT\235\STX\EOT\ESC\SUB3 The binary module from where the code was loaded.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\ENQ\ACK\DC2\EOT\235\STX\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\ENQ\SOH\DC2\EOT\235\STX\v\SYN\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\ENQ\ETX\DC2\EOT\235\STX\EM\SUB\n\
    \:\n\
    \\ACK\EOT\ETX\ETX\NUL\STX\ACK\DC2\EOT\237\STX\EOT)\SUB* The version of the deployed source code.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\ACK\ACK\DC2\EOT\237\STX\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\ACK\SOH\DC2\EOT\237\STX\SYN$\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\NUL\STX\ACK\ETX\DC2\EOT\237\STX'(\n\
    \G\n\
    \\EOT\EOT\ETX\ETX\SOH\DC2\ACK\241\STX\STX\248\STX\ETX\SUB7 A collection of stack frames, which can be truncated.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\ETX\SOH\SOH\DC2\EOT\241\STX\n\
    \\NAK\n\
    \2\n\
    \\ACK\EOT\ETX\ETX\SOH\STX\NUL\DC2\EOT\243\STX\EOT\"\SUB\" Stack frames in this call stack.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\NUL\EOT\DC2\EOT\243\STX\EOT\f\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\NUL\ACK\DC2\EOT\243\STX\r\ETB\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\NUL\SOH\DC2\EOT\243\STX\CAN\GS\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\NUL\ETX\DC2\EOT\243\STX !\n\
    \\162\SOH\n\
    \\ACK\EOT\ETX\ETX\SOH\STX\SOH\DC2\EOT\247\STX\EOT#\SUB\145\SOH The number of stack frames that were dropped because there\n\
    \ were too many stack frames.\n\
    \ If this value is 0, then no stack frames were dropped.\n\
    \\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\SOH\ENQ\DC2\EOT\247\STX\EOT\t\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\SOH\SOH\DC2\EOT\247\STX\n\
    \\RS\n\
    \\SI\n\
    \\a\EOT\ETX\ETX\SOH\STX\SOH\ETX\DC2\EOT\247\STX!\"\n\
    \1\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\251\STX\STX\US\SUB# Stack frames in this stack trace.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\251\STX\STX\r\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\251\STX\SO\SUB\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\251\STX\GS\RS\n\
    \\246\ETX\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\137\ETX\STX!\SUB\231\ETX The hash ID is used to conserve network bandwidth for duplicate\n\
    \ stack traces within a single trace.\n\
    \\n\
    \ Often multiple spans will have identical stack traces.\n\
    \ The first occurrence of a stack trace should contain both\n\
    \ `stack_frames` and a value in `stack_trace_hash_id`.\n\
    \\n\
    \ Subsequent spans within the same request can refer\n\
    \ to that stack trace by setting only `stack_trace_hash_id`.\n\
    \\n\
    \ TODO: describe how to deal with the case where stack_trace_hash_id is\n\
    \ zero because it was not set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\137\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\137\ETX\t\FS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\137\ETX\US \n\
    \1\n\
    \\STX\EOT\EOT\DC2\ACK\141\ETX\NUL\150\ETX\SOH\SUB# A description of a binary module.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\141\ETX\b\SO\n\
    \\155\SOH\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\145\ETX\STX\US\SUB\140\SOH TODO: document the meaning of this field.\n\
    \ For example: main binary, kernel modules, and dynamic libraries\n\
    \ such as libc.so, sharedlib.so.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\145\ETX\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\145\ETX\DC4\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\145\ETX\GS\RS\n\
    \T\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\149\ETX\STX!\SUBF A unique identifier for the module, usually a hash of its\n\
    \ contents.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\149\ETX\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\149\ETX\DC4\FS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\149\ETX\US \n\
    \G\n\
    \\STX\EOT\ENQ\DC2\ACK\153\ETX\NUL\165\ETX\SOH\SUB9 A string that might be shortened to a specified length.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\153\ETX\b\EM\n\
    \\189\ETX\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\160\ETX\STX\DC3\SUB\174\ETX The shortened string. For example, if the original string was 500 bytes long and\n\
    \ the limit of the string was 128 bytes, then this value contains the first 128\n\
    \ bytes of the 500-byte string. Note that truncation always happens on a\n\
    \ character boundary, to ensure that a truncated string is still valid UTF-8.\n\
    \ Because it may contain multi-byte characters, the size of the truncated string\n\
    \ may be less than the truncation limit.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\160\ETX\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\160\ETX\t\SO\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\160\ETX\DC1\DC2\n\
    \}\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\164\ETX\STX!\SUBo The number of bytes removed from the original string. If this\n\
    \ value is 0, then the string was not shortened.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\164\ETX\STX\a\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\164\ETX\b\FS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\164\ETX\US b\ACKproto3"