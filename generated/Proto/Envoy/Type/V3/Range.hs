{- This file was auto-generated from envoy/type/v3/range.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.V3.Range (
        DoubleRange(), Int32Range(), Int64Range()
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
{- | Fields :
     
         * 'Proto.Envoy.Type.V3.Range_Fields.start' @:: Lens' DoubleRange Prelude.Double@
         * 'Proto.Envoy.Type.V3.Range_Fields.end' @:: Lens' DoubleRange Prelude.Double@ -}
data DoubleRange
  = DoubleRange'_constructor {_DoubleRange'start :: !Prelude.Double,
                              _DoubleRange'end :: !Prelude.Double,
                              _DoubleRange'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DoubleRange where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DoubleRange "start" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRange'start (\ x__ y__ -> x__ {_DoubleRange'start = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DoubleRange "end" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DoubleRange'end (\ x__ y__ -> x__ {_DoubleRange'end = y__}))
        Prelude.id
instance Data.ProtoLens.Message DoubleRange where
  messageName _ = Data.Text.pack "envoy.type.v3.DoubleRange"
  packedMessageDescriptor _
    = "\n\
      \\vDoubleRange\DC2\DC4\n\
      \\ENQstart\CAN\SOH \SOH(\SOHR\ENQstart\DC2\DLE\n\
      \\ETXend\CAN\STX \SOH(\SOHR\ETXend:\GS\154\197\136\RS\CAN\n\
      \\SYNenvoy.type.DoubleRange"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"start")) ::
              Data.ProtoLens.FieldDescriptor DoubleRange
        end__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"end")) ::
              Data.ProtoLens.FieldDescriptor DoubleRange
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, start__field_descriptor),
           (Data.ProtoLens.Tag 2, end__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DoubleRange'_unknownFields
        (\ x__ y__ -> x__ {_DoubleRange'_unknownFields = y__})
  defMessage
    = DoubleRange'_constructor
        {_DoubleRange'start = Data.ProtoLens.fieldDefault,
         _DoubleRange'end = Data.ProtoLens.fieldDefault,
         _DoubleRange'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DoubleRange -> Data.ProtoLens.Encoding.Bytes.Parser DoubleRange
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
                                       "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        17
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "end"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"end") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DoubleRange"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"start") _x
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
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"end") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 17)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putFixed64
                            Data.ProtoLens.Encoding.Bytes.doubleToWord
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData DoubleRange where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DoubleRange'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DoubleRange'start x__)
                (Control.DeepSeq.deepseq (_DoubleRange'end x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Type.V3.Range_Fields.start' @:: Lens' Int32Range Data.Int.Int32@
         * 'Proto.Envoy.Type.V3.Range_Fields.end' @:: Lens' Int32Range Data.Int.Int32@ -}
data Int32Range
  = Int32Range'_constructor {_Int32Range'start :: !Data.Int.Int32,
                             _Int32Range'end :: !Data.Int.Int32,
                             _Int32Range'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Int32Range where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Int32Range "start" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Range'start (\ x__ y__ -> x__ {_Int32Range'start = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int32Range "end" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int32Range'end (\ x__ y__ -> x__ {_Int32Range'end = y__}))
        Prelude.id
instance Data.ProtoLens.Message Int32Range where
  messageName _ = Data.Text.pack "envoy.type.v3.Int32Range"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Int32Range\DC2\DC4\n\
      \\ENQstart\CAN\SOH \SOH(\ENQR\ENQstart\DC2\DLE\n\
      \\ETXend\CAN\STX \SOH(\ENQR\ETXend:\FS\154\197\136\RS\ETB\n\
      \\NAKenvoy.type.Int32Range"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"start")) ::
              Data.ProtoLens.FieldDescriptor Int32Range
        end__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"end")) ::
              Data.ProtoLens.FieldDescriptor Int32Range
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, start__field_descriptor),
           (Data.ProtoLens.Tag 2, end__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Int32Range'_unknownFields
        (\ x__ y__ -> x__ {_Int32Range'_unknownFields = y__})
  defMessage
    = Int32Range'_constructor
        {_Int32Range'start = Data.ProtoLens.fieldDefault,
         _Int32Range'end = Data.ProtoLens.fieldDefault,
         _Int32Range'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Int32Range -> Data.ProtoLens.Encoding.Bytes.Parser Int32Range
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
                                       "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "end"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"end") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Int32Range"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"start") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"end") _x
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
instance Control.DeepSeq.NFData Int32Range where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Int32Range'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Int32Range'start x__)
                (Control.DeepSeq.deepseq (_Int32Range'end x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Type.V3.Range_Fields.start' @:: Lens' Int64Range Data.Int.Int64@
         * 'Proto.Envoy.Type.V3.Range_Fields.end' @:: Lens' Int64Range Data.Int.Int64@ -}
data Int64Range
  = Int64Range'_constructor {_Int64Range'start :: !Data.Int.Int64,
                             _Int64Range'end :: !Data.Int.Int64,
                             _Int64Range'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Int64Range where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Int64Range "start" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Range'start (\ x__ y__ -> x__ {_Int64Range'start = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Int64Range "end" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Int64Range'end (\ x__ y__ -> x__ {_Int64Range'end = y__}))
        Prelude.id
instance Data.ProtoLens.Message Int64Range where
  messageName _ = Data.Text.pack "envoy.type.v3.Int64Range"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Int64Range\DC2\DC4\n\
      \\ENQstart\CAN\SOH \SOH(\ETXR\ENQstart\DC2\DLE\n\
      \\ETXend\CAN\STX \SOH(\ETXR\ETXend:\FS\154\197\136\RS\ETB\n\
      \\NAKenvoy.type.Int64Range"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"start")) ::
              Data.ProtoLens.FieldDescriptor Int64Range
        end__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "end"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"end")) ::
              Data.ProtoLens.FieldDescriptor Int64Range
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, start__field_descriptor),
           (Data.ProtoLens.Tag 2, end__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Int64Range'_unknownFields
        (\ x__ y__ -> x__ {_Int64Range'_unknownFields = y__})
  defMessage
    = Int64Range'_constructor
        {_Int64Range'start = Data.ProtoLens.fieldDefault,
         _Int64Range'end = Data.ProtoLens.fieldDefault,
         _Int64Range'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Int64Range -> Data.ProtoLens.Encoding.Bytes.Parser Int64Range
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
                                       "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "end"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"end") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Int64Range"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"start") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"end") _x
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
instance Control.DeepSeq.NFData Int64Range where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Int64Range'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Int64Range'start x__)
                (Control.DeepSeq.deepseq (_Int64Range'end x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\EMenvoy/type/v3/range.proto\DC2\renvoy.type.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"R\n\
    \\n\
    \Int64Range\DC2\DC4\n\
    \\ENQstart\CAN\SOH \SOH(\ETXR\ENQstart\DC2\DLE\n\
    \\ETXend\CAN\STX \SOH(\ETXR\ETXend:\FS\154\197\136\RS\ETB\n\
    \\NAKenvoy.type.Int64Range\"R\n\
    \\n\
    \Int32Range\DC2\DC4\n\
    \\ENQstart\CAN\SOH \SOH(\ENQR\ENQstart\DC2\DLE\n\
    \\ETXend\CAN\STX \SOH(\ENQR\ETXend:\FS\154\197\136\RS\ETB\n\
    \\NAKenvoy.type.Int32Range\"T\n\
    \\vDoubleRange\DC2\DC4\n\
    \\ENQstart\CAN\SOH \SOH(\SOHR\ENQstart\DC2\DLE\n\
    \\ETXend\CAN\STX \SOH(\SOHR\ETXend:\GS\154\197\136\RS\CAN\n\
    \\SYNenvoy.type.DoubleRangeB3\n\
    \\ESCio.envoyproxy.envoy.type.v3B\n\
    \RangeProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\131\t\n\
    \\ACK\DC2\EOT\NUL\NUL0\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\SYN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\a\NUL4\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\a\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\b\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\t\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\n\
    \\NULF\n\
    \\138\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DLE\NUL\CAN\SOH\SUBb Specifies the int64 start and end of the range using half-open interval semantics [start,\n\
    \ end).\n\
    \2\SUB [#protodoc-title: Range]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DLE\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC1\STXW\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC1\STXW\n\
    \-\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC4\STX\DC2\SUB  start of the range (inclusive)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC4\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4\b\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC4\DLE\DC1\n\
    \+\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ETB\STX\DLE\SUB\RS end of the range (exclusive)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\ETB\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ETB\b\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ETB\SO\SI\n\
    \n\n\
    \\STX\EOT\SOH\DC2\EOT\FS\NUL$\SOH\SUBb Specifies the int32 start and end of the range using half-open interval semantics [start,\n\
    \ end).\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\FS\b\DC2\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX\GS\STXW\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX\GS\STXW\n\
    \-\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX \STX\DC2\SUB  start of the range (inclusive)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX \STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX \b\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX \DLE\DC1\n\
    \+\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX#\STX\DLE\SUB\RS end of the range (exclusive)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX#\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX#\b\v\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX#\SO\SI\n\
    \o\n\
    \\STX\EOT\STX\DC2\EOT(\NUL0\SOH\SUBc Specifies the double start and end of the range using half-open interval semantics [start,\n\
    \ end).\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX(\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX)\STXX\n\
    \\SI\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\ETX)\STXX\n\
    \-\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX,\STX\DC3\SUB  start of the range (inclusive)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX,\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX,\t\SO\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX,\DC1\DC2\n\
    \+\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX/\STX\DC1\SUB\RS end of the range (exclusive)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX/\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX/\t\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX/\SI\DLEb\ACKproto3"