{- This file was auto-generated from envoy/extensions/filters/http/decompressor/v3/decompressor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor (
        Decompressor(), Decompressor'CommonDirectionConfig(),
        Decompressor'RequestDirectionConfig(),
        Decompressor'ResponseDirectionConfig()
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.decompressorLibrary' @:: Lens' Decompressor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.maybe'decompressorLibrary' @:: Lens' Decompressor (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.requestDirectionConfig' @:: Lens' Decompressor Decompressor'RequestDirectionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.maybe'requestDirectionConfig' @:: Lens' Decompressor (Prelude.Maybe Decompressor'RequestDirectionConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.responseDirectionConfig' @:: Lens' Decompressor Decompressor'ResponseDirectionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.maybe'responseDirectionConfig' @:: Lens' Decompressor (Prelude.Maybe Decompressor'ResponseDirectionConfig)@ -}
data Decompressor
  = Decompressor'_constructor {_Decompressor'decompressorLibrary :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                               _Decompressor'requestDirectionConfig :: !(Prelude.Maybe Decompressor'RequestDirectionConfig),
                               _Decompressor'responseDirectionConfig :: !(Prelude.Maybe Decompressor'ResponseDirectionConfig),
                               _Decompressor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Decompressor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Decompressor "decompressorLibrary" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'decompressorLibrary
           (\ x__ y__ -> x__ {_Decompressor'decompressorLibrary = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Decompressor "maybe'decompressorLibrary" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'decompressorLibrary
           (\ x__ y__ -> x__ {_Decompressor'decompressorLibrary = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decompressor "requestDirectionConfig" Decompressor'RequestDirectionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'requestDirectionConfig
           (\ x__ y__ -> x__ {_Decompressor'requestDirectionConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Decompressor "maybe'requestDirectionConfig" (Prelude.Maybe Decompressor'RequestDirectionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'requestDirectionConfig
           (\ x__ y__ -> x__ {_Decompressor'requestDirectionConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decompressor "responseDirectionConfig" Decompressor'ResponseDirectionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'responseDirectionConfig
           (\ x__ y__ -> x__ {_Decompressor'responseDirectionConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Decompressor "maybe'responseDirectionConfig" (Prelude.Maybe Decompressor'ResponseDirectionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'responseDirectionConfig
           (\ x__ y__ -> x__ {_Decompressor'responseDirectionConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message Decompressor where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.decompressor.v3.Decompressor"
  packedMessageDescriptor _
    = "\n\
      \\fDecompressor\DC2g\n\
      \\DC4decompressor_library\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DC3decompressorLibraryB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\140\SOH\n\
      \\CANrequest_direction_config\CAN\STX \SOH(\v2R.envoy.extensions.filters.http.decompressor.v3.Decompressor.RequestDirectionConfigR\SYNrequestDirectionConfig\DC2\143\SOH\n\
      \\EMresponse_direction_config\CAN\ETX \SOH(\v2S.envoy.extensions.filters.http.decompressor.v3.Decompressor.ResponseDirectionConfigR\ETBresponseDirectionConfig\SUB[\n\
      \\NAKCommonDirectionConfig\DC2B\n\
      \\aenabled\CAN\SOH \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabled\SUB\232\SOH\n\
      \\SYNRequestDirectionConfig\DC2v\n\
      \\rcommon_config\CAN\SOH \SOH(\v2Q.envoy.extensions.filters.http.decompressor.v3.Decompressor.CommonDirectionConfigR\fcommonConfig\DC2V\n\
      \\EMadvertise_accept_encoding\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\ETBadvertiseAcceptEncoding\SUB\145\SOH\n\
      \\ETBResponseDirectionConfig\DC2v\n\
      \\rcommon_config\CAN\SOH \SOH(\v2Q.envoy.extensions.filters.http.decompressor.v3.Decompressor.CommonDirectionConfigR\fcommonConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        decompressorLibrary__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "decompressor_library"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'decompressorLibrary")) ::
              Data.ProtoLens.FieldDescriptor Decompressor
        requestDirectionConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_direction_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Decompressor'RequestDirectionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestDirectionConfig")) ::
              Data.ProtoLens.FieldDescriptor Decompressor
        responseDirectionConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_direction_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Decompressor'ResponseDirectionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'responseDirectionConfig")) ::
              Data.ProtoLens.FieldDescriptor Decompressor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, decompressorLibrary__field_descriptor),
           (Data.ProtoLens.Tag 2, requestDirectionConfig__field_descriptor),
           (Data.ProtoLens.Tag 3, responseDirectionConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Decompressor'_unknownFields
        (\ x__ y__ -> x__ {_Decompressor'_unknownFields = y__})
  defMessage
    = Decompressor'_constructor
        {_Decompressor'decompressorLibrary = Prelude.Nothing,
         _Decompressor'requestDirectionConfig = Prelude.Nothing,
         _Decompressor'responseDirectionConfig = Prelude.Nothing,
         _Decompressor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Decompressor -> Data.ProtoLens.Encoding.Bytes.Parser Decompressor
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
                                       "decompressor_library"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"decompressorLibrary") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_direction_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestDirectionConfig") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "response_direction_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"responseDirectionConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Decompressor"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'decompressorLibrary") _x
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
                       (Data.ProtoLens.Field.field @"maybe'requestDirectionConfig") _x
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
                          (Data.ProtoLens.Field.field @"maybe'responseDirectionConfig") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Decompressor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Decompressor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Decompressor'decompressorLibrary x__)
                (Control.DeepSeq.deepseq
                   (_Decompressor'requestDirectionConfig x__)
                   (Control.DeepSeq.deepseq
                      (_Decompressor'responseDirectionConfig x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.enabled' @:: Lens' Decompressor'CommonDirectionConfig Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag@
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.maybe'enabled' @:: Lens' Decompressor'CommonDirectionConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)@ -}
data Decompressor'CommonDirectionConfig
  = Decompressor'CommonDirectionConfig'_constructor {_Decompressor'CommonDirectionConfig'enabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag),
                                                     _Decompressor'CommonDirectionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Decompressor'CommonDirectionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Decompressor'CommonDirectionConfig "enabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'CommonDirectionConfig'enabled
           (\ x__ y__
              -> x__ {_Decompressor'CommonDirectionConfig'enabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Decompressor'CommonDirectionConfig "maybe'enabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'CommonDirectionConfig'enabled
           (\ x__ y__
              -> x__ {_Decompressor'CommonDirectionConfig'enabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message Decompressor'CommonDirectionConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.decompressor.v3.Decompressor.CommonDirectionConfig"
  packedMessageDescriptor _
    = "\n\
      \\NAKCommonDirectionConfig\DC2B\n\
      \\aenabled\CAN\SOH \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabled"
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
              Data.ProtoLens.FieldDescriptor Decompressor'CommonDirectionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, enabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Decompressor'CommonDirectionConfig'_unknownFields
        (\ x__ y__
           -> x__ {_Decompressor'CommonDirectionConfig'_unknownFields = y__})
  defMessage
    = Decompressor'CommonDirectionConfig'_constructor
        {_Decompressor'CommonDirectionConfig'enabled = Prelude.Nothing,
         _Decompressor'CommonDirectionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Decompressor'CommonDirectionConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Decompressor'CommonDirectionConfig
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
                                       "enabled"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"enabled") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CommonDirectionConfig"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Decompressor'CommonDirectionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Decompressor'CommonDirectionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Decompressor'CommonDirectionConfig'enabled x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.commonConfig' @:: Lens' Decompressor'RequestDirectionConfig Decompressor'CommonDirectionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.maybe'commonConfig' @:: Lens' Decompressor'RequestDirectionConfig (Prelude.Maybe Decompressor'CommonDirectionConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.advertiseAcceptEncoding' @:: Lens' Decompressor'RequestDirectionConfig Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.maybe'advertiseAcceptEncoding' @:: Lens' Decompressor'RequestDirectionConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@ -}
data Decompressor'RequestDirectionConfig
  = Decompressor'RequestDirectionConfig'_constructor {_Decompressor'RequestDirectionConfig'commonConfig :: !(Prelude.Maybe Decompressor'CommonDirectionConfig),
                                                      _Decompressor'RequestDirectionConfig'advertiseAcceptEncoding :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                                      _Decompressor'RequestDirectionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Decompressor'RequestDirectionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Decompressor'RequestDirectionConfig "commonConfig" Decompressor'CommonDirectionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'RequestDirectionConfig'commonConfig
           (\ x__ y__
              -> x__ {_Decompressor'RequestDirectionConfig'commonConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Decompressor'RequestDirectionConfig "maybe'commonConfig" (Prelude.Maybe Decompressor'CommonDirectionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'RequestDirectionConfig'commonConfig
           (\ x__ y__
              -> x__ {_Decompressor'RequestDirectionConfig'commonConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Decompressor'RequestDirectionConfig "advertiseAcceptEncoding" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'RequestDirectionConfig'advertiseAcceptEncoding
           (\ x__ y__
              -> x__
                   {_Decompressor'RequestDirectionConfig'advertiseAcceptEncoding = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Decompressor'RequestDirectionConfig "maybe'advertiseAcceptEncoding" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'RequestDirectionConfig'advertiseAcceptEncoding
           (\ x__ y__
              -> x__
                   {_Decompressor'RequestDirectionConfig'advertiseAcceptEncoding = y__}))
        Prelude.id
instance Data.ProtoLens.Message Decompressor'RequestDirectionConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.decompressor.v3.Decompressor.RequestDirectionConfig"
  packedMessageDescriptor _
    = "\n\
      \\SYNRequestDirectionConfig\DC2v\n\
      \\rcommon_config\CAN\SOH \SOH(\v2Q.envoy.extensions.filters.http.decompressor.v3.Decompressor.CommonDirectionConfigR\fcommonConfig\DC2V\n\
      \\EMadvertise_accept_encoding\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\ETBadvertiseAcceptEncoding"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Decompressor'CommonDirectionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonConfig")) ::
              Data.ProtoLens.FieldDescriptor Decompressor'RequestDirectionConfig
        advertiseAcceptEncoding__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "advertise_accept_encoding"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'advertiseAcceptEncoding")) ::
              Data.ProtoLens.FieldDescriptor Decompressor'RequestDirectionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, advertiseAcceptEncoding__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Decompressor'RequestDirectionConfig'_unknownFields
        (\ x__ y__
           -> x__ {_Decompressor'RequestDirectionConfig'_unknownFields = y__})
  defMessage
    = Decompressor'RequestDirectionConfig'_constructor
        {_Decompressor'RequestDirectionConfig'commonConfig = Prelude.Nothing,
         _Decompressor'RequestDirectionConfig'advertiseAcceptEncoding = Prelude.Nothing,
         _Decompressor'RequestDirectionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Decompressor'RequestDirectionConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Decompressor'RequestDirectionConfig
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "advertise_accept_encoding"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"advertiseAcceptEncoding") y x)
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
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'advertiseAcceptEncoding") _x
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
instance Control.DeepSeq.NFData Decompressor'RequestDirectionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Decompressor'RequestDirectionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Decompressor'RequestDirectionConfig'commonConfig x__)
                (Control.DeepSeq.deepseq
                   (_Decompressor'RequestDirectionConfig'advertiseAcceptEncoding x__)
                   ()))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.commonConfig' @:: Lens' Decompressor'ResponseDirectionConfig Decompressor'CommonDirectionConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Decompressor.V3.Decompressor_Fields.maybe'commonConfig' @:: Lens' Decompressor'ResponseDirectionConfig (Prelude.Maybe Decompressor'CommonDirectionConfig)@ -}
data Decompressor'ResponseDirectionConfig
  = Decompressor'ResponseDirectionConfig'_constructor {_Decompressor'ResponseDirectionConfig'commonConfig :: !(Prelude.Maybe Decompressor'CommonDirectionConfig),
                                                       _Decompressor'ResponseDirectionConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Decompressor'ResponseDirectionConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Decompressor'ResponseDirectionConfig "commonConfig" Decompressor'CommonDirectionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'ResponseDirectionConfig'commonConfig
           (\ x__ y__
              -> x__ {_Decompressor'ResponseDirectionConfig'commonConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Decompressor'ResponseDirectionConfig "maybe'commonConfig" (Prelude.Maybe Decompressor'CommonDirectionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Decompressor'ResponseDirectionConfig'commonConfig
           (\ x__ y__
              -> x__ {_Decompressor'ResponseDirectionConfig'commonConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message Decompressor'ResponseDirectionConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.decompressor.v3.Decompressor.ResponseDirectionConfig"
  packedMessageDescriptor _
    = "\n\
      \\ETBResponseDirectionConfig\DC2v\n\
      \\rcommon_config\CAN\SOH \SOH(\v2Q.envoy.extensions.filters.http.decompressor.v3.Decompressor.CommonDirectionConfigR\fcommonConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Decompressor'CommonDirectionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonConfig")) ::
              Data.ProtoLens.FieldDescriptor Decompressor'ResponseDirectionConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Decompressor'ResponseDirectionConfig'_unknownFields
        (\ x__ y__
           -> x__
                {_Decompressor'ResponseDirectionConfig'_unknownFields = y__})
  defMessage
    = Decompressor'ResponseDirectionConfig'_constructor
        {_Decompressor'ResponseDirectionConfig'commonConfig = Prelude.Nothing,
         _Decompressor'ResponseDirectionConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Decompressor'ResponseDirectionConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Decompressor'ResponseDirectionConfig
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Decompressor'ResponseDirectionConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Decompressor'ResponseDirectionConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Decompressor'ResponseDirectionConfig'commonConfig x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \@envoy/extensions/filters/http/decompressor/v3/decompressor.proto\DC2-envoy.extensions.filters.http.decompressor.v3\SUB\USenvoy/config/core/v3/base.proto\SUB$envoy/config/core/v3/extension.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\244\ACK\n\
    \\fDecompressor\DC2g\n\
    \\DC4decompressor_library\CAN\SOH \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\DC3decompressorLibraryB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\140\SOH\n\
    \\CANrequest_direction_config\CAN\STX \SOH(\v2R.envoy.extensions.filters.http.decompressor.v3.Decompressor.RequestDirectionConfigR\SYNrequestDirectionConfig\DC2\143\SOH\n\
    \\EMresponse_direction_config\CAN\ETX \SOH(\v2S.envoy.extensions.filters.http.decompressor.v3.Decompressor.ResponseDirectionConfigR\ETBresponseDirectionConfig\SUB[\n\
    \\NAKCommonDirectionConfig\DC2B\n\
    \\aenabled\CAN\SOH \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\aenabled\SUB\232\SOH\n\
    \\SYNRequestDirectionConfig\DC2v\n\
    \\rcommon_config\CAN\SOH \SOH(\v2Q.envoy.extensions.filters.http.decompressor.v3.Decompressor.CommonDirectionConfigR\fcommonConfig\DC2V\n\
    \\EMadvertise_accept_encoding\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\ETBadvertiseAcceptEncoding\SUB\145\SOH\n\
    \\ETBResponseDirectionConfig\DC2v\n\
    \\rcommon_config\CAN\SOH \SOH(\v2Q.envoy.extensions.filters.http.decompressor.v3.Decompressor.CommonDirectionConfigR\fcommonConfigBZ\n\
    \;io.envoyproxy.envoy.extensions.filters.http.decompressor.v3B\DC1DecompressorProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\233\SO\n\
    \\ACK\DC2\EOT\NUL\NUL6\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL6\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULT\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULT\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL2\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL2\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\\\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL6\SOH2P [#protodoc-title: Decompressor]\n\
    \ [#extension: envoy.filters.http.decompressor]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\DC4\n\
    \d\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\SYN\STX\SUB\ETX\SUBV Common configuration for filter behavior on both the request and response direction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\SYN\n\
    \\US\n\
    \\227\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\EM\EOT2\SUB\211\SOH Runtime flag that controls whether the filter is enabled for decompression or not. If set to false, the\n\
    \ filter will operate as a pass-through filter. If the message is unspecified, the filter will be enabled.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX\EM\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\EM&-\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\EM01\n\
    \K\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT\GS\STX#\ETX\SUB= Configuration for filter behavior on the request direction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX\GS\n\
    \ \n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX\RS\EOT,\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETX\RS\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX\RS\SUB'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX\RS*+\n\
    \\196\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX\"\EOT<\SUB\180\SOH If set to true, and response decompression is enabled, the filter modifies the Accept-Encoding\n\
    \ request header by appending the decompressor_library's encoding. Defaults to true.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ACK\DC2\ETX\"\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX\"\RS7\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX\":;\n\
    \L\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\EOT&\STX(\ETX\SUB> Configuration for filter behavior on the response direction.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETX&\n\
    \!\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\ETX'\EOT,\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ACK\DC2\ETX'\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETX'\SUB'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETX'*+\n\
    \\165\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT.\STX/4\SUB\150\STX A decompressor library to use for both request and response decompression. Currently only\n\
    \ :ref:`envoy.compression.gzip.compressor<envoy_v3_api_msg_extensions.compression.gzip.decompressor.v3.Gzip>`\n\
    \ is included in Envoy.\n\
    \ [#extension-category: envoy.compression.decompressor]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX.\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX.&:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX.=>\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX/\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX/\a2\n\
    \j\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX2\STX6\SUB] Configuration for request decompression. Decompression is enabled by default if left empty.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX2\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX2\EM1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX245\n\
    \k\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX5\STX8\SUB^ Configuration for response decompression. Decompression is enabled by default if left empty.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX5\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX5\SUB3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX567b\ACKproto3"