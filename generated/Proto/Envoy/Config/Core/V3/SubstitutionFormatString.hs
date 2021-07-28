{- This file was auto-generated from envoy/config/core/v3/substitution_format_string.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.SubstitutionFormatString (
        SubstitutionFormatString(), SubstitutionFormatString'Format(..),
        _SubstitutionFormatString'TextFormat,
        _SubstitutionFormatString'JsonFormat,
        _SubstitutionFormatString'TextFormatSource
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.omitEmptyValues' @:: Lens' SubstitutionFormatString Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.contentType' @:: Lens' SubstitutionFormatString Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.formatters' @:: Lens' SubstitutionFormatString [Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig]@
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.vec'formatters' @:: Lens' SubstitutionFormatString (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.maybe'format' @:: Lens' SubstitutionFormatString (Prelude.Maybe SubstitutionFormatString'Format)@
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.maybe'textFormat' @:: Lens' SubstitutionFormatString (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.textFormat' @:: Lens' SubstitutionFormatString Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.maybe'jsonFormat' @:: Lens' SubstitutionFormatString (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.jsonFormat' @:: Lens' SubstitutionFormatString Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.maybe'textFormatSource' @:: Lens' SubstitutionFormatString (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Config.Core.V3.SubstitutionFormatString_Fields.textFormatSource' @:: Lens' SubstitutionFormatString Proto.Envoy.Config.Core.V3.Base.DataSource@ -}
data SubstitutionFormatString
  = SubstitutionFormatString'_constructor {_SubstitutionFormatString'omitEmptyValues :: !Prelude.Bool,
                                           _SubstitutionFormatString'contentType :: !Data.Text.Text,
                                           _SubstitutionFormatString'formatters :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                           _SubstitutionFormatString'format :: !(Prelude.Maybe SubstitutionFormatString'Format),
                                           _SubstitutionFormatString'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SubstitutionFormatString where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data SubstitutionFormatString'Format
  = SubstitutionFormatString'TextFormat !Data.Text.Text |
    SubstitutionFormatString'JsonFormat !Proto.Google.Protobuf.Struct.Struct |
    SubstitutionFormatString'TextFormatSource !Proto.Envoy.Config.Core.V3.Base.DataSource
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "omitEmptyValues" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'omitEmptyValues
           (\ x__ y__
              -> x__ {_SubstitutionFormatString'omitEmptyValues = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "contentType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'contentType
           (\ x__ y__ -> x__ {_SubstitutionFormatString'contentType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "formatters" [Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'formatters
           (\ x__ y__ -> x__ {_SubstitutionFormatString'formatters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "vec'formatters" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'formatters
           (\ x__ y__ -> x__ {_SubstitutionFormatString'formatters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "maybe'format" (Prelude.Maybe SubstitutionFormatString'Format) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'format
           (\ x__ y__ -> x__ {_SubstitutionFormatString'format = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "maybe'textFormat" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'format
           (\ x__ y__ -> x__ {_SubstitutionFormatString'format = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SubstitutionFormatString'TextFormat x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SubstitutionFormatString'TextFormat y__))
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "textFormat" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'format
           (\ x__ y__ -> x__ {_SubstitutionFormatString'format = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SubstitutionFormatString'TextFormat x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SubstitutionFormatString'TextFormat y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "maybe'jsonFormat" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'format
           (\ x__ y__ -> x__ {_SubstitutionFormatString'format = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SubstitutionFormatString'JsonFormat x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap SubstitutionFormatString'JsonFormat y__))
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "jsonFormat" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'format
           (\ x__ y__ -> x__ {_SubstitutionFormatString'format = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SubstitutionFormatString'JsonFormat x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap SubstitutionFormatString'JsonFormat y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "maybe'textFormatSource" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'format
           (\ x__ y__ -> x__ {_SubstitutionFormatString'format = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SubstitutionFormatString'TextFormatSource x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap SubstitutionFormatString'TextFormatSource y__))
instance Data.ProtoLens.Field.HasField SubstitutionFormatString "textFormatSource" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SubstitutionFormatString'format
           (\ x__ y__ -> x__ {_SubstitutionFormatString'format = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SubstitutionFormatString'TextFormatSource x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap SubstitutionFormatString'TextFormatSource y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message SubstitutionFormatString where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.SubstitutionFormatString"
  packedMessageDescriptor _
    = "\n\
      \\CANSubstitutionFormatString\DC2.\n\
      \\vtext_format\CAN\SOH \SOH(\tH\NULR\n\
      \textFormatB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2D\n\
      \\vjson_format\CAN\STX \SOH(\v2\ETB.google.protobuf.StructH\NULR\n\
      \jsonFormatB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2P\n\
      \\DC2text_format_source\CAN\ENQ \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\DLEtextFormatSource\DC2*\n\
      \\DC1omit_empty_values\CAN\ETX \SOH(\bR\SIomitEmptyValues\DC2!\n\
      \\fcontent_type\CAN\EOT \SOH(\tR\vcontentType\DC2J\n\
      \\n\
      \formatters\CAN\ACK \ETX(\v2*.envoy.config.core.v3.TypedExtensionConfigR\n\
      \formattersB\r\n\
      \\ACKformat\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        omitEmptyValues__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "omit_empty_values"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"omitEmptyValues")) ::
              Data.ProtoLens.FieldDescriptor SubstitutionFormatString
        contentType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"contentType")) ::
              Data.ProtoLens.FieldDescriptor SubstitutionFormatString
        formatters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "formatters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"formatters")) ::
              Data.ProtoLens.FieldDescriptor SubstitutionFormatString
        textFormat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text_format"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'textFormat")) ::
              Data.ProtoLens.FieldDescriptor SubstitutionFormatString
        jsonFormat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "json_format"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'jsonFormat")) ::
              Data.ProtoLens.FieldDescriptor SubstitutionFormatString
        textFormatSource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "text_format_source"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'textFormatSource")) ::
              Data.ProtoLens.FieldDescriptor SubstitutionFormatString
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, omitEmptyValues__field_descriptor),
           (Data.ProtoLens.Tag 4, contentType__field_descriptor),
           (Data.ProtoLens.Tag 6, formatters__field_descriptor),
           (Data.ProtoLens.Tag 1, textFormat__field_descriptor),
           (Data.ProtoLens.Tag 2, jsonFormat__field_descriptor),
           (Data.ProtoLens.Tag 5, textFormatSource__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SubstitutionFormatString'_unknownFields
        (\ x__ y__ -> x__ {_SubstitutionFormatString'_unknownFields = y__})
  defMessage
    = SubstitutionFormatString'_constructor
        {_SubstitutionFormatString'omitEmptyValues = Data.ProtoLens.fieldDefault,
         _SubstitutionFormatString'contentType = Data.ProtoLens.fieldDefault,
         _SubstitutionFormatString'formatters = Data.Vector.Generic.empty,
         _SubstitutionFormatString'format = Prelude.Nothing,
         _SubstitutionFormatString'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SubstitutionFormatString
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
             -> Data.ProtoLens.Encoding.Bytes.Parser SubstitutionFormatString
        loop x mutable'formatters
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'formatters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'formatters)
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
                              (Data.ProtoLens.Field.field @"vec'formatters")
                              frozen'formatters
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "omit_empty_values"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"omitEmptyValues") y x)
                                  mutable'formatters
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "content_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"contentType") y x)
                                  mutable'formatters
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "formatters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'formatters y)
                                loop x v
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
                                       "text_format"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"textFormat") y x)
                                  mutable'formatters
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "json_format"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"jsonFormat") y x)
                                  mutable'formatters
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "text_format_source"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"textFormatSource") y x)
                                  mutable'formatters
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'formatters
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'formatters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'formatters)
          "SubstitutionFormatString"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"omitEmptyValues") _x
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
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"contentType") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'formatters") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'format") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (SubstitutionFormatString'TextFormat v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.Text.Encoding.encodeUtf8
                                   v)
                         (Prelude.Just (SubstitutionFormatString'JsonFormat v))
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
                         (Prelude.Just (SubstitutionFormatString'TextFormatSource v))
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
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData SubstitutionFormatString where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SubstitutionFormatString'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SubstitutionFormatString'omitEmptyValues x__)
                (Control.DeepSeq.deepseq
                   (_SubstitutionFormatString'contentType x__)
                   (Control.DeepSeq.deepseq
                      (_SubstitutionFormatString'formatters x__)
                      (Control.DeepSeq.deepseq
                         (_SubstitutionFormatString'format x__) ()))))
instance Control.DeepSeq.NFData SubstitutionFormatString'Format where
  rnf (SubstitutionFormatString'TextFormat x__)
    = Control.DeepSeq.rnf x__
  rnf (SubstitutionFormatString'JsonFormat x__)
    = Control.DeepSeq.rnf x__
  rnf (SubstitutionFormatString'TextFormatSource x__)
    = Control.DeepSeq.rnf x__
_SubstitutionFormatString'TextFormat ::
  Data.ProtoLens.Prism.Prism' SubstitutionFormatString'Format Data.Text.Text
_SubstitutionFormatString'TextFormat
  = Data.ProtoLens.Prism.prism'
      SubstitutionFormatString'TextFormat
      (\ p__
         -> case p__ of
              (SubstitutionFormatString'TextFormat p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SubstitutionFormatString'JsonFormat ::
  Data.ProtoLens.Prism.Prism' SubstitutionFormatString'Format Proto.Google.Protobuf.Struct.Struct
_SubstitutionFormatString'JsonFormat
  = Data.ProtoLens.Prism.prism'
      SubstitutionFormatString'JsonFormat
      (\ p__
         -> case p__ of
              (SubstitutionFormatString'JsonFormat p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_SubstitutionFormatString'TextFormatSource ::
  Data.ProtoLens.Prism.Prism' SubstitutionFormatString'Format Proto.Envoy.Config.Core.V3.Base.DataSource
_SubstitutionFormatString'TextFormatSource
  = Data.ProtoLens.Prism.prism'
      SubstitutionFormatString'TextFormatSource
      (\ p__
         -> case p__ of
              (SubstitutionFormatString'TextFormatSource p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \5envoy/config/core/v3/substitution_format_string.proto\DC2\DC4envoy.config.core.v3\SUB\USenvoy/config/core/v3/base.proto\SUB$envoy/config/core/v3/extension.proto\SUB\FSgoogle/protobuf/struct.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\140\ETX\n\
    \\CANSubstitutionFormatString\DC2.\n\
    \\vtext_format\CAN\SOH \SOH(\tH\NULR\n\
    \textFormatB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2D\n\
    \\vjson_format\CAN\STX \SOH(\v2\ETB.google.protobuf.StructH\NULR\n\
    \jsonFormatB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2P\n\
    \\DC2text_format_source\CAN\ENQ \SOH(\v2 .envoy.config.core.v3.DataSourceH\NULR\DLEtextFormatSource\DC2*\n\
    \\DC1omit_empty_values\CAN\ETX \SOH(\bR\SIomitEmptyValues\DC2!\n\
    \\fcontent_type\CAN\EOT \SOH(\tR\vcontentType\DC2J\n\
    \\n\
    \formatters\CAN\ACK \ETX(\v2*.envoy.config.core.v3.TypedExtensionConfigR\n\
    \formattersB\r\n\
    \\ACKformat\DC2\ETX\248B\SOHBM\n\
    \\"io.envoyproxy.envoy.config.core.v3B\GSSubstitutionFormatStringProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\216\FS\n\
    \\ACK\DC2\EOT\NUL\NULq\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL-\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL>\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\242\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NULq\SOH\SUB\180\SOH Configuration to use multiple :ref:`command operators <config_access_log_command_operators>`\n\
    \ to generate a new string in either plain text or JSON format.\n\
    \ [#next-free-field: 7]\n\
    \2/ [#protodoc-title: Substitution format string]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b \n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOT\CAN\STXY\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETX\CAN\b\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX\EM\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX\EM\EOT&\n\
    \\231\ENQ\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT,\EOT-U\SUB\216\ENQ Specify a format with command operators to form a text string.\n\
    \ Its details is described in :ref:`format string<config_access_log_format_strings>`.\n\
    \\n\
    \ For example, setting ``text_format`` like below,\n\
    \\n\
    \ .. validated-code-block:: yaml\n\
    \   :type-name: envoy.config.core.v3.SubstitutionFormatString\n\
    \\n\
    \   text_format: \"%LOCAL_REPLY_BODY%:%RESPONSE_CODE%:path=%REQ(:path)%\\n\"\n\
    \\n\
    \ generates plain text similar to:\n\
    \\n\
    \ .. code-block:: text\n\
    \\n\
    \   upstream connect error:503:path=/foo\n\
    \\n\
    \ Deprecated in favor of :ref:`text_format_source <envoy_v3_api_field_config.core.v3.SubstitutionFormatString.text_format_source>`. To migrate text format strings, use the :ref:`inline_string <envoy_v3_api_field_config.core.v3.DataSource.inline_string>` field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX,\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX,\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX,\EM\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX-\bT\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\NUL\b\ETX\DC2\ETX-\t\SUB\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\242\232\128K\DC2\ETX-\FSS\n\
    \\217\ENQ\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXE\EOTY\SUB\203\ENQ Specify a format with command operators to form a JSON string.\n\
    \ Its details is described in :ref:`format dictionary<config_access_log_format_dictionaries>`.\n\
    \ Values are rendered as strings, numbers, or boolean values as appropriate.\n\
    \ Nested JSON objects may be produced by some command operators (e.g. FILTER_STATE or DYNAMIC_METADATA).\n\
    \ See the documentation for a specific command operator for details.\n\
    \\n\
    \ .. validated-code-block:: yaml\n\
    \   :type-name: envoy.config.core.v3.SubstitutionFormatString\n\
    \\n\
    \   json_format:\n\
    \     status: \"%RESPONSE_CODE%\"\n\
    \     message: \"%LOCAL_REPLY_BODY%\"\n\
    \\n\
    \ The following JSON object would be created:\n\
    \\n\
    \ .. code-block:: json\n\
    \\n\
    \  {\n\
    \    \"status\": 500,\n\
    \    \"message\": \"My error message\"\n\
    \  }\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXE\EOT\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXE\ESC&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXE)*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETXE+X\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\ETXE,W\n\
    \\253\ETX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXX\EOT&\SUB\239\ETX Specify a format with command operators to form a text string.\n\
    \ Its details is described in :ref:`format string<config_access_log_format_strings>`.\n\
    \\n\
    \ For example, setting ``text_format`` like below,\n\
    \\n\
    \ .. validated-code-block:: yaml\n\
    \   :type-name: envoy.config.core.v3.SubstitutionFormatString\n\
    \\n\
    \   text_format_source:\n\
    \     inline_string: \"%LOCAL_REPLY_BODY%:%RESPONSE_CODE%:path=%REQ(:path)%\\n\"\n\
    \\n\
    \ generates plain text similar to:\n\
    \\n\
    \ .. code-block:: text\n\
    \\n\
    \   upstream connect error:503:path=/foo\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXX\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXX\SI!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXX$%\n\
    \\181\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX`\STX\GS\SUB\167\STX If set to true, when command operators are evaluated to null,\n\
    \\n\
    \ * for ``text_format``, the output of the empty operator is changed from ``-`` to an\n\
    \   empty string, so that empty values are omitted entirely.\n\
    \ * for ``json_format`` the keys with null values are omitted in the output structure.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX`\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX`\a\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX`\ESC\FS\n\
    \\184\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXk\STX\SUB\SUB\170\STX Specify a *content_type* field.\n\
    \ If this field is not set then ``text/plain`` is used for *text_format* and\n\
    \ ``application/json`` is used for *json_format*.\n\
    \\n\
    \ .. validated-code-block:: yaml\n\
    \   :type-name: envoy.config.core.v3.SubstitutionFormatString\n\
    \\n\
    \   content_type: \"text/html; charset=UTF-8\"\n\
    \\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXk\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXk\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXk\CAN\EM\n\
    \\211\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXp\STX/\SUB\197\SOH Specifies a collection of Formatter plugins that can be called from the access log configuration.\n\
    \ See the formatters extensions documentation for details.\n\
    \ [#extension-category: envoy.formatter]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXp\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXp\v\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXp *\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXp-.b\ACKproto3"