{- This file was auto-generated from envoy/extensions/filters/http/buffer/v3/buffer.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Buffer.V3.Buffer (
        Buffer(), BufferPerRoute(), BufferPerRoute'Override(..),
        _BufferPerRoute'Disabled, _BufferPerRoute'Buffer
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
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Buffer.V3.Buffer_Fields.maxRequestBytes' @:: Lens' Buffer Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Http.Buffer.V3.Buffer_Fields.maybe'maxRequestBytes' @:: Lens' Buffer (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data Buffer
  = Buffer'_constructor {_Buffer'maxRequestBytes :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                         _Buffer'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Buffer where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Buffer "maxRequestBytes" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Buffer'maxRequestBytes
           (\ x__ y__ -> x__ {_Buffer'maxRequestBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Buffer "maybe'maxRequestBytes" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Buffer'maxRequestBytes
           (\ x__ y__ -> x__ {_Buffer'maxRequestBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message Buffer where
  messageName _
    = Data.Text.pack "envoy.extensions.filters.http.buffer.v3.Buffer"
  packedMessageDescriptor _
    = "\n\
      \\ACKBuffer\DC2Y\n\
      \\DC1max_request_bytes\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SImaxRequestBytesB\SI\250B\EOT*\STX \NUL\250B\ENQ\138\SOH\STX\DLE\SOH:0\154\197\136\RS+\n\
      \)envoy.config.filter.http.buffer.v2.BufferJ\EOT\b\STX\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxRequestBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_request_bytes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxRequestBytes")) ::
              Data.ProtoLens.FieldDescriptor Buffer
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxRequestBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Buffer'_unknownFields
        (\ x__ y__ -> x__ {_Buffer'_unknownFields = y__})
  defMessage
    = Buffer'_constructor
        {_Buffer'maxRequestBytes = Prelude.Nothing,
         _Buffer'_unknownFields = []}
  parseMessage
    = let
        loop :: Buffer -> Data.ProtoLens.Encoding.Bytes.Parser Buffer
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
                                       "max_request_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxRequestBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Buffer"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxRequestBytes") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Buffer where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Buffer'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Buffer'maxRequestBytes x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Buffer.V3.Buffer_Fields.maybe'override' @:: Lens' BufferPerRoute (Prelude.Maybe BufferPerRoute'Override)@
         * 'Proto.Envoy.Extensions.Filters.Http.Buffer.V3.Buffer_Fields.maybe'disabled' @:: Lens' BufferPerRoute (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Envoy.Extensions.Filters.Http.Buffer.V3.Buffer_Fields.disabled' @:: Lens' BufferPerRoute Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Buffer.V3.Buffer_Fields.maybe'buffer' @:: Lens' BufferPerRoute (Prelude.Maybe Buffer)@
         * 'Proto.Envoy.Extensions.Filters.Http.Buffer.V3.Buffer_Fields.buffer' @:: Lens' BufferPerRoute Buffer@ -}
data BufferPerRoute
  = BufferPerRoute'_constructor {_BufferPerRoute'override :: !(Prelude.Maybe BufferPerRoute'Override),
                                 _BufferPerRoute'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BufferPerRoute where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data BufferPerRoute'Override
  = BufferPerRoute'Disabled !Prelude.Bool |
    BufferPerRoute'Buffer !Buffer
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField BufferPerRoute "maybe'override" (Prelude.Maybe BufferPerRoute'Override) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BufferPerRoute'override
           (\ x__ y__ -> x__ {_BufferPerRoute'override = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BufferPerRoute "maybe'disabled" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BufferPerRoute'override
           (\ x__ y__ -> x__ {_BufferPerRoute'override = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BufferPerRoute'Disabled x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BufferPerRoute'Disabled y__))
instance Data.ProtoLens.Field.HasField BufferPerRoute "disabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BufferPerRoute'override
           (\ x__ y__ -> x__ {_BufferPerRoute'override = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BufferPerRoute'Disabled x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BufferPerRoute'Disabled y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField BufferPerRoute "maybe'buffer" (Prelude.Maybe Buffer) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BufferPerRoute'override
           (\ x__ y__ -> x__ {_BufferPerRoute'override = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (BufferPerRoute'Buffer x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap BufferPerRoute'Buffer y__))
instance Data.ProtoLens.Field.HasField BufferPerRoute "buffer" Buffer where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BufferPerRoute'override
           (\ x__ y__ -> x__ {_BufferPerRoute'override = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (BufferPerRoute'Buffer x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap BufferPerRoute'Buffer y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message BufferPerRoute where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.buffer.v3.BufferPerRoute"
  packedMessageDescriptor _
    = "\n\
      \\SOBufferPerRoute\DC2%\n\
      \\bdisabled\CAN\SOH \SOH(\bH\NULR\bdisabledB\a\250B\EOTj\STX\b\SOH\DC2S\n\
      \\ACKbuffer\CAN\STX \SOH(\v2/.envoy.extensions.filters.http.buffer.v3.BufferH\NULR\ACKbufferB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\SI\n\
      \\boverride\DC2\ETX\248B\SOH:8\154\197\136\RS3\n\
      \1envoy.config.filter.http.buffer.v2.BufferPerRoute"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        disabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'disabled")) ::
              Data.ProtoLens.FieldDescriptor BufferPerRoute
        buffer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Buffer)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'buffer")) ::
              Data.ProtoLens.FieldDescriptor BufferPerRoute
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, disabled__field_descriptor),
           (Data.ProtoLens.Tag 2, buffer__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BufferPerRoute'_unknownFields
        (\ x__ y__ -> x__ {_BufferPerRoute'_unknownFields = y__})
  defMessage
    = BufferPerRoute'_constructor
        {_BufferPerRoute'override = Prelude.Nothing,
         _BufferPerRoute'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BufferPerRoute
          -> Data.ProtoLens.Encoding.Bytes.Parser BufferPerRoute
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
                                       "disabled"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"disabled") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "buffer"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"buffer") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BufferPerRoute"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'override") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (BufferPerRoute'Disabled v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt
                          (\ b -> if b then 1 else 0)
                          v)
                (Prelude.Just (BufferPerRoute'Buffer v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
instance Control.DeepSeq.NFData BufferPerRoute where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BufferPerRoute'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BufferPerRoute'override x__) ())
instance Control.DeepSeq.NFData BufferPerRoute'Override where
  rnf (BufferPerRoute'Disabled x__) = Control.DeepSeq.rnf x__
  rnf (BufferPerRoute'Buffer x__) = Control.DeepSeq.rnf x__
_BufferPerRoute'Disabled ::
  Data.ProtoLens.Prism.Prism' BufferPerRoute'Override Prelude.Bool
_BufferPerRoute'Disabled
  = Data.ProtoLens.Prism.prism'
      BufferPerRoute'Disabled
      (\ p__
         -> case p__ of
              (BufferPerRoute'Disabled p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_BufferPerRoute'Buffer ::
  Data.ProtoLens.Prism.Prism' BufferPerRoute'Override Buffer
_BufferPerRoute'Buffer
  = Data.ProtoLens.Prism.prism'
      BufferPerRoute'Buffer
      (\ p__
         -> case p__ of
              (BufferPerRoute'Buffer p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \4envoy/extensions/filters/http/buffer/v3/buffer.proto\DC2'envoy.extensions.filters.http.buffer.v3\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\155\SOH\n\
    \\ACKBuffer\DC2Y\n\
    \\DC1max_request_bytes\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SImaxRequestBytesB\SI\250B\EOT*\STX \NUL\250B\ENQ\138\SOH\STX\DLE\SOH:0\154\197\136\RS+\n\
    \)envoy.config.filter.http.buffer.v2.BufferJ\EOT\b\STX\DLE\ETX\"\215\SOH\n\
    \\SOBufferPerRoute\DC2%\n\
    \\bdisabled\CAN\SOH \SOH(\bH\NULR\bdisabledB\a\250B\EOTj\STX\b\SOH\DC2S\n\
    \\ACKbuffer\CAN\STX \SOH(\v2/.envoy.extensions.filters.http.buffer.v3.BufferH\NULR\ACKbufferB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\SI\n\
    \\boverride\DC2\ETX\248B\SOH:8\154\197\136\RS3\n\
    \1envoy.config.filter.http.buffer.v2.BufferPerRouteBN\n\
    \5io.envoyproxy.envoy.extensions.filters.http.buffer.v3B\vBufferProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\175\b\n\
    \\ACK\DC2\EOT\NUL\NUL,\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL0\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NULN\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NULN\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\149\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\GS\SOH2\136\SOH [#protodoc-title: Buffer]\n\
    \ Buffer :ref:`configuration overview <config_http_filters_buffer>`.\n\
    \ [#extension: envoy.filters.http.buffer]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\SO\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAK2\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAK2\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX\ETB\STX\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX\ETB\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX\ETB\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX\ETB\v\f\n\
    \\147\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\ESC\STX\FSW\SUB\132\SOH The maximum request size that the filter will buffer before the connection\n\
    \ manager will stop buffering and return a 413 response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ESC\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\RS/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC23\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\FS\ACKV\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\ENQ\DC2\ETX\FS\a(\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\FS*U\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\US\NUL,\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\US\b\SYN\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT \STX!:\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT \STX!:\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT#\STX+\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX#\b\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\STX\DC2\ETX$\EOT&\n\
    \\SO\n\
    \\a\EOT\SOH\b\NUL\STX\175\b\DC2\ETX$\EOT&\n\
    \L\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX'\EOT>\SUB? Disable the buffer filter for this particular vhost or route.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX'\EOT\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX'\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX'\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX'\SYN=\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\r\DC2\ETX'\ETB<\n\
    \T\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX*\EOTD\SUBG Override the global configuration of the filter with this new config.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX*\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX*\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX*\SYNC\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\DC1\DC2\ETX*\ETBBb\ACKproto3"