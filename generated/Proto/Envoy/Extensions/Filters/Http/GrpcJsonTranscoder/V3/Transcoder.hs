{- This file was auto-generated from envoy/extensions/filters/http/grpc_json_transcoder/v3/transcoder.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder (
        GrpcJsonTranscoder(), GrpcJsonTranscoder'DescriptorSet(..),
        _GrpcJsonTranscoder'ProtoDescriptor,
        _GrpcJsonTranscoder'ProtoDescriptorBin,
        GrpcJsonTranscoder'PrintOptions(),
        GrpcJsonTranscoder'RequestValidationOptions(),
        GrpcJsonTranscoder'UrlUnescapeSpec(..),
        GrpcJsonTranscoder'UrlUnescapeSpec(),
        GrpcJsonTranscoder'UrlUnescapeSpec'UnrecognizedValue
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.services' @:: Lens' GrpcJsonTranscoder [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.vec'services' @:: Lens' GrpcJsonTranscoder (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.printOptions' @:: Lens' GrpcJsonTranscoder GrpcJsonTranscoder'PrintOptions@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.maybe'printOptions' @:: Lens' GrpcJsonTranscoder (Prelude.Maybe GrpcJsonTranscoder'PrintOptions)@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.matchIncomingRequestRoute' @:: Lens' GrpcJsonTranscoder Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.ignoredQueryParameters' @:: Lens' GrpcJsonTranscoder [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.vec'ignoredQueryParameters' @:: Lens' GrpcJsonTranscoder (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.autoMapping' @:: Lens' GrpcJsonTranscoder Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.ignoreUnknownQueryParameters' @:: Lens' GrpcJsonTranscoder Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.convertGrpcStatus' @:: Lens' GrpcJsonTranscoder Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.urlUnescapeSpec' @:: Lens' GrpcJsonTranscoder GrpcJsonTranscoder'UrlUnescapeSpec@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.requestValidationOptions' @:: Lens' GrpcJsonTranscoder GrpcJsonTranscoder'RequestValidationOptions@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.maybe'requestValidationOptions' @:: Lens' GrpcJsonTranscoder (Prelude.Maybe GrpcJsonTranscoder'RequestValidationOptions)@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.maybe'descriptorSet' @:: Lens' GrpcJsonTranscoder (Prelude.Maybe GrpcJsonTranscoder'DescriptorSet)@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.maybe'protoDescriptor' @:: Lens' GrpcJsonTranscoder (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.protoDescriptor' @:: Lens' GrpcJsonTranscoder Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.maybe'protoDescriptorBin' @:: Lens' GrpcJsonTranscoder (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.protoDescriptorBin' @:: Lens' GrpcJsonTranscoder Data.ByteString.ByteString@ -}
data GrpcJsonTranscoder
  = GrpcJsonTranscoder'_constructor {_GrpcJsonTranscoder'services :: !(Data.Vector.Vector Data.Text.Text),
                                     _GrpcJsonTranscoder'printOptions :: !(Prelude.Maybe GrpcJsonTranscoder'PrintOptions),
                                     _GrpcJsonTranscoder'matchIncomingRequestRoute :: !Prelude.Bool,
                                     _GrpcJsonTranscoder'ignoredQueryParameters :: !(Data.Vector.Vector Data.Text.Text),
                                     _GrpcJsonTranscoder'autoMapping :: !Prelude.Bool,
                                     _GrpcJsonTranscoder'ignoreUnknownQueryParameters :: !Prelude.Bool,
                                     _GrpcJsonTranscoder'convertGrpcStatus :: !Prelude.Bool,
                                     _GrpcJsonTranscoder'urlUnescapeSpec :: !GrpcJsonTranscoder'UrlUnescapeSpec,
                                     _GrpcJsonTranscoder'requestValidationOptions :: !(Prelude.Maybe GrpcJsonTranscoder'RequestValidationOptions),
                                     _GrpcJsonTranscoder'descriptorSet :: !(Prelude.Maybe GrpcJsonTranscoder'DescriptorSet),
                                     _GrpcJsonTranscoder'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcJsonTranscoder where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data GrpcJsonTranscoder'DescriptorSet
  = GrpcJsonTranscoder'ProtoDescriptor !Data.Text.Text |
    GrpcJsonTranscoder'ProtoDescriptorBin !Data.ByteString.ByteString
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "services" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'services
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'services = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "vec'services" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'services
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'services = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "printOptions" GrpcJsonTranscoder'PrintOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'printOptions
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'printOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "maybe'printOptions" (Prelude.Maybe GrpcJsonTranscoder'PrintOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'printOptions
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'printOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "matchIncomingRequestRoute" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'matchIncomingRequestRoute
           (\ x__ y__
              -> x__ {_GrpcJsonTranscoder'matchIncomingRequestRoute = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "ignoredQueryParameters" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'ignoredQueryParameters
           (\ x__ y__
              -> x__ {_GrpcJsonTranscoder'ignoredQueryParameters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "vec'ignoredQueryParameters" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'ignoredQueryParameters
           (\ x__ y__
              -> x__ {_GrpcJsonTranscoder'ignoredQueryParameters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "autoMapping" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'autoMapping
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'autoMapping = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "ignoreUnknownQueryParameters" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'ignoreUnknownQueryParameters
           (\ x__ y__
              -> x__ {_GrpcJsonTranscoder'ignoreUnknownQueryParameters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "convertGrpcStatus" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'convertGrpcStatus
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'convertGrpcStatus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "urlUnescapeSpec" GrpcJsonTranscoder'UrlUnescapeSpec where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'urlUnescapeSpec
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'urlUnescapeSpec = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "requestValidationOptions" GrpcJsonTranscoder'RequestValidationOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'requestValidationOptions
           (\ x__ y__
              -> x__ {_GrpcJsonTranscoder'requestValidationOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "maybe'requestValidationOptions" (Prelude.Maybe GrpcJsonTranscoder'RequestValidationOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'requestValidationOptions
           (\ x__ y__
              -> x__ {_GrpcJsonTranscoder'requestValidationOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "maybe'descriptorSet" (Prelude.Maybe GrpcJsonTranscoder'DescriptorSet) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'descriptorSet
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'descriptorSet = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "maybe'protoDescriptor" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'descriptorSet
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'descriptorSet = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcJsonTranscoder'ProtoDescriptor x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap GrpcJsonTranscoder'ProtoDescriptor y__))
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "protoDescriptor" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'descriptorSet
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'descriptorSet = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcJsonTranscoder'ProtoDescriptor x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap GrpcJsonTranscoder'ProtoDescriptor y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "maybe'protoDescriptorBin" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'descriptorSet
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'descriptorSet = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcJsonTranscoder'ProtoDescriptorBin x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap GrpcJsonTranscoder'ProtoDescriptorBin y__))
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder "protoDescriptorBin" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'descriptorSet
           (\ x__ y__ -> x__ {_GrpcJsonTranscoder'descriptorSet = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcJsonTranscoder'ProtoDescriptorBin x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap GrpcJsonTranscoder'ProtoDescriptorBin y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message GrpcJsonTranscoder where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder"
  packedMessageDescriptor _
    = "\n\
      \\DC2GrpcJsonTranscoder\DC2+\n\
      \\DLEproto_descriptor\CAN\SOH \SOH(\tH\NULR\SIprotoDescriptor\DC22\n\
      \\DC4proto_descriptor_bin\CAN\EOT \SOH(\fH\NULR\DC2protoDescriptorBin\DC2\SUB\n\
      \\bservices\CAN\STX \ETX(\tR\bservices\DC2{\n\
      \\rprint_options\CAN\ETX \SOH(\v2V.envoy.extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.PrintOptionsR\fprintOptions\DC2?\n\
      \\FSmatch_incoming_request_route\CAN\ENQ \SOH(\bR\EMmatchIncomingRequestRoute\DC28\n\
      \\CANignored_query_parameters\CAN\ACK \ETX(\tR\SYNignoredQueryParameters\DC2!\n\
      \\fauto_mapping\CAN\a \SOH(\bR\vautoMapping\DC2E\n\
      \\USignore_unknown_query_parameters\CAN\b \SOH(\bR\FSignoreUnknownQueryParameters\DC2.\n\
      \\DC3convert_grpc_status\CAN\t \SOH(\bR\DC1convertGrpcStatus\DC2\143\SOH\n\
      \\DC1url_unescape_spec\CAN\n\
      \ \SOH(\SO2Y.envoy.extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.UrlUnescapeSpecR\SIurlUnescapeSpecB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\160\SOH\n\
      \\SUBrequest_validation_options\CAN\v \SOH(\v2b.envoy.extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.RequestValidationOptionsR\CANrequestValidationOptions\SUB\192\STX\n\
      \\fPrintOptions\DC2%\n\
      \\SOadd_whitespace\CAN\SOH \SOH(\bR\raddWhitespace\DC2A\n\
      \\GSalways_print_primitive_fields\CAN\STX \SOH(\bR\SUBalwaysPrintPrimitiveFields\DC2:\n\
      \\SUBalways_print_enums_as_ints\CAN\ETX \SOH(\bR\SYNalwaysPrintEnumsAsInts\DC2;\n\
      \\SUBpreserve_proto_field_names\CAN\EOT \SOH(\bR\ETBpreserveProtoFieldNames:M\154\197\136\RSH\n\
      \Fenvoy.config.filter.http.transcoder.v2.GrpcJsonTranscoder.PrintOptions\SUB\149\SOH\n\
      \\CANRequestValidationOptions\DC22\n\
      \\NAKreject_unknown_method\CAN\SOH \SOH(\bR\DC3rejectUnknownMethod\DC2E\n\
      \\USreject_unknown_query_parameters\CAN\STX \SOH(\bR\FSrejectUnknownQueryParameters\"j\n\
      \\SIUrlUnescapeSpec\DC2\"\n\
      \\RSALL_CHARACTERS_EXCEPT_RESERVED\DLE\NUL\DC2\US\n\
      \\ESCALL_CHARACTERS_EXCEPT_SLASH\DLE\SOH\DC2\DC2\n\
      \\SOALL_CHARACTERS\DLE\STXB\NAK\n\
      \\SOdescriptor_set\DC2\ETX\248B\SOH:@\154\197\136\RS;\n\
      \9envoy.config.filter.http.transcoder.v2.GrpcJsonTranscoder"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        services__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "services"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"services")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
        printOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "print_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcJsonTranscoder'PrintOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'printOptions")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
        matchIncomingRequestRoute__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_incoming_request_route"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"matchIncomingRequestRoute")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
        ignoredQueryParameters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignored_query_parameters"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"ignoredQueryParameters")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
        autoMapping__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auto_mapping"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"autoMapping")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
        ignoreUnknownQueryParameters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ignore_unknown_query_parameters"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ignoreUnknownQueryParameters")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
        convertGrpcStatus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "convert_grpc_status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"convertGrpcStatus")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
        urlUnescapeSpec__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "url_unescape_spec"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcJsonTranscoder'UrlUnescapeSpec)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"urlUnescapeSpec")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
        requestValidationOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_validation_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcJsonTranscoder'RequestValidationOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestValidationOptions")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
        protoDescriptor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proto_descriptor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protoDescriptor")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
        protoDescriptorBin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proto_descriptor_bin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protoDescriptorBin")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 2, services__field_descriptor),
           (Data.ProtoLens.Tag 3, printOptions__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            matchIncomingRequestRoute__field_descriptor),
           (Data.ProtoLens.Tag 6, ignoredQueryParameters__field_descriptor),
           (Data.ProtoLens.Tag 7, autoMapping__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            ignoreUnknownQueryParameters__field_descriptor),
           (Data.ProtoLens.Tag 9, convertGrpcStatus__field_descriptor),
           (Data.ProtoLens.Tag 10, urlUnescapeSpec__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            requestValidationOptions__field_descriptor),
           (Data.ProtoLens.Tag 1, protoDescriptor__field_descriptor),
           (Data.ProtoLens.Tag 4, protoDescriptorBin__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcJsonTranscoder'_unknownFields
        (\ x__ y__ -> x__ {_GrpcJsonTranscoder'_unknownFields = y__})
  defMessage
    = GrpcJsonTranscoder'_constructor
        {_GrpcJsonTranscoder'services = Data.Vector.Generic.empty,
         _GrpcJsonTranscoder'printOptions = Prelude.Nothing,
         _GrpcJsonTranscoder'matchIncomingRequestRoute = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'ignoredQueryParameters = Data.Vector.Generic.empty,
         _GrpcJsonTranscoder'autoMapping = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'ignoreUnknownQueryParameters = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'convertGrpcStatus = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'urlUnescapeSpec = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'requestValidationOptions = Prelude.Nothing,
         _GrpcJsonTranscoder'descriptorSet = Prelude.Nothing,
         _GrpcJsonTranscoder'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcJsonTranscoder
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser GrpcJsonTranscoder
        loop x mutable'ignoredQueryParameters mutable'services
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'ignoredQueryParameters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                            mutable'ignoredQueryParameters)
                      frozen'services <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'services)
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
                              (Data.ProtoLens.Field.field @"vec'ignoredQueryParameters")
                              frozen'ignoredQueryParameters
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'services") frozen'services x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "services"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'services y)
                                loop x mutable'ignoredQueryParameters v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "print_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"printOptions") y x)
                                  mutable'ignoredQueryParameters
                                  mutable'services
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "match_incoming_request_route"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"matchIncomingRequestRoute") y x)
                                  mutable'ignoredQueryParameters
                                  mutable'services
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "ignored_query_parameters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'ignoredQueryParameters y)
                                loop x v mutable'services
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "auto_mapping"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"autoMapping") y x)
                                  mutable'ignoredQueryParameters
                                  mutable'services
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ignore_unknown_query_parameters"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ignoreUnknownQueryParameters")
                                     y
                                     x)
                                  mutable'ignoredQueryParameters
                                  mutable'services
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "convert_grpc_status"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"convertGrpcStatus") y x)
                                  mutable'ignoredQueryParameters
                                  mutable'services
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "url_unescape_spec"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"urlUnescapeSpec") y x)
                                  mutable'ignoredQueryParameters
                                  mutable'services
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_validation_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestValidationOptions") y x)
                                  mutable'ignoredQueryParameters
                                  mutable'services
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
                                       "proto_descriptor"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protoDescriptor") y x)
                                  mutable'ignoredQueryParameters
                                  mutable'services
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "proto_descriptor_bin"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"protoDescriptorBin") y x)
                                  mutable'ignoredQueryParameters
                                  mutable'services
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'ignoredQueryParameters
                                  mutable'services
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'ignoredQueryParameters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  Data.ProtoLens.Encoding.Growing.new
              mutable'services <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'ignoredQueryParameters
                mutable'services)
          "GrpcJsonTranscoder"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
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
                           Data.Text.Encoding.encodeUtf8
                           _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'services") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'printOptions") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"matchIncomingRequestRoute") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
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
                                    Data.Text.Encoding.encodeUtf8
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'ignoredQueryParameters") _x))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"autoMapping") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                  ((Prelude..)
                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (\ b -> if b then 1 else 0)
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"ignoreUnknownQueryParameters") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0)
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"convertGrpcStatus") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0)
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"urlUnescapeSpec") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                           ((Prelude..)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral)
                                              Prelude.fromEnum
                                              _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'requestValidationOptions")
                                            _x
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
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'descriptorSet")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just (GrpcJsonTranscoder'ProtoDescriptor v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.Text.Encoding.encodeUtf8
                                                     v)
                                           (Prelude.Just (GrpcJsonTranscoder'ProtoDescriptorBin v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                                  ((\ bs
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              (Prelude.fromIntegral
                                                                 (Data.ByteString.length bs)))
                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                              bs))
                                                     v))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData GrpcJsonTranscoder where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcJsonTranscoder'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcJsonTranscoder'services x__)
                (Control.DeepSeq.deepseq
                   (_GrpcJsonTranscoder'printOptions x__)
                   (Control.DeepSeq.deepseq
                      (_GrpcJsonTranscoder'matchIncomingRequestRoute x__)
                      (Control.DeepSeq.deepseq
                         (_GrpcJsonTranscoder'ignoredQueryParameters x__)
                         (Control.DeepSeq.deepseq
                            (_GrpcJsonTranscoder'autoMapping x__)
                            (Control.DeepSeq.deepseq
                               (_GrpcJsonTranscoder'ignoreUnknownQueryParameters x__)
                               (Control.DeepSeq.deepseq
                                  (_GrpcJsonTranscoder'convertGrpcStatus x__)
                                  (Control.DeepSeq.deepseq
                                     (_GrpcJsonTranscoder'urlUnescapeSpec x__)
                                     (Control.DeepSeq.deepseq
                                        (_GrpcJsonTranscoder'requestValidationOptions x__)
                                        (Control.DeepSeq.deepseq
                                           (_GrpcJsonTranscoder'descriptorSet x__) ()))))))))))
instance Control.DeepSeq.NFData GrpcJsonTranscoder'DescriptorSet where
  rnf (GrpcJsonTranscoder'ProtoDescriptor x__)
    = Control.DeepSeq.rnf x__
  rnf (GrpcJsonTranscoder'ProtoDescriptorBin x__)
    = Control.DeepSeq.rnf x__
_GrpcJsonTranscoder'ProtoDescriptor ::
  Data.ProtoLens.Prism.Prism' GrpcJsonTranscoder'DescriptorSet Data.Text.Text
_GrpcJsonTranscoder'ProtoDescriptor
  = Data.ProtoLens.Prism.prism'
      GrpcJsonTranscoder'ProtoDescriptor
      (\ p__
         -> case p__ of
              (GrpcJsonTranscoder'ProtoDescriptor p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcJsonTranscoder'ProtoDescriptorBin ::
  Data.ProtoLens.Prism.Prism' GrpcJsonTranscoder'DescriptorSet Data.ByteString.ByteString
_GrpcJsonTranscoder'ProtoDescriptorBin
  = Data.ProtoLens.Prism.prism'
      GrpcJsonTranscoder'ProtoDescriptorBin
      (\ p__
         -> case p__ of
              (GrpcJsonTranscoder'ProtoDescriptorBin p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.addWhitespace' @:: Lens' GrpcJsonTranscoder'PrintOptions Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.alwaysPrintPrimitiveFields' @:: Lens' GrpcJsonTranscoder'PrintOptions Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.alwaysPrintEnumsAsInts' @:: Lens' GrpcJsonTranscoder'PrintOptions Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.preserveProtoFieldNames' @:: Lens' GrpcJsonTranscoder'PrintOptions Prelude.Bool@ -}
data GrpcJsonTranscoder'PrintOptions
  = GrpcJsonTranscoder'PrintOptions'_constructor {_GrpcJsonTranscoder'PrintOptions'addWhitespace :: !Prelude.Bool,
                                                  _GrpcJsonTranscoder'PrintOptions'alwaysPrintPrimitiveFields :: !Prelude.Bool,
                                                  _GrpcJsonTranscoder'PrintOptions'alwaysPrintEnumsAsInts :: !Prelude.Bool,
                                                  _GrpcJsonTranscoder'PrintOptions'preserveProtoFieldNames :: !Prelude.Bool,
                                                  _GrpcJsonTranscoder'PrintOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcJsonTranscoder'PrintOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder'PrintOptions "addWhitespace" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'PrintOptions'addWhitespace
           (\ x__ y__
              -> x__ {_GrpcJsonTranscoder'PrintOptions'addWhitespace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder'PrintOptions "alwaysPrintPrimitiveFields" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'PrintOptions'alwaysPrintPrimitiveFields
           (\ x__ y__
              -> x__
                   {_GrpcJsonTranscoder'PrintOptions'alwaysPrintPrimitiveFields = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder'PrintOptions "alwaysPrintEnumsAsInts" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'PrintOptions'alwaysPrintEnumsAsInts
           (\ x__ y__
              -> x__
                   {_GrpcJsonTranscoder'PrintOptions'alwaysPrintEnumsAsInts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder'PrintOptions "preserveProtoFieldNames" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'PrintOptions'preserveProtoFieldNames
           (\ x__ y__
              -> x__
                   {_GrpcJsonTranscoder'PrintOptions'preserveProtoFieldNames = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcJsonTranscoder'PrintOptions where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.PrintOptions"
  packedMessageDescriptor _
    = "\n\
      \\fPrintOptions\DC2%\n\
      \\SOadd_whitespace\CAN\SOH \SOH(\bR\raddWhitespace\DC2A\n\
      \\GSalways_print_primitive_fields\CAN\STX \SOH(\bR\SUBalwaysPrintPrimitiveFields\DC2:\n\
      \\SUBalways_print_enums_as_ints\CAN\ETX \SOH(\bR\SYNalwaysPrintEnumsAsInts\DC2;\n\
      \\SUBpreserve_proto_field_names\CAN\EOT \SOH(\bR\ETBpreserveProtoFieldNames:M\154\197\136\RSH\n\
      \Fenvoy.config.filter.http.transcoder.v2.GrpcJsonTranscoder.PrintOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        addWhitespace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "add_whitespace"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"addWhitespace")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder'PrintOptions
        alwaysPrintPrimitiveFields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "always_print_primitive_fields"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"alwaysPrintPrimitiveFields")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder'PrintOptions
        alwaysPrintEnumsAsInts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "always_print_enums_as_ints"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"alwaysPrintEnumsAsInts")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder'PrintOptions
        preserveProtoFieldNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "preserve_proto_field_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"preserveProtoFieldNames")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder'PrintOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, addWhitespace__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            alwaysPrintPrimitiveFields__field_descriptor),
           (Data.ProtoLens.Tag 3, alwaysPrintEnumsAsInts__field_descriptor),
           (Data.ProtoLens.Tag 4, preserveProtoFieldNames__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcJsonTranscoder'PrintOptions'_unknownFields
        (\ x__ y__
           -> x__ {_GrpcJsonTranscoder'PrintOptions'_unknownFields = y__})
  defMessage
    = GrpcJsonTranscoder'PrintOptions'_constructor
        {_GrpcJsonTranscoder'PrintOptions'addWhitespace = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'PrintOptions'alwaysPrintPrimitiveFields = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'PrintOptions'alwaysPrintEnumsAsInts = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'PrintOptions'preserveProtoFieldNames = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'PrintOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcJsonTranscoder'PrintOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcJsonTranscoder'PrintOptions
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
                                       "add_whitespace"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"addWhitespace") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "always_print_primitive_fields"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"alwaysPrintPrimitiveFields") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "always_print_enums_as_ints"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"alwaysPrintEnumsAsInts") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "preserve_proto_field_names"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"preserveProtoFieldNames") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PrintOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"addWhitespace") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"alwaysPrintPrimitiveFields") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"alwaysPrintEnumsAsInts") _x
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
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"preserveProtoFieldNames") _x
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
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData GrpcJsonTranscoder'PrintOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcJsonTranscoder'PrintOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcJsonTranscoder'PrintOptions'addWhitespace x__)
                (Control.DeepSeq.deepseq
                   (_GrpcJsonTranscoder'PrintOptions'alwaysPrintPrimitiveFields x__)
                   (Control.DeepSeq.deepseq
                      (_GrpcJsonTranscoder'PrintOptions'alwaysPrintEnumsAsInts x__)
                      (Control.DeepSeq.deepseq
                         (_GrpcJsonTranscoder'PrintOptions'preserveProtoFieldNames x__)
                         ()))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.rejectUnknownMethod' @:: Lens' GrpcJsonTranscoder'RequestValidationOptions Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.GrpcJsonTranscoder.V3.Transcoder_Fields.rejectUnknownQueryParameters' @:: Lens' GrpcJsonTranscoder'RequestValidationOptions Prelude.Bool@ -}
data GrpcJsonTranscoder'RequestValidationOptions
  = GrpcJsonTranscoder'RequestValidationOptions'_constructor {_GrpcJsonTranscoder'RequestValidationOptions'rejectUnknownMethod :: !Prelude.Bool,
                                                              _GrpcJsonTranscoder'RequestValidationOptions'rejectUnknownQueryParameters :: !Prelude.Bool,
                                                              _GrpcJsonTranscoder'RequestValidationOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcJsonTranscoder'RequestValidationOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder'RequestValidationOptions "rejectUnknownMethod" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'RequestValidationOptions'rejectUnknownMethod
           (\ x__ y__
              -> x__
                   {_GrpcJsonTranscoder'RequestValidationOptions'rejectUnknownMethod = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcJsonTranscoder'RequestValidationOptions "rejectUnknownQueryParameters" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcJsonTranscoder'RequestValidationOptions'rejectUnknownQueryParameters
           (\ x__ y__
              -> x__
                   {_GrpcJsonTranscoder'RequestValidationOptions'rejectUnknownQueryParameters = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcJsonTranscoder'RequestValidationOptions where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.RequestValidationOptions"
  packedMessageDescriptor _
    = "\n\
      \\CANRequestValidationOptions\DC22\n\
      \\NAKreject_unknown_method\CAN\SOH \SOH(\bR\DC3rejectUnknownMethod\DC2E\n\
      \\USreject_unknown_query_parameters\CAN\STX \SOH(\bR\FSrejectUnknownQueryParameters"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rejectUnknownMethod__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reject_unknown_method"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rejectUnknownMethod")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder'RequestValidationOptions
        rejectUnknownQueryParameters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reject_unknown_query_parameters"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rejectUnknownQueryParameters")) ::
              Data.ProtoLens.FieldDescriptor GrpcJsonTranscoder'RequestValidationOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rejectUnknownMethod__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            rejectUnknownQueryParameters__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcJsonTranscoder'RequestValidationOptions'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcJsonTranscoder'RequestValidationOptions'_unknownFields = y__})
  defMessage
    = GrpcJsonTranscoder'RequestValidationOptions'_constructor
        {_GrpcJsonTranscoder'RequestValidationOptions'rejectUnknownMethod = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'RequestValidationOptions'rejectUnknownQueryParameters = Data.ProtoLens.fieldDefault,
         _GrpcJsonTranscoder'RequestValidationOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcJsonTranscoder'RequestValidationOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcJsonTranscoder'RequestValidationOptions
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
                                       "reject_unknown_method"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rejectUnknownMethod") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reject_unknown_query_parameters"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rejectUnknownQueryParameters")
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
          (do loop Data.ProtoLens.defMessage) "RequestValidationOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"rejectUnknownMethod") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"rejectUnknownQueryParameters") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GrpcJsonTranscoder'RequestValidationOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcJsonTranscoder'RequestValidationOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcJsonTranscoder'RequestValidationOptions'rejectUnknownMethod
                   x__)
                (Control.DeepSeq.deepseq
                   (_GrpcJsonTranscoder'RequestValidationOptions'rejectUnknownQueryParameters
                      x__)
                   ()))
newtype GrpcJsonTranscoder'UrlUnescapeSpec'UnrecognizedValue
  = GrpcJsonTranscoder'UrlUnescapeSpec'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data GrpcJsonTranscoder'UrlUnescapeSpec
  = GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED |
    GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_SLASH |
    GrpcJsonTranscoder'ALL_CHARACTERS |
    GrpcJsonTranscoder'UrlUnescapeSpec'Unrecognized !GrpcJsonTranscoder'UrlUnescapeSpec'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum GrpcJsonTranscoder'UrlUnescapeSpec where
  maybeToEnum 0
    = Prelude.Just GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED
  maybeToEnum 1
    = Prelude.Just GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_SLASH
  maybeToEnum 2 = Prelude.Just GrpcJsonTranscoder'ALL_CHARACTERS
  maybeToEnum k
    = Prelude.Just
        (GrpcJsonTranscoder'UrlUnescapeSpec'Unrecognized
           (GrpcJsonTranscoder'UrlUnescapeSpec'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED
    = "ALL_CHARACTERS_EXCEPT_RESERVED"
  showEnum GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_SLASH
    = "ALL_CHARACTERS_EXCEPT_SLASH"
  showEnum GrpcJsonTranscoder'ALL_CHARACTERS = "ALL_CHARACTERS"
  showEnum
    (GrpcJsonTranscoder'UrlUnescapeSpec'Unrecognized (GrpcJsonTranscoder'UrlUnescapeSpec'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ALL_CHARACTERS_EXCEPT_RESERVED"
    = Prelude.Just GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED
    | (Prelude.==) k "ALL_CHARACTERS_EXCEPT_SLASH"
    = Prelude.Just GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_SLASH
    | (Prelude.==) k "ALL_CHARACTERS"
    = Prelude.Just GrpcJsonTranscoder'ALL_CHARACTERS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded GrpcJsonTranscoder'UrlUnescapeSpec where
  minBound = GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED
  maxBound = GrpcJsonTranscoder'ALL_CHARACTERS
instance Prelude.Enum GrpcJsonTranscoder'UrlUnescapeSpec where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum UrlUnescapeSpec: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED = 0
  fromEnum GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_SLASH = 1
  fromEnum GrpcJsonTranscoder'ALL_CHARACTERS = 2
  fromEnum
    (GrpcJsonTranscoder'UrlUnescapeSpec'Unrecognized (GrpcJsonTranscoder'UrlUnescapeSpec'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ GrpcJsonTranscoder'ALL_CHARACTERS
    = Prelude.error
        "GrpcJsonTranscoder'UrlUnescapeSpec.succ: bad argument GrpcJsonTranscoder'ALL_CHARACTERS. This value would be out of bounds."
  succ GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED
    = GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_SLASH
  succ GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_SLASH
    = GrpcJsonTranscoder'ALL_CHARACTERS
  succ (GrpcJsonTranscoder'UrlUnescapeSpec'Unrecognized _)
    = Prelude.error
        "GrpcJsonTranscoder'UrlUnescapeSpec.succ: bad argument: unrecognized value"
  pred GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED
    = Prelude.error
        "GrpcJsonTranscoder'UrlUnescapeSpec.pred: bad argument GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED. This value would be out of bounds."
  pred GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_SLASH
    = GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED
  pred GrpcJsonTranscoder'ALL_CHARACTERS
    = GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_SLASH
  pred (GrpcJsonTranscoder'UrlUnescapeSpec'Unrecognized _)
    = Prelude.error
        "GrpcJsonTranscoder'UrlUnescapeSpec.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault GrpcJsonTranscoder'UrlUnescapeSpec where
  fieldDefault = GrpcJsonTranscoder'ALL_CHARACTERS_EXCEPT_RESERVED
instance Control.DeepSeq.NFData GrpcJsonTranscoder'UrlUnescapeSpec where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Fenvoy/extensions/filters/http/grpc_json_transcoder/v3/transcoder.proto\DC25envoy.extensions.filters.http.grpc_json_transcoder.v3\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\248\v\n\
    \\DC2GrpcJsonTranscoder\DC2+\n\
    \\DLEproto_descriptor\CAN\SOH \SOH(\tH\NULR\SIprotoDescriptor\DC22\n\
    \\DC4proto_descriptor_bin\CAN\EOT \SOH(\fH\NULR\DC2protoDescriptorBin\DC2\SUB\n\
    \\bservices\CAN\STX \ETX(\tR\bservices\DC2{\n\
    \\rprint_options\CAN\ETX \SOH(\v2V.envoy.extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.PrintOptionsR\fprintOptions\DC2?\n\
    \\FSmatch_incoming_request_route\CAN\ENQ \SOH(\bR\EMmatchIncomingRequestRoute\DC28\n\
    \\CANignored_query_parameters\CAN\ACK \ETX(\tR\SYNignoredQueryParameters\DC2!\n\
    \\fauto_mapping\CAN\a \SOH(\bR\vautoMapping\DC2E\n\
    \\USignore_unknown_query_parameters\CAN\b \SOH(\bR\FSignoreUnknownQueryParameters\DC2.\n\
    \\DC3convert_grpc_status\CAN\t \SOH(\bR\DC1convertGrpcStatus\DC2\143\SOH\n\
    \\DC1url_unescape_spec\CAN\n\
    \ \SOH(\SO2Y.envoy.extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.UrlUnescapeSpecR\SIurlUnescapeSpecB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\160\SOH\n\
    \\SUBrequest_validation_options\CAN\v \SOH(\v2b.envoy.extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.RequestValidationOptionsR\CANrequestValidationOptions\SUB\192\STX\n\
    \\fPrintOptions\DC2%\n\
    \\SOadd_whitespace\CAN\SOH \SOH(\bR\raddWhitespace\DC2A\n\
    \\GSalways_print_primitive_fields\CAN\STX \SOH(\bR\SUBalwaysPrintPrimitiveFields\DC2:\n\
    \\SUBalways_print_enums_as_ints\CAN\ETX \SOH(\bR\SYNalwaysPrintEnumsAsInts\DC2;\n\
    \\SUBpreserve_proto_field_names\CAN\EOT \SOH(\bR\ETBpreserveProtoFieldNames:M\154\197\136\RSH\n\
    \Fenvoy.config.filter.http.transcoder.v2.GrpcJsonTranscoder.PrintOptions\SUB\149\SOH\n\
    \\CANRequestValidationOptions\DC22\n\
    \\NAKreject_unknown_method\CAN\SOH \SOH(\bR\DC3rejectUnknownMethod\DC2E\n\
    \\USreject_unknown_query_parameters\CAN\STX \SOH(\bR\FSrejectUnknownQueryParameters\"j\n\
    \\SIUrlUnescapeSpec\DC2\"\n\
    \\RSALL_CHARACTERS_EXCEPT_RESERVED\DLE\NUL\DC2\US\n\
    \\ESCALL_CHARACTERS_EXCEPT_SLASH\DLE\SOH\DC2\DC2\n\
    \\SOALL_CHARACTERS\DLE\STXB\NAK\n\
    \\SOdescriptor_set\DC2\ETX\248B\SOH:@\154\197\136\RS;\n\
    \9envoy.config.filter.http.transcoder.v2.GrpcJsonTranscoderB`\n\
    \Cio.envoyproxy.envoy.extensions.filters.http.grpc_json_transcoder.v3B\SITranscoderProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\193O\n\
    \\a\DC2\ENQ\NUL\NUL\234\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL>\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL'\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL+\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\b\NUL\\\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\b\NUL\\\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\t\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\n\
    \\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\v\NULF\n\
    \\219\ACK\n\
    \\STX\EOT\NUL\DC2\ENQ\SUB\NUL\234\SOH\SOH\SUB\138\ENQ [#next-free-field: 12]\n\
    \ GrpcJsonTranscoder filter configuration.\n\
    \ The filter itself can be used per route / per virtual host or on the general level. The most\n\
    \ specific one is being used for a given route. If the list of services is empty - filter\n\
    \ is considered to be disabled.\n\
    \ Note that if specifying the filter per route, first the route is matched, and then transcoding\n\
    \ filter is applied. It matters when specifying the route configuration and paths to match the\n\
    \ request - for per-route grpc transcoder configs, the original path should be matched, while\n\
    \ in other cases, the grpc-like path is expected (the one AFTER the filter is applied).\n\
    \2\192\SOH [#protodoc-title: gRPC-JSON transcoder]\n\
    \ gRPC-JSON transcoder :ref:`configuration overview <config_http_filters_grpc_json_transcoder>`.\n\
    \ [#extension: envoy.filters.http.grpc_json_transcoder]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SUB\b\SUB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\ESC\STX\FSB\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ESC\STX\FSB\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\RS\STX,\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\RS\a\SYN\n\
    \\154\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX!\EOT'\SUB\138\SOH URL path parameters will not decode RFC 6570 reserved characters.\n\
    \ For example, segment `%2f%23/%20%2523` is unescaped to `%2f%23/ %23`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX!\EOT\"\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX!%&\n\
    \\233\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX'\EOT$\SUB\217\SOH URL path parameters will be fully URI-decoded except in\n\
    \ cases of single segment matches in reserved expansion, where \"%2F\" will be\n\
    \ left encoded.\n\
    \ For example, segment `%2f%23/%20%2523` is unescaped to `%2f#/ %23`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX'\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX'\"#\n\
    \\130\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX+\EOT\ETB\SUBs URL path parameters will be fully URI-decoded.\n\
    \ For example, segment `%2f%23/%20%2523` is unescaped to `/#/ %23`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX+\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX+\NAK\SYN\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT.\STXE\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX.\n\
    \\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT/\EOT0Q\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT/\EOT0Q\n\
    \}\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX4\EOT\FS\SUBn Whether to add spaces, line breaks and indentation to make the JSON\n\
    \ output easy to read. Defaults to false.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX4\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX4\t\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX4\SUB\ESC\n\
    \\204\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX;\EOT+\SUB\188\STX Whether to always print primitive fields. By default primitive\n\
    \ fields with default values will be omitted in JSON output. For\n\
    \ example, an int32 field set to 0 will be omitted. Setting this flag to\n\
    \ true will override the default behavior and print primitive fields\n\
    \ regardless of their values. Defaults to false.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX;\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX;\t&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX;)*\n\
    \t\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX?\EOT(\SUBe Whether to always print enums as ints. By default they are rendered\n\
    \ as strings. Defaults to false.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX?\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX?\t#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX?&'\n\
    \\254\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETXD\EOT(\SUB\238\SOH Whether to preserve proto field names. By default protobuf will\n\
    \ generate JSON field names using the ``json_name`` option, or lower camel case,\n\
    \ in that order. Setting this flag will preserve the original field names. Defaults to false.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETXD\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETXD\t#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETXD&'\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOTG\STXX\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETXG\n\
    \\"\n\
    \\180\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETXL\EOT#\SUB\164\STX By default, a request that cannot be mapped to any specified gRPC\n\
    \ :ref:`services <envoy_v3_api_field_extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.services>`\n\
    \ will pass-through this filter.\n\
    \ When set to true, the request will be rejected with a ``HTTP 404 Not Found``.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETXL\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXL\t\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXL!\"\n\
    \\217\EOT\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETXW\EOT-\SUB\201\EOT By default, a request with query parameters that cannot be mapped to the gRPC request message\n\
    \ will pass-through this filter.\n\
    \ When set to true, the request will be rejected with a ``HTTP 400 Bad Request``.\n\
    \\n\
    \ The fields\n\
    \ :ref:`ignore_unknown_query_parameters <envoy_v3_api_field_extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.ignore_unknown_query_parameters>`\n\
    \ and\n\
    \ :ref:`ignored_query_parameters <envoy_v3_api_field_extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.ignored_query_parameters>`\n\
    \ have priority over this strict validation behavior.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETXW\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETXW\t(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETXW+,\n\
    \\f\n\
    \\EOT\EOT\NUL\b\NUL\DC2\EOTZ\STXf\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETXZ\b\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\ETX[\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\ETX[\EOT&\n\
    \\146\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX`\EOT \SUB\132\SOH Supplies the filename of\n\
    \ :ref:`the proto descriptor set <config_grpc_json_generate_proto_descriptor_set>` for the gRPC\n\
    \ services.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX`\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX`\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX`\RS\US\n\
    \\152\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXe\EOT#\SUB\138\SOH Supplies the binary content of\n\
    \ :ref:`the proto descriptor set <config_grpc_json_generate_proto_descriptor_set>` for the gRPC\n\
    \ services.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETXe\EOT\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXe\n\
    \\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXe!\"\n\
    \\225\ENQ\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXs\STX\US\SUB\211\ENQ A list of strings that\n\
    \ supplies the fully qualified service names (i.e. \"package_name.service_name\") that\n\
    \ the transcoder will translate. If the service name doesn't exist in ``proto_descriptor``,\n\
    \ Envoy will fail at startup. The ``proto_descriptor`` may contain more services than\n\
    \ the service names specified here, but they won't be translated.\n\
    \\n\
    \ By default, the filter will pass through requests that do not map to any specified services.\n\
    \ If the list of services is empty, filter is considered disabled.\n\
    \ However, this behavior changes if\n\
    \ :ref:`reject_unknown_method <envoy_v3_api_field_extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.RequestValidationOptions.reject_unknown_method>`\n\
    \ is enabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETXs\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXs\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXs\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXs\GS\RS\n\
    \\227\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXx\STX!\SUB\213\SOH Control options for response JSON. These options are passed directly to\n\
    \ `JsonPrintOptions <https://developers.google.com/protocol-buffers/docs/reference/cpp/\n\
    \ google.protobuf.util.json_util#JsonPrintOptions>`_.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXx\STX\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXx\SI\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXx\US \n\
    \\159\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX}\STX(\SUB\145\STX Whether to keep the incoming request route after the outgoing headers have been transformed to\n\
    \ the match the upstream gRPC service. Note: This means that routes for gRPC services that are\n\
    \ not transcoded cannot be used in combination with *match_incoming_request_route*.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX}\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX}\a#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX}&'\n\
    \\232\ENQ\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT\152\SOH\STX/\SUB\217\ENQ A list of query parameters to be ignored for transcoding method mapping.\n\
    \ By default, the transcoder filter will not transcode a request if there are any\n\
    \ unknown/invalid query parameters.\n\
    \\n\
    \ Example :\n\
    \\n\
    \ .. code-block:: proto\n\
    \\n\
    \     service Bookstore {\n\
    \       rpc GetShelf(GetShelfRequest) returns (Shelf) {\n\
    \         option (google.api.http) = {\n\
    \           get: \"/shelves/{shelf}\"\n\
    \         };\n\
    \       }\n\
    \     }\n\
    \\n\
    \     message GetShelfRequest {\n\
    \       int64 shelf = 1;\n\
    \     }\n\
    \\n\
    \     message Shelf {}\n\
    \\n\
    \ The request ``/shelves/100?foo=bar`` will not be mapped to ``GetShelf``` because variable\n\
    \ binding for ``foo`` is not defined. Adding ``foo`` to ``ignored_query_parameters`` will allow\n\
    \ the same request to be mapped to ``GetShelf``.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\EOT\152\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\EOT\152\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\EOT\152\SOH\DC2*\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\EOT\152\SOH-.\n\
    \\209\ETX\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\174\SOH\STX\CAN\SUB\194\ETX Whether to route methods without the ``google.api.http`` option.\n\
    \\n\
    \ Example :\n\
    \\n\
    \ .. code-block:: proto\n\
    \\n\
    \     package bookstore;\n\
    \\n\
    \     service Bookstore {\n\
    \       rpc GetShelf(GetShelfRequest) returns (Shelf) {}\n\
    \     }\n\
    \\n\
    \     message GetShelfRequest {\n\
    \       int64 shelf = 1;\n\
    \     }\n\
    \\n\
    \     message Shelf {}\n\
    \\n\
    \ The client could ``post`` a json body ``{\"shelf\": 1234}`` with the path of\n\
    \ ``/bookstore.Bookstore/GetShelfRequest`` to call ``GetShelfRequest``.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\EOT\174\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\174\SOH\a\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\174\SOH\SYN\ETB\n\
    \\131\STX\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOT\180\SOH\STX+\SUB\244\SOH Whether to ignore query parameters that cannot be mapped to a corresponding\n\
    \ protobuf field. Use this if you cannot control the query parameters and do\n\
    \ not know them beforehand. Otherwise use ``ignored_query_parameters``.\n\
    \ Defaults to false.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\EOT\180\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\180\SOH\a&\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\EOT\180\SOH)*\n\
    \\167\t\n\
    \\EOT\EOT\NUL\STX\b\DC2\EOT\210\SOH\STX\US\SUB\152\t Whether to convert gRPC status headers to JSON.\n\
    \ When trailer indicates a gRPC error and there was no HTTP body, take ``google.rpc.Status``\n\
    \ from the ``grpc-status-details-bin`` header and use it as JSON body.\n\
    \ If there was no such header, make ``google.rpc.Status`` out of the ``grpc-status`` and\n\
    \ ``grpc-message`` headers.\n\
    \ The error details types must be present in the ``proto_descriptor``.\n\
    \\n\
    \ For example, if an upstream server replies with headers:\n\
    \\n\
    \ .. code-block:: none\n\
    \\n\
    \     grpc-status: 5\n\
    \     grpc-status-details-bin:\n\
    \         CAUaMwoqdHlwZS5nb29nbGVhcGlzLmNvbS9nb29nbGUucnBjLlJlcXVlc3RJbmZvEgUKA3ItMQ\n\
    \\n\
    \ The ``grpc-status-details-bin`` header contains a base64-encoded protobuf message\n\
    \ ``google.rpc.Status``. It will be transcoded into:\n\
    \\n\
    \ .. code-block:: none\n\
    \\n\
    \     HTTP/1.1 404 Not Found\n\
    \     content-type: application/json\n\
    \\n\
    \     {\"code\":5,\"details\":[{\"@type\":\"type.googleapis.com/google.rpc.RequestInfo\",\"requestId\":\"r-1\"}]}\n\
    \\n\
    \  In order to transcode the message, the ``google.rpc.RequestInfo`` type from\n\
    \  the ``google/rpc/error_details.proto`` should be included in the configured\n\
    \  :ref:`proto descriptor set <config_grpc_json_generate_proto_descriptor_set>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\EOT\210\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\210\SOH\a\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\EOT\210\SOH\GS\RS\n\
    \\208\EOT\n\
    \\EOT\EOT\NUL\STX\t\DC2\EOT\217\SOH\STXX\SUB\193\EOT URL unescaping policy.\n\
    \ This spec is only applied when extracting variable with multiple segments.\n\
    \ For example, in case of `/foo/{x=*}/bar/{y=prefix/*}/{z=**}` `x` variable is single segment and `y` and `z` are multiple segments.\n\
    \ For a path with `/foo/first/bar/prefix/second/third/fourth`, `x=first`, `y=prefix/second`, `z=third/fourth`.\n\
    \ If this setting is not specified, the value defaults to :ref:`ALL_CHARACTERS_EXCEPT_RESERVED<envoy_v3_api_enum_value_extensions.filters.http.grpc_json_transcoder.v3.GrpcJsonTranscoder.UrlUnescapeSpec.ALL_CHARACTERS_EXCEPT_RESERVED>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\EOT\217\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\217\SOH\DC2#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\EOT\217\SOH&(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\b\DC2\EOT\217\SOH)W\n\
    \\DLE\n\
    \\b\EOT\NUL\STX\t\b\175\b\DLE\DC2\EOT\217\SOH*V\n\
    \\140\a\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\EOT\233\SOH\STX;\SUB\253\ACK Configure the behavior when handling requests that cannot be transcoded.\n\
    \\n\
    \ By default, the transcoder will silently pass through HTTP requests that are malformed.\n\
    \ This includes requests with unknown query parameters, unregister paths, etc.\n\
    \\n\
    \ Set these options to enable strict HTTP request validation, resulting in the transcoder rejecting\n\
    \ such requests with a ``HTTP 4xx``. See each individual option for more details on the validation.\n\
    \ gRPC requests will still silently pass through without transcoding.\n\
    \\n\
    \ The benefit is a proper error message to the downstream.\n\
    \ If the upstream is a gRPC server, it cannot handle the passed-through HTTP requests and will reset\n\
    \ the TCP connection. The downstream will then\n\
    \ receive a ``HTTP 503 Service Unavailable`` due to the upstream connection reset.\n\
    \ This incorrect error message may conflict with other Envoy components, such as retry policies.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\EOT\233\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\233\SOH\ESC5\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\EOT\233\SOH8:b\ACKproto3"