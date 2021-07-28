{- This file was auto-generated from envoy/extensions/compression/gzip/decompressor/v3/gzip.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Compression.Gzip.Decompressor.V3.Gzip (
        Gzip()
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
     
         * 'Proto.Envoy.Extensions.Compression.Gzip.Decompressor.V3.Gzip_Fields.windowBits' @:: Lens' Gzip Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Compression.Gzip.Decompressor.V3.Gzip_Fields.maybe'windowBits' @:: Lens' Gzip (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Compression.Gzip.Decompressor.V3.Gzip_Fields.chunkSize' @:: Lens' Gzip Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Compression.Gzip.Decompressor.V3.Gzip_Fields.maybe'chunkSize' @:: Lens' Gzip (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data Gzip
  = Gzip'_constructor {_Gzip'windowBits :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                       _Gzip'chunkSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                       _Gzip'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Gzip where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
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
        "envoy.extensions.compression.gzip.decompressor.v3.Gzip"
  packedMessageDescriptor _
    = "\n\
      \\EOTGzip\DC2H\n\
      \\vwindow_bits\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \windowBitsB\t\250B\ACK*\EOT\CAN\SI(\t\DC2I\n\
      \\n\
      \chunk_size\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\tchunkSizeB\f\250B\t*\a\CAN\128\128\EOT(\128 "
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
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
          [(Data.ProtoLens.Tag 1, windowBits__field_descriptor),
           (Data.ProtoLens.Tag 2, chunkSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Gzip'_unknownFields
        (\ x__ y__ -> x__ {_Gzip'_unknownFields = y__})
  defMessage
    = Gzip'_constructor
        {_Gzip'windowBits = Prelude.Nothing,
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
                                       "window_bits"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"windowBits") y x)
                        18
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
                    (Data.ProtoLens.Field.field @"maybe'windowBits") _x
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
                       (Data.ProtoLens.Field.field @"maybe'chunkSize") _x
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
instance Control.DeepSeq.NFData Gzip where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Gzip'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Gzip'windowBits x__)
                (Control.DeepSeq.deepseq (_Gzip'chunkSize x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \<envoy/extensions/compression/gzip/decompressor/v3/gzip.proto\DC21envoy.extensions.compression.gzip.decompressor.v3\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\155\SOH\n\
    \\EOTGzip\DC2H\n\
    \\vwindow_bits\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
    \windowBitsB\t\250B\ACK*\EOT\CAN\SI(\t\DC2I\n\
    \\n\
    \chunk_size\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\tchunkSizeB\f\250B\t*\a\CAN\128\128\EOT(\128 BV\n\
    \?io.envoyproxy.envoy.extensions.compression.gzip.decompressor.v3B\tGzipProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\144\b\n\
    \\ACK\DC2\EOT\NUL\NUL\FS\SOH\n\
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
    \e\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\FS\SOH2Y [#protodoc-title: Gzip Decompressor]\n\
    \ [#extension: envoy.compression.gzip.decompressor]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\f\n\
    \\222\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ETB\STX[\SUB\208\ETX Value from 9 to 15 that represents the base two logarithmic of the decompressor's window size.\n\
    \ The decompression window size needs to be equal or larger than the compression window size.\n\
    \ The default window size is 15.\n\
    \ This is so that the decompressor can decompress a response compressed by a compressor with any compression window size.\n\
    \ For more details about this parameter, please refer to `zlib manual <https://www.zlib.net/manual.html>`_ > inflateInit2.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ETB\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ETB\RS)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ETB,-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ETB.Z\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ENQ\DC2\ETX\ETB/Y\n\
    \\146\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ESC\STX`\SUB\132\SOH Value for zlib's decompressor output buffer. If not set, defaults to 4096.\n\
    \ See https://www.zlib.net/manual.html for more details.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\ESC\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ESC\RS(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ESC+,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\ESC-_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\ENQ\DC2\ETX\ESC.^b\ACKproto3"