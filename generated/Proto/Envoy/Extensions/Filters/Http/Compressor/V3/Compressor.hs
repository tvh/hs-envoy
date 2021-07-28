{- This file was auto-generated from envoy/extensions/filters/http/compressor/v3/compressor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor (
        Compressor(), Compressor'CommonDirectionConfig(),
        Compressor'RequestDirectionConfig(),
        Compressor'ResponseDirectionConfig()
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.contentLength' @:: Lens' Compressor Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.maybe'contentLength' @:: Lens' Compressor (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.contentType' @:: Lens' Compressor [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.vec'contentType' @:: Lens' Compressor (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.disableOnEtagHeader' @:: Lens' Compressor Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.removeAcceptEncodingHeader' @:: Lens' Compressor Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.runtimeEnabled' @:: Lens' Compressor Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.maybe'runtimeEnabled' @:: Lens' Compressor (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.compressorLibrary' @:: Lens' Compressor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.maybe'compressorLibrary' @:: Lens' Compressor (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.requestDirectionConfig' @:: Lens' Compressor Compressor'RequestDirectionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.maybe'requestDirectionConfig' @:: Lens' Compressor (Prelude.Maybe Compressor'RequestDirectionConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.responseDirectionConfig' @:: Lens' Compressor Compressor'ResponseDirectionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.maybe'responseDirectionConfig' @:: Lens' Compressor (Prelude.Maybe Compressor'ResponseDirectionConfig)@ -}
data Compressor
  = Compressor'_constructor {_Compressor'contentLength :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                             _Compressor'contentType :: !(Data.Vector.Vector Data.Text.Text),
                             _Compressor'disableOnEtagHeader :: !Prelude.Bool,
                             _Compressor'removeAcceptEncodingHeader :: !Prelude.Bool,
                             _Compressor'runtimeEnabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag),
                             _Compressor'compressorLibrary :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                             _Compressor'requestDirectionConfig :: !(Prelude.Maybe Compressor'RequestDirectionConfig),
                             _Compressor'responseDirectionConfig :: !(Prelude.Maybe Compressor'ResponseDirectionConfig),
                             _Compressor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Compressor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Compressor "contentLength" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'contentLength
           (\ x__ y__ -> x__ {_Compressor'contentLength = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Compressor "maybe'contentLength" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'contentLength
           (\ x__ y__ -> x__ {_Compressor'contentLength = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor "contentType" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'contentType
           (\ x__ y__ -> x__ {_Compressor'contentType = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Compressor "vec'contentType" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'contentType
           (\ x__ y__ -> x__ {_Compressor'contentType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor "disableOnEtagHeader" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'disableOnEtagHeader
           (\ x__ y__ -> x__ {_Compressor'disableOnEtagHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor "removeAcceptEncodingHeader" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'removeAcceptEncodingHeader
           (\ x__ y__ -> x__ {_Compressor'removeAcceptEncodingHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor "runtimeEnabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'runtimeEnabled
           (\ x__ y__ -> x__ {_Compressor'runtimeEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Compressor "maybe'runtimeEnabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'runtimeEnabled
           (\ x__ y__ -> x__ {_Compressor'runtimeEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor "compressorLibrary" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'compressorLibrary
           (\ x__ y__ -> x__ {_Compressor'compressorLibrary = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Compressor "maybe'compressorLibrary" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'compressorLibrary
           (\ x__ y__ -> x__ {_Compressor'compressorLibrary = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor "requestDirectionConfig" Compressor'RequestDirectionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'requestDirectionConfig
           (\ x__ y__ -> x__ {_Compressor'requestDirectionConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Compressor "maybe'requestDirectionConfig" (Prelude.Maybe Compressor'RequestDirectionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'requestDirectionConfig
           (\ x__ y__ -> x__ {_Compressor'requestDirectionConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor "responseDirectionConfig" Compressor'ResponseDirectionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'responseDirectionConfig
           (\ x__ y__ -> x__ {_Compressor'responseDirectionConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Compressor "maybe'responseDirectionConfig" (Prelude.Maybe Compressor'ResponseDirectionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'responseDirectionConfig
           (\ x__ y__ -> x__ {_Compressor'responseDirectionConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message Compressor where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.compressor.v3.Compressor"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Compressor\DC2P\n\
      \\SOcontent_length\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\rcontentLengthB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2.\n\
      \\fcontent_type\CAN\STX \ETX(\tR\vcontentTypeB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2@\n\
      \\SYNdisable_on_etag_header\CAN\ETX \SOH(\bR\DC3disableOnEtagHeaderB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2N\n\
      \\GSremove_accept_encoding_header\CAN\EOT \SOH(\bR\SUBremoveAcceptEncodingHeaderB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2^\n\
      \\SIruntime_enabled\CAN\ENQ \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\SOruntimeEnabledB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2c\n\
      \\DC2compressor_library\CAN\ACK \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DC1compressorLibraryB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\136\SOH\n\
      \\CANrequest_direction_config\CAN\a \SOH(\v2N.envoy.extensions.filters.http.compressor.v3.Compressor.RequestDirectionConfigR\SYNrequestDirectionConfig\DC2\139\SOH\n\
      \\EMresponse_direction_config\CAN\b \SOH(\v2O.envoy.extensions.filters.http.compressor.v3.Compressor.ResponseDirectionConfigR\ETBresponseDirectionConfig\SUB\202\SOH\n\
      \\NAKCommonDirectionConfig\DC2B\n\
      \\aenabled\CAN\SOH \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabled\DC2J\n\
      \\DC2min_content_length\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DLEminContentLength\DC2!\n\
      \\fcontent_type\CAN\ETX \ETX(\tR\vcontentType\SUB\140\SOH\n\
      \\SYNRequestDirectionConfig\DC2r\n\
      \\rcommon_config\CAN\SOH \SOH(\v2M.envoy.extensions.filters.http.compressor.v3.Compressor.CommonDirectionConfigR\fcommonConfig\SUB\133\STX\n\
      \\ETBResponseDirectionConfig\DC2r\n\
      \\rcommon_config\CAN\SOH \SOH(\v2M.envoy.extensions.filters.http.compressor.v3.Compressor.CommonDirectionConfigR\fcommonConfig\DC23\n\
      \\SYNdisable_on_etag_header\CAN\STX \SOH(\bR\DC3disableOnEtagHeader\DC2A\n\
      \\GSremove_accept_encoding_header\CAN\ETX \SOH(\bR\SUBremoveAcceptEncodingHeader:8\154\197\136\RS3\n\
      \1envoy.config.filter.http.compressor.v2.Compressor"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        contentLength__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content_length"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'contentLength")) ::
              Data.ProtoLens.FieldDescriptor Compressor
        contentType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"contentType")) ::
              Data.ProtoLens.FieldDescriptor Compressor
        disableOnEtagHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disable_on_etag_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disableOnEtagHeader")) ::
              Data.ProtoLens.FieldDescriptor Compressor
        removeAcceptEncodingHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remove_accept_encoding_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"removeAcceptEncodingHeader")) ::
              Data.ProtoLens.FieldDescriptor Compressor
        runtimeEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'runtimeEnabled")) ::
              Data.ProtoLens.FieldDescriptor Compressor
        compressorLibrary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "compressor_library"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'compressorLibrary")) ::
              Data.ProtoLens.FieldDescriptor Compressor
        requestDirectionConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_direction_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Compressor'RequestDirectionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestDirectionConfig")) ::
              Data.ProtoLens.FieldDescriptor Compressor
        responseDirectionConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_direction_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Compressor'ResponseDirectionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseDirectionConfig")) ::
              Data.ProtoLens.FieldDescriptor Compressor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, contentLength__field_descriptor),
           (Data.ProtoLens.Tag 2, contentType__field_descriptor),
           (Data.ProtoLens.Tag 3, disableOnEtagHeader__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            removeAcceptEncodingHeader__field_descriptor),
           (Data.ProtoLens.Tag 5, runtimeEnabled__field_descriptor),
           (Data.ProtoLens.Tag 6, compressorLibrary__field_descriptor),
           (Data.ProtoLens.Tag 7, requestDirectionConfig__field_descriptor),
           (Data.ProtoLens.Tag 8, responseDirectionConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Compressor'_unknownFields
        (\ x__ y__ -> x__ {_Compressor'_unknownFields = y__})
  defMessage
    = Compressor'_constructor
        {_Compressor'contentLength = Prelude.Nothing,
         _Compressor'contentType = Data.Vector.Generic.empty,
         _Compressor'disableOnEtagHeader = Data.ProtoLens.fieldDefault,
         _Compressor'removeAcceptEncodingHeader = Data.ProtoLens.fieldDefault,
         _Compressor'runtimeEnabled = Prelude.Nothing,
         _Compressor'compressorLibrary = Prelude.Nothing,
         _Compressor'requestDirectionConfig = Prelude.Nothing,
         _Compressor'responseDirectionConfig = Prelude.Nothing,
         _Compressor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Compressor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser Compressor
        loop x mutable'contentType
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'contentType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'contentType)
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
                              (Data.ProtoLens.Field.field @"vec'contentType")
                              frozen'contentType
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "content_length"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"contentLength") y x)
                                  mutable'contentType
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
                                        "content_type"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'contentType y)
                                loop x v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disable_on_etag_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disableOnEtagHeader") y x)
                                  mutable'contentType
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "remove_accept_encoding_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"removeAcceptEncodingHeader") y x)
                                  mutable'contentType
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "runtime_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"runtimeEnabled") y x)
                                  mutable'contentType
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "compressor_library"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"compressorLibrary") y x)
                                  mutable'contentType
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_direction_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestDirectionConfig") y x)
                                  mutable'contentType
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_direction_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseDirectionConfig") y x)
                                  mutable'contentType
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'contentType
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'contentType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'contentType)
          "Compressor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'contentLength") _x
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
                      (Data.ProtoLens.Field.field @"vec'contentType") _x))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"disableOnEtagHeader") _x
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
                               (Data.ProtoLens.Field.field @"removeAcceptEncodingHeader") _x
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
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'runtimeEnabled") _x
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
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'compressorLibrary") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'requestDirectionConfig")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field
                                            @"maybe'responseDirectionConfig")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData Compressor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Compressor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Compressor'contentLength x__)
                (Control.DeepSeq.deepseq
                   (_Compressor'contentType x__)
                   (Control.DeepSeq.deepseq
                      (_Compressor'disableOnEtagHeader x__)
                      (Control.DeepSeq.deepseq
                         (_Compressor'removeAcceptEncodingHeader x__)
                         (Control.DeepSeq.deepseq
                            (_Compressor'runtimeEnabled x__)
                            (Control.DeepSeq.deepseq
                               (_Compressor'compressorLibrary x__)
                               (Control.DeepSeq.deepseq
                                  (_Compressor'requestDirectionConfig x__)
                                  (Control.DeepSeq.deepseq
                                     (_Compressor'responseDirectionConfig x__) ()))))))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.enabled' @:: Lens' Compressor'CommonDirectionConfig Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.maybe'enabled' @:: Lens' Compressor'CommonDirectionConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.minContentLength' @:: Lens' Compressor'CommonDirectionConfig Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.maybe'minContentLength' @:: Lens' Compressor'CommonDirectionConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.contentType' @:: Lens' Compressor'CommonDirectionConfig [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.vec'contentType' @:: Lens' Compressor'CommonDirectionConfig (Data.Vector.Vector Data.Text.Text)@ -}
data Compressor'CommonDirectionConfig
  = Compressor'CommonDirectionConfig'_constructor {_Compressor'CommonDirectionConfig'enabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag),
                                                   _Compressor'CommonDirectionConfig'minContentLength :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                   _Compressor'CommonDirectionConfig'contentType :: !(Data.Vector.Vector Data.Text.Text),
                                                   _Compressor'CommonDirectionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Compressor'CommonDirectionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Compressor'CommonDirectionConfig "enabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'CommonDirectionConfig'enabled
           (\ x__ y__
              -> x__ {_Compressor'CommonDirectionConfig'enabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Compressor'CommonDirectionConfig "maybe'enabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'CommonDirectionConfig'enabled
           (\ x__ y__
              -> x__ {_Compressor'CommonDirectionConfig'enabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor'CommonDirectionConfig "minContentLength" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'CommonDirectionConfig'minContentLength
           (\ x__ y__
              -> x__ {_Compressor'CommonDirectionConfig'minContentLength = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Compressor'CommonDirectionConfig "maybe'minContentLength" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'CommonDirectionConfig'minContentLength
           (\ x__ y__
              -> x__ {_Compressor'CommonDirectionConfig'minContentLength = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor'CommonDirectionConfig "contentType" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'CommonDirectionConfig'contentType
           (\ x__ y__
              -> x__ {_Compressor'CommonDirectionConfig'contentType = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Compressor'CommonDirectionConfig "vec'contentType" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'CommonDirectionConfig'contentType
           (\ x__ y__
              -> x__ {_Compressor'CommonDirectionConfig'contentType = y__}))
        Prelude.id
instance Data.ProtoLens.Message Compressor'CommonDirectionConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.compressor.v3.Compressor.CommonDirectionConfig"
  packedMessageDescriptor _
    = "\n\
      \\NAKCommonDirectionConfig\DC2B\n\
      \\aenabled\CAN\SOH \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabled\DC2J\n\
      \\DC2min_content_length\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DLEminContentLength\DC2!\n\
      \\fcontent_type\CAN\ETX \ETX(\tR\vcontentType"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        enabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'enabled")) ::
              Data.ProtoLens.FieldDescriptor Compressor'CommonDirectionConfig
        minContentLength__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min_content_length"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minContentLength")) ::
              Data.ProtoLens.FieldDescriptor Compressor'CommonDirectionConfig
        contentType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "content_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"contentType")) ::
              Data.ProtoLens.FieldDescriptor Compressor'CommonDirectionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, enabled__field_descriptor),
           (Data.ProtoLens.Tag 2, minContentLength__field_descriptor),
           (Data.ProtoLens.Tag 3, contentType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Compressor'CommonDirectionConfig'_unknownFields
        (\ x__ y__
           -> x__ {_Compressor'CommonDirectionConfig'_unknownFields = y__})
  defMessage
    = Compressor'CommonDirectionConfig'_constructor
        {_Compressor'CommonDirectionConfig'enabled = Prelude.Nothing,
         _Compressor'CommonDirectionConfig'minContentLength = Prelude.Nothing,
         _Compressor'CommonDirectionConfig'contentType = Data.Vector.Generic.empty,
         _Compressor'CommonDirectionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Compressor'CommonDirectionConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser Compressor'CommonDirectionConfig
        loop x mutable'contentType
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'contentType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'contentType)
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
                              (Data.ProtoLens.Field.field @"vec'contentType")
                              frozen'contentType
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "enabled"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"enabled") y x)
                                  mutable'contentType
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "min_content_length"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"minContentLength") y x)
                                  mutable'contentType
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "content_type"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'contentType y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'contentType
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'contentType <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'contentType)
          "CommonDirectionConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'enabled") _x
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
                       (Data.ProtoLens.Field.field @"maybe'minContentLength") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'contentType") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Compressor'CommonDirectionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Compressor'CommonDirectionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Compressor'CommonDirectionConfig'enabled x__)
                (Control.DeepSeq.deepseq
                   (_Compressor'CommonDirectionConfig'minContentLength x__)
                   (Control.DeepSeq.deepseq
                      (_Compressor'CommonDirectionConfig'contentType x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.commonConfig' @:: Lens' Compressor'RequestDirectionConfig Compressor'CommonDirectionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.maybe'commonConfig' @:: Lens' Compressor'RequestDirectionConfig (Prelude.Maybe Compressor'CommonDirectionConfig)@ -}
data Compressor'RequestDirectionConfig
  = Compressor'RequestDirectionConfig'_constructor {_Compressor'RequestDirectionConfig'commonConfig :: !(Prelude.Maybe Compressor'CommonDirectionConfig),
                                                    _Compressor'RequestDirectionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Compressor'RequestDirectionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Compressor'RequestDirectionConfig "commonConfig" Compressor'CommonDirectionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'RequestDirectionConfig'commonConfig
           (\ x__ y__
              -> x__ {_Compressor'RequestDirectionConfig'commonConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Compressor'RequestDirectionConfig "maybe'commonConfig" (Prelude.Maybe Compressor'CommonDirectionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'RequestDirectionConfig'commonConfig
           (\ x__ y__
              -> x__ {_Compressor'RequestDirectionConfig'commonConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message Compressor'RequestDirectionConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.compressor.v3.Compressor.RequestDirectionConfig"
  packedMessageDescriptor _
    = "\n\
      \\SYNRequestDirectionConfig\DC2r\n\
      \\rcommon_config\CAN\SOH \SOH(\v2M.envoy.extensions.filters.http.compressor.v3.Compressor.CommonDirectionConfigR\fcommonConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Compressor'CommonDirectionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonConfig")) ::
              Data.ProtoLens.FieldDescriptor Compressor'RequestDirectionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Compressor'RequestDirectionConfig'_unknownFields
        (\ x__ y__
           -> x__ {_Compressor'RequestDirectionConfig'_unknownFields = y__})
  defMessage
    = Compressor'RequestDirectionConfig'_constructor
        {_Compressor'RequestDirectionConfig'commonConfig = Prelude.Nothing,
         _Compressor'RequestDirectionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Compressor'RequestDirectionConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Compressor'RequestDirectionConfig
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
                                       "common_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RequestDirectionConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commonConfig") _x
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
instance Control.DeepSeq.NFData Compressor'RequestDirectionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Compressor'RequestDirectionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Compressor'RequestDirectionConfig'commonConfig x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.commonConfig' @:: Lens' Compressor'ResponseDirectionConfig Compressor'CommonDirectionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.maybe'commonConfig' @:: Lens' Compressor'ResponseDirectionConfig (Prelude.Maybe Compressor'CommonDirectionConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.disableOnEtagHeader' @:: Lens' Compressor'ResponseDirectionConfig Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields.removeAcceptEncodingHeader' @:: Lens' Compressor'ResponseDirectionConfig Prelude.Bool@ -}
data Compressor'ResponseDirectionConfig
  = Compressor'ResponseDirectionConfig'_constructor {_Compressor'ResponseDirectionConfig'commonConfig :: !(Prelude.Maybe Compressor'CommonDirectionConfig),
                                                     _Compressor'ResponseDirectionConfig'disableOnEtagHeader :: !Prelude.Bool,
                                                     _Compressor'ResponseDirectionConfig'removeAcceptEncodingHeader :: !Prelude.Bool,
                                                     _Compressor'ResponseDirectionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Compressor'ResponseDirectionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Compressor'ResponseDirectionConfig "commonConfig" Compressor'CommonDirectionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'ResponseDirectionConfig'commonConfig
           (\ x__ y__
              -> x__ {_Compressor'ResponseDirectionConfig'commonConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Compressor'ResponseDirectionConfig "maybe'commonConfig" (Prelude.Maybe Compressor'CommonDirectionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'ResponseDirectionConfig'commonConfig
           (\ x__ y__
              -> x__ {_Compressor'ResponseDirectionConfig'commonConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor'ResponseDirectionConfig "disableOnEtagHeader" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'ResponseDirectionConfig'disableOnEtagHeader
           (\ x__ y__
              -> x__
                   {_Compressor'ResponseDirectionConfig'disableOnEtagHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Compressor'ResponseDirectionConfig "removeAcceptEncodingHeader" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Compressor'ResponseDirectionConfig'removeAcceptEncodingHeader
           (\ x__ y__
              -> x__
                   {_Compressor'ResponseDirectionConfig'removeAcceptEncodingHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Message Compressor'ResponseDirectionConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.compressor.v3.Compressor.ResponseDirectionConfig"
  packedMessageDescriptor _
    = "\n\
      \\ETBResponseDirectionConfig\DC2r\n\
      \\rcommon_config\CAN\SOH \SOH(\v2M.envoy.extensions.filters.http.compressor.v3.Compressor.CommonDirectionConfigR\fcommonConfig\DC23\n\
      \\SYNdisable_on_etag_header\CAN\STX \SOH(\bR\DC3disableOnEtagHeader\DC2A\n\
      \\GSremove_accept_encoding_header\CAN\ETX \SOH(\bR\SUBremoveAcceptEncodingHeader"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Compressor'CommonDirectionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonConfig")) ::
              Data.ProtoLens.FieldDescriptor Compressor'ResponseDirectionConfig
        disableOnEtagHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disable_on_etag_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disableOnEtagHeader")) ::
              Data.ProtoLens.FieldDescriptor Compressor'ResponseDirectionConfig
        removeAcceptEncodingHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remove_accept_encoding_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"removeAcceptEncodingHeader")) ::
              Data.ProtoLens.FieldDescriptor Compressor'ResponseDirectionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, disableOnEtagHeader__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            removeAcceptEncodingHeader__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Compressor'ResponseDirectionConfig'_unknownFields
        (\ x__ y__
           -> x__ {_Compressor'ResponseDirectionConfig'_unknownFields = y__})
  defMessage
    = Compressor'ResponseDirectionConfig'_constructor
        {_Compressor'ResponseDirectionConfig'commonConfig = Prelude.Nothing,
         _Compressor'ResponseDirectionConfig'disableOnEtagHeader = Data.ProtoLens.fieldDefault,
         _Compressor'ResponseDirectionConfig'removeAcceptEncodingHeader = Data.ProtoLens.fieldDefault,
         _Compressor'ResponseDirectionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Compressor'ResponseDirectionConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Compressor'ResponseDirectionConfig
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
                                       "common_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonConfig") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disable_on_etag_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disableOnEtagHeader") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "remove_accept_encoding_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"removeAcceptEncodingHeader") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ResponseDirectionConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commonConfig") _x
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
                         (Data.ProtoLens.Field.field @"disableOnEtagHeader") _x
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
                            (Data.ProtoLens.Field.field @"removeAcceptEncodingHeader") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Compressor'ResponseDirectionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Compressor'ResponseDirectionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Compressor'ResponseDirectionConfig'commonConfig x__)
                (Control.DeepSeq.deepseq
                   (_Compressor'ResponseDirectionConfig'disableOnEtagHeader x__)
                   (Control.DeepSeq.deepseq
                      (_Compressor'ResponseDirectionConfig'removeAcceptEncodingHeader
                         x__)
                      ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \<envoy/extensions/filters/http/compressor/v3/compressor.proto\DC2+envoy.extensions.filters.http.compressor.v3\SUB\USenvoy/config/core/v3/base.proto\SUB$envoy/config/core/v3/extension.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\156\v\n\
    \\n\
    \Compressor\DC2P\n\
    \\SOcontent_length\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\rcontentLengthB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2.\n\
    \\fcontent_type\CAN\STX \ETX(\tR\vcontentTypeB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2@\n\
    \\SYNdisable_on_etag_header\CAN\ETX \SOH(\bR\DC3disableOnEtagHeaderB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2N\n\
    \\GSremove_accept_encoding_header\CAN\EOT \SOH(\bR\SUBremoveAcceptEncodingHeaderB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2^\n\
    \\SIruntime_enabled\CAN\ENQ \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\SOruntimeEnabledB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2c\n\
    \\DC2compressor_library\CAN\ACK \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DC1compressorLibraryB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\136\SOH\n\
    \\CANrequest_direction_config\CAN\a \SOH(\v2N.envoy.extensions.filters.http.compressor.v3.Compressor.RequestDirectionConfigR\SYNrequestDirectionConfig\DC2\139\SOH\n\
    \\EMresponse_direction_config\CAN\b \SOH(\v2O.envoy.extensions.filters.http.compressor.v3.Compressor.ResponseDirectionConfigR\ETBresponseDirectionConfig\SUB\202\SOH\n\
    \\NAKCommonDirectionConfig\DC2B\n\
    \\aenabled\CAN\SOH \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabled\DC2J\n\
    \\DC2min_content_length\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DLEminContentLength\DC2!\n\
    \\fcontent_type\CAN\ETX \ETX(\tR\vcontentType\SUB\140\SOH\n\
    \\SYNRequestDirectionConfig\DC2r\n\
    \\rcommon_config\CAN\SOH \SOH(\v2M.envoy.extensions.filters.http.compressor.v3.Compressor.CommonDirectionConfigR\fcommonConfig\SUB\133\STX\n\
    \\ETBResponseDirectionConfig\DC2r\n\
    \\rcommon_config\CAN\SOH \SOH(\v2M.envoy.extensions.filters.http.compressor.v3.Compressor.CommonDirectionConfigR\fcommonConfig\DC23\n\
    \\SYNdisable_on_etag_header\CAN\STX \SOH(\bR\DC3disableOnEtagHeader\DC2A\n\
    \\GSremove_accept_encoding_header\CAN\ETX \SOH(\bR\SUBremoveAcceptEncodingHeader:8\154\197\136\RS3\n\
    \1envoy.config.filter.http.compressor.v2.CompressorBV\n\
    \9io.envoyproxy.envoy.extensions.filters.http.compressor.v3B\SICompressorProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\174)\n\
    \\ACK\DC2\EOT\NUL\NUL|\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL4\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL-\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULR\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NULR\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\190\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL|\SOH\SUB\ETB [#next-free-field: 9]\n\
    \2\152\SOH [#protodoc-title: Compressor]\n\
    \ Compressor :ref:`configuration overview <config_http_filters_compressor>`.\n\
    \ [#extension: envoy.filters.http.compressor]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\DC2\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\EM\STX\SUB:\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\EM\STX\SUB:\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\FS\STX,\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\FS\n\
    \\US\n\
    \\148\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX \EOT2\SUB\132\STX Runtime flag that controls whether compression is enabled or not for the direction this\n\
    \ common config is put in. If set to false, the filter will operate as a pass-through filter\n\
    \ in the chosen direction. If the field is omitted, the filter will be enabled.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX \EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX &-\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX 01\n\
    \\215\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX$\EOT7\SUB\199\SOH Minimum value of Content-Length header of request or response messages (depending on the direction\n\
    \ this common config is put in), in bytes, which will trigger compression. The default value is 30.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX$\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX$ 2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX$56\n\
    \\254\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX+\EOT%\SUB\238\STX Set of strings that allows specifying which mime-types yield compression; e.g.,\n\
    \ application/json, text/html, etc. When this field is not defined, compression will be applied\n\
    \ to the following mime-types: \"application/javascript\", \"application/json\",\n\
    \ \"application/xhtml+xml\", \"image/svg+xml\", \"text/css\", \"text/html\", \"text/plain\", \"text/xml\"\n\
    \ and their synonyms.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX+\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX+\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX+\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX+#$\n\
    \K\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT/\STX1\ETX\SUB= Configuration for filter behavior on the request direction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX/\n\
    \ \n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX0\EOT,\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETX0\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX0\SUB'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX0*+\n\
    \L\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\EOT4\STXC\ETX\SUB> Configuration for filter behavior on the response direction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETX4\n\
    \!\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\ETX5\EOT,\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ACK\DC2\ETX5\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETX5\SUB'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETX5*+\n\
    \\197\SOH\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\ETX9\EOT$\SUB\181\SOH If true, disables compression when the response contains an etag header. When it is false, the\n\
    \ filter will preserve weak etags and remove the ones that require strong validation.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\ETX9\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\ETX9\t\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\ETX9\"#\n\
    \\205\STX\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\ETXB\EOT+\SUB\189\STX If true, removes accept-encoding from the request headers before dispatching it to the upstream\n\
    \ so that responses do not get compressed before reaching the filter.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \    To avoid interfering with other compression filters in the same chain use this option in\n\
    \    the filter closest to the upstream.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ENQ\DC2\ETXB\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\ETXB\t&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\ETXB)*\n\
    \k\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOTF\STXGS\SUB] Minimum response length, in bytes, which will trigger compression. The default value is 30.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXF\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXF\RS,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXF/0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXG\ACKR\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\NUL\b\ETX\DC2\ETXG\a\CAN\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\NUL\b\242\232\128K\DC2\ETXG\SUBQ\n\
    \\253\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOTN\STXOS\SUB\238\STX Set of strings that allows specifying which mime-types yield compression; e.g.,\n\
    \ application/json, text/html, etc. When this field is not defined, compression will be applied\n\
    \ to the following mime-types: \"application/javascript\", \"application/json\",\n\
    \ \"application/xhtml+xml\", \"image/svg+xml\", \"text/css\", \"text/html\", \"text/plain\", \"text/xml\"\n\
    \ and their synonyms.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETXN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXN\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXN!\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETXO\ACKR\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\SOH\b\ETX\DC2\ETXO\a\CAN\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\SOH\b\242\232\128K\DC2\ETXO\SUBQ\n\
    \\196\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOTS\STXTS\SUB\181\SOH If true, disables compression when the response contains an etag header. When it is false, the\n\
    \ filter will preserve weak etags and remove the ones that require strong validation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXS\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXS\a\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXS !\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETXT\ACKR\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\STX\b\ETX\DC2\ETXT\a\CAN\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\STX\b\242\232\128K\DC2\ETXT\SUBQ\n\
    \\204\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT]\STX^S\SUB\189\STX If true, removes accept-encoding from the request headers before dispatching it to the upstream\n\
    \ so that responses do not get compressed before reaching the filter.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \    To avoid interfering with other compression filters in the same chain use this option in\n\
    \    the filter closest to the upstream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX]\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX]\a$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX]'(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\b\DC2\ETX^\ACKR\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\ETX\b\ETX\DC2\ETX^\a\CAN\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ETX\b\242\232\128K\DC2\ETX^\SUBQ\n\
    \\188\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOTb\STXcS\SUB\173\SOH Runtime flag that controls whether the filter is enabled or not. If set to false, the\n\
    \ filter will operate as a pass-through filter. If not specified, defaults to enabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXb\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXb$3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXb67\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETXc\ACKR\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\EOT\b\ETX\DC2\ETXc\a\CAN\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\EOT\b\242\232\128K\DC2\ETXc\SUBQ\n\
    \\131\STX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOTi\STXj4\SUB\244\SOH A compressor library to use for compression. Currently only\n\
    \ :ref:`envoy.compression.gzip.compressor<envoy_v3_api_msg_extensions.compression.gzip.compressor.v3.Gzip>`\n\
    \ is included in Envoy.\n\
    \ [#extension-category: envoy.compression.compressor]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXi\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXi&8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXi;<\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETXj\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\DC1\DC2\ETXj\a2\n\
    \g\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXm\STX6\SUBZ Configuration for request compression. Compression is disabled by default if left empty.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXm\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXm\EM1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXm45\n\
    \\138\ENQ\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX{\STX8\SUB\252\EOT Configuration for response compression. Compression is enabled by default if left empty.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \    If the field is not empty then the duplicate deprecated fields of the `Compressor` message,\n\
    \    such as `content_length`, `content_type`, `disable_on_etag_header`,\n\
    \    `remove_accept_encoding_header` and `runtime_enabled`, are ignored.\n\
    \\n\
    \    Also all the statistics related to response compression will be rooted in\n\
    \    `<stat_prefix>.compressor.<compressor_library.name>.<compressor_library_stat_prefix>.response.*`\n\
    \    instead of\n\
    \    `<stat_prefix>.compressor.<compressor_library.name>.<compressor_library_stat_prefix>.*`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX{\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX{\SUB3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX{67b\ACKproto3"