{- This file was auto-generated from envoy/extensions/filters/http/gzip/v3/gzip.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip (
        Gzip(), Gzip'CompressionLevel(), Gzip'CompressionLevel'Enum(..),
        Gzip'CompressionLevel'Enum(),
        Gzip'CompressionLevel'Enum'UnrecognizedValue,
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
import qualified Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip_Fields.memoryLevel' @:: Lens' Gzip Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip_Fields.maybe'memoryLevel' @:: Lens' Gzip (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip_Fields.compressionLevel' @:: Lens' Gzip Gzip'CompressionLevel'Enum@
         * 'Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip_Fields.compressionStrategy' @:: Lens' Gzip Gzip'CompressionStrategy@
         * 'Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip_Fields.windowBits' @:: Lens' Gzip Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip_Fields.maybe'windowBits' @:: Lens' Gzip (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip_Fields.compressor' @:: Lens' Gzip Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor.Compressor@
         * 'Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip_Fields.maybe'compressor' @:: Lens' Gzip (Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor.Compressor)@
         * 'Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip_Fields.chunkSize' @:: Lens' Gzip Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Http.Gzip.V3.Gzip_Fields.maybe'chunkSize' @:: Lens' Gzip (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data Gzip
  = Gzip'_constructor {_Gzip'memoryLevel :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                       _Gzip'compressionLevel :: !Gzip'CompressionLevel'Enum,
                       _Gzip'compressionStrategy :: !Gzip'CompressionStrategy,
                       _Gzip'windowBits :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                       _Gzip'compressor :: !(Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor.Compressor),
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
instance Data.ProtoLens.Field.HasField Gzip "compressionLevel" Gzip'CompressionLevel'Enum where
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
instance Data.ProtoLens.Field.HasField Gzip "compressor" Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor.Compressor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gzip'compressor (\ x__ y__ -> x__ {_Gzip'compressor = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Gzip "maybe'compressor" (Prelude.Maybe Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor.Compressor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Gzip'compressor (\ x__ y__ -> x__ {_Gzip'compressor = y__}))
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
    = Data.Text.pack "envoy.extensions.filters.http.gzip.v3.Gzip"
  packedMessageDescriptor _
    = "\n\
      \\EOTGzip\DC2J\n\
      \\fmemory_level\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\vmemoryLevelB\t\250B\ACK*\EOT\CAN\t(\SOH\DC2x\n\
      \\DC1compression_level\CAN\ETX \SOH(\SO2A.envoy.extensions.filters.http.gzip.v3.Gzip.CompressionLevel.EnumR\DLEcompressionLevelB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2|\n\
      \\DC4compression_strategy\CAN\EOT \SOH(\SO2?.envoy.extensions.filters.http.gzip.v3.Gzip.CompressionStrategyR\DC3compressionStrategyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2H\n\
      \\vwindow_bits\CAN\t \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \windowBitsB\t\250B\ACK*\EOT\CAN\SI(\t\DC2W\n\
      \\n\
      \compressor\CAN\n\
      \ \SOH(\v27.envoy.extensions.filters.http.compressor.v3.CompressorR\n\
      \compressor\DC2I\n\
      \\n\
      \chunk_size\CAN\v \SOH(\v2\FS.google.protobuf.UInt32ValueR\tchunkSizeB\f\250B\t*\a\CAN\128\128\EOT(\128 \SUB{\n\
      \\DLECompressionLevel\"(\n\
      \\EOTEnum\DC2\v\n\
      \\aDEFAULT\DLE\NUL\DC2\b\n\
      \\EOTBEST\DLE\SOH\DC2\t\n\
      \\ENQSPEED\DLE\STX:=\154\197\136\RS8\n\
      \6envoy.config.filter.http.gzip.v2.Gzip.CompressionLevel\"F\n\
      \\DC3CompressionStrategy\DC2\v\n\
      \\aDEFAULT\DLE\NUL\DC2\f\n\
      \\bFILTERED\DLE\SOH\DC2\v\n\
      \\aHUFFMAN\DLE\STX\DC2\a\n\
      \\ETXRLE\DLE\ETX:,\154\197\136\RS'\n\
      \%envoy.config.filter.http.gzip.v2.GzipJ\EOT\b\STX\DLE\ETXJ\EOT\b\ACK\DLE\aJ\EOT\b\a\DLE\bJ\EOT\b\b\DLE\tR\SOcontent_lengthR\fcontent_typeR\SYNdisable_on_etag_headerR\GSremove_accept_encoding_header"
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
                 Data.ProtoLens.FieldTypeDescriptor Gzip'CompressionLevel'Enum)
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
        compressor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "compressor"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor.Compressor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'compressor")) ::
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
           (Data.ProtoLens.Tag 3, compressionLevel__field_descriptor),
           (Data.ProtoLens.Tag 4, compressionStrategy__field_descriptor),
           (Data.ProtoLens.Tag 9, windowBits__field_descriptor),
           (Data.ProtoLens.Tag 10, compressor__field_descriptor),
           (Data.ProtoLens.Tag 11, chunkSize__field_descriptor)]
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
         _Gzip'compressor = Prelude.Nothing,
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
                        24
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
                        32
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
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "window_bits"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"windowBits") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "compressor"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"compressor") y x)
                        90
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
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
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
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
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
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
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
                                (Data.ProtoLens.Field.field @"maybe'compressor") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
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
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
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
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
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
                         (Control.DeepSeq.deepseq
                            (_Gzip'compressor x__)
                            (Control.DeepSeq.deepseq (_Gzip'chunkSize x__) ()))))))
{- | Fields :
      -}
data Gzip'CompressionLevel
  = Gzip'CompressionLevel'_constructor {_Gzip'CompressionLevel'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Gzip'CompressionLevel where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Gzip'CompressionLevel where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.gzip.v3.Gzip.CompressionLevel"
  packedMessageDescriptor _
    = "\n\
      \\DLECompressionLevel\"(\n\
      \\EOTEnum\DC2\v\n\
      \\aDEFAULT\DLE\NUL\DC2\b\n\
      \\EOTBEST\DLE\SOH\DC2\t\n\
      \\ENQSPEED\DLE\STX:=\154\197\136\RS8\n\
      \6envoy.config.filter.http.gzip.v2.Gzip.CompressionLevel"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Gzip'CompressionLevel'_unknownFields
        (\ x__ y__ -> x__ {_Gzip'CompressionLevel'_unknownFields = y__})
  defMessage
    = Gzip'CompressionLevel'_constructor
        {_Gzip'CompressionLevel'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Gzip'CompressionLevel
          -> Data.ProtoLens.Encoding.Bytes.Parser Gzip'CompressionLevel
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
          (do loop Data.ProtoLens.defMessage) "CompressionLevel"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData Gzip'CompressionLevel where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Gzip'CompressionLevel'_unknownFields x__) ()
newtype Gzip'CompressionLevel'Enum'UnrecognizedValue
  = Gzip'CompressionLevel'Enum'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Gzip'CompressionLevel'Enum
  = Gzip'CompressionLevel'DEFAULT |
    Gzip'CompressionLevel'BEST |
    Gzip'CompressionLevel'SPEED |
    Gzip'CompressionLevel'Enum'Unrecognized !Gzip'CompressionLevel'Enum'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Gzip'CompressionLevel'Enum where
  maybeToEnum 0 = Prelude.Just Gzip'CompressionLevel'DEFAULT
  maybeToEnum 1 = Prelude.Just Gzip'CompressionLevel'BEST
  maybeToEnum 2 = Prelude.Just Gzip'CompressionLevel'SPEED
  maybeToEnum k
    = Prelude.Just
        (Gzip'CompressionLevel'Enum'Unrecognized
           (Gzip'CompressionLevel'Enum'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Gzip'CompressionLevel'DEFAULT = "DEFAULT"
  showEnum Gzip'CompressionLevel'BEST = "BEST"
  showEnum Gzip'CompressionLevel'SPEED = "SPEED"
  showEnum
    (Gzip'CompressionLevel'Enum'Unrecognized (Gzip'CompressionLevel'Enum'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEFAULT"
    = Prelude.Just Gzip'CompressionLevel'DEFAULT
    | (Prelude.==) k "BEST" = Prelude.Just Gzip'CompressionLevel'BEST
    | (Prelude.==) k "SPEED" = Prelude.Just Gzip'CompressionLevel'SPEED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Gzip'CompressionLevel'Enum where
  minBound = Gzip'CompressionLevel'DEFAULT
  maxBound = Gzip'CompressionLevel'SPEED
instance Prelude.Enum Gzip'CompressionLevel'Enum where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Enum: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Gzip'CompressionLevel'DEFAULT = 0
  fromEnum Gzip'CompressionLevel'BEST = 1
  fromEnum Gzip'CompressionLevel'SPEED = 2
  fromEnum
    (Gzip'CompressionLevel'Enum'Unrecognized (Gzip'CompressionLevel'Enum'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Gzip'CompressionLevel'SPEED
    = Prelude.error
        "Gzip'CompressionLevel'Enum.succ: bad argument Gzip'CompressionLevel'SPEED. This value would be out of bounds."
  succ Gzip'CompressionLevel'DEFAULT = Gzip'CompressionLevel'BEST
  succ Gzip'CompressionLevel'BEST = Gzip'CompressionLevel'SPEED
  succ (Gzip'CompressionLevel'Enum'Unrecognized _)
    = Prelude.error
        "Gzip'CompressionLevel'Enum.succ: bad argument: unrecognized value"
  pred Gzip'CompressionLevel'DEFAULT
    = Prelude.error
        "Gzip'CompressionLevel'Enum.pred: bad argument Gzip'CompressionLevel'DEFAULT. This value would be out of bounds."
  pred Gzip'CompressionLevel'BEST = Gzip'CompressionLevel'DEFAULT
  pred Gzip'CompressionLevel'SPEED = Gzip'CompressionLevel'BEST
  pred (Gzip'CompressionLevel'Enum'Unrecognized _)
    = Prelude.error
        "Gzip'CompressionLevel'Enum.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Gzip'CompressionLevel'Enum where
  fieldDefault = Gzip'CompressionLevel'DEFAULT
instance Control.DeepSeq.NFData Gzip'CompressionLevel'Enum where
  rnf x__ = Prelude.seq x__ ()
newtype Gzip'CompressionStrategy'UnrecognizedValue
  = Gzip'CompressionStrategy'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Gzip'CompressionStrategy
  = Gzip'DEFAULT |
    Gzip'FILTERED |
    Gzip'HUFFMAN |
    Gzip'RLE |
    Gzip'CompressionStrategy'Unrecognized !Gzip'CompressionStrategy'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Gzip'CompressionStrategy where
  maybeToEnum 0 = Prelude.Just Gzip'DEFAULT
  maybeToEnum 1 = Prelude.Just Gzip'FILTERED
  maybeToEnum 2 = Prelude.Just Gzip'HUFFMAN
  maybeToEnum 3 = Prelude.Just Gzip'RLE
  maybeToEnum k
    = Prelude.Just
        (Gzip'CompressionStrategy'Unrecognized
           (Gzip'CompressionStrategy'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum Gzip'DEFAULT = "DEFAULT"
  showEnum Gzip'FILTERED = "FILTERED"
  showEnum Gzip'HUFFMAN = "HUFFMAN"
  showEnum Gzip'RLE = "RLE"
  showEnum
    (Gzip'CompressionStrategy'Unrecognized (Gzip'CompressionStrategy'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEFAULT" = Prelude.Just Gzip'DEFAULT
    | (Prelude.==) k "FILTERED" = Prelude.Just Gzip'FILTERED
    | (Prelude.==) k "HUFFMAN" = Prelude.Just Gzip'HUFFMAN
    | (Prelude.==) k "RLE" = Prelude.Just Gzip'RLE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Gzip'CompressionStrategy where
  minBound = Gzip'DEFAULT
  maxBound = Gzip'RLE
instance Prelude.Enum Gzip'CompressionStrategy where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum CompressionStrategy: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Gzip'DEFAULT = 0
  fromEnum Gzip'FILTERED = 1
  fromEnum Gzip'HUFFMAN = 2
  fromEnum Gzip'RLE = 3
  fromEnum
    (Gzip'CompressionStrategy'Unrecognized (Gzip'CompressionStrategy'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Gzip'RLE
    = Prelude.error
        "Gzip'CompressionStrategy.succ: bad argument Gzip'RLE. This value would be out of bounds."
  succ Gzip'DEFAULT = Gzip'FILTERED
  succ Gzip'FILTERED = Gzip'HUFFMAN
  succ Gzip'HUFFMAN = Gzip'RLE
  succ (Gzip'CompressionStrategy'Unrecognized _)
    = Prelude.error
        "Gzip'CompressionStrategy.succ: bad argument: unrecognized value"
  pred Gzip'DEFAULT
    = Prelude.error
        "Gzip'CompressionStrategy.pred: bad argument Gzip'DEFAULT. This value would be out of bounds."
  pred Gzip'FILTERED = Gzip'DEFAULT
  pred Gzip'HUFFMAN = Gzip'FILTERED
  pred Gzip'RLE = Gzip'HUFFMAN
  pred (Gzip'CompressionStrategy'Unrecognized _)
    = Prelude.error
        "Gzip'CompressionStrategy.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Gzip'CompressionStrategy where
  fieldDefault = Gzip'DEFAULT
instance Control.DeepSeq.NFData Gzip'CompressionStrategy where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \0envoy/extensions/filters/http/gzip/v3/gzip.proto\DC2%envoy.extensions.filters.http.gzip.v3\SUB<envoy/extensions/filters/http/compressor/v3/compressor.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\152\a\n\
    \\EOTGzip\DC2J\n\
    \\fmemory_level\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\vmemoryLevelB\t\250B\ACK*\EOT\CAN\t(\SOH\DC2x\n\
    \\DC1compression_level\CAN\ETX \SOH(\SO2A.envoy.extensions.filters.http.gzip.v3.Gzip.CompressionLevel.EnumR\DLEcompressionLevelB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2|\n\
    \\DC4compression_strategy\CAN\EOT \SOH(\SO2?.envoy.extensions.filters.http.gzip.v3.Gzip.CompressionStrategyR\DC3compressionStrategyB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2H\n\
    \\vwindow_bits\CAN\t \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
    \windowBitsB\t\250B\ACK*\EOT\CAN\SI(\t\DC2W\n\
    \\n\
    \compressor\CAN\n\
    \ \SOH(\v27.envoy.extensions.filters.http.compressor.v3.CompressorR\n\
    \compressor\DC2I\n\
    \\n\
    \chunk_size\CAN\v \SOH(\v2\FS.google.protobuf.UInt32ValueR\tchunkSizeB\f\250B\t*\a\CAN\128\128\EOT(\128 \SUB{\n\
    \\DLECompressionLevel\"(\n\
    \\EOTEnum\DC2\v\n\
    \\aDEFAULT\DLE\NUL\DC2\b\n\
    \\EOTBEST\DLE\SOH\DC2\t\n\
    \\ENQSPEED\DLE\STX:=\154\197\136\RS8\n\
    \6envoy.config.filter.http.gzip.v2.Gzip.CompressionLevel\"F\n\
    \\DC3CompressionStrategy\DC2\v\n\
    \\aDEFAULT\DLE\NUL\DC2\f\n\
    \\bFILTERED\DLE\SOH\DC2\v\n\
    \\aHUFFMAN\DLE\STX\DC2\a\n\
    \\ETXRLE\DLE\ETX:,\154\197\136\RS'\n\
    \%envoy.config.filter.http.gzip.v2.GzipJ\EOT\b\STX\DLE\ETXJ\EOT\b\ACK\DLE\aJ\EOT\b\a\DLE\bJ\EOT\b\b\DLE\tR\SOcontent_lengthR\fcontent_typeR\SYNdisable_on_etag_headerR\GSremove_accept_encoding_headerBJ\n\
    \3io.envoyproxy.envoy.extensions.filters.http.gzip.v3B\tGzipProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\199\EM\n\
    \\ACK\DC2\EOT\NUL\NULP\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL.\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NULF\n\
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
    \\SOH\b\DC2\ETX\f\NULL\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULL\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \?\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NULP\SOH\SUB\CAN [#next-free-field: 12]\n\
    \2\EM [#protodoc-title: Gzip]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\f\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\NAK\STX\SYN.\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\NAK\STX\SYN.\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\CAN\STX\GS\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\CAN\a\SUB\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\EM\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\EM\SO\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\SUB\EOT\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\SUB\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\SUB\SI\DLE\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX\ESC\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\ESC\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\ESC\SO\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX\FS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX\FS\EOT\a\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX\FS\n\
    \\v\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\US\STX(\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\US\n\
    \\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT \EOT!A\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT \EOT!A\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\EOT\NUL\DC2\EOT#\EOT'\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\EOT\NUL\SOH\DC2\ETX#\t\r\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\DC2\ETX$\ACK\DC2\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX$\ACK\r\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX$\DLE\DC1\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\DC2\ETX%\ACK\SI\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX%\ACK\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX%\r\SO\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\DC2\ETX&\ACK\DLE\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX&\ACK\v\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\STX\DC2\ETX&\SO\SI\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX*\STX\SYN\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX*\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX*\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX*\v\f\n\
    \\v\n\
    \\EOT\EOT\NUL\t\SOH\DC2\ETX*\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\SOH\DC2\ETX*\SO\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\SOH\STX\DC2\ETX*\SO\SI\n\
    \\v\n\
    \\EOT\EOT\NUL\t\STX\DC2\ETX*\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\STX\SOH\DC2\ETX*\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\STX\STX\DC2\ETX*\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\t\ETX\DC2\ETX*\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\ETX\SOH\DC2\ETX*\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\ETX\STX\DC2\ETX*\DC4\NAK\n\
    \\v\n\
    \\ETX\EOT\NUL\n\
    \\DC2\EOT,\STX-&\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\NUL\DC2\ETX,\v\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\SOH\DC2\ETX,\GS+\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\STX\DC2\ETX,-E\n\
    \\v\n\
    \\EOT\EOT\NUL\n\
    \\ETX\DC2\ETX-\ACK%\n\
    \\202\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX1\STX[\SUB\188\SOH Value from 1 to 9 that controls the amount of internal memory used by zlib. Higher values\n\
    \ use more memory, but are faster and produce better compression results. The default value is 5.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX1\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX1\RS*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX1-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX1/Z\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ENQ\DC2\ETX10Y\n\
    \\160\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX8\STX]\SUB\146\ETX A value used for selecting the zlib compression level. This setting will affect speed and\n\
    \ amount of compression applied to the content. \"BEST\" provides higher compression at the cost of\n\
    \ higher latency, \"SPEED\" provides lower compression with minimum impact on response time.\n\
    \ \"DEFAULT\" provides an optimal result between speed and compression. This field will be set to\n\
    \ \"DEFAULT\" if not specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX8\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX8\CAN)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX8,-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX8.\\\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETX8/[\n\
    \\248\ETX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX@\STX^\SUB\234\ETX A value used for selecting the zlib compression strategy which is directly related to the\n\
    \ characteristics of the content. Most of the time \"DEFAULT\" will be the best choice, though\n\
    \ there are situations which changing this parameter might produce better results. For example,\n\
    \ run-length encoding (RLE) is typically used when the content is known for having sequences\n\
    \ which same data occurs many consecutive times. For more information about each strategy, please\n\
    \ refer to zlib manual.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX@\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX@\SYN*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX@-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX@/]\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DLE\DC2\ETX@0\\\n\
    \\200\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXF\STX[\SUB\186\STX Value from 9 to 15 that represents the base two logarithmic of the compressor's window size.\n\
    \ Larger window results in better compression at the expense of memory usage. The default is 12\n\
    \ which will produce a 4096 bytes window. For more details about this parameter, please refer to\n\
    \ zlib manual > deflateInit2.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXF\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXF\RS)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXF,-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETXF.Z\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ETX\b\175\b\ENQ\DC2\ETXF/Y\n\
    \\168\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXJ\STX+\SUB\154\SOH Set of configuration parameters common for all compression filters. You can define\n\
    \ `content_length`, `content_type` and other parameters in this field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXJ\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXJ\ESC%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXJ(*\n\
    \\238\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXO\STXa\SUB\224\SOH Value for Zlib's next output buffer. If not set, defaults to 4096.\n\
    \ See https://www.zlib.net/manual.html for more details. Also see\n\
    \ https://github.com/envoyproxy/envoy/issues/8448 for context on this filter's performance.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXO\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXO\RS(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXO+-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETXO.`\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\ENQ\DC2\ETXO/_b\ACKproto3"