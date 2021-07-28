{- This file was auto-generated from envoy/extensions/compression/brotli/decompressor/v3/brotli.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Compression.Brotli.Decompressor.V3.Brotli (
        Brotli()
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
     
         * 'Proto.Envoy.Extensions.Compression.Brotli.Decompressor.V3.Brotli_Fields.disableRingBufferReallocation' @:: Lens' Brotli Prelude.Bool@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Decompressor.V3.Brotli_Fields.chunkSize' @:: Lens' Brotli Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Compression.Brotli.Decompressor.V3.Brotli_Fields.maybe'chunkSize' @:: Lens' Brotli (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data Brotli
  = Brotli'_constructor {_Brotli'disableRingBufferReallocation :: !Prelude.Bool,
                         _Brotli'chunkSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                         _Brotli'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Brotli where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Brotli "disableRingBufferReallocation" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Brotli'disableRingBufferReallocation
           (\ x__ y__ -> x__ {_Brotli'disableRingBufferReallocation = y__}))
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
instance Data.ProtoLens.Message Brotli where
  messageName _
    = Data.Text.pack
        "envoy.extensions.compression.brotli.decompressor.v3.Brotli"
  packedMessageDescriptor _
    = "\n\
      \\ACKBrotli\DC2G\n\
      \ disable_ring_buffer_reallocation\CAN\SOH \SOH(\bR\GSdisableRingBufferReallocation\DC2I\n\
      \\n\
      \chunk_size\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\tchunkSizeB\f\250B\t*\a\CAN\128\128\EOT(\128 "
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        disableRingBufferReallocation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disable_ring_buffer_reallocation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disableRingBufferReallocation")) ::
              Data.ProtoLens.FieldDescriptor Brotli
        chunkSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunkSize")) ::
              Data.ProtoLens.FieldDescriptor Brotli
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            disableRingBufferReallocation__field_descriptor),
           (Data.ProtoLens.Tag 2, chunkSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Brotli'_unknownFields
        (\ x__ y__ -> x__ {_Brotli'_unknownFields = y__})
  defMessage
    = Brotli'_constructor
        {_Brotli'disableRingBufferReallocation = Data.ProtoLens.fieldDefault,
         _Brotli'chunkSize = Prelude.Nothing, _Brotli'_unknownFields = []}
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disable_ring_buffer_reallocation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disableRingBufferReallocation")
                                     y
                                     x)
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
          (do loop Data.ProtoLens.defMessage) "Brotli"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"disableRingBufferReallocation") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt
                         (\ b -> if b then 1 else 0)
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
instance Control.DeepSeq.NFData Brotli where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Brotli'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Brotli'disableRingBufferReallocation x__)
                (Control.DeepSeq.deepseq (_Brotli'chunkSize x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \@envoy/extensions/compression/brotli/decompressor/v3/brotli.proto\DC23envoy.extensions.compression.brotli.decompressor.v3\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\156\SOH\n\
    \\ACKBrotli\DC2G\n\
    \ disable_ring_buffer_reallocation\CAN\SOH \SOH(\bR\GSdisableRingBufferReallocation\DC2I\n\
    \\n\
    \chunk_size\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\tchunkSizeB\f\250B\t*\a\CAN\128\128\EOT(\128 BZ\n\
    \Aio.envoyproxy.envoy.extensions.compression.brotli.decompressor.v3B\vBrotliProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\129\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\CAN\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL<\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULZ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULZ\n\
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
    \i\n\
    \\STX\EOT\NUL\DC2\EOT\DC1\NUL\CAN\SOH2] [#protodoc-title: Brotli Decompressor]\n\
    \ [#extension: envoy.compression.brotli.decompressor]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC1\b\SO\n\
    \\164\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DC4\STX,\SUB\150\SOH If true, disables \"canny\" ring buffer allocation strategy.\n\
    \ Ring buffer is allocated according to window size, despite the real size of the content.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\DC4\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DC4\a'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DC4*+\n\
    \Y\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ETB\STX`\SUBL Value for decompressor's next output buffer. If not set, defaults to 4096.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\ETB\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ETB\RS(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ETB+,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\ETB-_\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\ENQ\DC2\ETX\ETB.^b\ACKproto3"