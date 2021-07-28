{- This file was auto-generated from envoy/extensions/filters/http/header_to_metadata/v3/header_to_metadata.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata (
        Config(), Config'KeyValuePair(), Config'Rule(),
        Config'ValueEncode(..), Config'ValueEncode(),
        Config'ValueEncode'UnrecognizedValue, Config'ValueType(..),
        Config'ValueType(), Config'ValueType'UnrecognizedValue
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
import qualified Proto.Envoy.Type.Matcher.V3.Regex
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.requestRules' @:: Lens' Config [Config'Rule]@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.vec'requestRules' @:: Lens' Config (Data.Vector.Vector Config'Rule)@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.responseRules' @:: Lens' Config [Config'Rule]@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.vec'responseRules' @:: Lens' Config (Data.Vector.Vector Config'Rule)@ -}
data Config
  = Config'_constructor {_Config'requestRules :: !(Data.Vector.Vector Config'Rule),
                         _Config'responseRules :: !(Data.Vector.Vector Config'Rule),
                         _Config'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Config where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Config "requestRules" [Config'Rule] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'requestRules
           (\ x__ y__ -> x__ {_Config'requestRules = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Config "vec'requestRules" (Data.Vector.Vector Config'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'requestRules
           (\ x__ y__ -> x__ {_Config'requestRules = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config "responseRules" [Config'Rule] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'responseRules
           (\ x__ y__ -> x__ {_Config'responseRules = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Config "vec'responseRules" (Data.Vector.Vector Config'Rule) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'responseRules
           (\ x__ y__ -> x__ {_Config'responseRules = y__}))
        Prelude.id
instance Data.ProtoLens.Message Config where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.header_to_metadata.v3.Config"
  packedMessageDescriptor _
    = "\n\
      \\ACKConfig\DC2e\n\
      \\rrequest_rules\CAN\SOH \ETX(\v2@.envoy.extensions.filters.http.header_to_metadata.v3.Config.RuleR\frequestRules\DC2g\n\
      \\SOresponse_rules\CAN\STX \ETX(\v2@.envoy.extensions.filters.http.header_to_metadata.v3.Config.RuleR\rresponseRules\SUB\135\EOT\n\
      \\fKeyValuePair\DC2-\n\
      \\DC2metadata_namespace\CAN\SOH \SOH(\tR\DC1metadataNamespace\DC2\EM\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH\DC2(\n\
      \\ENQvalue\CAN\ETX \SOH(\tR\ENQvalueB\DC2\242\152\254\143\ENQ\f\DC2\n\
      \value_type\DC2r\n\
      \\DC3regex_value_rewrite\CAN\ACK \SOH(\v2..envoy.type.matcher.v3.RegexMatchAndSubstituteR\DC1regexValueRewriteB\DC2\242\152\254\143\ENQ\f\DC2\n\
      \value_type\DC2c\n\
      \\EOTtype\CAN\EOT \SOH(\SO2E.envoy.extensions.filters.http.header_to_metadata.v3.Config.ValueTypeR\EOTtypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2_\n\
      \\ACKencode\CAN\ENQ \SOH(\SO2G.envoy.extensions.filters.http.header_to_metadata.v3.Config.ValueEncodeR\ACKencode:I\154\197\136\RSD\n\
      \Benvoy.config.filter.http.header_to_metadata.v2.Config.KeyValuePair\SUB\255\ETX\n\
      \\EOTRule\DC2B\n\
      \\ACKheader\CAN\SOH \SOH(\tR\ACKheaderB*\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\242\152\254\143\ENQ\EM\DC2\ETBheader_cookie_specifier\DC2B\n\
      \\ACKcookie\CAN\ENQ \SOH(\tR\ACKcookieB*\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\242\152\254\143\ENQ\EM\DC2\ETBheader_cookie_specifier\DC2\136\SOH\n\
      \\DC1on_header_present\CAN\STX \SOH(\v2H.envoy.extensions.filters.http.header_to_metadata.v3.Config.KeyValuePairR\SIonHeaderPresentB\DC2\242\152\254\143\ENQ\f\n\
      \\n\
      \on_present\DC2\136\SOH\n\
      \\DC1on_header_missing\CAN\ETX \SOH(\v2H.envoy.extensions.filters.http.header_to_metadata.v3.Config.KeyValuePairR\SIonHeaderMissingB\DC2\242\152\254\143\ENQ\f\n\
      \\n\
      \on_missing\DC2\SYN\n\
      \\ACKremove\CAN\EOT \SOH(\bR\ACKremove:A\154\197\136\RS<\n\
      \:envoy.config.filter.http.header_to_metadata.v2.Config.Rule\"7\n\
      \\tValueType\DC2\n\
      \\n\
      \\ACKSTRING\DLE\NUL\DC2\n\
      \\n\
      \\ACKNUMBER\DLE\SOH\DC2\DC2\n\
      \\SOPROTOBUF_VALUE\DLE\STX\"#\n\
      \\vValueEncode\DC2\b\n\
      \\EOTNONE\DLE\NUL\DC2\n\
      \\n\
      \\ACKBASE64\DLE\SOH:<\154\197\136\RS7\n\
      \5envoy.config.filter.http.header_to_metadata.v2.Config"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        requestRules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Config'Rule)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"requestRules")) ::
              Data.ProtoLens.FieldDescriptor Config
        responseRules__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_rules"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Config'Rule)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"responseRules")) ::
              Data.ProtoLens.FieldDescriptor Config
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, requestRules__field_descriptor),
           (Data.ProtoLens.Tag 2, responseRules__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Config'_unknownFields
        (\ x__ y__ -> x__ {_Config'_unknownFields = y__})
  defMessage
    = Config'_constructor
        {_Config'requestRules = Data.Vector.Generic.empty,
         _Config'responseRules = Data.Vector.Generic.empty,
         _Config'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Config
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Config'Rule
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Config'Rule
                -> Data.ProtoLens.Encoding.Bytes.Parser Config
        loop x mutable'requestRules mutable'responseRules
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'requestRules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'requestRules)
                      frozen'responseRules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'responseRules)
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
                              (Data.ProtoLens.Field.field @"vec'requestRules")
                              frozen'requestRules
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'responseRules")
                                 frozen'responseRules
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "request_rules"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requestRules y)
                                loop x v mutable'responseRules
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "response_rules"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'responseRules y)
                                loop x mutable'requestRules v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'requestRules
                                  mutable'responseRules
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'requestRules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'responseRules <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'requestRules
                mutable'responseRules)
          "Config"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'requestRules") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'responseRules") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Config where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Config'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Config'requestRules x__)
                (Control.DeepSeq.deepseq (_Config'responseRules x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.metadataNamespace' @:: Lens' Config'KeyValuePair Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.key' @:: Lens' Config'KeyValuePair Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.value' @:: Lens' Config'KeyValuePair Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.regexValueRewrite' @:: Lens' Config'KeyValuePair Proto.Envoy.Type.Matcher.V3.Regex.RegexMatchAndSubstitute@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.maybe'regexValueRewrite' @:: Lens' Config'KeyValuePair (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Regex.RegexMatchAndSubstitute)@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.type'' @:: Lens' Config'KeyValuePair Config'ValueType@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.encode' @:: Lens' Config'KeyValuePair Config'ValueEncode@ -}
data Config'KeyValuePair
  = Config'KeyValuePair'_constructor {_Config'KeyValuePair'metadataNamespace :: !Data.Text.Text,
                                      _Config'KeyValuePair'key :: !Data.Text.Text,
                                      _Config'KeyValuePair'value :: !Data.Text.Text,
                                      _Config'KeyValuePair'regexValueRewrite :: !(Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Regex.RegexMatchAndSubstitute),
                                      _Config'KeyValuePair'type' :: !Config'ValueType,
                                      _Config'KeyValuePair'encode :: !Config'ValueEncode,
                                      _Config'KeyValuePair'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Config'KeyValuePair where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Config'KeyValuePair "metadataNamespace" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'KeyValuePair'metadataNamespace
           (\ x__ y__ -> x__ {_Config'KeyValuePair'metadataNamespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config'KeyValuePair "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'KeyValuePair'key
           (\ x__ y__ -> x__ {_Config'KeyValuePair'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config'KeyValuePair "value" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'KeyValuePair'value
           (\ x__ y__ -> x__ {_Config'KeyValuePair'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config'KeyValuePair "regexValueRewrite" Proto.Envoy.Type.Matcher.V3.Regex.RegexMatchAndSubstitute where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'KeyValuePair'regexValueRewrite
           (\ x__ y__ -> x__ {_Config'KeyValuePair'regexValueRewrite = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Config'KeyValuePair "maybe'regexValueRewrite" (Prelude.Maybe Proto.Envoy.Type.Matcher.V3.Regex.RegexMatchAndSubstitute) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'KeyValuePair'regexValueRewrite
           (\ x__ y__ -> x__ {_Config'KeyValuePair'regexValueRewrite = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config'KeyValuePair "type'" Config'ValueType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'KeyValuePair'type'
           (\ x__ y__ -> x__ {_Config'KeyValuePair'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config'KeyValuePair "encode" Config'ValueEncode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'KeyValuePair'encode
           (\ x__ y__ -> x__ {_Config'KeyValuePair'encode = y__}))
        Prelude.id
instance Data.ProtoLens.Message Config'KeyValuePair where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.header_to_metadata.v3.Config.KeyValuePair"
  packedMessageDescriptor _
    = "\n\
      \\fKeyValuePair\DC2-\n\
      \\DC2metadata_namespace\CAN\SOH \SOH(\tR\DC1metadataNamespace\DC2\EM\n\
      \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH\DC2(\n\
      \\ENQvalue\CAN\ETX \SOH(\tR\ENQvalueB\DC2\242\152\254\143\ENQ\f\DC2\n\
      \value_type\DC2r\n\
      \\DC3regex_value_rewrite\CAN\ACK \SOH(\v2..envoy.type.matcher.v3.RegexMatchAndSubstituteR\DC1regexValueRewriteB\DC2\242\152\254\143\ENQ\f\DC2\n\
      \value_type\DC2c\n\
      \\EOTtype\CAN\EOT \SOH(\SO2E.envoy.extensions.filters.http.header_to_metadata.v3.Config.ValueTypeR\EOTtypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2_\n\
      \\ACKencode\CAN\ENQ \SOH(\SO2G.envoy.extensions.filters.http.header_to_metadata.v3.Config.ValueEncodeR\ACKencode:I\154\197\136\RSD\n\
      \Benvoy.config.filter.http.header_to_metadata.v2.Config.KeyValuePair"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        metadataNamespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata_namespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"metadataNamespace")) ::
              Data.ProtoLens.FieldDescriptor Config'KeyValuePair
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor Config'KeyValuePair
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"value")) ::
              Data.ProtoLens.FieldDescriptor Config'KeyValuePair
        regexValueRewrite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "regex_value_rewrite"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.Regex.RegexMatchAndSubstitute)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'regexValueRewrite")) ::
              Data.ProtoLens.FieldDescriptor Config'KeyValuePair
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Config'ValueType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Config'KeyValuePair
        encode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "encode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Config'ValueEncode)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"encode")) ::
              Data.ProtoLens.FieldDescriptor Config'KeyValuePair
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, metadataNamespace__field_descriptor),
           (Data.ProtoLens.Tag 2, key__field_descriptor),
           (Data.ProtoLens.Tag 3, value__field_descriptor),
           (Data.ProtoLens.Tag 6, regexValueRewrite__field_descriptor),
           (Data.ProtoLens.Tag 4, type'__field_descriptor),
           (Data.ProtoLens.Tag 5, encode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Config'KeyValuePair'_unknownFields
        (\ x__ y__ -> x__ {_Config'KeyValuePair'_unknownFields = y__})
  defMessage
    = Config'KeyValuePair'_constructor
        {_Config'KeyValuePair'metadataNamespace = Data.ProtoLens.fieldDefault,
         _Config'KeyValuePair'key = Data.ProtoLens.fieldDefault,
         _Config'KeyValuePair'value = Data.ProtoLens.fieldDefault,
         _Config'KeyValuePair'regexValueRewrite = Prelude.Nothing,
         _Config'KeyValuePair'type' = Data.ProtoLens.fieldDefault,
         _Config'KeyValuePair'encode = Data.ProtoLens.fieldDefault,
         _Config'KeyValuePair'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Config'KeyValuePair
          -> Data.ProtoLens.Encoding.Bytes.Parser Config'KeyValuePair
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
                                       "metadata_namespace"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"metadataNamespace") y x)
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
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
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "regex_value_rewrite"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"regexValueRewrite") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "encode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"encode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KeyValuePair"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"metadataNamespace") _x
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
                (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'regexValueRewrite") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
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
                      ((Data.Monoid.<>)
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v = Lens.Family2.view (Data.ProtoLens.Field.field @"encode") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                     ((Prelude..)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           Prelude.fromIntegral)
                                        Prelude.fromEnum
                                        _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData Config'KeyValuePair where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Config'KeyValuePair'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Config'KeyValuePair'metadataNamespace x__)
                (Control.DeepSeq.deepseq
                   (_Config'KeyValuePair'key x__)
                   (Control.DeepSeq.deepseq
                      (_Config'KeyValuePair'value x__)
                      (Control.DeepSeq.deepseq
                         (_Config'KeyValuePair'regexValueRewrite x__)
                         (Control.DeepSeq.deepseq
                            (_Config'KeyValuePair'type' x__)
                            (Control.DeepSeq.deepseq (_Config'KeyValuePair'encode x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.header' @:: Lens' Config'Rule Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.cookie' @:: Lens' Config'Rule Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.onHeaderPresent' @:: Lens' Config'Rule Config'KeyValuePair@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.maybe'onHeaderPresent' @:: Lens' Config'Rule (Prelude.Maybe Config'KeyValuePair)@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.onHeaderMissing' @:: Lens' Config'Rule Config'KeyValuePair@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.maybe'onHeaderMissing' @:: Lens' Config'Rule (Prelude.Maybe Config'KeyValuePair)@
         * 'Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields.remove' @:: Lens' Config'Rule Prelude.Bool@ -}
data Config'Rule
  = Config'Rule'_constructor {_Config'Rule'header :: !Data.Text.Text,
                              _Config'Rule'cookie :: !Data.Text.Text,
                              _Config'Rule'onHeaderPresent :: !(Prelude.Maybe Config'KeyValuePair),
                              _Config'Rule'onHeaderMissing :: !(Prelude.Maybe Config'KeyValuePair),
                              _Config'Rule'remove :: !Prelude.Bool,
                              _Config'Rule'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Config'Rule where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Config'Rule "header" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'Rule'header (\ x__ y__ -> x__ {_Config'Rule'header = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config'Rule "cookie" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'Rule'cookie (\ x__ y__ -> x__ {_Config'Rule'cookie = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config'Rule "onHeaderPresent" Config'KeyValuePair where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'Rule'onHeaderPresent
           (\ x__ y__ -> x__ {_Config'Rule'onHeaderPresent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Config'Rule "maybe'onHeaderPresent" (Prelude.Maybe Config'KeyValuePair) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'Rule'onHeaderPresent
           (\ x__ y__ -> x__ {_Config'Rule'onHeaderPresent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config'Rule "onHeaderMissing" Config'KeyValuePair where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'Rule'onHeaderMissing
           (\ x__ y__ -> x__ {_Config'Rule'onHeaderMissing = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Config'Rule "maybe'onHeaderMissing" (Prelude.Maybe Config'KeyValuePair) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'Rule'onHeaderMissing
           (\ x__ y__ -> x__ {_Config'Rule'onHeaderMissing = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Config'Rule "remove" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Config'Rule'remove (\ x__ y__ -> x__ {_Config'Rule'remove = y__}))
        Prelude.id
instance Data.ProtoLens.Message Config'Rule where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.header_to_metadata.v3.Config.Rule"
  packedMessageDescriptor _
    = "\n\
      \\EOTRule\DC2B\n\
      \\ACKheader\CAN\SOH \SOH(\tR\ACKheaderB*\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\242\152\254\143\ENQ\EM\DC2\ETBheader_cookie_specifier\DC2B\n\
      \\ACKcookie\CAN\ENQ \SOH(\tR\ACKcookieB*\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\242\152\254\143\ENQ\EM\DC2\ETBheader_cookie_specifier\DC2\136\SOH\n\
      \\DC1on_header_present\CAN\STX \SOH(\v2H.envoy.extensions.filters.http.header_to_metadata.v3.Config.KeyValuePairR\SIonHeaderPresentB\DC2\242\152\254\143\ENQ\f\n\
      \\n\
      \on_present\DC2\136\SOH\n\
      \\DC1on_header_missing\CAN\ETX \SOH(\v2H.envoy.extensions.filters.http.header_to_metadata.v3.Config.KeyValuePairR\SIonHeaderMissingB\DC2\242\152\254\143\ENQ\f\n\
      \\n\
      \on_missing\DC2\SYN\n\
      \\ACKremove\CAN\EOT \SOH(\bR\ACKremove:A\154\197\136\RS<\n\
      \:envoy.config.filter.http.header_to_metadata.v2.Config.Rule"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        header__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"header")) ::
              Data.ProtoLens.FieldDescriptor Config'Rule
        cookie__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cookie"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cookie")) ::
              Data.ProtoLens.FieldDescriptor Config'Rule
        onHeaderPresent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "on_header_present"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Config'KeyValuePair)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'onHeaderPresent")) ::
              Data.ProtoLens.FieldDescriptor Config'Rule
        onHeaderMissing__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "on_header_missing"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Config'KeyValuePair)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'onHeaderMissing")) ::
              Data.ProtoLens.FieldDescriptor Config'Rule
        remove__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remove"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"remove")) ::
              Data.ProtoLens.FieldDescriptor Config'Rule
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, header__field_descriptor),
           (Data.ProtoLens.Tag 5, cookie__field_descriptor),
           (Data.ProtoLens.Tag 2, onHeaderPresent__field_descriptor),
           (Data.ProtoLens.Tag 3, onHeaderMissing__field_descriptor),
           (Data.ProtoLens.Tag 4, remove__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Config'Rule'_unknownFields
        (\ x__ y__ -> x__ {_Config'Rule'_unknownFields = y__})
  defMessage
    = Config'Rule'_constructor
        {_Config'Rule'header = Data.ProtoLens.fieldDefault,
         _Config'Rule'cookie = Data.ProtoLens.fieldDefault,
         _Config'Rule'onHeaderPresent = Prelude.Nothing,
         _Config'Rule'onHeaderMissing = Prelude.Nothing,
         _Config'Rule'remove = Data.ProtoLens.fieldDefault,
         _Config'Rule'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Config'Rule -> Data.ProtoLens.Encoding.Bytes.Parser Config'Rule
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
                                       "header"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"header") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "cookie"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cookie") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "on_header_present"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"onHeaderPresent") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "on_header_missing"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"onHeaderMissing") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "remove"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"remove") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Rule"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"header") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cookie") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                          (Data.ProtoLens.Field.field @"maybe'onHeaderPresent") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'onHeaderMissing") _x
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
                         (let
                            _v = Lens.Family2.view (Data.ProtoLens.Field.field @"remove") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0)
                                     _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Config'Rule where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Config'Rule'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Config'Rule'header x__)
                (Control.DeepSeq.deepseq
                   (_Config'Rule'cookie x__)
                   (Control.DeepSeq.deepseq
                      (_Config'Rule'onHeaderPresent x__)
                      (Control.DeepSeq.deepseq
                         (_Config'Rule'onHeaderMissing x__)
                         (Control.DeepSeq.deepseq (_Config'Rule'remove x__) ())))))
newtype Config'ValueEncode'UnrecognizedValue
  = Config'ValueEncode'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Config'ValueEncode
  = Config'NONE |
    Config'BASE64 |
    Config'ValueEncode'Unrecognized !Config'ValueEncode'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Config'ValueEncode where
  maybeToEnum 0 = Prelude.Just Config'NONE
  maybeToEnum 1 = Prelude.Just Config'BASE64
  maybeToEnum k
    = Prelude.Just
        (Config'ValueEncode'Unrecognized
           (Config'ValueEncode'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Config'NONE = "NONE"
  showEnum Config'BASE64 = "BASE64"
  showEnum
    (Config'ValueEncode'Unrecognized (Config'ValueEncode'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NONE" = Prelude.Just Config'NONE
    | (Prelude.==) k "BASE64" = Prelude.Just Config'BASE64
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Config'ValueEncode where
  minBound = Config'NONE
  maxBound = Config'BASE64
instance Prelude.Enum Config'ValueEncode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ValueEncode: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Config'NONE = 0
  fromEnum Config'BASE64 = 1
  fromEnum
    (Config'ValueEncode'Unrecognized (Config'ValueEncode'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Config'BASE64
    = Prelude.error
        "Config'ValueEncode.succ: bad argument Config'BASE64. This value would be out of bounds."
  succ Config'NONE = Config'BASE64
  succ (Config'ValueEncode'Unrecognized _)
    = Prelude.error
        "Config'ValueEncode.succ: bad argument: unrecognized value"
  pred Config'NONE
    = Prelude.error
        "Config'ValueEncode.pred: bad argument Config'NONE. This value would be out of bounds."
  pred Config'BASE64 = Config'NONE
  pred (Config'ValueEncode'Unrecognized _)
    = Prelude.error
        "Config'ValueEncode.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Config'ValueEncode where
  fieldDefault = Config'NONE
instance Control.DeepSeq.NFData Config'ValueEncode where
  rnf x__ = Prelude.seq x__ ()
newtype Config'ValueType'UnrecognizedValue
  = Config'ValueType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Config'ValueType
  = Config'STRING |
    Config'NUMBER |
    Config'PROTOBUF_VALUE |
    Config'ValueType'Unrecognized !Config'ValueType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Config'ValueType where
  maybeToEnum 0 = Prelude.Just Config'STRING
  maybeToEnum 1 = Prelude.Just Config'NUMBER
  maybeToEnum 2 = Prelude.Just Config'PROTOBUF_VALUE
  maybeToEnum k
    = Prelude.Just
        (Config'ValueType'Unrecognized
           (Config'ValueType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Config'STRING = "STRING"
  showEnum Config'NUMBER = "NUMBER"
  showEnum Config'PROTOBUF_VALUE = "PROTOBUF_VALUE"
  showEnum
    (Config'ValueType'Unrecognized (Config'ValueType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "STRING" = Prelude.Just Config'STRING
    | (Prelude.==) k "NUMBER" = Prelude.Just Config'NUMBER
    | (Prelude.==) k "PROTOBUF_VALUE"
    = Prelude.Just Config'PROTOBUF_VALUE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Config'ValueType where
  minBound = Config'STRING
  maxBound = Config'PROTOBUF_VALUE
instance Prelude.Enum Config'ValueType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ValueType: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Config'STRING = 0
  fromEnum Config'NUMBER = 1
  fromEnum Config'PROTOBUF_VALUE = 2
  fromEnum
    (Config'ValueType'Unrecognized (Config'ValueType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Config'PROTOBUF_VALUE
    = Prelude.error
        "Config'ValueType.succ: bad argument Config'PROTOBUF_VALUE. This value would be out of bounds."
  succ Config'STRING = Config'NUMBER
  succ Config'NUMBER = Config'PROTOBUF_VALUE
  succ (Config'ValueType'Unrecognized _)
    = Prelude.error
        "Config'ValueType.succ: bad argument: unrecognized value"
  pred Config'STRING
    = Prelude.error
        "Config'ValueType.pred: bad argument Config'STRING. This value would be out of bounds."
  pred Config'NUMBER = Config'STRING
  pred Config'PROTOBUF_VALUE = Config'NUMBER
  pred (Config'ValueType'Unrecognized _)
    = Prelude.error
        "Config'ValueType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Config'ValueType where
  fieldDefault = Config'STRING
instance Control.DeepSeq.NFData Config'ValueType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Lenvoy/extensions/filters/http/header_to_metadata/v3/header_to_metadata.proto\DC23envoy.extensions.filters.http.header_to_metadata.v3\SUB!envoy/type/matcher/v3/regex.proto\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\128\v\n\
    \\ACKConfig\DC2e\n\
    \\rrequest_rules\CAN\SOH \ETX(\v2@.envoy.extensions.filters.http.header_to_metadata.v3.Config.RuleR\frequestRules\DC2g\n\
    \\SOresponse_rules\CAN\STX \ETX(\v2@.envoy.extensions.filters.http.header_to_metadata.v3.Config.RuleR\rresponseRules\SUB\135\EOT\n\
    \\fKeyValuePair\DC2-\n\
    \\DC2metadata_namespace\CAN\SOH \SOH(\tR\DC1metadataNamespace\DC2\EM\n\
    \\ETXkey\CAN\STX \SOH(\tR\ETXkeyB\a\250B\EOTr\STX\DLE\SOH\DC2(\n\
    \\ENQvalue\CAN\ETX \SOH(\tR\ENQvalueB\DC2\242\152\254\143\ENQ\f\DC2\n\
    \value_type\DC2r\n\
    \\DC3regex_value_rewrite\CAN\ACK \SOH(\v2..envoy.type.matcher.v3.RegexMatchAndSubstituteR\DC1regexValueRewriteB\DC2\242\152\254\143\ENQ\f\DC2\n\
    \value_type\DC2c\n\
    \\EOTtype\CAN\EOT \SOH(\SO2E.envoy.extensions.filters.http.header_to_metadata.v3.Config.ValueTypeR\EOTtypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2_\n\
    \\ACKencode\CAN\ENQ \SOH(\SO2G.envoy.extensions.filters.http.header_to_metadata.v3.Config.ValueEncodeR\ACKencode:I\154\197\136\RSD\n\
    \Benvoy.config.filter.http.header_to_metadata.v2.Config.KeyValuePair\SUB\255\ETX\n\
    \\EOTRule\DC2B\n\
    \\ACKheader\CAN\SOH \SOH(\tR\ACKheaderB*\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\242\152\254\143\ENQ\EM\DC2\ETBheader_cookie_specifier\DC2B\n\
    \\ACKcookie\CAN\ENQ \SOH(\tR\ACKcookieB*\250B\br\ACK\192\SOH\SOH\200\SOH\NUL\242\152\254\143\ENQ\EM\DC2\ETBheader_cookie_specifier\DC2\136\SOH\n\
    \\DC1on_header_present\CAN\STX \SOH(\v2H.envoy.extensions.filters.http.header_to_metadata.v3.Config.KeyValuePairR\SIonHeaderPresentB\DC2\242\152\254\143\ENQ\f\n\
    \\n\
    \on_present\DC2\136\SOH\n\
    \\DC1on_header_missing\CAN\ETX \SOH(\v2H.envoy.extensions.filters.http.header_to_metadata.v3.Config.KeyValuePairR\SIonHeaderMissingB\DC2\242\152\254\143\ENQ\f\n\
    \\n\
    \on_missing\DC2\SYN\n\
    \\ACKremove\CAN\EOT \SOH(\bR\ACKremove:A\154\197\136\RS<\n\
    \:envoy.config.filter.http.header_to_metadata.v2.Config.Rule\"7\n\
    \\tValueType\DC2\n\
    \\n\
    \\ACKSTRING\DLE\NUL\DC2\n\
    \\n\
    \\ACKNUMBER\DLE\SOH\DC2\DC2\n\
    \\SOPROTOBUF_VALUE\DLE\STX\"#\n\
    \\vValueEncode\DC2\b\n\
    \\EOTNONE\DLE\NUL\DC2\n\
    \\n\
    \\ACKBASE64\DLE\SOH:<\154\197\136\RS7\n\
    \5envoy.config.filter.http.header_to_metadata.v2.ConfigBd\n\
    \Aio.envoyproxy.envoy.extensions.filters.http.header_to_metadata.v3B\NAKHeaderToMetadataProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\250#\n\
    \\a\DC2\ENQ\NUL\NUL\131\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL<\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL+\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULZ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NULZ\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL6\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL6\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\204\STX\n\
    \\STX\EOT\NUL\DC2\ENQ\CAN\NUL\131\SOH\SOH2\190\STX [#protodoc-title: Header-To-Metadata Filter]\n\
    \\n\
    \ The configuration for transforming headers into metadata. This is useful\n\
    \ for matching load balancer subsets, logging, etc.\n\
    \\n\
    \ Header to Metadata :ref:`configuration overview <config_http_filters_header_to_metadata>`.\n\
    \ [#extension: envoy.filters.http.header_to_metadata]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\SO\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\EM\STX\SUB>\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\EM\STX\SUB>\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\FS\STX$\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\FS\a\DLE\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\GS\EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\GS\r\SO\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\US\EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\US\r\SO\n\
    \\158\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX#\EOT\ETB\SUB\142\SOH The value is a serialized `protobuf.Value\n\
    \ <https://github.com/protocolbuffers/protobuf/blob/master/src/google/protobuf/struct.proto#L62>`_.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX#\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX#\NAK\SYN\n\
    \;\n\
    \\EOT\EOT\NUL\EOT\SOH\DC2\EOT'\STX/\ETX\SUB- ValueEncode defines the encoding algorithm.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\SOH\SOH\DC2\ETX'\a\DC2\n\
    \*\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\NUL\DC2\ETX)\EOT\r\SUB\ESC The value is not encoded.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\SOH\DC2\ETX)\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\STX\DC2\ETX)\v\f\n\
    \\208\SOH\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\SOH\DC2\ETX.\EOT\SI\SUB\192\SOH The value is encoded in `Base64 <https://tools.ietf.org/html/rfc4648#section-4>`_.\n\
    \ Note: this is mostly used for STRING and PROTOBUF_VALUE to escape the\n\
    \ non-ASCII characters in the header.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\SOH\DC2\ETX.\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\STX\DC2\ETX.\r\SO\n\
    \%\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT2\STXU\ETX\SUB\ETB [#next-free-field: 7]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX2\n\
    \\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT3\EOT4M\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT3\EOT4M\n\
    \Y\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX7\EOT\"\SUBJ The namespace \226\128\148 if this is empty, the filter's namespace will be used.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX7\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX7\v\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX7 !\n\
    \5\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX:\EOT<\SUB& The key to use within the namespace.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX:\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX:\v\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX:\DC1\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\b\DC2\ETX:\DC3;\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\SOH\b\175\b\SO\DC2\ETX:\DC4:\n\
    \\139\EOT\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETXD\EOTW\SUB\251\ETX The value to pair with the given key.\n\
    \\n\
    \ When used for a\n\
    \ :ref:`on_header_present <envoy_v3_api_field_extensions.filters.http.header_to_metadata.v3.Config.Rule.on_header_present>`\n\
    \ case, if value is non-empty it'll be used instead of the header value. If both are empty, no metadata is added.\n\
    \\n\
    \ When used for a :ref:`on_header_missing <envoy_v3_api_field_extensions.filters.http.header_to_metadata.v3.Config.Rule.on_header_missing>`\n\
    \ case, a non-empty value must be provided otherwise no metadata is added.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETXD\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETXD\v\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETXD\DC3\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\b\DC2\ETXD\NAKV\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\NUL\STX\STX\b\142\227\255Q\STX\DC2\ETXD\SYNU\n\
    \\252\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\EOTL\EOTMJ\SUB\235\STX If present, the header's value will be matched and substituted with this. If there is no match or substitution, the header value\n\
    \ is used as-is.\n\
    \\n\
    \ This is only used for :ref:`on_header_present <envoy_v3_api_field_extensions.filters.http.header_to_metadata.v3.Config.Rule.on_header_present>`.\n\
    \\n\
    \ Note: if the `value` field is non-empty this field should be empty.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ACK\DC2\ETXL\EOT+\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETXL,?\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETXLBC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\b\DC2\ETXM\bI\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\NUL\STX\ETX\b\142\227\255Q\STX\DC2\ETXM\tH\n\
    \9\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETXP\EOTF\SUB* The value's type \226\128\148 defaults to string.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ACK\DC2\ETXP\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETXP\SO\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETXP\NAK\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\b\DC2\ETXP\ETBE\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\EOT\b\175\b\DLE\DC2\ETXP\CAND\n\
    \\140\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\ETXT\EOT\ESC\SUB} How is the value encoded, default is NONE (not encoded).\n\
    \ The value will be decoded accordingly before storing to metadata.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ACK\DC2\ETXT\EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\ETXT\DLE\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\ETXT\EM\SUB\n\
    \q\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOTY\STX|\ETX\SUBc A Rule defines what metadata to apply when a header is present or missing.\n\
    \ [#next-free-field: 6]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETXY\n\
    \\SO\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\a\DC2\EOTZ\EOT[E\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOTZ\EOT[E\n\
    \~\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\EOT`\EOTc\ACK\SUBn Specifies that a match will be performed on the value of a header or a cookie.\n\
    \\n\
    \ The header to be extracted.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETX`\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX`\v\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX`\DC4\NAK\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\b\DC2\EOT`\SYNc\ENQ\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\NUL\b\175\b\SO\DC2\ETXa\ACKR\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\SOH\STX\NUL\b\142\227\255Q\STX\DC2\ETXb\ACKR\n\
    \-\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\EOTf\EOTi\ACK\SUB\GS The cookie to be extracted.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETXf\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETXf\v\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETXf\DC4\NAK\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\b\DC2\EOTf\SYNi\ENQ\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\SOH\b\175\b\SO\DC2\ETXg\ACKR\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\SOH\STX\SOH\b\142\227\255Q\STX\DC2\ETXh\ACKR\n\
    \\190\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\ETXo\EOT`\SUB\174\SOH If the header or cookie is present, apply this metadata KeyValuePair.\n\
    \\n\
    \ If the value in the KeyValuePair is non-empty, it'll be used instead\n\
    \ of the header or cookie value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ACK\DC2\ETXo\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\ETXo\DC1\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\ETXo%&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\b\DC2\ETXo'_\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\SOH\STX\STX\b\142\227\255Q\SOH\DC2\ETXo(^\n\
    \\204\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ETX\DC2\ETXu\EOT`\SUB\188\SOH If the header or cookie is not present, apply this metadata KeyValuePair.\n\
    \\n\
    \ The value in the KeyValuePair must be set, since it'll be used in lieu\n\
    \ of the missing header or cookie value.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ACK\DC2\ETXu\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\SOH\DC2\ETXu\DC1\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ETX\DC2\ETXu%&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\b\DC2\ETXu'_\n\
    \\DC3\n\
    \\f\EOT\NUL\ETX\SOH\STX\ETX\b\142\227\255Q\SOH\DC2\ETXu(^\n\
    \\166\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\EOT\DC2\ETX{\EOT\DC4\SUB\150\SOH Whether or not to remove the header after a rule is applied.\n\
    \\n\
    \ This prevents headers from leaking.\n\
    \ This field is not supported in case of a cookie.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ENQ\DC2\ETX{\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\SOH\DC2\ETX{\t\SI\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ETX\DC2\ETX{\DC2\DC3\n\
    \6\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DEL\STX\"\SUB) The list of rules to apply to requests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\DEL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DEL\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DEL\DLE\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DEL !\n\
    \8\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\130\SOH\STX#\SUB* The list of rules to apply to responses.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\EOT\130\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\EOT\130\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\130\SOH\DLE\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\130\SOH!\"b\ACKproto3"