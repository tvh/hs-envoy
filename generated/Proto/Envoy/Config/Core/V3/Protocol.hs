{- This file was auto-generated from envoy/config/core/v3/protocol.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.Protocol (
        AlternateProtocolsCacheOptions(), GrpcProtocolOptions(),
        Http1ProtocolOptions(), Http1ProtocolOptions'HeaderKeyFormat(),
        Http1ProtocolOptions'HeaderKeyFormat'HeaderFormat(..),
        _Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords',
        _Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter,
        Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords(),
        Http2ProtocolOptions(), Http2ProtocolOptions'SettingsParameter(),
        Http3ProtocolOptions(), HttpProtocolOptions(),
        HttpProtocolOptions'HeadersWithUnderscoresAction(..),
        HttpProtocolOptions'HeadersWithUnderscoresAction(),
        HttpProtocolOptions'HeadersWithUnderscoresAction'UnrecognizedValue,
        KeepaliveSettings(), QuicProtocolOptions(),
        SchemeHeaderTransformation(),
        SchemeHeaderTransformation'Transformation(..),
        _SchemeHeaderTransformation'SchemeToOverwrite,
        TcpProtocolOptions(), UpstreamHttpProtocolOptions()
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
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.name' @:: Lens' AlternateProtocolsCacheOptions Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxEntries' @:: Lens' AlternateProtocolsCacheOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxEntries' @:: Lens' AlternateProtocolsCacheOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data AlternateProtocolsCacheOptions
  = AlternateProtocolsCacheOptions'_constructor {_AlternateProtocolsCacheOptions'name :: !Data.Text.Text,
                                                 _AlternateProtocolsCacheOptions'maxEntries :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                 _AlternateProtocolsCacheOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AlternateProtocolsCacheOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AlternateProtocolsCacheOptions "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AlternateProtocolsCacheOptions'name
           (\ x__ y__ -> x__ {_AlternateProtocolsCacheOptions'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AlternateProtocolsCacheOptions "maxEntries" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AlternateProtocolsCacheOptions'maxEntries
           (\ x__ y__
              -> x__ {_AlternateProtocolsCacheOptions'maxEntries = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AlternateProtocolsCacheOptions "maybe'maxEntries" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AlternateProtocolsCacheOptions'maxEntries
           (\ x__ y__
              -> x__ {_AlternateProtocolsCacheOptions'maxEntries = y__}))
        Prelude.id
instance Data.ProtoLens.Message AlternateProtocolsCacheOptions where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.AlternateProtocolsCacheOptions"
  packedMessageDescriptor _
    = "\n\
      \\RSAlternateProtocolsCacheOptions\DC2\ESC\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2F\n\
      \\vmax_entries\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \maxEntriesB\a\250B\EOT*\STX \NUL"
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
              Data.ProtoLens.FieldDescriptor AlternateProtocolsCacheOptions
        maxEntries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxEntries")) ::
              Data.ProtoLens.FieldDescriptor AlternateProtocolsCacheOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, maxEntries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AlternateProtocolsCacheOptions'_unknownFields
        (\ x__ y__
           -> x__ {_AlternateProtocolsCacheOptions'_unknownFields = y__})
  defMessage
    = AlternateProtocolsCacheOptions'_constructor
        {_AlternateProtocolsCacheOptions'name = Data.ProtoLens.fieldDefault,
         _AlternateProtocolsCacheOptions'maxEntries = Prelude.Nothing,
         _AlternateProtocolsCacheOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AlternateProtocolsCacheOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser AlternateProtocolsCacheOptions
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_entries"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxEntries") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "AlternateProtocolsCacheOptions"
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
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'maxEntries") _x
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
instance Control.DeepSeq.NFData AlternateProtocolsCacheOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AlternateProtocolsCacheOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AlternateProtocolsCacheOptions'name x__)
                (Control.DeepSeq.deepseq
                   (_AlternateProtocolsCacheOptions'maxEntries x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.http2ProtocolOptions' @:: Lens' GrpcProtocolOptions Http2ProtocolOptions@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'http2ProtocolOptions' @:: Lens' GrpcProtocolOptions (Prelude.Maybe Http2ProtocolOptions)@ -}
data GrpcProtocolOptions
  = GrpcProtocolOptions'_constructor {_GrpcProtocolOptions'http2ProtocolOptions :: !(Prelude.Maybe Http2ProtocolOptions),
                                      _GrpcProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcProtocolOptions "http2ProtocolOptions" Http2ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcProtocolOptions'http2ProtocolOptions
           (\ x__ y__
              -> x__ {_GrpcProtocolOptions'http2ProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcProtocolOptions "maybe'http2ProtocolOptions" (Prelude.Maybe Http2ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcProtocolOptions'http2ProtocolOptions
           (\ x__ y__
              -> x__ {_GrpcProtocolOptions'http2ProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcProtocolOptions where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.GrpcProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC3GrpcProtocolOptions\DC2`\n\
      \\SYNhttp2_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptions:,\154\197\136\RS'\n\
      \%envoy.api.v2.core.GrpcProtocolOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        http2ProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http2_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Http2ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor GrpcProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, http2ProtocolOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_GrpcProtocolOptions'_unknownFields = y__})
  defMessage
    = GrpcProtocolOptions'_constructor
        {_GrpcProtocolOptions'http2ProtocolOptions = Prelude.Nothing,
         _GrpcProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcProtocolOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcProtocolOptions
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
                                       "http2_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"http2ProtocolOptions") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GrpcProtocolOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions") _x
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
instance Control.DeepSeq.NFData GrpcProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcProtocolOptions'http2ProtocolOptions x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.allowAbsoluteUrl' @:: Lens' Http1ProtocolOptions Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'allowAbsoluteUrl' @:: Lens' Http1ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.acceptHttp10' @:: Lens' Http1ProtocolOptions Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.defaultHostForHttp10' @:: Lens' Http1ProtocolOptions Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.headerKeyFormat' @:: Lens' Http1ProtocolOptions Http1ProtocolOptions'HeaderKeyFormat@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'headerKeyFormat' @:: Lens' Http1ProtocolOptions (Prelude.Maybe Http1ProtocolOptions'HeaderKeyFormat)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.enableTrailers' @:: Lens' Http1ProtocolOptions Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.allowChunkedLength' @:: Lens' Http1ProtocolOptions Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.overrideStreamErrorOnInvalidHttpMessage' @:: Lens' Http1ProtocolOptions Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'overrideStreamErrorOnInvalidHttpMessage' @:: Lens' Http1ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@ -}
data Http1ProtocolOptions
  = Http1ProtocolOptions'_constructor {_Http1ProtocolOptions'allowAbsoluteUrl :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                       _Http1ProtocolOptions'acceptHttp10 :: !Prelude.Bool,
                                       _Http1ProtocolOptions'defaultHostForHttp10 :: !Data.Text.Text,
                                       _Http1ProtocolOptions'headerKeyFormat :: !(Prelude.Maybe Http1ProtocolOptions'HeaderKeyFormat),
                                       _Http1ProtocolOptions'enableTrailers :: !Prelude.Bool,
                                       _Http1ProtocolOptions'allowChunkedLength :: !Prelude.Bool,
                                       _Http1ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                       _Http1ProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Http1ProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions "allowAbsoluteUrl" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'allowAbsoluteUrl
           (\ x__ y__ -> x__ {_Http1ProtocolOptions'allowAbsoluteUrl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions "maybe'allowAbsoluteUrl" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'allowAbsoluteUrl
           (\ x__ y__ -> x__ {_Http1ProtocolOptions'allowAbsoluteUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions "acceptHttp10" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'acceptHttp10
           (\ x__ y__ -> x__ {_Http1ProtocolOptions'acceptHttp10 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions "defaultHostForHttp10" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'defaultHostForHttp10
           (\ x__ y__
              -> x__ {_Http1ProtocolOptions'defaultHostForHttp10 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions "headerKeyFormat" Http1ProtocolOptions'HeaderKeyFormat where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'headerKeyFormat
           (\ x__ y__ -> x__ {_Http1ProtocolOptions'headerKeyFormat = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions "maybe'headerKeyFormat" (Prelude.Maybe Http1ProtocolOptions'HeaderKeyFormat) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'headerKeyFormat
           (\ x__ y__ -> x__ {_Http1ProtocolOptions'headerKeyFormat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions "enableTrailers" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'enableTrailers
           (\ x__ y__ -> x__ {_Http1ProtocolOptions'enableTrailers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions "allowChunkedLength" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'allowChunkedLength
           (\ x__ y__
              -> x__ {_Http1ProtocolOptions'allowChunkedLength = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions "overrideStreamErrorOnInvalidHttpMessage" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage
           (\ x__ y__
              -> x__
                   {_Http1ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions "maybe'overrideStreamErrorOnInvalidHttpMessage" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage
           (\ x__ y__
              -> x__
                   {_Http1ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage = y__}))
        Prelude.id
instance Data.ProtoLens.Message Http1ProtocolOptions where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.Http1ProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC4Http1ProtocolOptions\DC2H\n\
      \\DC2allow_absolute_url\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\DLEallowAbsoluteUrl\DC2$\n\
      \\SOaccept_http_10\CAN\STX \SOH(\bR\facceptHttp10\DC26\n\
      \\CANdefault_host_for_http_10\CAN\ETX \SOH(\tR\DC4defaultHostForHttp10\DC2f\n\
      \\DC1header_key_format\CAN\EOT \SOH(\v2:.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormatR\SIheaderKeyFormat\DC2'\n\
      \\SIenable_trailers\CAN\ENQ \SOH(\bR\SOenableTrailers\DC20\n\
      \\DC4allow_chunked_length\CAN\ACK \SOH(\bR\DC2allowChunkedLength\DC2z\n\
      \-override_stream_error_on_invalid_http_message\CAN\a \SOH(\v2\SUB.google.protobuf.BoolValueR'overrideStreamErrorOnInvalidHttpMessage\SUB\159\ETX\n\
      \\SIHeaderKeyFormat\DC2x\n\
      \\DC1proper_case_words\CAN\SOH \SOH(\v2J.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWordsH\NULR\SIproperCaseWords\DC2[\n\
      \\DC2stateful_formatter\CAN\b \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\DC1statefulFormatter\SUB`\n\
      \\SIProperCaseWords:M\154\197\136\RSH\n\
      \Fenvoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWordsB\DC4\n\
      \\rheader_format\DC2\ETX\248B\SOH:=\154\197\136\RS8\n\
      \6envoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat:-\154\197\136\RS(\n\
      \&envoy.api.v2.core.Http1ProtocolOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        allowAbsoluteUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_absolute_url"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allowAbsoluteUrl")) ::
              Data.ProtoLens.FieldDescriptor Http1ProtocolOptions
        acceptHttp10__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "accept_http_10"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"acceptHttp10")) ::
              Data.ProtoLens.FieldDescriptor Http1ProtocolOptions
        defaultHostForHttp10__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_host_for_http_10"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"defaultHostForHttp10")) ::
              Data.ProtoLens.FieldDescriptor Http1ProtocolOptions
        headerKeyFormat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "header_key_format"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Http1ProtocolOptions'HeaderKeyFormat)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'headerKeyFormat")) ::
              Data.ProtoLens.FieldDescriptor Http1ProtocolOptions
        enableTrailers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_trailers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableTrailers")) ::
              Data.ProtoLens.FieldDescriptor Http1ProtocolOptions
        allowChunkedLength__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_chunked_length"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allowChunkedLength")) ::
              Data.ProtoLens.FieldDescriptor Http1ProtocolOptions
        overrideStreamErrorOnInvalidHttpMessage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "override_stream_error_on_invalid_http_message"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'overrideStreamErrorOnInvalidHttpMessage")) ::
              Data.ProtoLens.FieldDescriptor Http1ProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, allowAbsoluteUrl__field_descriptor),
           (Data.ProtoLens.Tag 2, acceptHttp10__field_descriptor),
           (Data.ProtoLens.Tag 3, defaultHostForHttp10__field_descriptor),
           (Data.ProtoLens.Tag 4, headerKeyFormat__field_descriptor),
           (Data.ProtoLens.Tag 5, enableTrailers__field_descriptor),
           (Data.ProtoLens.Tag 6, allowChunkedLength__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            overrideStreamErrorOnInvalidHttpMessage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Http1ProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_Http1ProtocolOptions'_unknownFields = y__})
  defMessage
    = Http1ProtocolOptions'_constructor
        {_Http1ProtocolOptions'allowAbsoluteUrl = Prelude.Nothing,
         _Http1ProtocolOptions'acceptHttp10 = Data.ProtoLens.fieldDefault,
         _Http1ProtocolOptions'defaultHostForHttp10 = Data.ProtoLens.fieldDefault,
         _Http1ProtocolOptions'headerKeyFormat = Prelude.Nothing,
         _Http1ProtocolOptions'enableTrailers = Data.ProtoLens.fieldDefault,
         _Http1ProtocolOptions'allowChunkedLength = Data.ProtoLens.fieldDefault,
         _Http1ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage = Prelude.Nothing,
         _Http1ProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Http1ProtocolOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser Http1ProtocolOptions
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
                                       "allow_absolute_url"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowAbsoluteUrl") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "accept_http_10"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"acceptHttp10") y x)
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
                                       "default_host_for_http_10"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultHostForHttp10") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "header_key_format"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"headerKeyFormat") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "enable_trailers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableTrailers") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "allow_chunked_length"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowChunkedLength") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "override_stream_error_on_invalid_http_message"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"overrideStreamErrorOnInvalidHttpMessage")
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
          (do loop Data.ProtoLens.defMessage) "Http1ProtocolOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'allowAbsoluteUrl") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"acceptHttp10") _x
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
                            (Data.ProtoLens.Field.field @"defaultHostForHttp10") _x
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
                             (Data.ProtoLens.Field.field @"maybe'headerKeyFormat") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                  (Data.ProtoLens.Field.field @"enableTrailers") _x
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
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"allowChunkedLength") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0)
                                        _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field
                                         @"maybe'overrideStreamErrorOnInvalidHttpMessage")
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
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData Http1ProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Http1ProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Http1ProtocolOptions'allowAbsoluteUrl x__)
                (Control.DeepSeq.deepseq
                   (_Http1ProtocolOptions'acceptHttp10 x__)
                   (Control.DeepSeq.deepseq
                      (_Http1ProtocolOptions'defaultHostForHttp10 x__)
                      (Control.DeepSeq.deepseq
                         (_Http1ProtocolOptions'headerKeyFormat x__)
                         (Control.DeepSeq.deepseq
                            (_Http1ProtocolOptions'enableTrailers x__)
                            (Control.DeepSeq.deepseq
                               (_Http1ProtocolOptions'allowChunkedLength x__)
                               (Control.DeepSeq.deepseq
                                  (_Http1ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage
                                     x__)
                                  ())))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'headerFormat' @:: Lens' Http1ProtocolOptions'HeaderKeyFormat (Prelude.Maybe Http1ProtocolOptions'HeaderKeyFormat'HeaderFormat)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'properCaseWords' @:: Lens' Http1ProtocolOptions'HeaderKeyFormat (Prelude.Maybe Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.properCaseWords' @:: Lens' Http1ProtocolOptions'HeaderKeyFormat Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'statefulFormatter' @:: Lens' Http1ProtocolOptions'HeaderKeyFormat (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.statefulFormatter' @:: Lens' Http1ProtocolOptions'HeaderKeyFormat Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@ -}
data Http1ProtocolOptions'HeaderKeyFormat
  = Http1ProtocolOptions'HeaderKeyFormat'_constructor {_Http1ProtocolOptions'HeaderKeyFormat'headerFormat :: !(Prelude.Maybe Http1ProtocolOptions'HeaderKeyFormat'HeaderFormat),
                                                       _Http1ProtocolOptions'HeaderKeyFormat'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Http1ProtocolOptions'HeaderKeyFormat where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Http1ProtocolOptions'HeaderKeyFormat'HeaderFormat
  = Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords' !Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords |
    Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter !Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions'HeaderKeyFormat "maybe'headerFormat" (Prelude.Maybe Http1ProtocolOptions'HeaderKeyFormat'HeaderFormat) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'HeaderKeyFormat'headerFormat
           (\ x__ y__
              -> x__ {_Http1ProtocolOptions'HeaderKeyFormat'headerFormat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions'HeaderKeyFormat "maybe'properCaseWords" (Prelude.Maybe Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'HeaderKeyFormat'headerFormat
           (\ x__ y__
              -> x__ {_Http1ProtocolOptions'HeaderKeyFormat'headerFormat = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords' y__))
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions'HeaderKeyFormat "properCaseWords" Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'HeaderKeyFormat'headerFormat
           (\ x__ y__
              -> x__ {_Http1ProtocolOptions'HeaderKeyFormat'headerFormat = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions'HeaderKeyFormat "maybe'statefulFormatter" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'HeaderKeyFormat'headerFormat
           (\ x__ y__
              -> x__ {_Http1ProtocolOptions'HeaderKeyFormat'headerFormat = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter y__))
instance Data.ProtoLens.Field.HasField Http1ProtocolOptions'HeaderKeyFormat "statefulFormatter" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http1ProtocolOptions'HeaderKeyFormat'headerFormat
           (\ x__ y__
              -> x__ {_Http1ProtocolOptions'HeaderKeyFormat'headerFormat = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Http1ProtocolOptions'HeaderKeyFormat where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat"
  packedMessageDescriptor _
    = "\n\
      \\SIHeaderKeyFormat\DC2x\n\
      \\DC1proper_case_words\CAN\SOH \SOH(\v2J.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWordsH\NULR\SIproperCaseWords\DC2[\n\
      \\DC2stateful_formatter\CAN\b \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\DC1statefulFormatter\SUB`\n\
      \\SIProperCaseWords:M\154\197\136\RSH\n\
      \Fenvoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWordsB\DC4\n\
      \\rheader_format\DC2\ETX\248B\SOH:=\154\197\136\RS8\n\
      \6envoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        properCaseWords__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proper_case_words"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'properCaseWords")) ::
              Data.ProtoLens.FieldDescriptor Http1ProtocolOptions'HeaderKeyFormat
        statefulFormatter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stateful_formatter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'statefulFormatter")) ::
              Data.ProtoLens.FieldDescriptor Http1ProtocolOptions'HeaderKeyFormat
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, properCaseWords__field_descriptor),
           (Data.ProtoLens.Tag 8, statefulFormatter__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Http1ProtocolOptions'HeaderKeyFormat'_unknownFields
        (\ x__ y__
           -> x__
                {_Http1ProtocolOptions'HeaderKeyFormat'_unknownFields = y__})
  defMessage
    = Http1ProtocolOptions'HeaderKeyFormat'_constructor
        {_Http1ProtocolOptions'HeaderKeyFormat'headerFormat = Prelude.Nothing,
         _Http1ProtocolOptions'HeaderKeyFormat'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Http1ProtocolOptions'HeaderKeyFormat
          -> Data.ProtoLens.Encoding.Bytes.Parser Http1ProtocolOptions'HeaderKeyFormat
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
                                       "proper_case_words"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"properCaseWords") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stateful_formatter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"statefulFormatter") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeaderKeyFormat"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'headerFormat") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
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
instance Control.DeepSeq.NFData Http1ProtocolOptions'HeaderKeyFormat where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Http1ProtocolOptions'HeaderKeyFormat'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Http1ProtocolOptions'HeaderKeyFormat'headerFormat x__) ())
instance Control.DeepSeq.NFData Http1ProtocolOptions'HeaderKeyFormat'HeaderFormat where
  rnf (Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords' x__)
    = Control.DeepSeq.rnf x__
  rnf (Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter x__)
    = Control.DeepSeq.rnf x__
_Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords' ::
  Data.ProtoLens.Prism.Prism' Http1ProtocolOptions'HeaderKeyFormat'HeaderFormat Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords
_Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords'
  = Data.ProtoLens.Prism.prism'
      Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords'
      (\ p__
         -> case p__ of
              (Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords' p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter ::
  Data.ProtoLens.Prism.Prism' Http1ProtocolOptions'HeaderKeyFormat'HeaderFormat Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig
_Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter
  = Data.ProtoLens.Prism.prism'
      Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter
      (\ p__
         -> case p__ of
              (Http1ProtocolOptions'HeaderKeyFormat'StatefulFormatter p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords
  = Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords'_constructor {_Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords"
  packedMessageDescriptor _
    = "\n\
      \\SIProperCaseWords:M\154\197\136\RSH\n\
      \Fenvoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWords"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords'_unknownFields
        (\ x__ y__
           -> x__
                {_Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords'_unknownFields = y__})
  defMessage
    = Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords'_constructor
        {_Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords
          -> Data.ProtoLens.Encoding.Bytes.Parser Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProperCaseWords"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Http1ProtocolOptions'HeaderKeyFormat'ProperCaseWords'_unknownFields
                x__)
             ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.hpackTableSize' @:: Lens' Http2ProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'hpackTableSize' @:: Lens' Http2ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxConcurrentStreams' @:: Lens' Http2ProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxConcurrentStreams' @:: Lens' Http2ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.initialStreamWindowSize' @:: Lens' Http2ProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'initialStreamWindowSize' @:: Lens' Http2ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.initialConnectionWindowSize' @:: Lens' Http2ProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'initialConnectionWindowSize' @:: Lens' Http2ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.allowConnect' @:: Lens' Http2ProtocolOptions Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.allowMetadata' @:: Lens' Http2ProtocolOptions Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxOutboundFrames' @:: Lens' Http2ProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxOutboundFrames' @:: Lens' Http2ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxOutboundControlFrames' @:: Lens' Http2ProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxOutboundControlFrames' @:: Lens' Http2ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxConsecutiveInboundFramesWithEmptyPayload' @:: Lens' Http2ProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxConsecutiveInboundFramesWithEmptyPayload' @:: Lens' Http2ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxInboundPriorityFramesPerStream' @:: Lens' Http2ProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxInboundPriorityFramesPerStream' @:: Lens' Http2ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxInboundWindowUpdateFramesPerDataFrameSent' @:: Lens' Http2ProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxInboundWindowUpdateFramesPerDataFrameSent' @:: Lens' Http2ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.streamErrorOnInvalidHttpMessaging' @:: Lens' Http2ProtocolOptions Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.overrideStreamErrorOnInvalidHttpMessage' @:: Lens' Http2ProtocolOptions Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'overrideStreamErrorOnInvalidHttpMessage' @:: Lens' Http2ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.customSettingsParameters' @:: Lens' Http2ProtocolOptions [Http2ProtocolOptions'SettingsParameter]@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.vec'customSettingsParameters' @:: Lens' Http2ProtocolOptions (Data.Vector.Vector Http2ProtocolOptions'SettingsParameter)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.connectionKeepalive' @:: Lens' Http2ProtocolOptions KeepaliveSettings@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'connectionKeepalive' @:: Lens' Http2ProtocolOptions (Prelude.Maybe KeepaliveSettings)@ -}
data Http2ProtocolOptions
  = Http2ProtocolOptions'_constructor {_Http2ProtocolOptions'hpackTableSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                       _Http2ProtocolOptions'maxConcurrentStreams :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                       _Http2ProtocolOptions'initialStreamWindowSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                       _Http2ProtocolOptions'initialConnectionWindowSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                       _Http2ProtocolOptions'allowConnect :: !Prelude.Bool,
                                       _Http2ProtocolOptions'allowMetadata :: !Prelude.Bool,
                                       _Http2ProtocolOptions'maxOutboundFrames :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                       _Http2ProtocolOptions'maxOutboundControlFrames :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                       _Http2ProtocolOptions'maxConsecutiveInboundFramesWithEmptyPayload :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                       _Http2ProtocolOptions'maxInboundPriorityFramesPerStream :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                       _Http2ProtocolOptions'maxInboundWindowUpdateFramesPerDataFrameSent :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                       _Http2ProtocolOptions'streamErrorOnInvalidHttpMessaging :: !Prelude.Bool,
                                       _Http2ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                       _Http2ProtocolOptions'customSettingsParameters :: !(Data.Vector.Vector Http2ProtocolOptions'SettingsParameter),
                                       _Http2ProtocolOptions'connectionKeepalive :: !(Prelude.Maybe KeepaliveSettings),
                                       _Http2ProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Http2ProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "hpackTableSize" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'hpackTableSize
           (\ x__ y__ -> x__ {_Http2ProtocolOptions'hpackTableSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'hpackTableSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'hpackTableSize
           (\ x__ y__ -> x__ {_Http2ProtocolOptions'hpackTableSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maxConcurrentStreams" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxConcurrentStreams
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'maxConcurrentStreams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'maxConcurrentStreams" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxConcurrentStreams
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'maxConcurrentStreams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "initialStreamWindowSize" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'initialStreamWindowSize
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'initialStreamWindowSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'initialStreamWindowSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'initialStreamWindowSize
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'initialStreamWindowSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "initialConnectionWindowSize" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'initialConnectionWindowSize
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'initialConnectionWindowSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'initialConnectionWindowSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'initialConnectionWindowSize
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'initialConnectionWindowSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "allowConnect" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'allowConnect
           (\ x__ y__ -> x__ {_Http2ProtocolOptions'allowConnect = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "allowMetadata" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'allowMetadata
           (\ x__ y__ -> x__ {_Http2ProtocolOptions'allowMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maxOutboundFrames" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxOutboundFrames
           (\ x__ y__ -> x__ {_Http2ProtocolOptions'maxOutboundFrames = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'maxOutboundFrames" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxOutboundFrames
           (\ x__ y__ -> x__ {_Http2ProtocolOptions'maxOutboundFrames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maxOutboundControlFrames" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxOutboundControlFrames
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'maxOutboundControlFrames = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'maxOutboundControlFrames" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxOutboundControlFrames
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'maxOutboundControlFrames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maxConsecutiveInboundFramesWithEmptyPayload" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxConsecutiveInboundFramesWithEmptyPayload
           (\ x__ y__
              -> x__
                   {_Http2ProtocolOptions'maxConsecutiveInboundFramesWithEmptyPayload = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'maxConsecutiveInboundFramesWithEmptyPayload" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxConsecutiveInboundFramesWithEmptyPayload
           (\ x__ y__
              -> x__
                   {_Http2ProtocolOptions'maxConsecutiveInboundFramesWithEmptyPayload = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maxInboundPriorityFramesPerStream" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxInboundPriorityFramesPerStream
           (\ x__ y__
              -> x__
                   {_Http2ProtocolOptions'maxInboundPriorityFramesPerStream = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'maxInboundPriorityFramesPerStream" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxInboundPriorityFramesPerStream
           (\ x__ y__
              -> x__
                   {_Http2ProtocolOptions'maxInboundPriorityFramesPerStream = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maxInboundWindowUpdateFramesPerDataFrameSent" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxInboundWindowUpdateFramesPerDataFrameSent
           (\ x__ y__
              -> x__
                   {_Http2ProtocolOptions'maxInboundWindowUpdateFramesPerDataFrameSent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'maxInboundWindowUpdateFramesPerDataFrameSent" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'maxInboundWindowUpdateFramesPerDataFrameSent
           (\ x__ y__
              -> x__
                   {_Http2ProtocolOptions'maxInboundWindowUpdateFramesPerDataFrameSent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "streamErrorOnInvalidHttpMessaging" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'streamErrorOnInvalidHttpMessaging
           (\ x__ y__
              -> x__
                   {_Http2ProtocolOptions'streamErrorOnInvalidHttpMessaging = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "overrideStreamErrorOnInvalidHttpMessage" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage
           (\ x__ y__
              -> x__
                   {_Http2ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'overrideStreamErrorOnInvalidHttpMessage" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage
           (\ x__ y__
              -> x__
                   {_Http2ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "customSettingsParameters" [Http2ProtocolOptions'SettingsParameter] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'customSettingsParameters
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'customSettingsParameters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "vec'customSettingsParameters" (Data.Vector.Vector Http2ProtocolOptions'SettingsParameter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'customSettingsParameters
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'customSettingsParameters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "connectionKeepalive" KeepaliveSettings where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'connectionKeepalive
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'connectionKeepalive = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions "maybe'connectionKeepalive" (Prelude.Maybe KeepaliveSettings) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'connectionKeepalive
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'connectionKeepalive = y__}))
        Prelude.id
instance Data.ProtoLens.Message Http2ProtocolOptions where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.Http2ProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC4Http2ProtocolOptions\DC2F\n\
      \\DLEhpack_table_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOhpackTableSize\DC2a\n\
      \\SYNmax_concurrent_streams\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC4maxConcurrentStreamsB\r\250B\n\
      \*\b\CAN\255\255\255\255\a(\SOH\DC2j\n\
      \\SUBinitial_stream_window_size\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ETBinitialStreamWindowSizeB\SI\250B\f*\n\
      \\CAN\255\255\255\255\a(\255\255\ETX\DC2r\n\
      \\RSinitial_connection_window_size\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\ESCinitialConnectionWindowSizeB\SI\250B\f*\n\
      \\CAN\255\255\255\255\a(\255\255\ETX\DC2#\n\
      \\rallow_connect\CAN\ENQ \SOH(\bR\fallowConnect\DC2%\n\
      \\SOallow_metadata\CAN\ACK \SOH(\bR\rallowMetadata\DC2U\n\
      \\DC3max_outbound_frames\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC1maxOutboundFramesB\a\250B\EOT*\STX(\SOH\DC2d\n\
      \\ESCmax_outbound_control_frames\CAN\b \SOH(\v2\FS.google.protobuf.UInt32ValueR\CANmaxOutboundControlFramesB\a\250B\EOT*\STX(\SOH\DC2\132\SOH\n\
      \1max_consecutive_inbound_frames_with_empty_payload\CAN\t \SOH(\v2\FS.google.protobuf.UInt32ValueR+maxConsecutiveInboundFramesWithEmptyPayload\DC2o\n\
      \&max_inbound_priority_frames_per_stream\CAN\n\
      \ \SOH(\v2\FS.google.protobuf.UInt32ValueR!maxInboundPriorityFramesPerStream\DC2\145\SOH\n\
      \4max_inbound_window_update_frames_per_data_frame_sent\CAN\v \SOH(\v2\FS.google.protobuf.UInt32ValueR,maxInboundWindowUpdateFramesPerDataFrameSentB\a\250B\EOT*\STX(\SOH\DC2^\n\
      \&stream_error_on_invalid_http_messaging\CAN\f \SOH(\bR!streamErrorOnInvalidHttpMessagingB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2z\n\
      \-override_stream_error_on_invalid_http_message\CAN\SO \SOH(\v2\SUB.google.protobuf.BoolValueR'overrideStreamErrorOnInvalidHttpMessage\DC2z\n\
      \\SUBcustom_settings_parameters\CAN\r \ETX(\v2<.envoy.config.core.v3.Http2ProtocolOptions.SettingsParameterR\CANcustomSettingsParameters\DC2Z\n\
      \\DC4connection_keepalive\CAN\SI \SOH(\v2'.envoy.config.core.v3.KeepaliveSettingsR\DC3connectionKeepalive\SUB\229\SOH\n\
      \\DC1SettingsParameter\DC2Q\n\
      \\n\
      \identifier\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \identifierB\DC3\250B\b*\ACK\CAN\255\255\ETX(\NUL\250B\ENQ\138\SOH\STX\DLE\SOH\DC2<\n\
      \\ENQvalue\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ENQvalueB\b\250B\ENQ\138\SOH\STX\DLE\SOH:?\154\197\136\RS:\n\
      \8envoy.api.v2.core.Http2ProtocolOptions.SettingsParameter:-\154\197\136\RS(\n\
      \&envoy.api.v2.core.Http2ProtocolOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hpackTableSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hpack_table_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hpackTableSize")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        maxConcurrentStreams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_concurrent_streams"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxConcurrentStreams")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        initialStreamWindowSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_stream_window_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'initialStreamWindowSize")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        initialConnectionWindowSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_connection_window_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'initialConnectionWindowSize")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        allowConnect__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_connect"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allowConnect")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        allowMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_metadata"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allowMetadata")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        maxOutboundFrames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_outbound_frames"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxOutboundFrames")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        maxOutboundControlFrames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_outbound_control_frames"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxOutboundControlFrames")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        maxConsecutiveInboundFramesWithEmptyPayload__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_consecutive_inbound_frames_with_empty_payload"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'maxConsecutiveInboundFramesWithEmptyPayload")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        maxInboundPriorityFramesPerStream__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_inbound_priority_frames_per_stream"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'maxInboundPriorityFramesPerStream")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        maxInboundWindowUpdateFramesPerDataFrameSent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_inbound_window_update_frames_per_data_frame_sent"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'maxInboundWindowUpdateFramesPerDataFrameSent")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        streamErrorOnInvalidHttpMessaging__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stream_error_on_invalid_http_messaging"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"streamErrorOnInvalidHttpMessaging")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        overrideStreamErrorOnInvalidHttpMessage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "override_stream_error_on_invalid_http_message"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'overrideStreamErrorOnInvalidHttpMessage")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        customSettingsParameters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "custom_settings_parameters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Http2ProtocolOptions'SettingsParameter)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"customSettingsParameters")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
        connectionKeepalive__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "connection_keepalive"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor KeepaliveSettings)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'connectionKeepalive")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hpackTableSize__field_descriptor),
           (Data.ProtoLens.Tag 2, maxConcurrentStreams__field_descriptor),
           (Data.ProtoLens.Tag 3, initialStreamWindowSize__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            initialConnectionWindowSize__field_descriptor),
           (Data.ProtoLens.Tag 5, allowConnect__field_descriptor),
           (Data.ProtoLens.Tag 6, allowMetadata__field_descriptor),
           (Data.ProtoLens.Tag 7, maxOutboundFrames__field_descriptor),
           (Data.ProtoLens.Tag 8, maxOutboundControlFrames__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            maxConsecutiveInboundFramesWithEmptyPayload__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            maxInboundPriorityFramesPerStream__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            maxInboundWindowUpdateFramesPerDataFrameSent__field_descriptor),
           (Data.ProtoLens.Tag 12, 
            streamErrorOnInvalidHttpMessaging__field_descriptor),
           (Data.ProtoLens.Tag 14, 
            overrideStreamErrorOnInvalidHttpMessage__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            customSettingsParameters__field_descriptor),
           (Data.ProtoLens.Tag 15, connectionKeepalive__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Http2ProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_Http2ProtocolOptions'_unknownFields = y__})
  defMessage
    = Http2ProtocolOptions'_constructor
        {_Http2ProtocolOptions'hpackTableSize = Prelude.Nothing,
         _Http2ProtocolOptions'maxConcurrentStreams = Prelude.Nothing,
         _Http2ProtocolOptions'initialStreamWindowSize = Prelude.Nothing,
         _Http2ProtocolOptions'initialConnectionWindowSize = Prelude.Nothing,
         _Http2ProtocolOptions'allowConnect = Data.ProtoLens.fieldDefault,
         _Http2ProtocolOptions'allowMetadata = Data.ProtoLens.fieldDefault,
         _Http2ProtocolOptions'maxOutboundFrames = Prelude.Nothing,
         _Http2ProtocolOptions'maxOutboundControlFrames = Prelude.Nothing,
         _Http2ProtocolOptions'maxConsecutiveInboundFramesWithEmptyPayload = Prelude.Nothing,
         _Http2ProtocolOptions'maxInboundPriorityFramesPerStream = Prelude.Nothing,
         _Http2ProtocolOptions'maxInboundWindowUpdateFramesPerDataFrameSent = Prelude.Nothing,
         _Http2ProtocolOptions'streamErrorOnInvalidHttpMessaging = Data.ProtoLens.fieldDefault,
         _Http2ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage = Prelude.Nothing,
         _Http2ProtocolOptions'customSettingsParameters = Data.Vector.Generic.empty,
         _Http2ProtocolOptions'connectionKeepalive = Prelude.Nothing,
         _Http2ProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Http2ProtocolOptions
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Http2ProtocolOptions'SettingsParameter
             -> Data.ProtoLens.Encoding.Bytes.Parser Http2ProtocolOptions
        loop x mutable'customSettingsParameters
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'customSettingsParameters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                              mutable'customSettingsParameters)
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
                              (Data.ProtoLens.Field.field @"vec'customSettingsParameters")
                              frozen'customSettingsParameters
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "hpack_table_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hpackTableSize") y x)
                                  mutable'customSettingsParameters
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_concurrent_streams"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxConcurrentStreams") y x)
                                  mutable'customSettingsParameters
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "initial_stream_window_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialStreamWindowSize") y x)
                                  mutable'customSettingsParameters
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "initial_connection_window_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialConnectionWindowSize")
                                     y
                                     x)
                                  mutable'customSettingsParameters
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "allow_connect"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowConnect") y x)
                                  mutable'customSettingsParameters
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "allow_metadata"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowMetadata") y x)
                                  mutable'customSettingsParameters
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_outbound_frames"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxOutboundFrames") y x)
                                  mutable'customSettingsParameters
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_outbound_control_frames"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxOutboundControlFrames") y x)
                                  mutable'customSettingsParameters
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_consecutive_inbound_frames_with_empty_payload"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"maxConsecutiveInboundFramesWithEmptyPayload")
                                     y
                                     x)
                                  mutable'customSettingsParameters
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_inbound_priority_frames_per_stream"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"maxInboundPriorityFramesPerStream")
                                     y
                                     x)
                                  mutable'customSettingsParameters
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_inbound_window_update_frames_per_data_frame_sent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"maxInboundWindowUpdateFramesPerDataFrameSent")
                                     y
                                     x)
                                  mutable'customSettingsParameters
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stream_error_on_invalid_http_messaging"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"streamErrorOnInvalidHttpMessaging")
                                     y
                                     x)
                                  mutable'customSettingsParameters
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "override_stream_error_on_invalid_http_message"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"overrideStreamErrorOnInvalidHttpMessage")
                                     y
                                     x)
                                  mutable'customSettingsParameters
                        106
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "custom_settings_parameters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'customSettingsParameters y)
                                loop x v
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "connection_keepalive"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"connectionKeepalive") y x)
                                  mutable'customSettingsParameters
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'customSettingsParameters
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'customSettingsParameters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'customSettingsParameters)
          "Http2ProtocolOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'hpackTableSize") _x
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
                       (Data.ProtoLens.Field.field @"maybe'maxConcurrentStreams") _x
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
                          (Data.ProtoLens.Field.field @"maybe'initialStreamWindowSize") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'initialConnectionWindowSize")
                             _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"allowConnect") _x
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
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"allowMetadata") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (\ b -> if b then 1 else 0)
                                        _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'maxOutboundFrames") _x
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
                                            @"maybe'maxOutboundControlFrames")
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
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'maxConsecutiveInboundFramesWithEmptyPayload")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
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
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'maxInboundPriorityFramesPerStream")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
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
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'maxInboundWindowUpdateFramesPerDataFrameSent")
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
                                              (let
                                                 _v
                                                   = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"streamErrorOnInvalidHttpMessaging")
                                                       _x
                                               in
                                                 if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (\ b -> if b then 1 else 0)
                                                          _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'overrideStreamErrorOnInvalidHttpMessage")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              114)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage
                                                              _v))
                                                 ((Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                       (\ _v
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  106)
                                                               ((Prelude..)
                                                                  (\ bs
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             (Prelude.fromIntegral
                                                                                (Data.ByteString.length
                                                                                   bs)))
                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                             bs))
                                                                  Data.ProtoLens.encodeMessage
                                                                  _v))
                                                       (Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"vec'customSettingsParameters")
                                                          _x))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'connectionKeepalive")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    122)
                                                                 ((Prelude..)
                                                                    (\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                    Data.ProtoLens.encodeMessage
                                                                    _v))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData Http2ProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Http2ProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Http2ProtocolOptions'hpackTableSize x__)
                (Control.DeepSeq.deepseq
                   (_Http2ProtocolOptions'maxConcurrentStreams x__)
                   (Control.DeepSeq.deepseq
                      (_Http2ProtocolOptions'initialStreamWindowSize x__)
                      (Control.DeepSeq.deepseq
                         (_Http2ProtocolOptions'initialConnectionWindowSize x__)
                         (Control.DeepSeq.deepseq
                            (_Http2ProtocolOptions'allowConnect x__)
                            (Control.DeepSeq.deepseq
                               (_Http2ProtocolOptions'allowMetadata x__)
                               (Control.DeepSeq.deepseq
                                  (_Http2ProtocolOptions'maxOutboundFrames x__)
                                  (Control.DeepSeq.deepseq
                                     (_Http2ProtocolOptions'maxOutboundControlFrames x__)
                                     (Control.DeepSeq.deepseq
                                        (_Http2ProtocolOptions'maxConsecutiveInboundFramesWithEmptyPayload
                                           x__)
                                        (Control.DeepSeq.deepseq
                                           (_Http2ProtocolOptions'maxInboundPriorityFramesPerStream
                                              x__)
                                           (Control.DeepSeq.deepseq
                                              (_Http2ProtocolOptions'maxInboundWindowUpdateFramesPerDataFrameSent
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Http2ProtocolOptions'streamErrorOnInvalidHttpMessaging
                                                    x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Http2ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Http2ProtocolOptions'customSettingsParameters
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Http2ProtocolOptions'connectionKeepalive
                                                             x__)
                                                          ())))))))))))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.identifier' @:: Lens' Http2ProtocolOptions'SettingsParameter Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'identifier' @:: Lens' Http2ProtocolOptions'SettingsParameter (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.value' @:: Lens' Http2ProtocolOptions'SettingsParameter Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'value' @:: Lens' Http2ProtocolOptions'SettingsParameter (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data Http2ProtocolOptions'SettingsParameter
  = Http2ProtocolOptions'SettingsParameter'_constructor {_Http2ProtocolOptions'SettingsParameter'identifier :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                         _Http2ProtocolOptions'SettingsParameter'value :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                                         _Http2ProtocolOptions'SettingsParameter'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Http2ProtocolOptions'SettingsParameter where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions'SettingsParameter "identifier" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'SettingsParameter'identifier
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'SettingsParameter'identifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions'SettingsParameter "maybe'identifier" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'SettingsParameter'identifier
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'SettingsParameter'identifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions'SettingsParameter "value" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'SettingsParameter'value
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'SettingsParameter'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http2ProtocolOptions'SettingsParameter "maybe'value" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http2ProtocolOptions'SettingsParameter'value
           (\ x__ y__
              -> x__ {_Http2ProtocolOptions'SettingsParameter'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message Http2ProtocolOptions'SettingsParameter where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.Http2ProtocolOptions.SettingsParameter"
  packedMessageDescriptor _
    = "\n\
      \\DC1SettingsParameter\DC2Q\n\
      \\n\
      \identifier\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
      \identifierB\DC3\250B\b*\ACK\CAN\255\255\ETX(\NUL\250B\ENQ\138\SOH\STX\DLE\SOH\DC2<\n\
      \\ENQvalue\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ENQvalueB\b\250B\ENQ\138\SOH\STX\DLE\SOH:?\154\197\136\RS:\n\
      \8envoy.api.v2.core.Http2ProtocolOptions.SettingsParameter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        identifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'identifier")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions'SettingsParameter
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor Http2ProtocolOptions'SettingsParameter
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identifier__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Http2ProtocolOptions'SettingsParameter'_unknownFields
        (\ x__ y__
           -> x__
                {_Http2ProtocolOptions'SettingsParameter'_unknownFields = y__})
  defMessage
    = Http2ProtocolOptions'SettingsParameter'_constructor
        {_Http2ProtocolOptions'SettingsParameter'identifier = Prelude.Nothing,
         _Http2ProtocolOptions'SettingsParameter'value = Prelude.Nothing,
         _Http2ProtocolOptions'SettingsParameter'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Http2ProtocolOptions'SettingsParameter
          -> Data.ProtoLens.Encoding.Bytes.Parser Http2ProtocolOptions'SettingsParameter
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
                                       "identifier"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identifier") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
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
          (do loop Data.ProtoLens.defMessage) "SettingsParameter"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'identifier") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData Http2ProtocolOptions'SettingsParameter where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Http2ProtocolOptions'SettingsParameter'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Http2ProtocolOptions'SettingsParameter'identifier x__)
                (Control.DeepSeq.deepseq
                   (_Http2ProtocolOptions'SettingsParameter'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.quicProtocolOptions' @:: Lens' Http3ProtocolOptions QuicProtocolOptions@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'quicProtocolOptions' @:: Lens' Http3ProtocolOptions (Prelude.Maybe QuicProtocolOptions)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.overrideStreamErrorOnInvalidHttpMessage' @:: Lens' Http3ProtocolOptions Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'overrideStreamErrorOnInvalidHttpMessage' @:: Lens' Http3ProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@ -}
data Http3ProtocolOptions
  = Http3ProtocolOptions'_constructor {_Http3ProtocolOptions'quicProtocolOptions :: !(Prelude.Maybe QuicProtocolOptions),
                                       _Http3ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                       _Http3ProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Http3ProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Http3ProtocolOptions "quicProtocolOptions" QuicProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http3ProtocolOptions'quicProtocolOptions
           (\ x__ y__
              -> x__ {_Http3ProtocolOptions'quicProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http3ProtocolOptions "maybe'quicProtocolOptions" (Prelude.Maybe QuicProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http3ProtocolOptions'quicProtocolOptions
           (\ x__ y__
              -> x__ {_Http3ProtocolOptions'quicProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Http3ProtocolOptions "overrideStreamErrorOnInvalidHttpMessage" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http3ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage
           (\ x__ y__
              -> x__
                   {_Http3ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Http3ProtocolOptions "maybe'overrideStreamErrorOnInvalidHttpMessage" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Http3ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage
           (\ x__ y__
              -> x__
                   {_Http3ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage = y__}))
        Prelude.id
instance Data.ProtoLens.Message Http3ProtocolOptions where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.Http3ProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC4Http3ProtocolOptions\DC2]\n\
      \\NAKquic_protocol_options\CAN\SOH \SOH(\v2).envoy.config.core.v3.QuicProtocolOptionsR\DC3quicProtocolOptions\DC2z\n\
      \-override_stream_error_on_invalid_http_message\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR'overrideStreamErrorOnInvalidHttpMessage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        quicProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "quic_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor QuicProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'quicProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor Http3ProtocolOptions
        overrideStreamErrorOnInvalidHttpMessage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "override_stream_error_on_invalid_http_message"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'overrideStreamErrorOnInvalidHttpMessage")) ::
              Data.ProtoLens.FieldDescriptor Http3ProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, quicProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            overrideStreamErrorOnInvalidHttpMessage__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Http3ProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_Http3ProtocolOptions'_unknownFields = y__})
  defMessage
    = Http3ProtocolOptions'_constructor
        {_Http3ProtocolOptions'quicProtocolOptions = Prelude.Nothing,
         _Http3ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage = Prelude.Nothing,
         _Http3ProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Http3ProtocolOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser Http3ProtocolOptions
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
                                       "quic_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"quicProtocolOptions") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "override_stream_error_on_invalid_http_message"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"overrideStreamErrorOnInvalidHttpMessage")
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
          (do loop Data.ProtoLens.defMessage) "Http3ProtocolOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'quicProtocolOptions") _x
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
                       (Data.ProtoLens.Field.field
                          @"maybe'overrideStreamErrorOnInvalidHttpMessage")
                       _x
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
instance Control.DeepSeq.NFData Http3ProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Http3ProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Http3ProtocolOptions'quicProtocolOptions x__)
                (Control.DeepSeq.deepseq
                   (_Http3ProtocolOptions'overrideStreamErrorOnInvalidHttpMessage x__)
                   ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.idleTimeout' @:: Lens' HttpProtocolOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'idleTimeout' @:: Lens' HttpProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxConnectionDuration' @:: Lens' HttpProtocolOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxConnectionDuration' @:: Lens' HttpProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxHeadersCount' @:: Lens' HttpProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxHeadersCount' @:: Lens' HttpProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxStreamDuration' @:: Lens' HttpProtocolOptions Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxStreamDuration' @:: Lens' HttpProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.headersWithUnderscoresAction' @:: Lens' HttpProtocolOptions HttpProtocolOptions'HeadersWithUnderscoresAction@ -}
data HttpProtocolOptions
  = HttpProtocolOptions'_constructor {_HttpProtocolOptions'idleTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                      _HttpProtocolOptions'maxConnectionDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                      _HttpProtocolOptions'maxHeadersCount :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                      _HttpProtocolOptions'maxStreamDuration :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                      _HttpProtocolOptions'headersWithUnderscoresAction :: !HttpProtocolOptions'HeadersWithUnderscoresAction,
                                      _HttpProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "idleTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'idleTimeout
           (\ x__ y__ -> x__ {_HttpProtocolOptions'idleTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maybe'idleTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'idleTimeout
           (\ x__ y__ -> x__ {_HttpProtocolOptions'idleTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maxConnectionDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'maxConnectionDuration
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'maxConnectionDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maybe'maxConnectionDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'maxConnectionDuration
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'maxConnectionDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maxHeadersCount" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'maxHeadersCount
           (\ x__ y__ -> x__ {_HttpProtocolOptions'maxHeadersCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maybe'maxHeadersCount" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'maxHeadersCount
           (\ x__ y__ -> x__ {_HttpProtocolOptions'maxHeadersCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maxStreamDuration" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'maxStreamDuration
           (\ x__ y__ -> x__ {_HttpProtocolOptions'maxStreamDuration = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maybe'maxStreamDuration" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'maxStreamDuration
           (\ x__ y__ -> x__ {_HttpProtocolOptions'maxStreamDuration = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "headersWithUnderscoresAction" HttpProtocolOptions'HeadersWithUnderscoresAction where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'headersWithUnderscoresAction
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'headersWithUnderscoresAction = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpProtocolOptions where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.HttpProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC3HttpProtocolOptions\DC2<\n\
      \\fidle_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\vidleTimeout\DC2Q\n\
      \\ETBmax_connection_duration\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\NAKmaxConnectionDuration\DC2Q\n\
      \\DC1max_headers_count\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SImaxHeadersCountB\a\250B\EOT*\STX(\SOH\DC2I\n\
      \\DC3max_stream_duration\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC1maxStreamDuration\DC2\141\SOH\n\
      \\USheaders_with_underscores_action\CAN\ENQ \SOH(\SO2F.envoy.config.core.v3.HttpProtocolOptions.HeadersWithUnderscoresActionR\FSheadersWithUnderscoresAction\"N\n\
      \\FSHeadersWithUnderscoresAction\DC2\t\n\
      \\ENQALLOW\DLE\NUL\DC2\DC2\n\
      \\SOREJECT_REQUEST\DLE\SOH\DC2\SI\n\
      \\vDROP_HEADER\DLE\STX:,\154\197\136\RS'\n\
      \%envoy.api.v2.core.HttpProtocolOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        idleTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idle_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idleTimeout")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions
        maxConnectionDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_connection_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxConnectionDuration")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions
        maxHeadersCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_headers_count"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxHeadersCount")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions
        maxStreamDuration__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_stream_duration"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxStreamDuration")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions
        headersWithUnderscoresAction__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "headers_with_underscores_action"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor HttpProtocolOptions'HeadersWithUnderscoresAction)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"headersWithUnderscoresAction")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, idleTimeout__field_descriptor),
           (Data.ProtoLens.Tag 3, maxConnectionDuration__field_descriptor),
           (Data.ProtoLens.Tag 2, maxHeadersCount__field_descriptor),
           (Data.ProtoLens.Tag 4, maxStreamDuration__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            headersWithUnderscoresAction__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_HttpProtocolOptions'_unknownFields = y__})
  defMessage
    = HttpProtocolOptions'_constructor
        {_HttpProtocolOptions'idleTimeout = Prelude.Nothing,
         _HttpProtocolOptions'maxConnectionDuration = Prelude.Nothing,
         _HttpProtocolOptions'maxHeadersCount = Prelude.Nothing,
         _HttpProtocolOptions'maxStreamDuration = Prelude.Nothing,
         _HttpProtocolOptions'headersWithUnderscoresAction = Data.ProtoLens.fieldDefault,
         _HttpProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpProtocolOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpProtocolOptions
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
                                       "idle_timeout"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"idleTimeout") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_connection_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxConnectionDuration") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_headers_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxHeadersCount") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "max_stream_duration"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxStreamDuration") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "headers_with_underscores_action"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"headersWithUnderscoresAction")
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
          (do loop Data.ProtoLens.defMessage) "HttpProtocolOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'idleTimeout") _x
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
                       (Data.ProtoLens.Field.field @"maybe'maxConnectionDuration") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'maxHeadersCount") _x
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
                             (Data.ProtoLens.Field.field @"maybe'maxStreamDuration") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                  (Data.ProtoLens.Field.field @"headersWithUnderscoresAction") _x
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
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData HttpProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpProtocolOptions'idleTimeout x__)
                (Control.DeepSeq.deepseq
                   (_HttpProtocolOptions'maxConnectionDuration x__)
                   (Control.DeepSeq.deepseq
                      (_HttpProtocolOptions'maxHeadersCount x__)
                      (Control.DeepSeq.deepseq
                         (_HttpProtocolOptions'maxStreamDuration x__)
                         (Control.DeepSeq.deepseq
                            (_HttpProtocolOptions'headersWithUnderscoresAction x__) ())))))
newtype HttpProtocolOptions'HeadersWithUnderscoresAction'UnrecognizedValue
  = HttpProtocolOptions'HeadersWithUnderscoresAction'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data HttpProtocolOptions'HeadersWithUnderscoresAction
  = HttpProtocolOptions'ALLOW |
    HttpProtocolOptions'REJECT_REQUEST |
    HttpProtocolOptions'DROP_HEADER |
    HttpProtocolOptions'HeadersWithUnderscoresAction'Unrecognized !HttpProtocolOptions'HeadersWithUnderscoresAction'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum HttpProtocolOptions'HeadersWithUnderscoresAction where
  maybeToEnum 0 = Prelude.Just HttpProtocolOptions'ALLOW
  maybeToEnum 1 = Prelude.Just HttpProtocolOptions'REJECT_REQUEST
  maybeToEnum 2 = Prelude.Just HttpProtocolOptions'DROP_HEADER
  maybeToEnum k
    = Prelude.Just
        (HttpProtocolOptions'HeadersWithUnderscoresAction'Unrecognized
           (HttpProtocolOptions'HeadersWithUnderscoresAction'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum HttpProtocolOptions'ALLOW = "ALLOW"
  showEnum HttpProtocolOptions'REJECT_REQUEST = "REJECT_REQUEST"
  showEnum HttpProtocolOptions'DROP_HEADER = "DROP_HEADER"
  showEnum
    (HttpProtocolOptions'HeadersWithUnderscoresAction'Unrecognized (HttpProtocolOptions'HeadersWithUnderscoresAction'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "ALLOW" = Prelude.Just HttpProtocolOptions'ALLOW
    | (Prelude.==) k "REJECT_REQUEST"
    = Prelude.Just HttpProtocolOptions'REJECT_REQUEST
    | (Prelude.==) k "DROP_HEADER"
    = Prelude.Just HttpProtocolOptions'DROP_HEADER
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded HttpProtocolOptions'HeadersWithUnderscoresAction where
  minBound = HttpProtocolOptions'ALLOW
  maxBound = HttpProtocolOptions'DROP_HEADER
instance Prelude.Enum HttpProtocolOptions'HeadersWithUnderscoresAction where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum HeadersWithUnderscoresAction: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum HttpProtocolOptions'ALLOW = 0
  fromEnum HttpProtocolOptions'REJECT_REQUEST = 1
  fromEnum HttpProtocolOptions'DROP_HEADER = 2
  fromEnum
    (HttpProtocolOptions'HeadersWithUnderscoresAction'Unrecognized (HttpProtocolOptions'HeadersWithUnderscoresAction'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ HttpProtocolOptions'DROP_HEADER
    = Prelude.error
        "HttpProtocolOptions'HeadersWithUnderscoresAction.succ: bad argument HttpProtocolOptions'DROP_HEADER. This value would be out of bounds."
  succ HttpProtocolOptions'ALLOW = HttpProtocolOptions'REJECT_REQUEST
  succ HttpProtocolOptions'REJECT_REQUEST
    = HttpProtocolOptions'DROP_HEADER
  succ
    (HttpProtocolOptions'HeadersWithUnderscoresAction'Unrecognized _)
    = Prelude.error
        "HttpProtocolOptions'HeadersWithUnderscoresAction.succ: bad argument: unrecognized value"
  pred HttpProtocolOptions'ALLOW
    = Prelude.error
        "HttpProtocolOptions'HeadersWithUnderscoresAction.pred: bad argument HttpProtocolOptions'ALLOW. This value would be out of bounds."
  pred HttpProtocolOptions'REJECT_REQUEST = HttpProtocolOptions'ALLOW
  pred HttpProtocolOptions'DROP_HEADER
    = HttpProtocolOptions'REJECT_REQUEST
  pred
    (HttpProtocolOptions'HeadersWithUnderscoresAction'Unrecognized _)
    = Prelude.error
        "HttpProtocolOptions'HeadersWithUnderscoresAction.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault HttpProtocolOptions'HeadersWithUnderscoresAction where
  fieldDefault = HttpProtocolOptions'ALLOW
instance Control.DeepSeq.NFData HttpProtocolOptions'HeadersWithUnderscoresAction where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.interval' @:: Lens' KeepaliveSettings Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'interval' @:: Lens' KeepaliveSettings (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.timeout' @:: Lens' KeepaliveSettings Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'timeout' @:: Lens' KeepaliveSettings (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.intervalJitter' @:: Lens' KeepaliveSettings Proto.Envoy.Type.V3.Percent.Percent@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'intervalJitter' @:: Lens' KeepaliveSettings (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.connectionIdleInterval' @:: Lens' KeepaliveSettings Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'connectionIdleInterval' @:: Lens' KeepaliveSettings (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@ -}
data KeepaliveSettings
  = KeepaliveSettings'_constructor {_KeepaliveSettings'interval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                    _KeepaliveSettings'timeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                    _KeepaliveSettings'intervalJitter :: !(Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent),
                                    _KeepaliveSettings'connectionIdleInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                    _KeepaliveSettings'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KeepaliveSettings where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KeepaliveSettings "interval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KeepaliveSettings'interval
           (\ x__ y__ -> x__ {_KeepaliveSettings'interval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField KeepaliveSettings "maybe'interval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KeepaliveSettings'interval
           (\ x__ y__ -> x__ {_KeepaliveSettings'interval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KeepaliveSettings "timeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KeepaliveSettings'timeout
           (\ x__ y__ -> x__ {_KeepaliveSettings'timeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField KeepaliveSettings "maybe'timeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KeepaliveSettings'timeout
           (\ x__ y__ -> x__ {_KeepaliveSettings'timeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KeepaliveSettings "intervalJitter" Proto.Envoy.Type.V3.Percent.Percent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KeepaliveSettings'intervalJitter
           (\ x__ y__ -> x__ {_KeepaliveSettings'intervalJitter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField KeepaliveSettings "maybe'intervalJitter" (Prelude.Maybe Proto.Envoy.Type.V3.Percent.Percent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KeepaliveSettings'intervalJitter
           (\ x__ y__ -> x__ {_KeepaliveSettings'intervalJitter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField KeepaliveSettings "connectionIdleInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KeepaliveSettings'connectionIdleInterval
           (\ x__ y__
              -> x__ {_KeepaliveSettings'connectionIdleInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField KeepaliveSettings "maybe'connectionIdleInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _KeepaliveSettings'connectionIdleInterval
           (\ x__ y__
              -> x__ {_KeepaliveSettings'connectionIdleInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Message KeepaliveSettings where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.KeepaliveSettings"
  packedMessageDescriptor _
    = "\n\
      \\DC1KeepaliveSettings\DC2C\n\
      \\binterval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\bintervalB\f\250B\t\170\SOH\ACK2\EOT\DLE\192\132=\DC2C\n\
      \\atimeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\atimeoutB\SO\250B\v\170\SOH\b\b\SOH2\EOT\DLE\192\132=\DC2?\n\
      \\SIinterval_jitter\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentR\SOintervalJitter\DC2a\n\
      \\CANconnection_idle_interval\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\SYNconnectionIdleIntervalB\f\250B\t\170\SOH\ACK2\EOT\DLE\192\132="
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        interval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'interval")) ::
              Data.ProtoLens.FieldDescriptor KeepaliveSettings
        timeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeout")) ::
              Data.ProtoLens.FieldDescriptor KeepaliveSettings
        intervalJitter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interval_jitter"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.Percent.Percent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intervalJitter")) ::
              Data.ProtoLens.FieldDescriptor KeepaliveSettings
        connectionIdleInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "connection_idle_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'connectionIdleInterval")) ::
              Data.ProtoLens.FieldDescriptor KeepaliveSettings
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, interval__field_descriptor),
           (Data.ProtoLens.Tag 2, timeout__field_descriptor),
           (Data.ProtoLens.Tag 3, intervalJitter__field_descriptor),
           (Data.ProtoLens.Tag 4, connectionIdleInterval__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _KeepaliveSettings'_unknownFields
        (\ x__ y__ -> x__ {_KeepaliveSettings'_unknownFields = y__})
  defMessage
    = KeepaliveSettings'_constructor
        {_KeepaliveSettings'interval = Prelude.Nothing,
         _KeepaliveSettings'timeout = Prelude.Nothing,
         _KeepaliveSettings'intervalJitter = Prelude.Nothing,
         _KeepaliveSettings'connectionIdleInterval = Prelude.Nothing,
         _KeepaliveSettings'_unknownFields = []}
  parseMessage
    = let
        loop ::
          KeepaliveSettings
          -> Data.ProtoLens.Encoding.Bytes.Parser KeepaliveSettings
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
                                       "interval"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"interval") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timeout"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"timeout") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "interval_jitter"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"intervalJitter") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "connection_idle_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"connectionIdleInterval") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "KeepaliveSettings"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'interval") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeout") _x
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
                          (Data.ProtoLens.Field.field @"maybe'intervalJitter") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'connectionIdleInterval") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData KeepaliveSettings where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_KeepaliveSettings'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_KeepaliveSettings'interval x__)
                (Control.DeepSeq.deepseq
                   (_KeepaliveSettings'timeout x__)
                   (Control.DeepSeq.deepseq
                      (_KeepaliveSettings'intervalJitter x__)
                      (Control.DeepSeq.deepseq
                         (_KeepaliveSettings'connectionIdleInterval x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maxConcurrentStreams' @:: Lens' QuicProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'maxConcurrentStreams' @:: Lens' QuicProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.initialStreamWindowSize' @:: Lens' QuicProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'initialStreamWindowSize' @:: Lens' QuicProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.initialConnectionWindowSize' @:: Lens' QuicProtocolOptions Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'initialConnectionWindowSize' @:: Lens' QuicProtocolOptions (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@ -}
data QuicProtocolOptions
  = QuicProtocolOptions'_constructor {_QuicProtocolOptions'maxConcurrentStreams :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                      _QuicProtocolOptions'initialStreamWindowSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                      _QuicProtocolOptions'initialConnectionWindowSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                      _QuicProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QuicProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maxConcurrentStreams" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'maxConcurrentStreams
           (\ x__ y__
              -> x__ {_QuicProtocolOptions'maxConcurrentStreams = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maybe'maxConcurrentStreams" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'maxConcurrentStreams
           (\ x__ y__
              -> x__ {_QuicProtocolOptions'maxConcurrentStreams = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "initialStreamWindowSize" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'initialStreamWindowSize
           (\ x__ y__
              -> x__ {_QuicProtocolOptions'initialStreamWindowSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maybe'initialStreamWindowSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'initialStreamWindowSize
           (\ x__ y__
              -> x__ {_QuicProtocolOptions'initialStreamWindowSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "initialConnectionWindowSize" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'initialConnectionWindowSize
           (\ x__ y__
              -> x__ {_QuicProtocolOptions'initialConnectionWindowSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField QuicProtocolOptions "maybe'initialConnectionWindowSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _QuicProtocolOptions'initialConnectionWindowSize
           (\ x__ y__
              -> x__ {_QuicProtocolOptions'initialConnectionWindowSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message QuicProtocolOptions where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.QuicProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC3QuicProtocolOptions\DC2R\n\
      \\SYNmax_concurrent_streams\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC4maxConcurrentStreams\DC2g\n\
      \\SUBinitial_stream_window_size\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ETBinitialStreamWindowSizeB\f\250B\t*\a\CAN\128\128\128\b(\SOH\DC2o\n\
      \\RSinitial_connection_window_size\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ESCinitialConnectionWindowSizeB\f\250B\t*\a\CAN\128\128\128\f(\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxConcurrentStreams__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_concurrent_streams"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxConcurrentStreams")) ::
              Data.ProtoLens.FieldDescriptor QuicProtocolOptions
        initialStreamWindowSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_stream_window_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'initialStreamWindowSize")) ::
              Data.ProtoLens.FieldDescriptor QuicProtocolOptions
        initialConnectionWindowSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_connection_window_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'initialConnectionWindowSize")) ::
              Data.ProtoLens.FieldDescriptor QuicProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxConcurrentStreams__field_descriptor),
           (Data.ProtoLens.Tag 2, initialStreamWindowSize__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            initialConnectionWindowSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _QuicProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_QuicProtocolOptions'_unknownFields = y__})
  defMessage
    = QuicProtocolOptions'_constructor
        {_QuicProtocolOptions'maxConcurrentStreams = Prelude.Nothing,
         _QuicProtocolOptions'initialStreamWindowSize = Prelude.Nothing,
         _QuicProtocolOptions'initialConnectionWindowSize = Prelude.Nothing,
         _QuicProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          QuicProtocolOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser QuicProtocolOptions
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
                                       "max_concurrent_streams"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"maxConcurrentStreams") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "initial_stream_window_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialStreamWindowSize") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "initial_connection_window_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialConnectionWindowSize")
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
          (do loop Data.ProtoLens.defMessage) "QuicProtocolOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxConcurrentStreams") _x
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
                       (Data.ProtoLens.Field.field @"maybe'initialStreamWindowSize") _x
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
                          (Data.ProtoLens.Field.field @"maybe'initialConnectionWindowSize")
                          _x
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
instance Control.DeepSeq.NFData QuicProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_QuicProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_QuicProtocolOptions'maxConcurrentStreams x__)
                (Control.DeepSeq.deepseq
                   (_QuicProtocolOptions'initialStreamWindowSize x__)
                   (Control.DeepSeq.deepseq
                      (_QuicProtocolOptions'initialConnectionWindowSize x__) ())))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'transformation' @:: Lens' SchemeHeaderTransformation (Prelude.Maybe SchemeHeaderTransformation'Transformation)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.maybe'schemeToOverwrite' @:: Lens' SchemeHeaderTransformation (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.schemeToOverwrite' @:: Lens' SchemeHeaderTransformation Data.Text.Text@ -}
data SchemeHeaderTransformation
  = SchemeHeaderTransformation'_constructor {_SchemeHeaderTransformation'transformation :: !(Prelude.Maybe SchemeHeaderTransformation'Transformation),
                                             _SchemeHeaderTransformation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SchemeHeaderTransformation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data SchemeHeaderTransformation'Transformation
  = SchemeHeaderTransformation'SchemeToOverwrite !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SchemeHeaderTransformation "maybe'transformation" (Prelude.Maybe SchemeHeaderTransformation'Transformation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchemeHeaderTransformation'transformation
           (\ x__ y__
              -> x__ {_SchemeHeaderTransformation'transformation = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SchemeHeaderTransformation "maybe'schemeToOverwrite" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchemeHeaderTransformation'transformation
           (\ x__ y__
              -> x__ {_SchemeHeaderTransformation'transformation = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (SchemeHeaderTransformation'SchemeToOverwrite x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap SchemeHeaderTransformation'SchemeToOverwrite y__))
instance Data.ProtoLens.Field.HasField SchemeHeaderTransformation "schemeToOverwrite" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SchemeHeaderTransformation'transformation
           (\ x__ y__
              -> x__ {_SchemeHeaderTransformation'transformation = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (SchemeHeaderTransformation'SchemeToOverwrite x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap SchemeHeaderTransformation'SchemeToOverwrite y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message SchemeHeaderTransformation where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.SchemeHeaderTransformation"
  packedMessageDescriptor _
    = "\n\
      \\SUBSchemeHeaderTransformation\DC2D\n\
      \\DC3scheme_to_overwrite\CAN\SOH \SOH(\tH\NULR\DC1schemeToOverwriteB\DC2\250B\SIr\rR\EOThttpR\ENQhttpsB\DLE\n\
      \\SOtransformation"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        schemeToOverwrite__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scheme_to_overwrite"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'schemeToOverwrite")) ::
              Data.ProtoLens.FieldDescriptor SchemeHeaderTransformation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, schemeToOverwrite__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SchemeHeaderTransformation'_unknownFields
        (\ x__ y__
           -> x__ {_SchemeHeaderTransformation'_unknownFields = y__})
  defMessage
    = SchemeHeaderTransformation'_constructor
        {_SchemeHeaderTransformation'transformation = Prelude.Nothing,
         _SchemeHeaderTransformation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SchemeHeaderTransformation
          -> Data.ProtoLens.Encoding.Bytes.Parser SchemeHeaderTransformation
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
                                       "scheme_to_overwrite"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"schemeToOverwrite") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SchemeHeaderTransformation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'transformation") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (SchemeHeaderTransformation'SchemeToOverwrite v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SchemeHeaderTransformation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SchemeHeaderTransformation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SchemeHeaderTransformation'transformation x__) ())
instance Control.DeepSeq.NFData SchemeHeaderTransformation'Transformation where
  rnf (SchemeHeaderTransformation'SchemeToOverwrite x__)
    = Control.DeepSeq.rnf x__
_SchemeHeaderTransformation'SchemeToOverwrite ::
  Data.ProtoLens.Prism.Prism' SchemeHeaderTransformation'Transformation Data.Text.Text
_SchemeHeaderTransformation'SchemeToOverwrite
  = Data.ProtoLens.Prism.prism'
      SchemeHeaderTransformation'SchemeToOverwrite
      (\ p__
         -> case p__ of {
              (SchemeHeaderTransformation'SchemeToOverwrite p__val)
                -> Prelude.Just p__val })
{- | Fields :
      -}
data TcpProtocolOptions
  = TcpProtocolOptions'_constructor {_TcpProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TcpProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message TcpProtocolOptions where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.TcpProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC2TcpProtocolOptions:+\154\197\136\RS&\n\
      \$envoy.api.v2.core.TcpProtocolOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TcpProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_TcpProtocolOptions'_unknownFields = y__})
  defMessage
    = TcpProtocolOptions'_constructor
        {_TcpProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TcpProtocolOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser TcpProtocolOptions
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TcpProtocolOptions"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData TcpProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TcpProtocolOptions'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.autoSni' @:: Lens' UpstreamHttpProtocolOptions Prelude.Bool@
         * 'Proto.Envoy.Config.Core.V3.Protocol_Fields.autoSanValidation' @:: Lens' UpstreamHttpProtocolOptions Prelude.Bool@ -}
data UpstreamHttpProtocolOptions
  = UpstreamHttpProtocolOptions'_constructor {_UpstreamHttpProtocolOptions'autoSni :: !Prelude.Bool,
                                              _UpstreamHttpProtocolOptions'autoSanValidation :: !Prelude.Bool,
                                              _UpstreamHttpProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show UpstreamHttpProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField UpstreamHttpProtocolOptions "autoSni" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamHttpProtocolOptions'autoSni
           (\ x__ y__ -> x__ {_UpstreamHttpProtocolOptions'autoSni = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField UpstreamHttpProtocolOptions "autoSanValidation" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _UpstreamHttpProtocolOptions'autoSanValidation
           (\ x__ y__
              -> x__ {_UpstreamHttpProtocolOptions'autoSanValidation = y__}))
        Prelude.id
instance Data.ProtoLens.Message UpstreamHttpProtocolOptions where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.UpstreamHttpProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\ESCUpstreamHttpProtocolOptions\DC2\EM\n\
      \\bauto_sni\CAN\SOH \SOH(\bR\aautoSni\DC2.\n\
      \\DC3auto_san_validation\CAN\STX \SOH(\bR\DC1autoSanValidation:4\154\197\136\RS/\n\
      \-envoy.api.v2.core.UpstreamHttpProtocolOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        autoSni__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auto_sni"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"autoSni")) ::
              Data.ProtoLens.FieldDescriptor UpstreamHttpProtocolOptions
        autoSanValidation__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auto_san_validation"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"autoSanValidation")) ::
              Data.ProtoLens.FieldDescriptor UpstreamHttpProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, autoSni__field_descriptor),
           (Data.ProtoLens.Tag 2, autoSanValidation__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _UpstreamHttpProtocolOptions'_unknownFields
        (\ x__ y__
           -> x__ {_UpstreamHttpProtocolOptions'_unknownFields = y__})
  defMessage
    = UpstreamHttpProtocolOptions'_constructor
        {_UpstreamHttpProtocolOptions'autoSni = Data.ProtoLens.fieldDefault,
         _UpstreamHttpProtocolOptions'autoSanValidation = Data.ProtoLens.fieldDefault,
         _UpstreamHttpProtocolOptions'_unknownFields = []}
  parseMessage
    = let
        loop ::
          UpstreamHttpProtocolOptions
          -> Data.ProtoLens.Encoding.Bytes.Parser UpstreamHttpProtocolOptions
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
                                       "auto_sni"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"autoSni") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "auto_san_validation"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"autoSanValidation") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UpstreamHttpProtocolOptions"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"autoSni") _x
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
                         (Data.ProtoLens.Field.field @"autoSanValidation") _x
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
instance Control.DeepSeq.NFData UpstreamHttpProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_UpstreamHttpProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_UpstreamHttpProtocolOptions'autoSni x__)
                (Control.DeepSeq.deepseq
                   (_UpstreamHttpProtocolOptions'autoSanValidation x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#envoy/config/core/v3/protocol.proto\DC2\DC4envoy.config.core.v3\SUB$envoy/config/core/v3/extension.proto\SUB\ESCenvoy/type/v3/percent.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"A\n\
    \\DC2TcpProtocolOptions:+\154\197\136\RS&\n\
    \$envoy.api.v2.core.TcpProtocolOptions\"\195\STX\n\
    \\DC3QuicProtocolOptions\DC2R\n\
    \\SYNmax_concurrent_streams\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC4maxConcurrentStreams\DC2g\n\
    \\SUBinitial_stream_window_size\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ETBinitialStreamWindowSizeB\f\250B\t*\a\CAN\128\128\128\b(\SOH\DC2o\n\
    \\RSinitial_connection_window_size\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ESCinitialConnectionWindowSizeB\f\250B\t*\a\CAN\128\128\128\f(\SOH\"\158\SOH\n\
    \\ESCUpstreamHttpProtocolOptions\DC2\EM\n\
    \\bauto_sni\CAN\SOH \SOH(\bR\aautoSni\DC2.\n\
    \\DC3auto_san_validation\CAN\STX \SOH(\bR\DC1autoSanValidation:4\154\197\136\RS/\n\
    \-envoy.api.v2.core.UpstreamHttpProtocolOptions\"\133\SOH\n\
    \\RSAlternateProtocolsCacheOptions\DC2\ESC\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTnameB\a\250B\EOTr\STX\DLE\SOH\DC2F\n\
    \\vmax_entries\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
    \maxEntriesB\a\250B\EOT*\STX \NUL\"\210\EOT\n\
    \\DC3HttpProtocolOptions\DC2<\n\
    \\fidle_timeout\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\vidleTimeout\DC2Q\n\
    \\ETBmax_connection_duration\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\NAKmaxConnectionDuration\DC2Q\n\
    \\DC1max_headers_count\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\SImaxHeadersCountB\a\250B\EOT*\STX(\SOH\DC2I\n\
    \\DC3max_stream_duration\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC1maxStreamDuration\DC2\141\SOH\n\
    \\USheaders_with_underscores_action\CAN\ENQ \SOH(\SO2F.envoy.config.core.v3.HttpProtocolOptions.HeadersWithUnderscoresActionR\FSheadersWithUnderscoresAction\"N\n\
    \\FSHeadersWithUnderscoresAction\DC2\t\n\
    \\ENQALLOW\DLE\NUL\DC2\DC2\n\
    \\SOREJECT_REQUEST\DLE\SOH\DC2\SI\n\
    \\vDROP_HEADER\DLE\STX:,\154\197\136\RS'\n\
    \%envoy.api.v2.core.HttpProtocolOptions\"\206\a\n\
    \\DC4Http1ProtocolOptions\DC2H\n\
    \\DC2allow_absolute_url\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\DLEallowAbsoluteUrl\DC2$\n\
    \\SOaccept_http_10\CAN\STX \SOH(\bR\facceptHttp10\DC26\n\
    \\CANdefault_host_for_http_10\CAN\ETX \SOH(\tR\DC4defaultHostForHttp10\DC2f\n\
    \\DC1header_key_format\CAN\EOT \SOH(\v2:.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormatR\SIheaderKeyFormat\DC2'\n\
    \\SIenable_trailers\CAN\ENQ \SOH(\bR\SOenableTrailers\DC20\n\
    \\DC4allow_chunked_length\CAN\ACK \SOH(\bR\DC2allowChunkedLength\DC2z\n\
    \-override_stream_error_on_invalid_http_message\CAN\a \SOH(\v2\SUB.google.protobuf.BoolValueR'overrideStreamErrorOnInvalidHttpMessage\SUB\159\ETX\n\
    \\SIHeaderKeyFormat\DC2x\n\
    \\DC1proper_case_words\CAN\SOH \SOH(\v2J.envoy.config.core.v3.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWordsH\NULR\SIproperCaseWords\DC2[\n\
    \\DC2stateful_formatter\CAN\b \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigH\NULR\DC1statefulFormatter\SUB`\n\
    \\SIProperCaseWords:M\154\197\136\RSH\n\
    \Fenvoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat.ProperCaseWordsB\DC4\n\
    \\rheader_format\DC2\ETX\248B\SOH:=\154\197\136\RS8\n\
    \6envoy.api.v2.core.Http1ProtocolOptions.HeaderKeyFormat:-\154\197\136\RS(\n\
    \&envoy.api.v2.core.Http1ProtocolOptions\"\193\STX\n\
    \\DC1KeepaliveSettings\DC2C\n\
    \\binterval\CAN\SOH \SOH(\v2\EM.google.protobuf.DurationR\bintervalB\f\250B\t\170\SOH\ACK2\EOT\DLE\192\132=\DC2C\n\
    \\atimeout\CAN\STX \SOH(\v2\EM.google.protobuf.DurationR\atimeoutB\SO\250B\v\170\SOH\b\b\SOH2\EOT\DLE\192\132=\DC2?\n\
    \\SIinterval_jitter\CAN\ETX \SOH(\v2\SYN.envoy.type.v3.PercentR\SOintervalJitter\DC2a\n\
    \\CANconnection_idle_interval\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\SYNconnectionIdleIntervalB\f\250B\t\170\SOH\ACK2\EOT\DLE\192\132=\"\129\SO\n\
    \\DC4Http2ProtocolOptions\DC2F\n\
    \\DLEhpack_table_size\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOhpackTableSize\DC2a\n\
    \\SYNmax_concurrent_streams\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC4maxConcurrentStreamsB\r\250B\n\
    \*\b\CAN\255\255\255\255\a(\SOH\DC2j\n\
    \\SUBinitial_stream_window_size\CAN\ETX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ETBinitialStreamWindowSizeB\SI\250B\f*\n\
    \\CAN\255\255\255\255\a(\255\255\ETX\DC2r\n\
    \\RSinitial_connection_window_size\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\ESCinitialConnectionWindowSizeB\SI\250B\f*\n\
    \\CAN\255\255\255\255\a(\255\255\ETX\DC2#\n\
    \\rallow_connect\CAN\ENQ \SOH(\bR\fallowConnect\DC2%\n\
    \\SOallow_metadata\CAN\ACK \SOH(\bR\rallowMetadata\DC2U\n\
    \\DC3max_outbound_frames\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\DC1maxOutboundFramesB\a\250B\EOT*\STX(\SOH\DC2d\n\
    \\ESCmax_outbound_control_frames\CAN\b \SOH(\v2\FS.google.protobuf.UInt32ValueR\CANmaxOutboundControlFramesB\a\250B\EOT*\STX(\SOH\DC2\132\SOH\n\
    \1max_consecutive_inbound_frames_with_empty_payload\CAN\t \SOH(\v2\FS.google.protobuf.UInt32ValueR+maxConsecutiveInboundFramesWithEmptyPayload\DC2o\n\
    \&max_inbound_priority_frames_per_stream\CAN\n\
    \ \SOH(\v2\FS.google.protobuf.UInt32ValueR!maxInboundPriorityFramesPerStream\DC2\145\SOH\n\
    \4max_inbound_window_update_frames_per_data_frame_sent\CAN\v \SOH(\v2\FS.google.protobuf.UInt32ValueR,maxInboundWindowUpdateFramesPerDataFrameSentB\a\250B\EOT*\STX(\SOH\DC2^\n\
    \&stream_error_on_invalid_http_messaging\CAN\f \SOH(\bR!streamErrorOnInvalidHttpMessagingB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2z\n\
    \-override_stream_error_on_invalid_http_message\CAN\SO \SOH(\v2\SUB.google.protobuf.BoolValueR'overrideStreamErrorOnInvalidHttpMessage\DC2z\n\
    \\SUBcustom_settings_parameters\CAN\r \ETX(\v2<.envoy.config.core.v3.Http2ProtocolOptions.SettingsParameterR\CANcustomSettingsParameters\DC2Z\n\
    \\DC4connection_keepalive\CAN\SI \SOH(\v2'.envoy.config.core.v3.KeepaliveSettingsR\DC3connectionKeepalive\SUB\229\SOH\n\
    \\DC1SettingsParameter\DC2Q\n\
    \\n\
    \identifier\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\n\
    \identifierB\DC3\250B\b*\ACK\CAN\255\255\ETX(\NUL\250B\ENQ\138\SOH\STX\DLE\SOH\DC2<\n\
    \\ENQvalue\CAN\STX \SOH(\v2\FS.google.protobuf.UInt32ValueR\ENQvalueB\b\250B\ENQ\138\SOH\STX\DLE\SOH:?\154\197\136\RS:\n\
    \8envoy.api.v2.core.Http2ProtocolOptions.SettingsParameter:-\154\197\136\RS(\n\
    \&envoy.api.v2.core.Http2ProtocolOptions\"\165\SOH\n\
    \\DC3GrpcProtocolOptions\DC2`\n\
    \\SYNhttp2_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptions:,\154\197\136\RS'\n\
    \%envoy.api.v2.core.GrpcProtocolOptions\"\241\SOH\n\
    \\DC4Http3ProtocolOptions\DC2]\n\
    \\NAKquic_protocol_options\CAN\SOH \SOH(\v2).envoy.config.core.v3.QuicProtocolOptionsR\DC3quicProtocolOptions\DC2z\n\
    \-override_stream_error_on_invalid_http_message\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR'overrideStreamErrorOnInvalidHttpMessage\"t\n\
    \\SUBSchemeHeaderTransformation\DC2D\n\
    \\DC3scheme_to_overwrite\CAN\SOH \SOH(\tH\NULR\DC1schemeToOverwriteB\DC2\250B\SIr\rR\EOThttpR\ENQhttpsB\DLE\n\
    \\SOtransformationB=\n\
    \\"io.envoyproxy.envoy.config.core.v3B\rProtocolProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\195\184\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\231\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL.\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL%\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL-\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL'\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL+\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SI\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DLE\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC1\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \M\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL\SUB\SOH\SUB\SUB [#not-implemented-hide:]\n\
    \2% [#protodoc-title: Protocol options]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\SUB\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\CAN\STX\EM-\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\CAN\STX\EM-\n\
    \\\\n\
    \\STX\EOT\SOH\DC2\EOT\GS\NUL7\SOH\SUBP QUIC protocol options which apply to both downstream and upstream connections.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\GS\b\ESC\n\
    \m\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX \STX9\SUB` Maximum number of streams that the client can negotiate per connection. 100\n\
    \ if not specified.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX \STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX \RS4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX 78\n\
    \\137\ACK\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT,\STX-9\SUB\250\ENQ `Initial stream-level flow-control receive window\n\
    \ <https://tools.ietf.org/html/draft-ietf-quic-transport-34#section-4.1>`_ size. Valid values range from\n\
    \ 1 to 16777216 (2^24, maximum supported by QUICHE) and defaults to 65536 (2^16).\n\
    \\n\
    \ NOTE: 16384 (2^14) is the minimum window size supported in Google QUIC. If configured smaller than it, we will use 16384 instead.\n\
    \ QUICHE IETF Quic implementation supports 1 bytes window. We only support increasing the default window size now, so it's also the minimum.\n\
    \\n\
    \ This field also acts as a soft limit on the number of bytes Envoy will buffer per-stream in the\n\
    \ QUIC stream send and receive buffers. Once the buffer reaches this pointer, watermark callbacks will fire to\n\
    \ stop the flow of data to the stream buffers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX,\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX,\RS8\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX,;<\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETX-\ACK8\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\ENQ\DC2\ETX-\a7\n\
    \\188\ETX\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT5\STX69\SUB\173\ETX Similar to *initial_stream_window_size*, but for connection-level\n\
    \ flow-control. Valid values rage from 1 to 25165824 (24MB, maximum supported by QUICHE) and defaults to 65536 (2^16).\n\
    \ window. Currently, this has the same minimum/default as *initial_stream_window_size*.\n\
    \\n\
    \ NOTE: 16384 (2^14) is the minimum window size supported in Google QUIC. We only support increasing the default\n\
    \ window size now, so it's also the minimum.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ACK\DC2\ETX5\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX5\RS<\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX5?@\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\b\DC2\ETX6\ACK8\n\
    \\SI\n\
    \\b\EOT\SOH\STX\STX\b\175\b\ENQ\DC2\ETX6\a7\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT9\NULG\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX9\b#\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT:\STX;6\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT:\STX;6\n\
    \\247\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX@\STX\DC4\SUB\233\SOH Set transport socket `SNI <https://en.wikipedia.org/wiki/Server_Name_Indication>`_ for new\n\
    \ upstream connections based on the downstream HTTP host/authority header, as seen by the\n\
    \ :ref:`router filter <config_http_filters_router>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX@\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX@\a\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX@\DC2\DC3\n\
    \\140\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXF\STX\US\SUB\254\SOH Automatic validate upstream presented certificate for new upstream connections based on the\n\
    \ downstream HTTP host/authority header, as seen by the\n\
    \ :ref:`router filter <config_http_filters_router>`.\n\
    \ This field is intended to set with `auto_sni` field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETXF\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXF\a\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXF\GS\RS\n\
    \\206\STX\n\
    \\STX\EOT\ETX\DC2\EOTM\NUL]\SOH\SUB\193\STX Configures the alternate protocols cache which tracks alternate protocols that can be used to\n\
    \ make an HTTP connection to an origin server. See https://tools.ietf.org/html/rfc7838 for\n\
    \ HTTP Alternate Services and https://datatracker.ietf.org/doc/html/draft-ietf-dnsop-svcb-https-04\n\
    \ for the \"HTTPS\" DNS resource record.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETXM\b&\n\
    \\141\ETX\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXS\STX;\SUB\255\STX The name of the cache. Multiple named caches allow independent alternate protocols cache\n\
    \ configurations to operate within a single Envoy process using different configurations. All\n\
    \ alternate protocols cache options with the same name *must* be equal in all fields when\n\
    \ referenced from different configuration components. Configuration will fail to load if this is\n\
    \ not the case.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXS\t\r\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXS\DLE\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\ETXS\DC2:\n\
    \\SI\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\SO\DC2\ETXS\DC39\n\
    \\255\STX\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\\\STXR\SUB\241\STX The maximum number of entries that the cache will hold. If not specified defaults to 1024.\n\
    \\n\
    \ .. note:\n\
    \\n\
    \   The implementation is approximate and enforced independently on each worker thread, thus\n\
    \   it is possible for the maximum entries in the cache to go slightly above the configured\n\
    \   value depending on timing. This is similar to how other circuit breakers work.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX\\\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\\\RS)\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\\,-\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\ETX\\.Q\n\
    \\SI\n\
    \\b\EOT\ETX\STX\SOH\b\175\b\ENQ\DC2\ETX\\/P\n\
    \$\n\
    \\STX\EOT\EOT\DC2\ENQ`\NUL\159\SOH\SOH\SUB\ETB [#next-free-field: 6]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX`\b\ESC\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOTa\STXb.\n\
    \\DLE\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\EOTa\STXb.\n\
    \\246\STX\n\
    \\EOT\EOT\EOT\EOT\NUL\DC2\EOTi\STXv\ETX\SUB\231\STX Action to take when Envoy receives client request with header names containing underscore\n\
    \ characters.\n\
    \ Underscore character is allowed in header names by the RFC-7230 and this behavior is implemented\n\
    \ as a security measure due to systems that treat '_' and '-' as interchangeable. Envoy by default allows client request headers with underscore\n\
    \ characters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\EOT\NUL\SOH\DC2\ETXi\a#\n\
    \N\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\NUL\DC2\ETXk\EOT\SO\SUB? Allow headers with underscores. This is the default behavior.\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\NUL\SOH\DC2\ETXk\EOT\t\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\NUL\STX\DC2\ETXk\f\r\n\
    \\243\SOH\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\SOH\DC2\ETXp\EOT\ETB\SUB\227\SOH Reject client request. HTTP/1 requests are rejected with the 400 status. HTTP/2 requests\n\
    \ end with the stream reset. The \"httpN.requests_rejected_with_underscores_in_headers\" counter\n\
    \ is incremented for each rejected request.\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\SOH\SOH\DC2\ETXp\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\SOH\STX\DC2\ETXp\NAK\SYN\n\
    \\133\STX\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\STX\DC2\ETXu\EOT\DC4\SUB\245\SOH Drop the header with name containing underscores. The header is dropped before the filter chain is\n\
    \ invoked and as such filters will not see dropped headers. The\n\
    \ \"httpN.dropped_headers_with_underscores\" is incremented for each dropped header.\n\
    \\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\STX\SOH\DC2\ETXu\EOT\SI\n\
    \\SO\n\
    \\a\EOT\EOT\EOT\NUL\STX\STX\STX\DC2\ETXu\DC2\DC3\n\
    \\243\b\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\136\SOH\STX,\SUB\228\b The idle timeout for connections. The idle timeout is defined as the\n\
    \ period in which there are no active requests. When the\n\
    \ idle timeout is reached the connection will be closed. If the connection is an HTTP/2\n\
    \ downstream connection a drain sequence will occur prior to closing the connection, see\n\
    \ :ref:`drain_timeout\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.drain_timeout>`.\n\
    \ Note that request based timeouts mean that HTTP/2 PINGs will not keep the connection alive.\n\
    \ If not specified, this defaults to 1 hour. To disable idle timeouts explicitly set this to 0.\n\
    \\n\
    \ .. warning::\n\
    \   Disabling this timeout has a highly likelihood of yielding connection leaks due to lost TCP\n\
    \   FIN packets, etc.\n\
    \\n\
    \ If the :ref:`overload action <config_overload_manager_overload_actions>` \"envoy.overload_actions.reduce_timeouts\"\n\
    \ is configured, this timeout is scaled for downstream connections according to the value for\n\
    \ :ref:`HTTP_DOWNSTREAM_CONNECTION_IDLE <envoy_v3_api_enum_value_config.overload.v3.ScaleTimersOverloadActionConfig.TimerType.HTTP_DOWNSTREAM_CONNECTION_IDLE>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\136\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\136\SOH\ESC'\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\136\SOH*+\n\
    \\247\ETX\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\144\SOH\STX7\SUB\232\ETX The maximum duration of a connection. The duration is defined as a period since a connection\n\
    \ was established. If not set, there is no max duration. When max_connection_duration is reached\n\
    \ the connection will be closed. Drain sequence will occur prior to closing the connection if\n\
    \ if's applicable. See :ref:`drain_timeout\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.drain_timeout>`.\n\
    \ Note: not implemented for upstream connections.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\144\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\144\SOH\ESC2\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\144\SOH56\n\
    \\238\SOH\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\149\SOH\STXY\SUB\223\SOH The maximum number of headers. If unconfigured, the default\n\
    \ maximum number of request headers allowed is 100. Requests that exceed this limit will receive\n\
    \ a 431 response for HTTP/1.x and cause a stream reset for HTTP/2.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\149\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\149\SOH\RS/\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\149\SOH23\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\b\DC2\EOT\149\SOH4X\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\STX\b\175\b\ENQ\DC2\EOT\149\SOH5W\n\
    \\209\SOH\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\153\SOH\STX3\SUB\194\SOH Total duration to keep alive an HTTP request/response stream. If the time limit is reached the stream will be\n\
    \ reset independent of any other timeouts. If not specified, this value is not set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\EOT\153\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\153\SOH\ESC.\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\153\SOH12\n\
    \\242\SOH\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOT\158\SOH\STXC\SUB\227\SOH Action to take when a client request with a header name containing underscore characters is received.\n\
    \ If this setting is not specified, the value defaults to ALLOW.\n\
    \ Note: upstream responses are not affected by this setting.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ACK\DC2\EOT\158\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\EOT\158\SOH\US>\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\EOT\158\SOHAB\n\
    \%\n\
    \\STX\EOT\ENQ\DC2\ACK\162\SOH\NUL\242\SOH\SOH\SUB\ETB [#next-free-field: 8]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\162\SOH\b\FS\n\
    \\r\n\
    \\ETX\EOT\ENQ\a\DC2\ACK\163\SOH\STX\164\SOH/\n\
    \\DC2\n\
    \\b\EOT\ENQ\a\211\136\225\ETX\SOH\DC2\ACK\163\SOH\STX\164\SOH/\n\
    \'\n\
    \\EOT\EOT\ENQ\ETX\NUL\DC2\ACK\167\SOH\STX\191\SOH\ETX\SUB\ETB [#next-free-field: 9]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\ETX\NUL\SOH\DC2\EOT\167\SOH\n\
    \\EM\n\
    \\SI\n\
    \\ENQ\EOT\ENQ\ETX\NUL\a\DC2\ACK\168\SOH\EOT\169\SOHA\n\
    \\DC4\n\
    \\n\
    \\EOT\ENQ\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\168\SOH\EOT\169\SOHA\n\
    \\DLE\n\
    \\ACK\EOT\ENQ\ETX\NUL\ETX\NUL\DC2\ACK\171\SOH\EOT\174\SOH\ENQ\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\ETX\NUL\SOH\DC2\EOT\171\SOH\f\ESC\n\
    \\DC1\n\
    \\a\EOT\ENQ\ETX\NUL\ETX\NUL\a\DC2\ACK\172\SOH\ACK\173\SOHS\n\
    \\SYN\n\
    \\f\EOT\ENQ\ETX\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\172\SOH\ACK\173\SOHS\n\
    \\DLE\n\
    \\ACK\EOT\ENQ\ETX\NUL\b\NUL\DC2\ACK\176\SOH\EOT\190\SOH\ENQ\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\b\NUL\SOH\DC2\EOT\176\SOH\n\
    \\ETB\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\b\NUL\STX\DC2\EOT\177\SOH\ACK(\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\b\NUL\STX\175\b\DC2\EOT\177\SOH\ACK(\n\
    \\181\ETX\n\
    \\ACK\EOT\ENQ\ETX\NUL\STX\NUL\DC2\EOT\184\SOH\ACK,\SUB\164\ETX Formats the header by proper casing words: the first character and any character following\n\
    \ a special character will be capitalized if it's an alpha character. For example,\n\
    \ \"content-type\" becomes \"Content-Type\", and \"foo$b#$are\" becomes \"Foo$B#$Are\".\n\
    \ Note that while this results in most headers following conventional casing, certain headers\n\
    \ are not covered. For example, the \"TE\" header will be formatted as \"Te\".\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ACK\DC2\EOT\184\SOH\ACK\NAK\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\SOH\DC2\EOT\184\SOH\SYN'\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ETX\DC2\EOT\184\SOH*+\n\
    \\244\SOH\n\
    \\ACK\EOT\ENQ\ETX\NUL\STX\SOH\DC2\EOT\189\SOH\ACK2\SUB\227\SOH Configuration for stateful formatter extensions that allow using received headers to\n\
    \ affect the output of encoding headers. E.g., preserving case during proxying.\n\
    \ [#extension-category: envoy.http.stateful_header_formatters]\n\
    \\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\ACK\DC2\EOT\189\SOH\ACK\SUB\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\SOH\DC2\EOT\189\SOH\ESC-\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\SOH\ETX\DC2\EOT\189\SOH01\n\
    \\177\STX\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\197\SOH\STX3\SUB\162\STX Handle HTTP requests with absolute URLs in the requests. These requests\n\
    \ are generally sent by clients to forward/explicit proxies. This allows clients to configure\n\
    \ envoy as their HTTP proxy. In Unix, for example, this is typically done by setting the\n\
    \ *http_proxy* environment variable.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ACK\DC2\EOT\197\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\197\SOH\FS.\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\197\SOH12\n\
    \\144\STX\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\203\SOH\STX\SUB\SUB\129\STX Handle incoming HTTP/1.0 and HTTP 0.9 requests.\n\
    \ This is off by default, and not fully standards compliant. There is support for pre-HTTP/1.1\n\
    \ style connect logic, dechunking, and handling lack of client host iff\n\
    \ *default_host_for_http_10* is configured.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\203\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\203\SOH\a\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\203\SOH\CAN\EM\n\
    \\226\SOH\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\208\SOH\STX&\SUB\211\SOH A default host for HTTP/1.0 requests. This is highly suggested if *accept_http_10* is true as\n\
    \ Envoy does not otherwise support HTTP/1.0 without a Host header.\n\
    \ This is a no-op if *accept_http_10* is not true.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\EOT\208\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\208\SOH\t!\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\208\SOH$%\n\
    \~\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\212\SOH\STX(\SUBp Describes how the keys for response headers should be formatted. By default, all header keys\n\
    \ are lower cased.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\EOT\212\SOH\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\212\SOH\DC2#\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\212\SOH&'\n\
    \\238\STX\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\EOT\223\SOH\STX\ESC\SUB\223\STX Enables trailers for HTTP/1. By default the HTTP/1 codec drops proxied trailers.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   Note that this only happens when Envoy is chunk encoding which occurs when:\n\
    \   - The request is HTTP/1.1.\n\
    \   - Is neither a HEAD only request nor a HTTP Upgrade.\n\
    \   - Not a response to a HEAD request.\n\
    \   - The content length header is not present.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\EOT\223\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\EOT\223\SOH\a\SYN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\EOT\223\SOH\EM\SUB\n\
    \\244\ETX\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\EOT\233\SOH\STX \SUB\229\ETX Allows Envoy to process requests/responses with both `Content-Length` and `Transfer-Encoding`\n\
    \ headers set. By default such messages are rejected, but if option is enabled - Envoy will\n\
    \ remove Content-Length header and process message.\n\
    \ See `RFC7230, sec. 3.3.3 <https://tools.ietf.org/html/rfc7230#section-3.3.3>` for details.\n\
    \\n\
    \ .. attention::\n\
    \   Enabling this option might lead to request smuggling vulnerability, especially if traffic\n\
    \   is proxied via multiple layers of proxies.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\EOT\233\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\EOT\233\SOH\a\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\EOT\233\SOH\RS\US\n\
    \\224\ETX\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\EOT\241\SOH\STXN\SUB\209\ETX Allows invalid HTTP messaging. When this option is false, then Envoy will terminate\n\
    \ HTTP/1.1 connections upon receiving an invalid HTTP message. However,\n\
    \ when this option is true, then Envoy will leave the HTTP/1.1 connection\n\
    \ open where possible.\n\
    \ If set, this overrides any HCM :ref:`stream_error_on_invalid_http_messaging\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.stream_error_on_invalid_http_message>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ACK\DC2\EOT\241\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\EOT\241\SOH\FSI\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\EOT\241\SOHLM\n\
    \\f\n\
    \\STX\EOT\ACK\DC2\ACK\244\SOH\NUL\140\STX\SOH\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\244\SOH\b\EM\n\
    \\160\SOH\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\247\SOH\STX]\SUB\145\SOH Send HTTP/2 PING frames at this period, in order to test that the connection is still alive.\n\
    \ If this is zero, interval PINGs will not be sent.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\247\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\247\SOH\ESC#\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\247\SOH&'\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\b\DC2\EOT\247\SOH(\\\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\NUL\b\175\b\NAK\DC2\EOT\247\SOH)[\n\
    \\159\SOH\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ACK\251\SOH\STX\254\SOH\ENQ\SUB\142\SOH How long to wait for a response to a keepalive PING. If a response is not received within this\n\
    \ time period, the connection will be aborted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\EOT\251\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\251\SOH\ESC\"\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\251\SOH%&\n\
    \\SI\n\
    \\ENQ\EOT\ACK\STX\SOH\b\DC2\ACK\251\SOH'\254\SOH\EOT\n\
    \\DC2\n\
    \\b\EOT\ACK\STX\SOH\b\175\b\NAK\DC2\ACK\251\SOH(\254\SOH\ETX\n\
    \\179\SOH\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\131\STX\STX&\SUB\164\SOH A random jitter amount as a percentage of interval that will be added to each interval.\n\
    \ A value of zero means there will be no jitter.\n\
    \ The default value is 15%.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ACK\DC2\EOT\131\STX\STX\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\131\STX\DC2!\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\131\STX$%\n\
    \\213\STX\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ACK\138\STX\STX\139\STX;\SUB\196\STX If the connection has been idle for this duration, send a HTTP/2 ping ahead\n\
    \ of new stream creation, to quickly detect dead connections.\n\
    \ If this is zero, this type of PING will not be sent.\n\
    \ If an interval ping is outstanding, a second ping will not be sent as the\n\
    \ interval ping will determine if the connection is dead.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ACK\DC2\EOT\138\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\EOT\138\STX\ESC3\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\EOT\138\STX67\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\ETX\b\DC2\EOT\139\STX\ACK:\n\
    \\DLE\n\
    \\b\EOT\ACK\STX\ETX\b\175\b\NAK\DC2\EOT\139\STX\a9\n\
    \&\n\
    \\STX\EOT\a\DC2\ACK\143\STX\NUL\202\ETX\SOH\SUB\CAN [#next-free-field: 16]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\a\SOH\DC2\EOT\143\STX\b\FS\n\
    \\r\n\
    \\ETX\EOT\a\a\DC2\ACK\144\STX\STX\145\STX/\n\
    \\DC2\n\
    \\b\EOT\a\a\211\136\225\ETX\SOH\DC2\ACK\144\STX\STX\145\STX/\n\
    \\165\SOH\n\
    \\EOT\EOT\a\ETX\NUL\DC2\ACK\149\STX\STX\161\STX\ETX\SUB\148\SOH Defines a parameter to be sent in the SETTINGS frame.\n\
    \ See `RFC7540, sec. 6.5.1 <https://tools.ietf.org/html/rfc7540#section-6.5.1>`_ for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\ETX\NUL\SOH\DC2\EOT\149\STX\n\
    \\ESC\n\
    \\SI\n\
    \\ENQ\EOT\a\ETX\NUL\a\DC2\ACK\150\STX\EOT\151\STXC\n\
    \\DC4\n\
    \\n\
    \\EOT\a\ETX\NUL\a\211\136\225\ETX\SOH\DC2\ACK\150\STX\EOT\151\STXC\n\
    \4\n\
    \\ACK\EOT\a\ETX\NUL\STX\NUL\DC2\ACK\154\STX\EOT\157\STX\ACK\SUB\" The 16 bit parameter identifier.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ACK\DC2\EOT\154\STX\EOT\US\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\SOH\DC2\EOT\154\STX *\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\ETX\DC2\EOT\154\STX-.\n\
    \\DC1\n\
    \\a\EOT\a\ETX\NUL\STX\NUL\b\DC2\ACK\154\STX/\157\STX\ENQ\n\
    \\DC2\n\
    \\n\
    \\EOT\a\ETX\NUL\STX\NUL\b\175\b\ENQ\DC2\EOT\155\STX\ACK3\n\
    \\DC2\n\
    \\n\
    \\EOT\a\ETX\NUL\STX\NUL\b\175\b\DC1\DC2\EOT\156\STX\ACK1\n\
    \-\n\
    \\ACK\EOT\a\ETX\NUL\STX\SOH\DC2\EOT\160\STX\EOTX\SUB\GS The 32 bit parameter value.\n\
    \\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\ACK\DC2\EOT\160\STX\EOT\US\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\SOH\DC2\EOT\160\STX %\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\ETX\DC2\EOT\160\STX()\n\
    \\SI\n\
    \\a\EOT\a\ETX\NUL\STX\SOH\b\DC2\EOT\160\STX*W\n\
    \\DC2\n\
    \\n\
    \\EOT\a\ETX\NUL\STX\SOH\b\175\b\DC1\DC2\EOT\160\STX+V\n\
    \\163\STX\n\
    \\EOT\EOT\a\STX\NUL\DC2\EOT\167\STX\STX3\SUB\148\STX `Maximum table size <https://httpwg.org/specs/rfc7541.html#rfc.section.4.2>`_\n\
    \ (in octets) that the encoder is permitted to use for the dynamic HPACK table. Valid values\n\
    \ range from 0 to 4294967295 (2^32 - 1) and defaults to 4096. 0 effectively disables header\n\
    \ compression.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ACK\DC2\EOT\167\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\EOT\167\STX\RS.\n\
    \\r\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\EOT\167\STX12\n\
    \\197\ENQ\n\
    \\EOT\EOT\a\STX\SOH\DC2\ACK\180\STX\STX\181\STX;\SUB\180\ENQ `Maximum concurrent streams <https://httpwg.org/specs/rfc7540.html#rfc.section.5.1.2>`_\n\
    \ allowed for peer on one HTTP/2 connection. Valid values range from 1 to 2147483647 (2^31 - 1)\n\
    \ and defaults to 2147483647.\n\
    \\n\
    \ For upstream connections, this also limits how many streams Envoy will initiate concurrently\n\
    \ on a single connection. If the limit is reached, Envoy may queue requests or establish\n\
    \ additional connections (as allowed per circuit breaker limits).\n\
    \\n\
    \ This acts as an upper bound: Envoy will lower the max concurrent streams allowed on a given\n\
    \ connection based on upstream settings. Config dumps will reflect the configured upper bound,\n\
    \ not the per-connection negotiated limits.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ACK\DC2\EOT\180\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\EOT\180\STX\RS4\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\EOT\180\STX78\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SOH\b\DC2\EOT\181\STX\ACK:\n\
    \\DLE\n\
    \\b\EOT\a\STX\SOH\b\175\b\ENQ\DC2\EOT\181\STX\a9\n\
    \\141\ENQ\n\
    \\EOT\EOT\a\STX\STX\DC2\ACK\194\STX\STX\195\STX?\SUB\252\EOT `Initial stream-level flow-control window\n\
    \ <https://httpwg.org/specs/rfc7540.html#rfc.section.6.9.2>`_ size. Valid values range from 65535\n\
    \ (2^16 - 1, HTTP/2 default) to 2147483647 (2^31 - 1, HTTP/2 maximum) and defaults to 268435456\n\
    \ (256 * 1024 * 1024).\n\
    \\n\
    \ NOTE: 65535 is the initial window size from HTTP/2 spec. We only support increasing the default\n\
    \ window size now, so it's also the minimum.\n\
    \\n\
    \ This field also acts as a soft limit on the number of bytes Envoy will buffer per-stream in the\n\
    \ HTTP/2 codec buffers. Once the buffer reaches this pointer, watermark callbacks will fire to\n\
    \ stop the flow of data to the codec buffers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ACK\DC2\EOT\194\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\EOT\194\STX\RS8\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\EOT\194\STX;<\n\
    \\r\n\
    \\ENQ\EOT\a\STX\STX\b\DC2\EOT\195\STX\ACK>\n\
    \\DLE\n\
    \\b\EOT\a\STX\STX\b\175\b\ENQ\DC2\EOT\195\STX\a=\n\
    \\192\SOH\n\
    \\EOT\EOT\a\STX\ETX\DC2\ACK\199\STX\STX\200\STX?\SUB\175\SOH Similar to *initial_stream_window_size*, but for connection-level flow-control\n\
    \ window. Currently, this has the same minimum/maximum/default as *initial_stream_window_size*.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ACK\DC2\EOT\199\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\EOT\199\STX\RS<\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\EOT\199\STX?@\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ETX\b\DC2\EOT\200\STX\ACK>\n\
    \\DLE\n\
    \\b\EOT\a\STX\ETX\b\175\b\ENQ\DC2\EOT\200\STX\a=\n\
    \M\n\
    \\EOT\EOT\a\STX\EOT\DC2\EOT\203\STX\STX\EM\SUB? Allows proxying Websocket and other upgrades over H2 connect.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ENQ\DC2\EOT\203\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\EOT\203\STX\a\DC4\n\
    \\r\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\EOT\203\STX\ETB\CAN\n\
    \\137\STX\n\
    \\EOT\EOT\a\STX\ENQ\DC2\EOT\211\STX\STX\SUB\SUB\250\SOH [#not-implemented-hide:] Hiding until envoy has full metadata support.\n\
    \ Still under implementation. DO NOT USE.\n\
    \\n\
    \ Allows metadata. See [metadata\n\
    \ docs](https://github.com/envoyproxy/envoy/blob/main/source/docs/h2_metadata.md) for more\n\
    \ information.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ENQ\DC2\EOT\211\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\SOH\DC2\EOT\211\STX\a\NAK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ENQ\ETX\DC2\EOT\211\STX\CAN\EM\n\
    \\246\ETX\n\
    \\EOT\EOT\a\STX\ACK\DC2\EOT\219\STX\STX[\SUB\231\ETX Limit the number of pending outbound downstream frames of all types (frames that are waiting to\n\
    \ be written into the socket). Exceeding this limit triggers flood mitigation and connection is\n\
    \ terminated. The ``http2.outbound_flood`` stat tracks the number of terminated connections due\n\
    \ to flood mitigation. The default limit is 10000.\n\
    \ NOTE: flood and abuse mitigation for upstream connections is presently enabled by the\n\
    \ `envoy.reloadable_features.upstream_http2_flood_checks` flag.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\ACK\DC2\EOT\219\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\SOH\DC2\EOT\219\STX\RS1\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\ETX\DC2\EOT\219\STX45\n\
    \\r\n\
    \\ENQ\EOT\a\STX\ACK\b\DC2\EOT\219\STX6Z\n\
    \\DLE\n\
    \\b\EOT\a\STX\ACK\b\175\b\ENQ\DC2\EOT\219\STX7Y\n\
    \\181\EOT\n\
    \\EOT\EOT\a\STX\a\DC2\EOT\228\STX\STXc\SUB\166\EOT Limit the number of pending outbound downstream frames of types PING, SETTINGS and RST_STREAM,\n\
    \ preventing high memory utilization when receiving continuous stream of these frames. Exceeding\n\
    \ this limit triggers flood mitigation and connection is terminated. The\n\
    \ ``http2.outbound_control_flood`` stat tracks the number of terminated connections due to flood\n\
    \ mitigation. The default limit is 1000.\n\
    \ NOTE: flood and abuse mitigation for upstream connections is presently enabled by the\n\
    \ `envoy.reloadable_features.upstream_http2_flood_checks` flag.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\ACK\DC2\EOT\228\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\SOH\DC2\EOT\228\STX\RS9\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\ETX\DC2\EOT\228\STX<=\n\
    \\r\n\
    \\ENQ\EOT\a\STX\a\b\DC2\EOT\228\STX>b\n\
    \\DLE\n\
    \\b\EOT\a\STX\a\b\175\b\ENQ\DC2\EOT\228\STX?a\n\
    \\157\ENQ\n\
    \\EOT\EOT\a\STX\b\DC2\EOT\238\STX\STXT\SUB\142\ENQ Limit the number of consecutive inbound frames of types HEADERS, CONTINUATION and DATA with an\n\
    \ empty payload and no end stream flag. Those frames have no legitimate use and are abusive, but\n\
    \ might be a result of a broken HTTP/2 implementation. The `http2.inbound_empty_frames_flood``\n\
    \ stat tracks the number of connections terminated due to flood mitigation.\n\
    \ Setting this to 0 will terminate connection upon receiving first frame with an empty payload\n\
    \ and no end stream flag. The default limit is 1.\n\
    \ NOTE: flood and abuse mitigation for upstream connections is presently enabled by the\n\
    \ `envoy.reloadable_features.upstream_http2_flood_checks` flag.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\b\ACK\DC2\EOT\238\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\b\SOH\DC2\EOT\238\STX\RSO\n\
    \\r\n\
    \\ENQ\EOT\a\STX\b\ETX\DC2\EOT\238\STXRS\n\
    \\221\ACK\n\
    \\EOT\EOT\a\STX\t\DC2\EOT\253\STX\STXJ\SUB\206\ACK Limit the number of inbound PRIORITY frames allowed per each opened stream. If the number\n\
    \ of PRIORITY frames received over the lifetime of connection exceeds the value calculated\n\
    \ using this formula::\n\
    \\n\
    \   max_inbound_priority_frames_per_stream * (1 + opened_streams)\n\
    \\n\
    \ the connection is terminated. For downstream connections the `opened_streams` is incremented when\n\
    \ Envoy receives complete response headers from the upstream server. For upstream connection the\n\
    \ `opened_streams` is incremented when Envoy send the HEADERS frame for a new stream. The\n\
    \ ``http2.inbound_priority_frames_flood`` stat tracks\n\
    \ the number of connections terminated due to flood mitigation. The default limit is 100.\n\
    \ NOTE: flood and abuse mitigation for upstream connections is presently enabled by the\n\
    \ `envoy.reloadable_features.upstream_http2_flood_checks` flag.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\t\ACK\DC2\EOT\253\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\t\SOH\DC2\EOT\253\STX\RSD\n\
    \\r\n\
    \\ENQ\EOT\a\STX\t\ETX\DC2\EOT\253\STXGI\n\
    \\143\t\n\
    \\EOT\EOT\a\STX\n\
    \\DC2\ACK\143\ETX\STX\144\ETX+\SUB\254\b Limit the number of inbound WINDOW_UPDATE frames allowed per DATA frame sent. If the number\n\
    \ of WINDOW_UPDATE frames received over the lifetime of connection exceeds the value calculated\n\
    \ using this formula::\n\
    \\n\
    \   5 + 2 * (opened_streams +\n\
    \            max_inbound_window_update_frames_per_data_frame_sent * outbound_data_frames)\n\
    \\n\
    \ the connection is terminated. For downstream connections the `opened_streams` is incremented when\n\
    \ Envoy receives complete response headers from the upstream server. For upstream connections the\n\
    \ `opened_streams` is incremented when Envoy sends the HEADERS frame for a new stream. The\n\
    \ ``http2.inbound_priority_frames_flood`` stat tracks the number of connections terminated due to\n\
    \ flood mitigation. The default max_inbound_window_update_frames_per_data_frame_sent value is 10.\n\
    \ Setting this to 1 should be enough to support HTTP/2 implementations with basic flow control,\n\
    \ but more complex implementations that try to estimate available bandwidth require at least 2.\n\
    \ NOTE: flood and abuse mitigation for upstream connections is presently enabled by the\n\
    \ `envoy.reloadable_features.upstream_http2_flood_checks` flag.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\n\
    \\ACK\DC2\EOT\143\ETX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\n\
    \\SOH\DC2\EOT\143\ETX\RSR\n\
    \\r\n\
    \\ENQ\EOT\a\STX\n\
    \\ETX\DC2\EOT\143\ETXUW\n\
    \\r\n\
    \\ENQ\EOT\a\STX\n\
    \\b\DC2\EOT\144\ETX\ACK*\n\
    \\DLE\n\
    \\b\EOT\a\STX\n\
    \\b\175\b\ENQ\DC2\EOT\144\ETX\a)\n\
    \\130\ACK\n\
    \\EOT\EOT\a\STX\v\DC2\ACK\158\ETX\STX\159\ETXS\SUB\241\ENQ Allows invalid HTTP messaging and headers. When this option is disabled (default), then\n\
    \ the whole HTTP/2 connection is terminated upon receiving invalid HEADERS frame. However,\n\
    \ when this option is enabled, only the offending stream is terminated.\n\
    \\n\
    \ This is overridden by HCM :ref:`stream_error_on_invalid_http_messaging\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.stream_error_on_invalid_http_message>`\n\
    \ iff present.\n\
    \\n\
    \ This is deprecated in favor of :ref:`override_stream_error_on_invalid_http_message\n\
    \ <envoy_v3_api_field_config.core.v3.Http2ProtocolOptions.override_stream_error_on_invalid_http_message>`\n\
    \\n\
    \ See `RFC7540, sec. 8.1 <https://tools.ietf.org/html/rfc7540#section-8.1>`_ for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\v\ENQ\DC2\EOT\158\ETX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\a\STX\v\SOH\DC2\EOT\158\ETX\a-\n\
    \\r\n\
    \\ENQ\EOT\a\STX\v\ETX\DC2\EOT\158\ETX02\n\
    \\r\n\
    \\ENQ\EOT\a\STX\v\b\DC2\EOT\159\ETX\ACKR\n\
    \\SO\n\
    \\ACK\EOT\a\STX\v\b\ETX\DC2\EOT\159\ETX\a\CAN\n\
    \\DC1\n\
    \\t\EOT\a\STX\v\b\242\232\128K\DC2\EOT\159\ETX\SUBQ\n\
    \\177\EOT\n\
    \\EOT\EOT\a\STX\f\DC2\EOT\169\ETX\STXO\SUB\162\EOT Allows invalid HTTP messaging and headers. When this option is disabled (default), then\n\
    \ the whole HTTP/2 connection is terminated upon receiving invalid HEADERS frame. However,\n\
    \ when this option is enabled, only the offending stream is terminated.\n\
    \\n\
    \ This overrides any HCM :ref:`stream_error_on_invalid_http_messaging\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.stream_error_on_invalid_http_message>`\n\
    \\n\
    \ See `RFC7540, sec. 8.1 <https://tools.ietf.org/html/rfc7540#section-8.1>`_ for details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\f\ACK\DC2\EOT\169\ETX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\a\STX\f\SOH\DC2\EOT\169\ETX\FSI\n\
    \\r\n\
    \\ENQ\EOT\a\STX\f\ETX\DC2\EOT\169\ETXLN\n\
    \\157\a\n\
    \\EOT\EOT\a\STX\r\DC2\EOT\197\ETX\STX=\SUB\142\a [#not-implemented-hide:]\n\
    \ Specifies SETTINGS frame parameters to be sent to the peer, with two exceptions:\n\
    \\n\
    \ 1. SETTINGS_ENABLE_PUSH (0x2) is not configurable as HTTP/2 server push is not supported by\n\
    \ Envoy.\n\
    \\n\
    \ 2. SETTINGS_ENABLE_CONNECT_PROTOCOL (0x8) is only configurable through the named field\n\
    \ 'allow_connect'.\n\
    \\n\
    \ Note that custom parameters specified through this field can not also be set in the\n\
    \ corresponding named parameters:\n\
    \\n\
    \ .. code-block:: text\n\
    \\n\
    \   ID    Field Name\n\
    \   ----------------\n\
    \   0x1   hpack_table_size\n\
    \   0x3   max_concurrent_streams\n\
    \   0x4   initial_stream_window_size\n\
    \\n\
    \ Collisions will trigger config validation failure on load/update. Likewise, inconsistencies\n\
    \ between custom parameters with the same identifier will trigger a failure.\n\
    \\n\
    \ See `IANA HTTP/2 Settings\n\
    \ <https://www.iana.org/assignments/http2-parameters/http2-parameters.xhtml#settings>`_ for\n\
    \ standardized identifiers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\r\EOT\DC2\EOT\197\ETX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\r\ACK\DC2\EOT\197\ETX\v\FS\n\
    \\r\n\
    \\ENQ\EOT\a\STX\r\SOH\DC2\EOT\197\ETX\GS7\n\
    \\r\n\
    \\ENQ\EOT\a\STX\r\ETX\DC2\EOT\197\ETX:<\n\
    \\188\SOH\n\
    \\EOT\EOT\a\STX\SO\DC2\EOT\201\ETX\STX.\SUB\173\SOH Send HTTP/2 PING frames to verify that the connection is still healthy. If the remote peer\n\
    \ does not respond within the configured timeout, the connection will be aborted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SO\ACK\DC2\EOT\201\ETX\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SO\SOH\DC2\EOT\201\ETX\DC4(\n\
    \\r\n\
    \\ENQ\EOT\a\STX\SO\ETX\DC2\EOT\201\ETX+-\n\
    \(\n\
    \\STX\EOT\b\DC2\ACK\205\ETX\NUL\210\ETX\SOH\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\b\SOH\DC2\EOT\205\ETX\b\ESC\n\
    \\r\n\
    \\ETX\EOT\b\a\DC2\ACK\206\ETX\STX\207\ETX.\n\
    \\DC2\n\
    \\b\EOT\b\a\211\136\225\ETX\SOH\DC2\ACK\206\ETX\STX\207\ETX.\n\
    \\f\n\
    \\EOT\EOT\b\STX\NUL\DC2\EOT\209\ETX\STX2\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ACK\DC2\EOT\209\ETX\STX\SYN\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\EOT\209\ETX\ETB-\n\
    \\r\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\EOT\209\ETX01\n\
    \4\n\
    \\STX\EOT\t\DC2\ACK\213\ETX\NUL\223\ETX\SOH\SUB& A message which allows using HTTP/3.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\t\SOH\DC2\EOT\213\ETX\b\FS\n\
    \\f\n\
    \\EOT\EOT\t\STX\NUL\DC2\EOT\214\ETX\STX0\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ACK\DC2\EOT\214\ETX\STX\NAK\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\EOT\214\ETX\SYN+\n\
    \\r\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\EOT\214\ETX./\n\
    \\224\ETX\n\
    \\EOT\EOT\t\STX\SOH\DC2\EOT\222\ETX\STXN\SUB\209\ETX Allows invalid HTTP messaging and headers. When this option is disabled (default), then\n\
    \ the whole HTTP/3 connection is terminated upon receiving invalid HEADERS frame. However,\n\
    \ when this option is enabled, only the offending stream is terminated.\n\
    \\n\
    \ If set, this overrides any HCM :ref:`stream_error_on_invalid_http_messaging\n\
    \ <envoy_v3_api_field_extensions.filters.network.http_connection_manager.v3.HttpConnectionManager.stream_error_on_invalid_http_message>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ACK\DC2\EOT\222\ETX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\EOT\222\ETX\FSI\n\
    \\r\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\EOT\222\ETXLM\n\
    \J\n\
    \\STX\EOT\n\
    \\DC2\ACK\226\ETX\NUL\231\ETX\SOH\SUB< A message to control transformations to the :scheme header\n\
    \\n\
    \\v\n\
    \\ETX\EOT\n\
    \\SOH\DC2\EOT\226\ETX\b\"\n\
    \\SO\n\
    \\EOT\EOT\n\
    \\b\NUL\DC2\ACK\227\ETX\STX\230\ETX\ETX\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\b\NUL\SOH\DC2\EOT\227\ETX\b\SYN\n\
    \M\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\EOT\229\ETX\EOTX\SUB? Overwrite any Scheme header with the contents of this string.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\EOT\229\ETX\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\EOT\229\ETX\v\RS\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\EOT\229\ETX!\"\n\
    \\r\n\
    \\ENQ\EOT\n\
    \\STX\NUL\b\DC2\EOT\229\ETX#W\n\
    \\DLE\n\
    \\b\EOT\n\
    \\STX\NUL\b\175\b\SO\DC2\EOT\229\ETX$Vb\ACKproto3"