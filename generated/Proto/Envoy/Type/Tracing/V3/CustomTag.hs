{- This file was auto-generated from envoy/type/tracing/v3/custom_tag.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Tracing.V3.CustomTag (
        CustomTag(), CustomTag'Type(..), _CustomTag'Literal',
        _CustomTag'Environment', _CustomTag'RequestHeader,
        _CustomTag'Metadata', CustomTag'Environment(), CustomTag'Header(),
        CustomTag'Literal(), CustomTag'Metadata()
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
import qualified Proto.Envoy.Type.Metadata.V3.Metadata
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.tag' @:: Lens' CustomTag Data.Text.Text@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.maybe'type'' @:: Lens' CustomTag (Prelude.Maybe CustomTag'Type)@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.maybe'literal' @:: Lens' CustomTag (Prelude.Maybe CustomTag'Literal)@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.literal' @:: Lens' CustomTag CustomTag'Literal@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.maybe'environment' @:: Lens' CustomTag (Prelude.Maybe CustomTag'Environment)@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.environment' @:: Lens' CustomTag CustomTag'Environment@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.maybe'requestHeader' @:: Lens' CustomTag (Prelude.Maybe CustomTag'Header)@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.requestHeader' @:: Lens' CustomTag CustomTag'Header@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.maybe'metadata' @:: Lens' CustomTag (Prelude.Maybe CustomTag'Metadata)@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.metadata' @:: Lens' CustomTag CustomTag'Metadata@ -}
data CustomTag
  = CustomTag'_constructor {_CustomTag'tag :: !Data.Text.Text,
                            _CustomTag'type' :: !(Prelude.Maybe CustomTag'Type),
                            _CustomTag'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CustomTag where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data CustomTag'Type
  = CustomTag'Literal' !CustomTag'Literal |
    CustomTag'Environment' !CustomTag'Environment |
    CustomTag'RequestHeader !CustomTag'Header |
    CustomTag'Metadata' !CustomTag'Metadata
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField CustomTag "tag" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'tag (\ x__ y__ -> x__ {_CustomTag'tag = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CustomTag "maybe'type'" (Prelude.Maybe CustomTag'Type) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'type' (\ x__ y__ -> x__ {_CustomTag'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CustomTag "maybe'literal" (Prelude.Maybe CustomTag'Literal) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'type' (\ x__ y__ -> x__ {_CustomTag'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CustomTag'Literal' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CustomTag'Literal' y__))
instance Data.ProtoLens.Field.HasField CustomTag "literal" CustomTag'Literal where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'type' (\ x__ y__ -> x__ {_CustomTag'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CustomTag'Literal' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CustomTag'Literal' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CustomTag "maybe'environment" (Prelude.Maybe CustomTag'Environment) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'type' (\ x__ y__ -> x__ {_CustomTag'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CustomTag'Environment' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CustomTag'Environment' y__))
instance Data.ProtoLens.Field.HasField CustomTag "environment" CustomTag'Environment where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'type' (\ x__ y__ -> x__ {_CustomTag'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CustomTag'Environment' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CustomTag'Environment' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CustomTag "maybe'requestHeader" (Prelude.Maybe CustomTag'Header) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'type' (\ x__ y__ -> x__ {_CustomTag'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CustomTag'RequestHeader x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CustomTag'RequestHeader y__))
instance Data.ProtoLens.Field.HasField CustomTag "requestHeader" CustomTag'Header where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'type' (\ x__ y__ -> x__ {_CustomTag'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CustomTag'RequestHeader x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CustomTag'RequestHeader y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField CustomTag "maybe'metadata" (Prelude.Maybe CustomTag'Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'type' (\ x__ y__ -> x__ {_CustomTag'type' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (CustomTag'Metadata' x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap CustomTag'Metadata' y__))
instance Data.ProtoLens.Field.HasField CustomTag "metadata" CustomTag'Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'type' (\ x__ y__ -> x__ {_CustomTag'type' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (CustomTag'Metadata' x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap CustomTag'Metadata' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message CustomTag where
  messageName _ = Data.Text.pack "envoy.type.tracing.v3.CustomTag"
  packedMessageDescriptor _
    = "\n\
      \\tCustomTag\DC2\EM\n\
      \\ETXtag\CAN\SOH \SOH(\tR\ETXtagB\a\250B\EOTr\STX\DLE\SOH\DC2D\n\
      \\aliteral\CAN\STX \SOH(\v2(.envoy.type.tracing.v3.CustomTag.LiteralH\NULR\aliteral\DC2P\n\
      \\venvironment\CAN\ETX \SOH(\v2,.envoy.type.tracing.v3.CustomTag.EnvironmentH\NULR\venvironment\DC2P\n\
      \\SOrequest_header\CAN\EOT \SOH(\v2'.envoy.type.tracing.v3.CustomTag.HeaderH\NULR\rrequestHeader\DC2G\n\
      \\bmetadata\CAN\ENQ \SOH(\v2).envoy.type.tracing.v3.CustomTag.MetadataH\NULR\bmetadata\SUBX\n\
      \\aLiteral\DC2\GS\n\
      \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalueB\a\250B\EOTr\STX\DLE\SOH:.\154\197\136\RS)\n\
      \'envoy.type.tracing.v2.CustomTag.Literal\SUB\131\SOH\n\
      \\vEnvironment\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
      \\rdefault_value\CAN\STX \SOH(\tR\fdefaultValue:2\154\197\136\RS-\n\
      \+envoy.type.tracing.v2.CustomTag.Environment\SUB\DEL\n\
      \\ACKHeader\DC2!\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\r\250B\n\
      \r\b\DLE\SOH\192\SOH\SOH\200\SOH\NUL\DC2#\n\
      \\rdefault_value\CAN\STX \SOH(\tR\fdefaultValue:-\154\197\136\RS(\n\
      \&envoy.type.tracing.v2.CustomTag.Header\SUB\226\SOH\n\
      \\bMetadata\DC28\n\
      \\EOTkind\CAN\SOH \SOH(\v2$.envoy.type.metadata.v3.MetadataKindR\EOTkind\DC2F\n\
      \\fmetadata_key\CAN\STX \SOH(\v2#.envoy.type.metadata.v3.MetadataKeyR\vmetadataKey\DC2#\n\
      \\rdefault_value\CAN\ETX \SOH(\tR\fdefaultValue:/\154\197\136\RS*\n\
      \(envoy.type.tracing.v2.CustomTag.MetadataB\v\n\
      \\EOTtype\DC2\ETX\248B\SOH:&\154\197\136\RS!\n\
      \\USenvoy.type.tracing.v2.CustomTag"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"tag")) ::
              Data.ProtoLens.FieldDescriptor CustomTag
        literal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "literal"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CustomTag'Literal)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'literal")) ::
              Data.ProtoLens.FieldDescriptor CustomTag
        environment__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "environment"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CustomTag'Environment)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'environment")) ::
              Data.ProtoLens.FieldDescriptor CustomTag
        requestHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_header"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CustomTag'Header)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestHeader")) ::
              Data.ProtoLens.FieldDescriptor CustomTag
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CustomTag'Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor CustomTag
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tag__field_descriptor),
           (Data.ProtoLens.Tag 2, literal__field_descriptor),
           (Data.ProtoLens.Tag 3, environment__field_descriptor),
           (Data.ProtoLens.Tag 4, requestHeader__field_descriptor),
           (Data.ProtoLens.Tag 5, metadata__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CustomTag'_unknownFields
        (\ x__ y__ -> x__ {_CustomTag'_unknownFields = y__})
  defMessage
    = CustomTag'_constructor
        {_CustomTag'tag = Data.ProtoLens.fieldDefault,
         _CustomTag'type' = Prelude.Nothing, _CustomTag'_unknownFields = []}
  parseMessage
    = let
        loop :: CustomTag -> Data.ProtoLens.Encoding.Bytes.Parser CustomTag
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
                                       "tag"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tag") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "literal"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"literal") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "environment"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"environment") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestHeader") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CustomTag"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"tag") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (CustomTag'Literal' v))
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
                   (Prelude.Just (CustomTag'Environment' v))
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
                   (Prelude.Just (CustomTag'RequestHeader v))
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
                   (Prelude.Just (CustomTag'Metadata' v))
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
instance Control.DeepSeq.NFData CustomTag where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CustomTag'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CustomTag'tag x__)
                (Control.DeepSeq.deepseq (_CustomTag'type' x__) ()))
instance Control.DeepSeq.NFData CustomTag'Type where
  rnf (CustomTag'Literal' x__) = Control.DeepSeq.rnf x__
  rnf (CustomTag'Environment' x__) = Control.DeepSeq.rnf x__
  rnf (CustomTag'RequestHeader x__) = Control.DeepSeq.rnf x__
  rnf (CustomTag'Metadata' x__) = Control.DeepSeq.rnf x__
_CustomTag'Literal' ::
  Data.ProtoLens.Prism.Prism' CustomTag'Type CustomTag'Literal
_CustomTag'Literal'
  = Data.ProtoLens.Prism.prism'
      CustomTag'Literal'
      (\ p__
         -> case p__ of
              (CustomTag'Literal' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CustomTag'Environment' ::
  Data.ProtoLens.Prism.Prism' CustomTag'Type CustomTag'Environment
_CustomTag'Environment'
  = Data.ProtoLens.Prism.prism'
      CustomTag'Environment'
      (\ p__
         -> case p__ of
              (CustomTag'Environment' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CustomTag'RequestHeader ::
  Data.ProtoLens.Prism.Prism' CustomTag'Type CustomTag'Header
_CustomTag'RequestHeader
  = Data.ProtoLens.Prism.prism'
      CustomTag'RequestHeader
      (\ p__
         -> case p__ of
              (CustomTag'RequestHeader p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_CustomTag'Metadata' ::
  Data.ProtoLens.Prism.Prism' CustomTag'Type CustomTag'Metadata
_CustomTag'Metadata'
  = Data.ProtoLens.Prism.prism'
      CustomTag'Metadata'
      (\ p__
         -> case p__ of
              (CustomTag'Metadata' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.name' @:: Lens' CustomTag'Environment Data.Text.Text@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.defaultValue' @:: Lens' CustomTag'Environment Data.Text.Text@ -}
data CustomTag'Environment
  = CustomTag'Environment'_constructor {_CustomTag'Environment'name :: !Data.Text.Text,
                                        _CustomTag'Environment'defaultValue :: !Data.Text.Text,
                                        _CustomTag'Environment'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CustomTag'Environment where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CustomTag'Environment "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'Environment'name
           (\ x__ y__ -> x__ {_CustomTag'Environment'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CustomTag'Environment "defaultValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'Environment'defaultValue
           (\ x__ y__ -> x__ {_CustomTag'Environment'defaultValue = y__}))
        Prelude.id
instance Data.ProtoLens.Message CustomTag'Environment where
  messageName _
    = Data.Text.pack "envoy.type.tracing.v3.CustomTag.Environment"
  packedMessageDescriptor _
    = "\n\
      \\vEnvironment\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
      \\rdefault_value\CAN\STX \SOH(\tR\fdefaultValue:2\154\197\136\RS-\n\
      \+envoy.type.tracing.v2.CustomTag.Environment"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor CustomTag'Environment
        defaultValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"defaultValue")) ::
              Data.ProtoLens.FieldDescriptor CustomTag'Environment
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, defaultValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CustomTag'Environment'_unknownFields
        (\ x__ y__ -> x__ {_CustomTag'Environment'_unknownFields = y__})
  defMessage
    = CustomTag'Environment'_constructor
        {_CustomTag'Environment'name = Data.ProtoLens.fieldDefault,
         _CustomTag'Environment'defaultValue = Data.ProtoLens.fieldDefault,
         _CustomTag'Environment'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CustomTag'Environment
          -> Data.ProtoLens.Encoding.Bytes.Parser CustomTag'Environment
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
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
                                       "default_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Environment"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"defaultValue") _x
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
instance Control.DeepSeq.NFData CustomTag'Environment where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CustomTag'Environment'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CustomTag'Environment'name x__)
                (Control.DeepSeq.deepseq
                   (_CustomTag'Environment'defaultValue x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.name' @:: Lens' CustomTag'Header Data.Text.Text@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.defaultValue' @:: Lens' CustomTag'Header Data.Text.Text@ -}
data CustomTag'Header
  = CustomTag'Header'_constructor {_CustomTag'Header'name :: !Data.Text.Text,
                                   _CustomTag'Header'defaultValue :: !Data.Text.Text,
                                   _CustomTag'Header'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CustomTag'Header where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CustomTag'Header "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'Header'name
           (\ x__ y__ -> x__ {_CustomTag'Header'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CustomTag'Header "defaultValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'Header'defaultValue
           (\ x__ y__ -> x__ {_CustomTag'Header'defaultValue = y__}))
        Prelude.id
instance Data.ProtoLens.Message CustomTag'Header where
  messageName _
    = Data.Text.pack "envoy.type.tracing.v3.CustomTag.Header"
  packedMessageDescriptor _
    = "\n\
      \\ACKHeader\DC2!\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\r\250B\n\
      \r\b\DLE\SOH\192\SOH\SOH\200\SOH\NUL\DC2#\n\
      \\rdefault_value\CAN\STX \SOH(\tR\fdefaultValue:-\154\197\136\RS(\n\
      \&envoy.type.tracing.v2.CustomTag.Header"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor CustomTag'Header
        defaultValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"defaultValue")) ::
              Data.ProtoLens.FieldDescriptor CustomTag'Header
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, defaultValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CustomTag'Header'_unknownFields
        (\ x__ y__ -> x__ {_CustomTag'Header'_unknownFields = y__})
  defMessage
    = CustomTag'Header'_constructor
        {_CustomTag'Header'name = Data.ProtoLens.fieldDefault,
         _CustomTag'Header'defaultValue = Data.ProtoLens.fieldDefault,
         _CustomTag'Header'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CustomTag'Header
          -> Data.ProtoLens.Encoding.Bytes.Parser CustomTag'Header
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
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
                                       "default_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Header"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"defaultValue") _x
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
instance Control.DeepSeq.NFData CustomTag'Header where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CustomTag'Header'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CustomTag'Header'name x__)
                (Control.DeepSeq.deepseq (_CustomTag'Header'defaultValue x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.value' @:: Lens' CustomTag'Literal Data.Text.Text@ -}
data CustomTag'Literal
  = CustomTag'Literal'_constructor {_CustomTag'Literal'value :: !Data.Text.Text,
                                    _CustomTag'Literal'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CustomTag'Literal where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CustomTag'Literal "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'Literal'value
           (\ x__ y__ -> x__ {_CustomTag'Literal'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message CustomTag'Literal where
  messageName _
    = Data.Text.pack "envoy.type.tracing.v3.CustomTag.Literal"
  packedMessageDescriptor _
    = "\n\
      \\aLiteral\DC2\GS\n\
      \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalueB\a\250B\EOTr\STX\DLE\SOH:.\154\197\136\RS)\n\
      \'envoy.type.tracing.v2.CustomTag.Literal"
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
              Data.ProtoLens.FieldDescriptor CustomTag'Literal
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CustomTag'Literal'_unknownFields
        (\ x__ y__ -> x__ {_CustomTag'Literal'_unknownFields = y__})
  defMessage
    = CustomTag'Literal'_constructor
        {_CustomTag'Literal'value = Data.ProtoLens.fieldDefault,
         _CustomTag'Literal'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CustomTag'Literal
          -> Data.ProtoLens.Encoding.Bytes.Parser CustomTag'Literal
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Literal"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData CustomTag'Literal where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CustomTag'Literal'_unknownFields x__)
             (Control.DeepSeq.deepseq (_CustomTag'Literal'value x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.kind' @:: Lens' CustomTag'Metadata Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKind@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.maybe'kind' @:: Lens' CustomTag'Metadata (Prelude.Maybe Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKind)@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.metadataKey' @:: Lens' CustomTag'Metadata Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKey@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.maybe'metadataKey' @:: Lens' CustomTag'Metadata (Prelude.Maybe Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKey)@
         * 'Proto.Envoy.Type.Tracing.V3.CustomTag_Fields.defaultValue' @:: Lens' CustomTag'Metadata Data.Text.Text@ -}
data CustomTag'Metadata
  = CustomTag'Metadata'_constructor {_CustomTag'Metadata'kind :: !(Prelude.Maybe Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKind),
                                     _CustomTag'Metadata'metadataKey :: !(Prelude.Maybe Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKey),
                                     _CustomTag'Metadata'defaultValue :: !Data.Text.Text,
                                     _CustomTag'Metadata'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CustomTag'Metadata where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CustomTag'Metadata "kind" Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKind where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'Metadata'kind
           (\ x__ y__ -> x__ {_CustomTag'Metadata'kind = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CustomTag'Metadata "maybe'kind" (Prelude.Maybe Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKind) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'Metadata'kind
           (\ x__ y__ -> x__ {_CustomTag'Metadata'kind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CustomTag'Metadata "metadataKey" Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKey where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'Metadata'metadataKey
           (\ x__ y__ -> x__ {_CustomTag'Metadata'metadataKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CustomTag'Metadata "maybe'metadataKey" (Prelude.Maybe Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKey) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'Metadata'metadataKey
           (\ x__ y__ -> x__ {_CustomTag'Metadata'metadataKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CustomTag'Metadata "defaultValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CustomTag'Metadata'defaultValue
           (\ x__ y__ -> x__ {_CustomTag'Metadata'defaultValue = y__}))
        Prelude.id
instance Data.ProtoLens.Message CustomTag'Metadata where
  messageName _
    = Data.Text.pack "envoy.type.tracing.v3.CustomTag.Metadata"
  packedMessageDescriptor _
    = "\n\
      \\bMetadata\DC28\n\
      \\EOTkind\CAN\SOH \SOH(\v2$.envoy.type.metadata.v3.MetadataKindR\EOTkind\DC2F\n\
      \\fmetadata_key\CAN\STX \SOH(\v2#.envoy.type.metadata.v3.MetadataKeyR\vmetadataKey\DC2#\n\
      \\rdefault_value\CAN\ETX \SOH(\tR\fdefaultValue:/\154\197\136\RS*\n\
      \(envoy.type.tracing.v2.CustomTag.Metadata"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        kind__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kind"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKind)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kind")) ::
              Data.ProtoLens.FieldDescriptor CustomTag'Metadata
        metadataKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Metadata.V3.Metadata.MetadataKey)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadataKey")) ::
              Data.ProtoLens.FieldDescriptor CustomTag'Metadata
        defaultValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"defaultValue")) ::
              Data.ProtoLens.FieldDescriptor CustomTag'Metadata
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, kind__field_descriptor),
           (Data.ProtoLens.Tag 2, metadataKey__field_descriptor),
           (Data.ProtoLens.Tag 3, defaultValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CustomTag'Metadata'_unknownFields
        (\ x__ y__ -> x__ {_CustomTag'Metadata'_unknownFields = y__})
  defMessage
    = CustomTag'Metadata'_constructor
        {_CustomTag'Metadata'kind = Prelude.Nothing,
         _CustomTag'Metadata'metadataKey = Prelude.Nothing,
         _CustomTag'Metadata'defaultValue = Data.ProtoLens.fieldDefault,
         _CustomTag'Metadata'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CustomTag'Metadata
          -> Data.ProtoLens.Encoding.Bytes.Parser CustomTag'Metadata
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
                                       "kind"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"kind") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadataKey") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "default_value"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Metadata"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'kind") _x
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
                       (Data.ProtoLens.Field.field @"maybe'metadataKey") _x
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
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"defaultValue") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8
                               _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CustomTag'Metadata where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CustomTag'Metadata'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CustomTag'Metadata'kind x__)
                (Control.DeepSeq.deepseq
                   (_CustomTag'Metadata'metadataKey x__)
                   (Control.DeepSeq.deepseq
                      (_CustomTag'Metadata'defaultValue x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&envoy/type/tracing/v3/custom_tag.proto\DC2\NAKenvoy.type.tracing.v3\SUB%envoy/type/metadata/v3/metadata.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\212\a\n\
    \\tCustomTag\DC2\EM\n\
    \\ETXtag\CAN\SOH \SOH(\tR\ETXtagB\a\250B\EOTr\STX\DLE\SOH\DC2D\n\
    \\aliteral\CAN\STX \SOH(\v2(.envoy.type.tracing.v3.CustomTag.LiteralH\NULR\aliteral\DC2P\n\
    \\venvironment\CAN\ETX \SOH(\v2,.envoy.type.tracing.v3.CustomTag.EnvironmentH\NULR\venvironment\DC2P\n\
    \\SOrequest_header\CAN\EOT \SOH(\v2'.envoy.type.tracing.v3.CustomTag.HeaderH\NULR\rrequestHeader\DC2G\n\
    \\bmetadata\CAN\ENQ \SOH(\v2).envoy.type.tracing.v3.CustomTag.MetadataH\NULR\bmetadata\SUBX\n\
    \\aLiteral\DC2\GS\n\
    \\ENQvalue\CAN\SOH \SOH(\tR\ENQvalueB\a\250B\EOTr\STX\DLE\SOH:.\154\197\136\RS)\n\
    \'envoy.type.tracing.v2.CustomTag.Literal\SUB\131\SOH\n\
    \\vEnvironment\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2#\n\
    \\rdefault_value\CAN\STX \SOH(\tR\fdefaultValue:2\154\197\136\RS-\n\
    \+envoy.type.tracing.v2.CustomTag.Environment\SUB\DEL\n\
    \\ACKHeader\DC2!\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\r\250B\n\
    \r\b\DLE\SOH\192\SOH\SOH\200\SOH\NUL\DC2#\n\
    \\rdefault_value\CAN\STX \SOH(\tR\fdefaultValue:-\154\197\136\RS(\n\
    \&envoy.type.tracing.v2.CustomTag.Header\SUB\226\SOH\n\
    \\bMetadata\DC28\n\
    \\EOTkind\CAN\SOH \SOH(\v2$.envoy.type.metadata.v3.MetadataKindR\EOTkind\DC2F\n\
    \\fmetadata_key\CAN\STX \SOH(\v2#.envoy.type.metadata.v3.MetadataKeyR\vmetadataKey\DC2#\n\
    \\rdefault_value\CAN\ETX \SOH(\tR\fdefaultValue:/\154\197\136\RS*\n\
    \(envoy.type.tracing.v2.CustomTag.MetadataB\v\n\
    \\EOTtype\DC2\ETX\248B\SOH:&\154\197\136\RS!\n\
    \\USenvoy.type.tracing.v2.CustomTagB?\n\
    \#io.envoyproxy.envoy.type.tracing.v3B\SOCustomTagProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\248\ETB\n\
    \\ACK\DC2\EOT\NUL\NULd\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL/\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \p\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NULd\SOH\SUBC Describes custom tags for the active span.\n\
    \ [#next-free-field: 6]\n\
    \2\US [#protodoc-title: Custom Tag]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\DC1\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\DC4\STXa\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\DC4\STXa\n\
    \L\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\ETB\STX\GS\ETX\SUB> Literal type custom tag with static value for the tag value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\ETB\n\
    \\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT\CAN\EOT\EM2\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT\CAN\EOT\EM2\n\
    \@\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\FS\EOT>\SUB1 Static literal value to populate the tag value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\FS\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\FS\v\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\FS\DC3\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX\FS\NAK=\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETX\FS\SYN<\n\
    \T\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT \STX+\ETX\SUBF Environment type custom tag with environment name and default value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX \n\
    \\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\a\DC2\EOT!\EOT\"6\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOT!\EOT\"6\n\
    \Y\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX%\EOT=\SUBJ Environment variable name to obtain the value to populate the tag value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETX%\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX%\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX%\DC2\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\b\DC2\ETX%\DC4<\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\NUL\b\175\b\SO\DC2\ETX%\NAK;\n\
    \\169\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX*\EOT\GS\SUB\153\SOH When the environment variable is not found,\n\
    \ the tag value will be populated with this default value if specified,\n\
    \ otherwise no tag will be populated.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETX*\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX*\v\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX*\ESC\FS\n\
    \J\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\EOT.\STX:\ETX\SUB< Header type custom tag with header name and default value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETX.\n\
    \\DLE\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\STX\a\DC2\EOT/\EOT01\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\STX\a\211\136\225\ETX\SOH\DC2\EOT/\EOT01\n\
    \L\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\EOT3\EOT4b\SUB< Header name to obtain the value to populate the tag value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ENQ\DC2\ETX3\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETX3\v\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETX3\DC2\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\b\DC2\ETX4\ba\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\STX\STX\NUL\b\175\b\SO\DC2\ETX4\t`\n\
    \\157\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\ETX9\EOT\GS\SUB\141\SOH When the header does not exist,\n\
    \ the tag value will be populated with this default value if specified,\n\
    \ otherwise no tag will be populated.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\ETX9\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\ETX9\v\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\ETX9\ESC\FS\n\
    \\228\STX\n\
    \\EOT\EOT\NUL\ETX\ETX\DC2\EOTA\STXO\ETX\SUB\213\STX Metadata type custom tag using\n\
    \ :ref:`MetadataKey <envoy_v3_api_msg_type.metadata.v3.MetadataKey>` to retrieve the protobuf value\n\
    \ from :ref:`Metadata <envoy_v3_api_msg_config.core.v3.Metadata>`, and populate the tag value with\n\
    \ `the canonical JSON <https://developers.google.com/protocol-buffers/docs/proto3#json>`_\n\
    \ representation of it.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\ETX\SOH\DC2\ETXA\n\
    \\DC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ETX\a\DC2\EOTB\EOTC3\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\ETX\a\211\136\225\ETX\SOH\DC2\EOTB\EOTC3\n\
    \H\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\NUL\DC2\ETXF\EOT&\SUB9 Specify what kind of metadata to obtain tag value from.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ACK\DC2\ETXF\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\SOH\DC2\ETXF\GS!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ETX\DC2\ETXF$%\n\
    \K\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\SOH\DC2\ETXI\EOT-\SUB< Metadata key to define the path to retrieve the tag value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ACK\DC2\ETXI\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\SOH\DC2\ETXI\FS(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ETX\DC2\ETXI+,\n\
    \\160\SOH\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\STX\DC2\ETXN\EOT\GS\SUB\144\SOH When no valid metadata is found,\n\
    \ the tag value would be populated with this default value if specified,\n\
    \ otherwise no tag would be populated.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\ENQ\DC2\ETXN\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\SOH\DC2\ETXN\v\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\ETX\DC2\ETXN\ESC\FS\n\
    \-\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXR\STX:\SUB  Used to populate the tag name.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXR\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXR\t\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXR\SI\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXR\DC19\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETXR\DC28\n\
    \8\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOTU\STXc\ETX\SUB* Used to specify what kind of custom tag.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETXU\b\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETXV\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETXV\EOT&\n\
    \$\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXY\EOT\CAN\SUB\ETB A literal custom tag.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXY\EOT\v\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXY\f\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXY\SYN\ETB\n\
    \)\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\\\EOT \SUB\FS An environment custom tag.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\\\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\\\DLE\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\\\RS\US\n\
    \+\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX_\EOT\RS\SUB\RS A request header custom tag.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX_\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX_\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX_\FS\GS\n\
    \B\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXb\EOT\SUB\SUB5 A custom tag to obtain tag value from the metadata.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXb\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXb\r\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXb\CAN\EMb\ACKproto3"