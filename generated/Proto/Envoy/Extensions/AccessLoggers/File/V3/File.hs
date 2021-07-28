{- This file was auto-generated from envoy/extensions/access_loggers/file/v3/file.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.AccessLoggers.File.V3.File (
        FileAccessLog(), FileAccessLog'AccessLogFormat(..),
        _FileAccessLog'Format, _FileAccessLog'JsonFormat,
        _FileAccessLog'TypedJsonFormat, _FileAccessLog'LogFormat
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
import qualified Proto.Envoy.Annotations.Deprecation
import qualified Proto.Envoy.Config.Core.V3.SubstitutionFormatString
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.AccessLoggers.File.V3.File_Fields.path' @:: Lens' FileAccessLog Data.Text.Text@
         * 'Proto.Envoy.Extensions.AccessLoggers.File.V3.File_Fields.maybe'accessLogFormat' @:: Lens' FileAccessLog (Prelude.Maybe FileAccessLog'AccessLogFormat)@
         * 'Proto.Envoy.Extensions.AccessLoggers.File.V3.File_Fields.maybe'format' @:: Lens' FileAccessLog (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.AccessLoggers.File.V3.File_Fields.format' @:: Lens' FileAccessLog Data.Text.Text@
         * 'Proto.Envoy.Extensions.AccessLoggers.File.V3.File_Fields.maybe'jsonFormat' @:: Lens' FileAccessLog (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Extensions.AccessLoggers.File.V3.File_Fields.jsonFormat' @:: Lens' FileAccessLog Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Extensions.AccessLoggers.File.V3.File_Fields.maybe'typedJsonFormat' @:: Lens' FileAccessLog (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Extensions.AccessLoggers.File.V3.File_Fields.typedJsonFormat' @:: Lens' FileAccessLog Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Extensions.AccessLoggers.File.V3.File_Fields.maybe'logFormat' @:: Lens' FileAccessLog (Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString)@
         * 'Proto.Envoy.Extensions.AccessLoggers.File.V3.File_Fields.logFormat' @:: Lens' FileAccessLog Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString@ -}
data FileAccessLog
  = FileAccessLog'_constructor {_FileAccessLog'path :: !Data.Text.Text,
                                _FileAccessLog'accessLogFormat :: !(Prelude.Maybe FileAccessLog'AccessLogFormat),
                                _FileAccessLog'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FileAccessLog where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data FileAccessLog'AccessLogFormat
  = FileAccessLog'Format !Data.Text.Text |
    FileAccessLog'JsonFormat !Proto.Google.Protobuf.Struct.Struct |
    FileAccessLog'TypedJsonFormat !Proto.Google.Protobuf.Struct.Struct |
    FileAccessLog'LogFormat !Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField FileAccessLog "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileAccessLog'path (\ x__ y__ -> x__ {_FileAccessLog'path = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileAccessLog "maybe'accessLogFormat" (Prelude.Maybe FileAccessLog'AccessLogFormat) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_FileAccessLog'accessLogFormat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FileAccessLog "maybe'format" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_FileAccessLog'accessLogFormat = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FileAccessLog'Format x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FileAccessLog'Format y__))
instance Data.ProtoLens.Field.HasField FileAccessLog "format" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_FileAccessLog'accessLogFormat = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FileAccessLog'Format x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FileAccessLog'Format y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField FileAccessLog "maybe'jsonFormat" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_FileAccessLog'accessLogFormat = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FileAccessLog'JsonFormat x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FileAccessLog'JsonFormat y__))
instance Data.ProtoLens.Field.HasField FileAccessLog "jsonFormat" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_FileAccessLog'accessLogFormat = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FileAccessLog'JsonFormat x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FileAccessLog'JsonFormat y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FileAccessLog "maybe'typedJsonFormat" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_FileAccessLog'accessLogFormat = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FileAccessLog'TypedJsonFormat x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FileAccessLog'TypedJsonFormat y__))
instance Data.ProtoLens.Field.HasField FileAccessLog "typedJsonFormat" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_FileAccessLog'accessLogFormat = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FileAccessLog'TypedJsonFormat x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FileAccessLog'TypedJsonFormat y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField FileAccessLog "maybe'logFormat" (Prelude.Maybe Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_FileAccessLog'accessLogFormat = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (FileAccessLog'LogFormat x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap FileAccessLog'LogFormat y__))
instance Data.ProtoLens.Field.HasField FileAccessLog "logFormat" Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FileAccessLog'accessLogFormat
           (\ x__ y__ -> x__ {_FileAccessLog'accessLogFormat = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (FileAccessLog'LogFormat x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap FileAccessLog'LogFormat y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message FileAccessLog where
  messageName _
    = Data.Text.pack
        "envoy.extensions.access_loggers.file.v3.FileAccessLog"
  packedMessageDescriptor _
    = "\n\
      \\rFileAccessLog\DC2\ESC\n\
      \\EOTpath\CAN\SOH \SOH(\tR\EOTpathB\a\250B\EOTr\STX\DLE\SOH\DC2%\n\
      \\ACKformat\CAN\STX \SOH(\tH\NULR\ACKformatB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2G\n\
      \\vjson_format\CAN\ETX \SOH(\v2\ETB.google.protobuf.StructH\NULR\n\
      \jsonFormatB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2R\n\
      \\DC1typed_json_format\CAN\EOT \SOH(\v2\ETB.google.protobuf.StructH\NULR\SItypedJsonFormatB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2Y\n\
      \\n\
      \log_format\CAN\ENQ \SOH(\v2..envoy.config.core.v3.SubstitutionFormatStringH\NULR\tlogFormatB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\DC3\n\
      \\DC1access_log_format:.\154\197\136\RS)\n\
      \'envoy.config.accesslog.v2.FileAccessLog"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"path")) ::
              Data.ProtoLens.FieldDescriptor FileAccessLog
        format__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "format"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'format")) ::
              Data.ProtoLens.FieldDescriptor FileAccessLog
        jsonFormat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "json_format"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jsonFormat")) ::
              Data.ProtoLens.FieldDescriptor FileAccessLog
        typedJsonFormat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_json_format"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedJsonFormat")) ::
              Data.ProtoLens.FieldDescriptor FileAccessLog
        logFormat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_format"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'logFormat")) ::
              Data.ProtoLens.FieldDescriptor FileAccessLog
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, format__field_descriptor),
           (Data.ProtoLens.Tag 3, jsonFormat__field_descriptor),
           (Data.ProtoLens.Tag 4, typedJsonFormat__field_descriptor),
           (Data.ProtoLens.Tag 5, logFormat__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FileAccessLog'_unknownFields
        (\ x__ y__ -> x__ {_FileAccessLog'_unknownFields = y__})
  defMessage
    = FileAccessLog'_constructor
        {_FileAccessLog'path = Data.ProtoLens.fieldDefault,
         _FileAccessLog'accessLogFormat = Prelude.Nothing,
         _FileAccessLog'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FileAccessLog -> Data.ProtoLens.Encoding.Bytes.Parser FileAccessLog
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
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
                                       "format"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"format") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "json_format"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"jsonFormat") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_json_format"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"typedJsonFormat") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "log_format"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"logFormat") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FileAccessLog"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"path") _x
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
                       (Data.ProtoLens.Field.field @"maybe'accessLogFormat") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (FileAccessLog'Format v))
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
                   (Prelude.Just (FileAccessLog'JsonFormat v))
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
                   (Prelude.Just (FileAccessLog'TypedJsonFormat v))
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
                   (Prelude.Just (FileAccessLog'LogFormat v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
instance Control.DeepSeq.NFData FileAccessLog where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FileAccessLog'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FileAccessLog'path x__)
                (Control.DeepSeq.deepseq (_FileAccessLog'accessLogFormat x__) ()))
instance Control.DeepSeq.NFData FileAccessLog'AccessLogFormat where
  rnf (FileAccessLog'Format x__) = Control.DeepSeq.rnf x__
  rnf (FileAccessLog'JsonFormat x__) = Control.DeepSeq.rnf x__
  rnf (FileAccessLog'TypedJsonFormat x__) = Control.DeepSeq.rnf x__
  rnf (FileAccessLog'LogFormat x__) = Control.DeepSeq.rnf x__
_FileAccessLog'Format ::
  Data.ProtoLens.Prism.Prism' FileAccessLog'AccessLogFormat Data.Text.Text
_FileAccessLog'Format
  = Data.ProtoLens.Prism.prism'
      FileAccessLog'Format
      (\ p__
         -> case p__ of
              (FileAccessLog'Format p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FileAccessLog'JsonFormat ::
  Data.ProtoLens.Prism.Prism' FileAccessLog'AccessLogFormat Proto.Google.Protobuf.Struct.Struct
_FileAccessLog'JsonFormat
  = Data.ProtoLens.Prism.prism'
      FileAccessLog'JsonFormat
      (\ p__
         -> case p__ of
              (FileAccessLog'JsonFormat p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FileAccessLog'TypedJsonFormat ::
  Data.ProtoLens.Prism.Prism' FileAccessLog'AccessLogFormat Proto.Google.Protobuf.Struct.Struct
_FileAccessLog'TypedJsonFormat
  = Data.ProtoLens.Prism.prism'
      FileAccessLog'TypedJsonFormat
      (\ p__
         -> case p__ of
              (FileAccessLog'TypedJsonFormat p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_FileAccessLog'LogFormat ::
  Data.ProtoLens.Prism.Prism' FileAccessLog'AccessLogFormat Proto.Envoy.Config.Core.V3.SubstitutionFormatString.SubstitutionFormatString
_FileAccessLog'LogFormat
  = Data.ProtoLens.Prism.prism'
      FileAccessLog'LogFormat
      (\ p__
         -> case p__ of
              (FileAccessLog'LogFormat p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \2envoy/extensions/access_loggers/file/v3/file.proto\DC2'envoy.extensions.access_loggers.file.v3\SUB5envoy/config/core/v3/substitution_format_string.proto\SUB\FSgoogle/protobuf/struct.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\144\ETX\n\
    \\rFileAccessLog\DC2\ESC\n\
    \\EOTpath\CAN\SOH \SOH(\tR\EOTpathB\a\250B\EOTr\STX\DLE\SOH\DC2%\n\
    \\ACKformat\CAN\STX \SOH(\tH\NULR\ACKformatB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2G\n\
    \\vjson_format\CAN\ETX \SOH(\v2\ETB.google.protobuf.StructH\NULR\n\
    \jsonFormatB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2R\n\
    \\DC1typed_json_format\CAN\EOT \SOH(\v2\ETB.google.protobuf.StructH\NULR\SItypedJsonFormatB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2Y\n\
    \\n\
    \log_format\CAN\ENQ \SOH(\v2..envoy.config.core.v3.SubstitutionFormatStringH\NULR\tlogFormatB\b\250B\ENQ\138\SOH\STX\DLE\SOHB\DC3\n\
    \\DC1access_log_format:.\154\197\136\RS)\n\
    \'envoy.config.accesslog.v2.FileAccessLogBL\n\
    \5io.envoyproxy.envoy.extensions.access_loggers.file.v3B\tFileProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\164\DC2\n\
    \\ACK\DC2\EOT\NUL\NUL=\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL0\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL?\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL&\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL-\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULN\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NULN\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\191\STX\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NUL=\SOH\SUB\227\SOH Custom configuration for an :ref:`AccessLog <envoy_v3_api_msg_config.accesslog.v3.AccessLog>`\n\
    \ that writes log entries directly to a file. Configures the built-in *envoy.access_loggers.file*\n\
    \ AccessLog.\n\
    \ [#next-free-field: 6]\n\
    \2M [#protodoc-title: File access log]\n\
    \ [#extension: envoy.access_loggers.file]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\NAK\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SUB\STX\ESC0\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SUB\STX\ESC0\n\
    \O\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\RS\STX;\SUBB A path to a local file to which to write the access log entries.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\RS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\RS\t\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\RS\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\RS\DC2:\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\RS\DC39\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT \STX<\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX \b\EM\n\
    \\240\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX&\EOTc\SUB\226\STX Access log :ref:`format string<config_access_log_format_strings>`.\n\
    \ Envoy supports :ref:`custom access log formats <config_access_log_format>` as well as a\n\
    \ :ref:`default format <config_access_log_default_format>`.\n\
    \ This field is deprecated.\n\
    \ Please use :ref:`log_format <envoy_v3_api_field_extensions.access_loggers.file.v3.FileAccessLog.log_format>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX&\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX&\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX&\SYNb\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\SOH\b\ETX\DC2\ETX&\ETB(\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\242\232\128K\DC2\ETX&*a\n\
    \\139\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT,\EOT-U\SUB\252\SOH Access log :ref:`format dictionary<config_access_log_format_dictionaries>`. All values\n\
    \ are rendered as strings.\n\
    \ This field is deprecated.\n\
    \ Please use :ref:`log_format <envoy_v3_api_field_extensions.access_loggers.file.v3.FileAccessLog.log_format>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX,\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX,\ESC&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX,)*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX-\bT\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\STX\b\ETX\DC2\ETX-\t\SUB\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\242\232\128K\DC2\ETX-\FSS\n\
    \\221\ETX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT5\EOT6U\SUB\206\ETX Access log :ref:`format dictionary<config_access_log_format_dictionaries>`. Values are\n\
    \ rendered as strings, numbers, or boolean values as appropriate. Nested JSON objects may\n\
    \ be produced by some command operators (e.g.FILTER_STATE or DYNAMIC_METADATA). See the\n\
    \ documentation for a specific command operator for details.\n\
    \ This field is deprecated.\n\
    \ Please use :ref:`log_format <envoy_v3_api_field_extensions.access_loggers.file.v3.FileAccessLog.log_format>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX5\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX5\ESC,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX5/0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX6\bT\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\ETX\b\ETX\DC2\ETX6\t\SUB\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ETX\b\242\232\128K\DC2\ETX6\FSS\n\
    \\147\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT:\EOT;6\SUB\132\SOH Configuration to form access log data and format.\n\
    \ If not specified, use :ref:`default format <config_access_log_default_format>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX:\EOT+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX:,6\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX:9:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX;\b5\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\DC1\DC2\ETX;\t4b\ACKproto3"