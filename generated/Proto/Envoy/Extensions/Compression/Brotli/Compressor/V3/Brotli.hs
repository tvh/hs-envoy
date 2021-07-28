{- This file was auto-generated from envoy/extensions/compression/brotli/compressor/v3/brotli.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli (
        Brotli(), Brotli'EncoderMode(..), Brotli'EncoderMode(),
        Brotli'EncoderMode'UnrecognizedValue
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli_Fields.quality' @:: Lens' Brotli Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli_Fields.maybe'quality' @:: Lens' Brotli (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli_Fields.encoderMode' @:: Lens' Brotli Brotli'EncoderMode@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli_Fields.windowBits' @:: Lens' Brotli Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli_Fields.maybe'windowBits' @:: Lens' Brotli (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli_Fields.inputBlockBits' @:: Lens' Brotli Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli_Fields.maybe'inputBlockBits' @:: Lens' Brotli (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli_Fields.chunkSize' @:: Lens' Brotli Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli_Fields.maybe'chunkSize' @:: Lens' Brotli (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Compressor.V3.Brotli_Fields.disableLiteralContextModeling' @:: Lens' Brotli Prelude.Bool@ -}
data Brotli
  = Brotli'_constructor {_Brotli'quality :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                         _Brotli'encoderMode :: !Brotli'EncoderMode,
                         _Brotli'windowBits :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                         _Brotli'inputBlockBits :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                         _Brotli'chunkSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                         _Brotli'disableLiteralContextModeling :: !Prelude.Bool,
                         _Brotli'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Brotli where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Brotli "quality" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'quality (\ x__ y__ -> x__ {_Brotli'quality = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Brotli "maybe'quality" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'quality (\ x__ y__ -> x__ {_Brotli'quality = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Brotli "encoderMode" Brotli'EncoderMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'encoderMode (\ x__ y__ -> x__ {_Brotli'encoderMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Brotli "windowBits" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'windowBits (\ x__ y__ -> x__ {_Brotli'windowBits = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Brotli "maybe'windowBits" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'windowBits (\ x__ y__ -> x__ {_Brotli'windowBits = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Brotli "inputBlockBits" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'inputBlockBits
           (\ x__ y__ -> x__ {_Brotli'inputBlockBits = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Brotli "maybe'inputBlockBits" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'inputBlockBits
           (\ x__ y__ -> x__ {_Brotli'inputBlockBits = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Brotli "chunkSize" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'chunkSize (\ x__ y__ -> x__ {_Brotli'chunkSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Brotli "maybe'chunkSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'chunkSize (\ x__ y__ -> x__ {_Brotli'chunkSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Brotli "disableLiteralContextModeling" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'disableLiteralContextModeling
           (\ x__ y__ -> x__ {_Brotli'disableLiteralContextModeling = y__}))
        Prelude.id
instance Data.ProtoLens.Message Brotli where
  messageName _
    = Data.Text.pack
        "envoy.extensions.compression.brotli.compressor.v3.Brotli"
  packedMessageDescriptor _
    = "\n\
      \\ACKBrotli\DC2?\n\
      \\aquality\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\aqualityB\a\250B\EOT*\STX\CAN\v\DC2r\n\
      \\fencoder_mode\CAN\STX \SOH(\SO2E.envoy.extensions.compression.brotli.compressor.v3.Brotli.EncoderModeR\vencoderModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2H\n\
      \\vwindow_bits\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \windowBitsB\t\250B\ACK*\EOT\CAN\CAN(\n\
      \\DC2Q\n\
      \\DLEinput_block_bits\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOinputBlockBitsB\t\250B\ACK*\EOT\CAN\CAN(\DLE\DC2I\n\
      \\n\
      \chunk_size\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\tchunkSizeB\f\250B\t*\a\CAN\128\128\EOT(\128 \DC2G\n\
      \ disable_literal_context_modeling\CAN\ACK \SOH(\bR\GSdisableLiteralContextModeling\";\n\
      \\vEncoderMode\DC2\v\n\
      \\aDEFAULT\DLE\NUL\DC2\v\n\
      \\aGENERIC\DLE\SOH\DC2\b\n\
      \\EOTTEXT\DLE\STX\DC2\b\n\
      \\EOTFONT\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        quality__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "quality"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'quality")) ::
              Data.ProtoLens.FieldDescriptor Brotli
        encoderMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "encoder_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Brotli'EncoderMode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"encoderMode")) ::
              Data.ProtoLens.FieldDescriptor Brotli
        windowBits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "window_bits"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'windowBits")) ::
              Data.ProtoLens.FieldDescriptor Brotli
        inputBlockBits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input_block_bits"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inputBlockBits")) ::
              Data.ProtoLens.FieldDescriptor Brotli
        chunkSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunkSize")) ::
              Data.ProtoLens.FieldDescriptor Brotli
        disableLiteralContextModeling__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disable_literal_context_modeling"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disableLiteralContextModeling")) ::
              Data.ProtoLens.FieldDescriptor Brotli
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, quality__field_descriptor),
           (Data.ProtoLens.Tag 2, encoderMode__field_descriptor),
           (Data.ProtoLens.Tag 3, windowBits__field_descriptor),
           (Data.ProtoLens.Tag 4, inputBlockBits__field_descriptor),
           (Data.ProtoLens.Tag 5, chunkSize__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            disableLiteralContextModeling__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Brotli'_unknownFields
        (\ x__ y__ -> x__ {_Brotli'_unknownFields = y__})
  defMessage
    = Brotli'_constructor
        {_Brotli'quality = Prelude.Nothing,
         _Brotli'encoderMode = Data.ProtoLens.fieldDefault,
         _Brotli'windowBits = Prelude.Nothing,
         _Brotli'inputBlockBits = Prelude.Nothing,
         _Brotli'chunkSize = Prelude.Nothing,
         _Brotli'disableLiteralContextModeling = Data.ProtoLens.fieldDefault,
         _Brotli'_unknownFields = []}
  parseMessage
    = let
        loop :: Brotli -> Data.ProtoLens.Encoding.Bytes.Parser Brotli
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
                                       "quality"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"quality") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "encoder_mode"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"encoderMode") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "window_bits"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"windowBits") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "input_block_bits"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inputBlockBits") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "chunk_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"chunkSize") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disable_literal_context_modeling"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disableLiteralContextModeling")
                                     y
                                     x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Brotli"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'quality") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"encoderMode") _x
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
                          (Data.ProtoLens.Field.field @"maybe'windowBits") _x
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
                             (Data.ProtoLens.Field.field @"maybe'inputBlockBits") _x
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
                                (Data.ProtoLens.Field.field @"maybe'chunkSize") _x
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
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"disableLiteralContextModeling")
                                     _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0)
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Brotli where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Brotli'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Brotli'quality x__)
                (Control.DeepSeq.deepseq
                   (_Brotli'encoderMode x__)
                   (Control.DeepSeq.deepseq
                      (_Brotli'windowBits x__)
                      (Control.DeepSeq.deepseq
                         (_Brotli'inputBlockBits x__)
                         (Control.DeepSeq.deepseq
                            (_Brotli'chunkSize x__)
                            (Control.DeepSeq.deepseq
                               (_Brotli'disableLiteralContextModeling x__) ()))))))
newtype Brotli'EncoderMode'UnrecognizedValue
  = Brotli'EncoderMode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Brotli'EncoderMode
  = Brotli'DEFAULT |
    Brotli'GENERIC |
    Brotli'TEXT |
    Brotli'FONT |
    Brotli'EncoderMode'Unrecognized !Brotli'EncoderMode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Brotli'EncoderMode where
  maybeToEnum 0 = Prelude.Just Brotli'DEFAULT
  maybeToEnum 1 = Prelude.Just Brotli'GENERIC
  maybeToEnum 2 = Prelude.Just Brotli'TEXT
  maybeToEnum 3 = Prelude.Just Brotli'FONT
  maybeToEnum k
    = Prelude.Just
        (Brotli'EncoderMode'Unrecognized
           (Brotli'EncoderMode'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Brotli'DEFAULT = "DEFAULT"
  showEnum Brotli'GENERIC = "GENERIC"
  showEnum Brotli'TEXT = "TEXT"
  showEnum Brotli'FONT = "FONT"
  showEnum
    (Brotli'EncoderMode'Unrecognized (Brotli'EncoderMode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEFAULT" = Prelude.Just Brotli'DEFAULT
    | (Prelude.==) k "GENERIC" = Prelude.Just Brotli'GENERIC
    | (Prelude.==) k "TEXT" = Prelude.Just Brotli'TEXT
    | (Prelude.==) k "FONT" = Prelude.Just Brotli'FONT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Brotli'EncoderMode where
  minBound = Brotli'DEFAULT
  maxBound = Brotli'FONT
instance Prelude.Enum Brotli'EncoderMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum EncoderMode: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Brotli'DEFAULT = 0
  fromEnum Brotli'GENERIC = 1
  fromEnum Brotli'TEXT = 2
  fromEnum Brotli'FONT = 3
  fromEnum
    (Brotli'EncoderMode'Unrecognized (Brotli'EncoderMode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Brotli'FONT
    = Prelude.error
        "Brotli'EncoderMode.succ: bad argument Brotli'FONT. This value would be out of bounds."
  succ Brotli'DEFAULT = Brotli'GENERIC
  succ Brotli'GENERIC = Brotli'TEXT
  succ Brotli'TEXT = Brotli'FONT
  succ (Brotli'EncoderMode'Unrecognized _)
    = Prelude.error
        "Brotli'EncoderMode.succ: bad argument: unrecognized value"
  pred Brotli'DEFAULT
    = Prelude.error
        "Brotli'EncoderMode.pred: bad argument Brotli'DEFAULT. This value would be out of bounds."
  pred Brotli'GENERIC = Brotli'DEFAULT
  pred Brotli'TEXT = Brotli'GENERIC
  pred Brotli'FONT = Brotli'TEXT
  pred (Brotli'EncoderMode'Unrecognized _)
    = Prelude.error
        "Brotli'EncoderMode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Brotli'EncoderMode where
  fieldDefault = Brotli'DEFAULT
instance Control.DeepSeq.NFData Brotli'EncoderMode where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \>envoy/extensions/compression/brotli/compressor/v3/brotli.proto\DC21envoy.extensions.compression.brotli.compressor.v3\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\171\EOT\n\
    \\ACKBrotli\DC2?\n\
    \\aquality\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\aqualityB\a\250B\EOT*\STX\CAN\v\DC2r\n\
    \\fencoder_mode\CAN\STX \SOH(\SO2E.envoy.extensions.compression.brotli.compressor.v3.Brotli.EncoderModeR\vencoderModeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2H\n\
    \\vwindow_bits\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
    \windowBitsB\t\250B\ACK*\EOT\CAN\CAN(\n\
    \\DC2Q\n\
    \\DLEinput_block_bits\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOinputBlockBitsB\t\250B\ACK*\EOT\CAN\CAN(\DLE\DC2I\n\
    \\n\
    \chunk_size\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\tchunkSizeB\f\250B\t*\a\CAN\128\128\EOT(\128 \DC2G\n\
    \ disable_literal_context_modeling\CAN\ACK \SOH(\bR\GSdisableLiteralContextModeling\";\n\
    \\vEncoderMode\DC2\v\n\
    \\aDEFAULT\DLE\NUL\DC2\v\n\
    \\aGENERIC\DLE\SOH\DC2\b\n\
    \\EOTTEXT\DLE\STX\DC2\b\n\
    \\EOTFONT\DLE\ETXBX\n\
    \?io.envoyproxy.envoy.extensions.compression.brotli.compressor.v3B\vBrotliProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\252\DLE\n\
    \\ACK\DC2\EOT\NUL\NUL5\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL:\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULX\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULX\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \~\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NUL5\SOH\SUB\ETB [#next-free-field: 7]\n\
    \2Y [#protodoc-title: Brotli Compressor]\n\
    \ [#extension: envoy.compression.brotli.compressor]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\SO\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\DC3\STX\CAN\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\DC3\a\DC2\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\DC4\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\DC4\SO\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\NAK\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\NAK\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\NAK\SO\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX\SYN\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\SYN\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\SYN\v\f\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX\ETB\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX\ETB\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX\ETB\v\f\n\
    \\159\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\STXP\SUB\145\SOH Value from 0 to 11 that controls the main compression speed-density lever.\n\
    \ The higher quality, the slower compression. The default value is 3.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\FS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\RS%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS()\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\FS*O\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ENQ\DC2\ETX\FS+N\n\
    \\221\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX!\STXN\SUB\207\SOH A value used to tune encoder for specific input. For more information about modes,\n\
    \ please refer to brotli manual: https://brotli.org/encode.html#aa6f\n\
    \ This field will be set to \"DEFAULT\" if not specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX!\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX!\SO\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX!\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX!\USM\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETX! L\n\
    \\185\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX'\STX\\\SUB\171\STX Value from 10 to 24 that represents the base two logarithmic of the compressor's window size.\n\
    \ Larger window results in better compression at the expense of memory usage. The default is 18.\n\
    \ For more details about this parameter, please refer to brotli manual:\n\
    \ https://brotli.org/encode.html#a9a8\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX'\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX'\RS)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX',-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX'.[\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\ENQ\DC2\ETX'/Z\n\
    \\195\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX-\STXa\SUB\181\STX Value from 16 to 24 that represents the base two logarithmic of the compressor's input block\n\
    \ size. Larger input block results in better compression at the expense of memory usage. The\n\
    \ default is 24. For more details about this parameter, please refer to brotli manual:\n\
    \ https://brotli.org/encode.html#a9a8\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX-\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX-\RS.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX-12\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX-3`\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\ENQ\DC2\ETX-4_\n\
    \W\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX0\STX`\SUBJ Value for compressor's next output buffer. If not set, defaults to 4096.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX0\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX0\RS(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX0+,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX0-_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\ENQ\DC2\ETX0.^\n\
    \\140\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX4\STX,\SUB\DEL If true, disables \"literal context modeling\" format feature.\n\
    \ This flag is a \"decoding-speed vs compression ratio\" trade-off.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX4\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX4\a'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX4*+b\ACKproto3"