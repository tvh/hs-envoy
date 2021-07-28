{- This file was auto-generated from envoy/extensions/compression/gzip/compressor/v3/gzip.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Compression.Gzip.Compressor.V3.Gzip (
        Gzip(), Gzip'CompressionLevel(..),
        Gzip'CompressionLevel(Gzip'COMPRESSION_LEVEL_1,
                              Gzip'BEST_COMPRESSION),
        Gzip'CompressionLevel'UnrecognizedValue,
        Gzip'CompressionStrategy(..), Gzip'CompressionStrategy(),
        Gzip'CompressionStrategy'UnrecognizedValue
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
     
         * 'Proto.Envoy.Extensions.Compression.Gzip.Compressor.V3.Gzip_Fields.memoryLevel' @:: Lens' Gzip Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Compression.Gzip.Compressor.V3.Gzip_Fields.maybe'memoryLevel' @:: Lens' Gzip (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Compression.Gzip.Compressor.V3.Gzip_Fields.compressionLevel' @:: Lens' Gzip Gzip'CompressionLevel@
         * 'Proto.Envoy.Extensions.Compression.Gzip.Compressor.V3.Gzip_Fields.compressionStrategy' @:: Lens' Gzip Gzip'CompressionStrategy@
         * 'Proto.Envoy.Extensions.Compression.Gzip.Compressor.V3.Gzip_Fields.windowBits' @:: Lens' Gzip Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Compression.Gzip.Compressor.V3.Gzip_Fields.maybe'windowBits' @:: Lens' Gzip (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Compression.Gzip.Compressor.V3.Gzip_Fields.chunkSize' @:: Lens' Gzip Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Compression.Gzip.Compressor.V3.Gzip_Fields.maybe'chunkSize' @:: Lens' Gzip (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data Gzip
  = Gzip'_constructor {_Gzip'memoryLevel :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                       _Gzip'compressionLevel :: !Gzip'CompressionLevel,
                       _Gzip'compressionStrategy :: !Gzip'CompressionStrategy,
                       _Gzip'windowBits :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                       _Gzip'chunkSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                       _Gzip'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Gzip where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Gzip "memoryLevel" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gzip'memoryLevel (\ x__ y__ -> x__ {_Gzip'memoryLevel = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Gzip "maybe'memoryLevel" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gzip'memoryLevel (\ x__ y__ -> x__ {_Gzip'memoryLevel = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Gzip "compressionLevel" Gzip'CompressionLevel where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gzip'compressionLevel
           (\ x__ y__ -> x__ {_Gzip'compressionLevel = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Gzip "compressionStrategy" Gzip'CompressionStrategy where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gzip'compressionStrategy
           (\ x__ y__ -> x__ {_Gzip'compressionStrategy = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Gzip "windowBits" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gzip'windowBits (\ x__ y__ -> x__ {_Gzip'windowBits = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Gzip "maybe'windowBits" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gzip'windowBits (\ x__ y__ -> x__ {_Gzip'windowBits = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Gzip "chunkSize" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gzip'chunkSize (\ x__ y__ -> x__ {_Gzip'chunkSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Gzip "maybe'chunkSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gzip'chunkSize (\ x__ y__ -> x__ {_Gzip'chunkSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message Gzip where
  messageName _
    = Data.Text.pack
        "envoy.extensions.compression.gzip.compressor.v3.Gzip"
  packedMessageDescriptor _
    = "\n\
      \\EOTGzip\DC2J\n\
      \\fmemory_level\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\vmemoryLevelB\t\250B\ACK*\EOT\CAN\t(\SOH\DC2}\n\
      \\DC1compression_level\CAN\STX \SOH(\SO2F.envoy.extensions.compression.gzip.compressor.v3.Gzip.CompressionLevelR\DLEcompressionLevelB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\134\SOH\n\
      \\DC4compression_strategy\CAN\ETX \SOH(\SO2I.envoy.extensions.compression.gzip.compressor.v3.Gzip.CompressionStrategyR\DC3compressionStrategyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2H\n\
      \\vwindow_bits\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \windowBitsB\t\250B\ACK*\EOT\CAN\SI(\t\DC2I\n\
      \\n\
      \chunk_size\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\tchunkSizeB\f\250B\t*\a\CAN\128\128\EOT(\128 \"_\n\
      \\DC3CompressionStrategy\DC2\DC4\n\
      \\DLEDEFAULT_STRATEGY\DLE\NUL\DC2\f\n\
      \\bFILTERED\DLE\SOH\DC2\DLE\n\
      \\fHUFFMAN_ONLY\DLE\STX\DC2\a\n\
      \\ETXRLE\DLE\ETX\DC2\t\n\
      \\ENQFIXED\DLE\EOT\"\182\STX\n\
      \\DLECompressionLevel\DC2\ETB\n\
      \\DC3DEFAULT_COMPRESSION\DLE\NUL\DC2\SO\n\
      \\n\
      \BEST_SPEED\DLE\SOH\DC2\ETB\n\
      \\DC3COMPRESSION_LEVEL_1\DLE\SOH\DC2\ETB\n\
      \\DC3COMPRESSION_LEVEL_2\DLE\STX\DC2\ETB\n\
      \\DC3COMPRESSION_LEVEL_3\DLE\ETX\DC2\ETB\n\
      \\DC3COMPRESSION_LEVEL_4\DLE\EOT\DC2\ETB\n\
      \\DC3COMPRESSION_LEVEL_5\DLE\ENQ\DC2\ETB\n\
      \\DC3COMPRESSION_LEVEL_6\DLE\ACK\DC2\ETB\n\
      \\DC3COMPRESSION_LEVEL_7\DLE\a\DC2\ETB\n\
      \\DC3COMPRESSION_LEVEL_8\DLE\b\DC2\ETB\n\
      \\DC3COMPRESSION_LEVEL_9\DLE\t\DC2\DC4\n\
      \\DLEBEST_COMPRESSION\DLE\t\SUB\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        memoryLevel__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "memory_level"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'memoryLevel")) ::
              Data.ProtoLens.FieldDescriptor Gzip
        compressionLevel__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "compression_level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Gzip'CompressionLevel)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"compressionLevel")) ::
              Data.ProtoLens.FieldDescriptor Gzip
        compressionStrategy__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "compression_strategy"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Gzip'CompressionStrategy)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"compressionStrategy")) ::
              Data.ProtoLens.FieldDescriptor Gzip
        windowBits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "window_bits"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'windowBits")) ::
              Data.ProtoLens.FieldDescriptor Gzip
        chunkSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunkSize")) ::
              Data.ProtoLens.FieldDescriptor Gzip
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, memoryLevel__field_descriptor),
           (Data.ProtoLens.Tag 2, compressionLevel__field_descriptor),
           (Data.ProtoLens.Tag 3, compressionStrategy__field_descriptor),
           (Data.ProtoLens.Tag 4, windowBits__field_descriptor),
           (Data.ProtoLens.Tag 5, chunkSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Gzip'_unknownFields
        (\ x__ y__ -> x__ {_Gzip'_unknownFields = y__})
  defMessage
    = Gzip'_constructor
        {_Gzip'memoryLevel = Prelude.Nothing,
         _Gzip'compressionLevel = Data.ProtoLens.fieldDefault,
         _Gzip'compressionStrategy = Data.ProtoLens.fieldDefault,
         _Gzip'windowBits = Prelude.Nothing,
         _Gzip'chunkSize = Prelude.Nothing, _Gzip'_unknownFields = []}
  parseMessage
    = let
        loop :: Gzip -> Data.ProtoLens.Encoding.Bytes.Parser Gzip
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
                                       "memory_level"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"memoryLevel") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "compression_level"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"compressionLevel") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "compression_strategy"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"compressionStrategy") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "window_bits"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"windowBits") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "chunk_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"chunkSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Gzip"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'memoryLevel") _x
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
                         (Data.ProtoLens.Field.field @"compressionLevel") _x
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
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"compressionStrategy") _x
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
                             (Data.ProtoLens.Field.field @"maybe'windowBits") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Gzip where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Gzip'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Gzip'memoryLevel x__)
                (Control.DeepSeq.deepseq
                   (_Gzip'compressionLevel x__)
                   (Control.DeepSeq.deepseq
                      (_Gzip'compressionStrategy x__)
                      (Control.DeepSeq.deepseq
                         (_Gzip'windowBits x__)
                         (Control.DeepSeq.deepseq (_Gzip'chunkSize x__) ())))))
newtype Gzip'CompressionLevel'UnrecognizedValue
  = Gzip'CompressionLevel'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Gzip'CompressionLevel
  = Gzip'DEFAULT_COMPRESSION |
    Gzip'BEST_SPEED |
    Gzip'COMPRESSION_LEVEL_2 |
    Gzip'COMPRESSION_LEVEL_3 |
    Gzip'COMPRESSION_LEVEL_4 |
    Gzip'COMPRESSION_LEVEL_5 |
    Gzip'COMPRESSION_LEVEL_6 |
    Gzip'COMPRESSION_LEVEL_7 |
    Gzip'COMPRESSION_LEVEL_8 |
    Gzip'COMPRESSION_LEVEL_9 |
    Gzip'CompressionLevel'Unrecognized !Gzip'CompressionLevel'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Gzip'CompressionLevel where
  maybeToEnum 0 = Prelude.Just Gzip'DEFAULT_COMPRESSION
  maybeToEnum 1 = Prelude.Just Gzip'BEST_SPEED
  maybeToEnum 2 = Prelude.Just Gzip'COMPRESSION_LEVEL_2
  maybeToEnum 3 = Prelude.Just Gzip'COMPRESSION_LEVEL_3
  maybeToEnum 4 = Prelude.Just Gzip'COMPRESSION_LEVEL_4
  maybeToEnum 5 = Prelude.Just Gzip'COMPRESSION_LEVEL_5
  maybeToEnum 6 = Prelude.Just Gzip'COMPRESSION_LEVEL_6
  maybeToEnum 7 = Prelude.Just Gzip'COMPRESSION_LEVEL_7
  maybeToEnum 8 = Prelude.Just Gzip'COMPRESSION_LEVEL_8
  maybeToEnum 9 = Prelude.Just Gzip'COMPRESSION_LEVEL_9
  maybeToEnum k
    = Prelude.Just
        (Gzip'CompressionLevel'Unrecognized
           (Gzip'CompressionLevel'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Gzip'DEFAULT_COMPRESSION = "DEFAULT_COMPRESSION"
  showEnum Gzip'BEST_SPEED = "BEST_SPEED"
  showEnum Gzip'COMPRESSION_LEVEL_2 = "COMPRESSION_LEVEL_2"
  showEnum Gzip'COMPRESSION_LEVEL_3 = "COMPRESSION_LEVEL_3"
  showEnum Gzip'COMPRESSION_LEVEL_4 = "COMPRESSION_LEVEL_4"
  showEnum Gzip'COMPRESSION_LEVEL_5 = "COMPRESSION_LEVEL_5"
  showEnum Gzip'COMPRESSION_LEVEL_6 = "COMPRESSION_LEVEL_6"
  showEnum Gzip'COMPRESSION_LEVEL_7 = "COMPRESSION_LEVEL_7"
  showEnum Gzip'COMPRESSION_LEVEL_8 = "COMPRESSION_LEVEL_8"
  showEnum Gzip'COMPRESSION_LEVEL_9 = "COMPRESSION_LEVEL_9"
  showEnum
    (Gzip'CompressionLevel'Unrecognized (Gzip'CompressionLevel'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEFAULT_COMPRESSION"
    = Prelude.Just Gzip'DEFAULT_COMPRESSION
    | (Prelude.==) k "BEST_SPEED" = Prelude.Just Gzip'BEST_SPEED
    | (Prelude.==) k "COMPRESSION_LEVEL_1"
    = Prelude.Just Gzip'COMPRESSION_LEVEL_1
    | (Prelude.==) k "COMPRESSION_LEVEL_2"
    = Prelude.Just Gzip'COMPRESSION_LEVEL_2
    | (Prelude.==) k "COMPRESSION_LEVEL_3"
    = Prelude.Just Gzip'COMPRESSION_LEVEL_3
    | (Prelude.==) k "COMPRESSION_LEVEL_4"
    = Prelude.Just Gzip'COMPRESSION_LEVEL_4
    | (Prelude.==) k "COMPRESSION_LEVEL_5"
    = Prelude.Just Gzip'COMPRESSION_LEVEL_5
    | (Prelude.==) k "COMPRESSION_LEVEL_6"
    = Prelude.Just Gzip'COMPRESSION_LEVEL_6
    | (Prelude.==) k "COMPRESSION_LEVEL_7"
    = Prelude.Just Gzip'COMPRESSION_LEVEL_7
    | (Prelude.==) k "COMPRESSION_LEVEL_8"
    = Prelude.Just Gzip'COMPRESSION_LEVEL_8
    | (Prelude.==) k "COMPRESSION_LEVEL_9"
    = Prelude.Just Gzip'COMPRESSION_LEVEL_9
    | (Prelude.==) k "BEST_COMPRESSION"
    = Prelude.Just Gzip'BEST_COMPRESSION
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Gzip'CompressionLevel where
  minBound = Gzip'DEFAULT_COMPRESSION
  maxBound = Gzip'COMPRESSION_LEVEL_9
instance Prelude.Enum Gzip'CompressionLevel where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum CompressionLevel: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Gzip'DEFAULT_COMPRESSION = 0
  fromEnum Gzip'BEST_SPEED = 1
  fromEnum Gzip'COMPRESSION_LEVEL_2 = 2
  fromEnum Gzip'COMPRESSION_LEVEL_3 = 3
  fromEnum Gzip'COMPRESSION_LEVEL_4 = 4
  fromEnum Gzip'COMPRESSION_LEVEL_5 = 5
  fromEnum Gzip'COMPRESSION_LEVEL_6 = 6
  fromEnum Gzip'COMPRESSION_LEVEL_7 = 7
  fromEnum Gzip'COMPRESSION_LEVEL_8 = 8
  fromEnum Gzip'COMPRESSION_LEVEL_9 = 9
  fromEnum
    (Gzip'CompressionLevel'Unrecognized (Gzip'CompressionLevel'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Gzip'COMPRESSION_LEVEL_9
    = Prelude.error
        "Gzip'CompressionLevel.succ: bad argument Gzip'COMPRESSION_LEVEL_9. This value would be out of bounds."
  succ Gzip'DEFAULT_COMPRESSION = Gzip'BEST_SPEED
  succ Gzip'BEST_SPEED = Gzip'COMPRESSION_LEVEL_2
  succ Gzip'COMPRESSION_LEVEL_2 = Gzip'COMPRESSION_LEVEL_3
  succ Gzip'COMPRESSION_LEVEL_3 = Gzip'COMPRESSION_LEVEL_4
  succ Gzip'COMPRESSION_LEVEL_4 = Gzip'COMPRESSION_LEVEL_5
  succ Gzip'COMPRESSION_LEVEL_5 = Gzip'COMPRESSION_LEVEL_6
  succ Gzip'COMPRESSION_LEVEL_6 = Gzip'COMPRESSION_LEVEL_7
  succ Gzip'COMPRESSION_LEVEL_7 = Gzip'COMPRESSION_LEVEL_8
  succ Gzip'COMPRESSION_LEVEL_8 = Gzip'COMPRESSION_LEVEL_9
  succ (Gzip'CompressionLevel'Unrecognized _)
    = Prelude.error
        "Gzip'CompressionLevel.succ: bad argument: unrecognized value"
  pred Gzip'DEFAULT_COMPRESSION
    = Prelude.error
        "Gzip'CompressionLevel.pred: bad argument Gzip'DEFAULT_COMPRESSION. This value would be out of bounds."
  pred Gzip'BEST_SPEED = Gzip'DEFAULT_COMPRESSION
  pred Gzip'COMPRESSION_LEVEL_2 = Gzip'BEST_SPEED
  pred Gzip'COMPRESSION_LEVEL_3 = Gzip'COMPRESSION_LEVEL_2
  pred Gzip'COMPRESSION_LEVEL_4 = Gzip'COMPRESSION_LEVEL_3
  pred Gzip'COMPRESSION_LEVEL_5 = Gzip'COMPRESSION_LEVEL_4
  pred Gzip'COMPRESSION_LEVEL_6 = Gzip'COMPRESSION_LEVEL_5
  pred Gzip'COMPRESSION_LEVEL_7 = Gzip'COMPRESSION_LEVEL_6
  pred Gzip'COMPRESSION_LEVEL_8 = Gzip'COMPRESSION_LEVEL_7
  pred Gzip'COMPRESSION_LEVEL_9 = Gzip'COMPRESSION_LEVEL_8
  pred (Gzip'CompressionLevel'Unrecognized _)
    = Prelude.error
        "Gzip'CompressionLevel.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Gzip'CompressionLevel where
  fieldDefault = Gzip'DEFAULT_COMPRESSION
instance Control.DeepSeq.NFData Gzip'CompressionLevel where
  rnf x__ = Prelude.seq x__ ()
pattern Gzip'COMPRESSION_LEVEL_1 :: Gzip'CompressionLevel
pattern Gzip'COMPRESSION_LEVEL_1 = Gzip'BEST_SPEED
pattern Gzip'BEST_COMPRESSION :: Gzip'CompressionLevel
pattern Gzip'BEST_COMPRESSION = Gzip'COMPRESSION_LEVEL_9
newtype Gzip'CompressionStrategy'UnrecognizedValue
  = Gzip'CompressionStrategy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Gzip'CompressionStrategy
  = Gzip'DEFAULT_STRATEGY |
    Gzip'FILTERED |
    Gzip'HUFFMAN_ONLY |
    Gzip'RLE |
    Gzip'FIXED |
    Gzip'CompressionStrategy'Unrecognized !Gzip'CompressionStrategy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Gzip'CompressionStrategy where
  maybeToEnum 0 = Prelude.Just Gzip'DEFAULT_STRATEGY
  maybeToEnum 1 = Prelude.Just Gzip'FILTERED
  maybeToEnum 2 = Prelude.Just Gzip'HUFFMAN_ONLY
  maybeToEnum 3 = Prelude.Just Gzip'RLE
  maybeToEnum 4 = Prelude.Just Gzip'FIXED
  maybeToEnum k
    = Prelude.Just
        (Gzip'CompressionStrategy'Unrecognized
           (Gzip'CompressionStrategy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Gzip'DEFAULT_STRATEGY = "DEFAULT_STRATEGY"
  showEnum Gzip'FILTERED = "FILTERED"
  showEnum Gzip'HUFFMAN_ONLY = "HUFFMAN_ONLY"
  showEnum Gzip'RLE = "RLE"
  showEnum Gzip'FIXED = "FIXED"
  showEnum
    (Gzip'CompressionStrategy'Unrecognized (Gzip'CompressionStrategy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEFAULT_STRATEGY"
    = Prelude.Just Gzip'DEFAULT_STRATEGY
    | (Prelude.==) k "FILTERED" = Prelude.Just Gzip'FILTERED
    | (Prelude.==) k "HUFFMAN_ONLY" = Prelude.Just Gzip'HUFFMAN_ONLY
    | (Prelude.==) k "RLE" = Prelude.Just Gzip'RLE
    | (Prelude.==) k "FIXED" = Prelude.Just Gzip'FIXED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Gzip'CompressionStrategy where
  minBound = Gzip'DEFAULT_STRATEGY
  maxBound = Gzip'FIXED
instance Prelude.Enum Gzip'CompressionStrategy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum CompressionStrategy: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Gzip'DEFAULT_STRATEGY = 0
  fromEnum Gzip'FILTERED = 1
  fromEnum Gzip'HUFFMAN_ONLY = 2
  fromEnum Gzip'RLE = 3
  fromEnum Gzip'FIXED = 4
  fromEnum
    (Gzip'CompressionStrategy'Unrecognized (Gzip'CompressionStrategy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Gzip'FIXED
    = Prelude.error
        "Gzip'CompressionStrategy.succ: bad argument Gzip'FIXED. This value would be out of bounds."
  succ Gzip'DEFAULT_STRATEGY = Gzip'FILTERED
  succ Gzip'FILTERED = Gzip'HUFFMAN_ONLY
  succ Gzip'HUFFMAN_ONLY = Gzip'RLE
  succ Gzip'RLE = Gzip'FIXED
  succ (Gzip'CompressionStrategy'Unrecognized _)
    = Prelude.error
        "Gzip'CompressionStrategy.succ: bad argument: unrecognized value"
  pred Gzip'DEFAULT_STRATEGY
    = Prelude.error
        "Gzip'CompressionStrategy.pred: bad argument Gzip'DEFAULT_STRATEGY. This value would be out of bounds."
  pred Gzip'FILTERED = Gzip'DEFAULT_STRATEGY
  pred Gzip'HUFFMAN_ONLY = Gzip'FILTERED
  pred Gzip'RLE = Gzip'HUFFMAN_ONLY
  pred Gzip'FIXED = Gzip'RLE
  pred (Gzip'CompressionStrategy'Unrecognized _)
    = Prelude.error
        "Gzip'CompressionStrategy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Gzip'CompressionStrategy where
  fieldDefault = Gzip'DEFAULT_STRATEGY
instance Control.DeepSeq.NFData Gzip'CompressionStrategy where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \:envoy/extensions/compression/gzip/compressor/v3/gzip.proto\DC2/envoy.extensions.compression.gzip.compressor.v3\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\137\a\n\
    \\EOTGzip\DC2J\n\
    \\fmemory_level\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\vmemoryLevelB\t\250B\ACK*\EOT\CAN\t(\SOH\DC2}\n\
    \\DC1compression_level\CAN\STX \SOH(\SO2F.envoy.extensions.compression.gzip.compressor.v3.Gzip.CompressionLevelR\DLEcompressionLevelB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\134\SOH\n\
    \\DC4compression_strategy\CAN\ETX \SOH(\SO2I.envoy.extensions.compression.gzip.compressor.v3.Gzip.CompressionStrategyR\DC3compressionStrategyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2H\n\
    \\vwindow_bits\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
    \windowBitsB\t\250B\ACK*\EOT\CAN\SI(\t\DC2I\n\
    \\n\
    \chunk_size\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\tchunkSizeB\f\250B\t*\a\CAN\128\128\EOT(\128 \"_\n\
    \\DC3CompressionStrategy\DC2\DC4\n\
    \\DLEDEFAULT_STRATEGY\DLE\NUL\DC2\f\n\
    \\bFILTERED\DLE\SOH\DC2\DLE\n\
    \\fHUFFMAN_ONLY\DLE\STX\DC2\a\n\
    \\ETXRLE\DLE\ETX\DC2\t\n\
    \\ENQFIXED\DLE\EOT\"\182\STX\n\
    \\DLECompressionLevel\DC2\ETB\n\
    \\DC3DEFAULT_COMPRESSION\DLE\NUL\DC2\SO\n\
    \\n\
    \BEST_SPEED\DLE\SOH\DC2\ETB\n\
    \\DC3COMPRESSION_LEVEL_1\DLE\SOH\DC2\ETB\n\
    \\DC3COMPRESSION_LEVEL_2\DLE\STX\DC2\ETB\n\
    \\DC3COMPRESSION_LEVEL_3\DLE\ETX\DC2\ETB\n\
    \\DC3COMPRESSION_LEVEL_4\DLE\EOT\DC2\ETB\n\
    \\DC3COMPRESSION_LEVEL_5\DLE\ENQ\DC2\ETB\n\
    \\DC3COMPRESSION_LEVEL_6\DLE\ACK\DC2\ETB\n\
    \\DC3COMPRESSION_LEVEL_7\DLE\a\DC2\ETB\n\
    \\DC3COMPRESSION_LEVEL_8\DLE\b\DC2\ETB\n\
    \\DC3COMPRESSION_LEVEL_9\DLE\t\DC2\DC4\n\
    \\DLEBEST_COMPRESSION\DLE\t\SUB\STX\DLE\SOHBT\n\
    \=io.envoyproxy.envoy.extensions.compression.gzip.compressor.v3B\tGzipProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\207\FS\n\
    \\ACK\DC2\EOT\NUL\NULM\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL8\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULV\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULV\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \z\n\
    \\STX\EOT\NUL\DC2\EOT\DC2\NULM\SOH\SUB\ETB [#next-free-field: 6]\n\
    \2U [#protodoc-title: Gzip Compressor]\n\
    \ [#extension: envoy.compression.gzip.compressor]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC2\b\f\n\
    \\176\SOH\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\NAK\STX\ESC\ETX\SUB\161\SOH All the values of this enumeration translate directly to zlib's compression strategies.\n\
    \ For more information about each strategy, please refer to zlib manual.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\NAK\a\SUB\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\SYN\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\SYN\ETB\CAN\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\ETB\EOT\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\ETB\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\ETB\SI\DLE\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX\CAN\EOT\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\CAN\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\CAN\DC3\DC4\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX\EM\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX\EM\EOT\a\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX\EM\n\
    \\v\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\EOT\DC2\ETX\SUB\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETX\SUB\EOT\t\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\STX\DC2\ETX\SUB\f\r\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\SOH\DC2\EOT\GS\STX,\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\SOH\SOH\DC2\ETX\GS\a\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\SOH\ETX\DC2\ETX\RS\EOT\RS\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\ETX\STX\DC2\ETX\RS\EOT\RS\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\NUL\DC2\ETX \EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\SOH\DC2\ETX \EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\STX\DC2\ETX \SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\SOH\DC2\ETX!\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\SOH\DC2\ETX!\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\STX\DC2\ETX!\DC1\DC2\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\STX\DC2\ETX\"\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\STX\SOH\DC2\ETX\"\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\STX\STX\DC2\ETX\"\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\ETX\DC2\ETX#\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\ETX\SOH\DC2\ETX#\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\ETX\STX\DC2\ETX#\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\EOT\DC2\ETX$\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\EOT\SOH\DC2\ETX$\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\EOT\STX\DC2\ETX$\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\ENQ\DC2\ETX%\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\ENQ\SOH\DC2\ETX%\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\ENQ\STX\DC2\ETX%\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\ACK\DC2\ETX&\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\ACK\SOH\DC2\ETX&\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\ACK\STX\DC2\ETX&\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\a\DC2\ETX'\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\a\SOH\DC2\ETX'\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\a\STX\DC2\ETX'\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\b\DC2\ETX(\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\b\SOH\DC2\ETX(\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\b\STX\DC2\ETX(\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\t\DC2\ETX)\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\t\SOH\DC2\ETX)\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\t\STX\DC2\ETX)\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\n\
    \\DC2\ETX*\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\n\
    \\SOH\DC2\ETX*\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\n\
    \\STX\DC2\ETX*\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\v\DC2\ETX+\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\v\SOH\DC2\ETX+\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\v\STX\DC2\ETX+\ETB\CAN\n\
    \\202\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX0\STX[\SUB\188\SOH Value from 1 to 9 that controls the amount of internal memory used by zlib. Higher values\n\
    \ use more memory, but are faster and produce better compression results. The default value is 5.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX0\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX0\RS*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX0-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX0/Z\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ENQ\DC2\ETX00Y\n\
    \\234\EOT\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX9\STXX\SUB\220\EOT A value used for selecting the zlib compression level. This setting will affect speed and\n\
    \ amount of compression applied to the content. \"BEST_COMPRESSION\" provides higher compression\n\
    \ at the cost of higher latency and is equal to \"COMPRESSION_LEVEL_9\". \"BEST_SPEED\" provides\n\
    \ lower compression with minimum impact on response time, the same as \"COMPRESSION_LEVEL_1\".\n\
    \ \"DEFAULT_COMPRESSION\" provides an optimal result between speed and compression. According\n\
    \ to zlib's manual this level gives the same result as \"COMPRESSION_LEVEL_6\".\n\
    \ This field will be set to \"DEFAULT_COMPRESSION\" if not specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX9\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX9\DC3$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX9'(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX9)W\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETX9*V\n\
    \\179\EOT\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXA\STX^\SUB\165\EOT A value used for selecting the zlib compression strategy which is directly related to the\n\
    \ characteristics of the content. Most of the time \"DEFAULT_STRATEGY\" will be the best choice,\n\
    \ which is also the default value for the parameter, though there are situations when\n\
    \ changing this parameter might produce better results. For example, run-length encoding (RLE)\n\
    \ is typically used when the content is known for having sequences which same data occurs many\n\
    \ consecutive times. For more information about each strategy, please refer to zlib manual.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXA\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXA\SYN*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXA-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETXA/]\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DLE\DC2\ETXA0\\\n\
    \\200\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXG\STX[\SUB\186\STX Value from 9 to 15 that represents the base two logarithmic of the compressor's window size.\n\
    \ Larger window results in better compression at the expense of memory usage. The default is 12\n\
    \ which will produce a 4096 bytes window. For more details about this parameter, please refer to\n\
    \ zlib manual > deflateInit2.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXG\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXG\RS)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXG,-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETXG.Z\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\ENQ\DC2\ETXG/Y\n\
    \\238\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXL\STX`\SUB\224\SOH Value for Zlib's next output buffer. If not set, defaults to 4096.\n\
    \ See https://www.zlib.net/manual.html for more details. Also see\n\
    \ https://github.com/envoyproxy/envoy/issues/8448 for context on this filter's performance.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXL\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXL\RS(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXL+,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETXL-_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\ENQ\DC2\ETXL.^b\ACKproto3"