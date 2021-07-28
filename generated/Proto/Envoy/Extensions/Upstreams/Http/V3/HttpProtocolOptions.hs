{- This file was auto-generated from envoy/extensions/upstreams/http/v3/http_protocol_options.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions (
        HttpProtocolOptions(),
        HttpProtocolOptions'UpstreamProtocolOptions(..),
        _HttpProtocolOptions'ExplicitHttpConfig',
        _HttpProtocolOptions'UseDownstreamProtocolConfig,
        _HttpProtocolOptions'AutoConfig,
        HttpProtocolOptions'AutoHttpConfig(),
        HttpProtocolOptions'ExplicitHttpConfig(),
        HttpProtocolOptions'ExplicitHttpConfig'ProtocolConfig(..),
        _HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions,
        _HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions,
        _HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions,
        HttpProtocolOptions'UseDownstreamHttpConfig()
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
import qualified Proto.Envoy.Config.Core.V3.Protocol
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.commonHttpProtocolOptions' @:: Lens' HttpProtocolOptions Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'commonHttpProtocolOptions' @:: Lens' HttpProtocolOptions (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.upstreamHttpProtocolOptions' @:: Lens' HttpProtocolOptions Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'upstreamHttpProtocolOptions' @:: Lens' HttpProtocolOptions (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'upstreamProtocolOptions' @:: Lens' HttpProtocolOptions (Prelude.Maybe HttpProtocolOptions'UpstreamProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'explicitHttpConfig' @:: Lens' HttpProtocolOptions (Prelude.Maybe HttpProtocolOptions'ExplicitHttpConfig)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.explicitHttpConfig' @:: Lens' HttpProtocolOptions HttpProtocolOptions'ExplicitHttpConfig@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'useDownstreamProtocolConfig' @:: Lens' HttpProtocolOptions (Prelude.Maybe HttpProtocolOptions'UseDownstreamHttpConfig)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.useDownstreamProtocolConfig' @:: Lens' HttpProtocolOptions HttpProtocolOptions'UseDownstreamHttpConfig@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'autoConfig' @:: Lens' HttpProtocolOptions (Prelude.Maybe HttpProtocolOptions'AutoHttpConfig)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.autoConfig' @:: Lens' HttpProtocolOptions HttpProtocolOptions'AutoHttpConfig@ -}
data HttpProtocolOptions
  = HttpProtocolOptions'_constructor {_HttpProtocolOptions'commonHttpProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions),
                                      _HttpProtocolOptions'upstreamHttpProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions),
                                      _HttpProtocolOptions'upstreamProtocolOptions :: !(Prelude.Maybe HttpProtocolOptions'UpstreamProtocolOptions),
                                      _HttpProtocolOptions'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpProtocolOptions where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HttpProtocolOptions'UpstreamProtocolOptions
  = HttpProtocolOptions'ExplicitHttpConfig' !HttpProtocolOptions'ExplicitHttpConfig |
    HttpProtocolOptions'UseDownstreamProtocolConfig !HttpProtocolOptions'UseDownstreamHttpConfig |
    HttpProtocolOptions'AutoConfig !HttpProtocolOptions'AutoHttpConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "commonHttpProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'commonHttpProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'commonHttpProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maybe'commonHttpProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'commonHttpProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'commonHttpProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "upstreamHttpProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'upstreamHttpProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'upstreamHttpProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maybe'upstreamHttpProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'upstreamHttpProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'upstreamHttpProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maybe'upstreamProtocolOptions" (Prelude.Maybe HttpProtocolOptions'UpstreamProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'upstreamProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'upstreamProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maybe'explicitHttpConfig" (Prelude.Maybe HttpProtocolOptions'ExplicitHttpConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'upstreamProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'upstreamProtocolOptions = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap HttpProtocolOptions'ExplicitHttpConfig' y__))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "explicitHttpConfig" HttpProtocolOptions'ExplicitHttpConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'upstreamProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'upstreamProtocolOptions = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap HttpProtocolOptions'ExplicitHttpConfig' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maybe'useDownstreamProtocolConfig" (Prelude.Maybe HttpProtocolOptions'UseDownstreamHttpConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'upstreamProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'upstreamProtocolOptions = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpProtocolOptions'UseDownstreamProtocolConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   HttpProtocolOptions'UseDownstreamProtocolConfig y__))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "useDownstreamProtocolConfig" HttpProtocolOptions'UseDownstreamHttpConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'upstreamProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'upstreamProtocolOptions = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpProtocolOptions'UseDownstreamProtocolConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      HttpProtocolOptions'UseDownstreamProtocolConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "maybe'autoConfig" (Prelude.Maybe HttpProtocolOptions'AutoHttpConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'upstreamProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'upstreamProtocolOptions = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpProtocolOptions'AutoConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap HttpProtocolOptions'AutoConfig y__))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions "autoConfig" HttpProtocolOptions'AutoHttpConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'upstreamProtocolOptions
           (\ x__ y__
              -> x__ {_HttpProtocolOptions'upstreamProtocolOptions = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpProtocolOptions'AutoConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap HttpProtocolOptions'AutoConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HttpProtocolOptions where
  messageName _
    = Data.Text.pack
        "envoy.extensions.upstreams.http.v3.HttpProtocolOptions"
  packedMessageDescriptor _
    = "\n\
      \\DC3HttpProtocolOptions\DC2j\n\
      \\FScommon_http_protocol_options\CAN\SOH \SOH(\v2).envoy.config.core.v3.HttpProtocolOptionsR\EMcommonHttpProtocolOptions\DC2v\n\
      \\RSupstream_http_protocol_options\CAN\STX \SOH(\v21.envoy.config.core.v3.UpstreamHttpProtocolOptionsR\ESCupstreamHttpProtocolOptions\DC2~\n\
      \\DC4explicit_http_config\CAN\ETX \SOH(\v2J.envoy.extensions.upstreams.http.v3.HttpProtocolOptions.ExplicitHttpConfigH\NULR\DC2explicitHttpConfig\DC2\150\SOH\n\
      \\RSuse_downstream_protocol_config\CAN\EOT \SOH(\v2O.envoy.extensions.upstreams.http.v3.HttpProtocolOptions.UseDownstreamHttpConfigH\NULR\ESCuseDownstreamProtocolConfig\DC2i\n\
      \\vauto_config\CAN\ENQ \SOH(\v2F.envoy.extensions.upstreams.http.v3.HttpProtocolOptions.AutoHttpConfigH\NULR\n\
      \autoConfig\SUB\214\STX\n\
      \\DC2ExplicitHttpConfig\DC2`\n\
      \\NAKhttp_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsH\NULR\DC3httpProtocolOptions\DC2b\n\
      \\SYNhttp2_protocol_options\CAN\STX \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsH\NULR\DC4http2ProtocolOptions\DC2b\n\
      \\SYNhttp3_protocol_options\CAN\ETX \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsH\NULR\DC4http3ProtocolOptionsB\SYN\n\
      \\SIprotocol_config\DC2\ETX\248B\SOH\SUB\189\STX\n\
      \\ETBUseDownstreamHttpConfig\DC2^\n\
      \\NAKhttp_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsR\DC3httpProtocolOptions\DC2`\n\
      \\SYNhttp2_protocol_options\CAN\STX \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptions\DC2`\n\
      \\SYNhttp3_protocol_options\CAN\ETX \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsR\DC4http3ProtocolOptions\SUB\181\ETX\n\
      \\SOAutoHttpConfig\DC2^\n\
      \\NAKhttp_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsR\DC3httpProtocolOptions\DC2`\n\
      \\SYNhttp2_protocol_options\CAN\STX \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptions\DC2`\n\
      \\SYNhttp3_protocol_options\CAN\ETX \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsR\DC4http3ProtocolOptions\DC2\DEL\n\
      \!alternate_protocols_cache_options\CAN\EOT \SOH(\v24.envoy.config.core.v3.AlternateProtocolsCacheOptionsR\RSalternateProtocolsCacheOptionsB \n\
      \\EMupstream_protocol_options\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonHttpProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_http_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.HttpProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonHttpProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions
        upstreamHttpProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upstream_http_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.UpstreamHttpProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'upstreamHttpProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions
        explicitHttpConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "explicit_http_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpProtocolOptions'ExplicitHttpConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'explicitHttpConfig")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions
        useDownstreamProtocolConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_downstream_protocol_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpProtocolOptions'UseDownstreamHttpConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'useDownstreamProtocolConfig")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions
        autoConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "auto_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor HttpProtocolOptions'AutoHttpConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'autoConfig")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            commonHttpProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            upstreamHttpProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 3, explicitHttpConfig__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            useDownstreamProtocolConfig__field_descriptor),
           (Data.ProtoLens.Tag 5, autoConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpProtocolOptions'_unknownFields
        (\ x__ y__ -> x__ {_HttpProtocolOptions'_unknownFields = y__})
  defMessage
    = HttpProtocolOptions'_constructor
        {_HttpProtocolOptions'commonHttpProtocolOptions = Prelude.Nothing,
         _HttpProtocolOptions'upstreamHttpProtocolOptions = Prelude.Nothing,
         _HttpProtocolOptions'upstreamProtocolOptions = Prelude.Nothing,
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
                                       "common_http_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonHttpProtocolOptions") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "upstream_http_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"upstreamHttpProtocolOptions")
                                     y
                                     x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "explicit_http_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"explicitHttpConfig") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "use_downstream_protocol_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useDownstreamProtocolConfig")
                                     y
                                     x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "auto_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"autoConfig") y x)
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
                    (Data.ProtoLens.Field.field @"maybe'commonHttpProtocolOptions") _x
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
                       (Data.ProtoLens.Field.field @"maybe'upstreamHttpProtocolOptions")
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
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'upstreamProtocolOptions") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig' v))
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
                      (Prelude.Just (HttpProtocolOptions'UseDownstreamProtocolConfig v))
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
                      (Prelude.Just (HttpProtocolOptions'AutoConfig v))
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
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData HttpProtocolOptions where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpProtocolOptions'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpProtocolOptions'commonHttpProtocolOptions x__)
                (Control.DeepSeq.deepseq
                   (_HttpProtocolOptions'upstreamHttpProtocolOptions x__)
                   (Control.DeepSeq.deepseq
                      (_HttpProtocolOptions'upstreamProtocolOptions x__) ())))
instance Control.DeepSeq.NFData HttpProtocolOptions'UpstreamProtocolOptions where
  rnf (HttpProtocolOptions'ExplicitHttpConfig' x__)
    = Control.DeepSeq.rnf x__
  rnf (HttpProtocolOptions'UseDownstreamProtocolConfig x__)
    = Control.DeepSeq.rnf x__
  rnf (HttpProtocolOptions'AutoConfig x__) = Control.DeepSeq.rnf x__
_HttpProtocolOptions'ExplicitHttpConfig' ::
  Data.ProtoLens.Prism.Prism' HttpProtocolOptions'UpstreamProtocolOptions HttpProtocolOptions'ExplicitHttpConfig
_HttpProtocolOptions'ExplicitHttpConfig'
  = Data.ProtoLens.Prism.prism'
      HttpProtocolOptions'ExplicitHttpConfig'
      (\ p__
         -> case p__ of
              (HttpProtocolOptions'ExplicitHttpConfig' p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpProtocolOptions'UseDownstreamProtocolConfig ::
  Data.ProtoLens.Prism.Prism' HttpProtocolOptions'UpstreamProtocolOptions HttpProtocolOptions'UseDownstreamHttpConfig
_HttpProtocolOptions'UseDownstreamProtocolConfig
  = Data.ProtoLens.Prism.prism'
      HttpProtocolOptions'UseDownstreamProtocolConfig
      (\ p__
         -> case p__ of
              (HttpProtocolOptions'UseDownstreamProtocolConfig p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpProtocolOptions'AutoConfig ::
  Data.ProtoLens.Prism.Prism' HttpProtocolOptions'UpstreamProtocolOptions HttpProtocolOptions'AutoHttpConfig
_HttpProtocolOptions'AutoConfig
  = Data.ProtoLens.Prism.prism'
      HttpProtocolOptions'AutoConfig
      (\ p__
         -> case p__ of
              (HttpProtocolOptions'AutoConfig p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.httpProtocolOptions' @:: Lens' HttpProtocolOptions'AutoHttpConfig Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'httpProtocolOptions' @:: Lens' HttpProtocolOptions'AutoHttpConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.http2ProtocolOptions' @:: Lens' HttpProtocolOptions'AutoHttpConfig Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'http2ProtocolOptions' @:: Lens' HttpProtocolOptions'AutoHttpConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.http3ProtocolOptions' @:: Lens' HttpProtocolOptions'AutoHttpConfig Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'http3ProtocolOptions' @:: Lens' HttpProtocolOptions'AutoHttpConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.alternateProtocolsCacheOptions' @:: Lens' HttpProtocolOptions'AutoHttpConfig Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'alternateProtocolsCacheOptions' @:: Lens' HttpProtocolOptions'AutoHttpConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions)@ -}
data HttpProtocolOptions'AutoHttpConfig
  = HttpProtocolOptions'AutoHttpConfig'_constructor {_HttpProtocolOptions'AutoHttpConfig'httpProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions),
                                                     _HttpProtocolOptions'AutoHttpConfig'http2ProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions),
                                                     _HttpProtocolOptions'AutoHttpConfig'http3ProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions),
                                                     _HttpProtocolOptions'AutoHttpConfig'alternateProtocolsCacheOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions),
                                                     _HttpProtocolOptions'AutoHttpConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpProtocolOptions'AutoHttpConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'AutoHttpConfig "httpProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'AutoHttpConfig'httpProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'AutoHttpConfig'httpProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'AutoHttpConfig "maybe'httpProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'AutoHttpConfig'httpProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'AutoHttpConfig'httpProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'AutoHttpConfig "http2ProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'AutoHttpConfig'http2ProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'AutoHttpConfig'http2ProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'AutoHttpConfig "maybe'http2ProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'AutoHttpConfig'http2ProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'AutoHttpConfig'http2ProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'AutoHttpConfig "http3ProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'AutoHttpConfig'http3ProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'AutoHttpConfig'http3ProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'AutoHttpConfig "maybe'http3ProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'AutoHttpConfig'http3ProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'AutoHttpConfig'http3ProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'AutoHttpConfig "alternateProtocolsCacheOptions" Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'AutoHttpConfig'alternateProtocolsCacheOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'AutoHttpConfig'alternateProtocolsCacheOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'AutoHttpConfig "maybe'alternateProtocolsCacheOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'AutoHttpConfig'alternateProtocolsCacheOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'AutoHttpConfig'alternateProtocolsCacheOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpProtocolOptions'AutoHttpConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.upstreams.http.v3.HttpProtocolOptions.AutoHttpConfig"
  packedMessageDescriptor _
    = "\n\
      \\SOAutoHttpConfig\DC2^\n\
      \\NAKhttp_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsR\DC3httpProtocolOptions\DC2`\n\
      \\SYNhttp2_protocol_options\CAN\STX \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptions\DC2`\n\
      \\SYNhttp3_protocol_options\CAN\ETX \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsR\DC4http3ProtocolOptions\DC2\DEL\n\
      \!alternate_protocols_cache_options\CAN\EOT \SOH(\v24.envoy.config.core.v3.AlternateProtocolsCacheOptionsR\RSalternateProtocolsCacheOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        httpProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions'AutoHttpConfig
        http2ProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http2_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions'AutoHttpConfig
        http3ProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http3_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http3ProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions'AutoHttpConfig
        alternateProtocolsCacheOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alternate_protocols_cache_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.AlternateProtocolsCacheOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'alternateProtocolsCacheOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions'AutoHttpConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, httpProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 2, http2ProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 3, http3ProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            alternateProtocolsCacheOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpProtocolOptions'AutoHttpConfig'_unknownFields
        (\ x__ y__
           -> x__ {_HttpProtocolOptions'AutoHttpConfig'_unknownFields = y__})
  defMessage
    = HttpProtocolOptions'AutoHttpConfig'_constructor
        {_HttpProtocolOptions'AutoHttpConfig'httpProtocolOptions = Prelude.Nothing,
         _HttpProtocolOptions'AutoHttpConfig'http2ProtocolOptions = Prelude.Nothing,
         _HttpProtocolOptions'AutoHttpConfig'http3ProtocolOptions = Prelude.Nothing,
         _HttpProtocolOptions'AutoHttpConfig'alternateProtocolsCacheOptions = Prelude.Nothing,
         _HttpProtocolOptions'AutoHttpConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpProtocolOptions'AutoHttpConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpProtocolOptions'AutoHttpConfig
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
                                       "http_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpProtocolOptions") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http2_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"http2ProtocolOptions") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http3_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"http3ProtocolOptions") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "alternate_protocols_cache_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"alternateProtocolsCacheOptions")
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
          (do loop Data.ProtoLens.defMessage) "AutoHttpConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'httpProtocolOptions") _x
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
                       (Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions") _x
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
                          (Data.ProtoLens.Field.field @"maybe'http3ProtocolOptions") _x
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
                             (Data.ProtoLens.Field.field
                                @"maybe'alternateProtocolsCacheOptions")
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData HttpProtocolOptions'AutoHttpConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpProtocolOptions'AutoHttpConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpProtocolOptions'AutoHttpConfig'httpProtocolOptions x__)
                (Control.DeepSeq.deepseq
                   (_HttpProtocolOptions'AutoHttpConfig'http2ProtocolOptions x__)
                   (Control.DeepSeq.deepseq
                      (_HttpProtocolOptions'AutoHttpConfig'http3ProtocolOptions x__)
                      (Control.DeepSeq.deepseq
                         (_HttpProtocolOptions'AutoHttpConfig'alternateProtocolsCacheOptions
                            x__)
                         ()))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'protocolConfig' @:: Lens' HttpProtocolOptions'ExplicitHttpConfig (Prelude.Maybe HttpProtocolOptions'ExplicitHttpConfig'ProtocolConfig)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'httpProtocolOptions' @:: Lens' HttpProtocolOptions'ExplicitHttpConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.httpProtocolOptions' @:: Lens' HttpProtocolOptions'ExplicitHttpConfig Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'http2ProtocolOptions' @:: Lens' HttpProtocolOptions'ExplicitHttpConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.http2ProtocolOptions' @:: Lens' HttpProtocolOptions'ExplicitHttpConfig Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'http3ProtocolOptions' @:: Lens' HttpProtocolOptions'ExplicitHttpConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.http3ProtocolOptions' @:: Lens' HttpProtocolOptions'ExplicitHttpConfig Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions@ -}
data HttpProtocolOptions'ExplicitHttpConfig
  = HttpProtocolOptions'ExplicitHttpConfig'_constructor {_HttpProtocolOptions'ExplicitHttpConfig'protocolConfig :: !(Prelude.Maybe HttpProtocolOptions'ExplicitHttpConfig'ProtocolConfig),
                                                         _HttpProtocolOptions'ExplicitHttpConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpProtocolOptions'ExplicitHttpConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data HttpProtocolOptions'ExplicitHttpConfig'ProtocolConfig
  = HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions !Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions |
    HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions !Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions |
    HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions !Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'ExplicitHttpConfig "maybe'protocolConfig" (Prelude.Maybe HttpProtocolOptions'ExplicitHttpConfig'ProtocolConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'ExplicitHttpConfig'protocolConfig
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'ExplicitHttpConfig'protocolConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'ExplicitHttpConfig "maybe'httpProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'ExplicitHttpConfig'protocolConfig
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'ExplicitHttpConfig'protocolConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions y__))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'ExplicitHttpConfig "httpProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'ExplicitHttpConfig'protocolConfig
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'ExplicitHttpConfig'protocolConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'ExplicitHttpConfig "maybe'http2ProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'ExplicitHttpConfig'protocolConfig
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'ExplicitHttpConfig'protocolConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions y__))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'ExplicitHttpConfig "http2ProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'ExplicitHttpConfig'protocolConfig
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'ExplicitHttpConfig'protocolConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'ExplicitHttpConfig "maybe'http3ProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'ExplicitHttpConfig'protocolConfig
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'ExplicitHttpConfig'protocolConfig = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions y__))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'ExplicitHttpConfig "http3ProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'ExplicitHttpConfig'protocolConfig
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'ExplicitHttpConfig'protocolConfig = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message HttpProtocolOptions'ExplicitHttpConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.upstreams.http.v3.HttpProtocolOptions.ExplicitHttpConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC2ExplicitHttpConfig\DC2`\n\
      \\NAKhttp_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsH\NULR\DC3httpProtocolOptions\DC2b\n\
      \\SYNhttp2_protocol_options\CAN\STX \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsH\NULR\DC4http2ProtocolOptions\DC2b\n\
      \\SYNhttp3_protocol_options\CAN\ETX \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsH\NULR\DC4http3ProtocolOptionsB\SYN\n\
      \\SIprotocol_config\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        httpProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions'ExplicitHttpConfig
        http2ProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http2_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions'ExplicitHttpConfig
        http3ProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http3_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http3ProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions'ExplicitHttpConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, httpProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 2, http2ProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 3, http3ProtocolOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpProtocolOptions'ExplicitHttpConfig'_unknownFields
        (\ x__ y__
           -> x__
                {_HttpProtocolOptions'ExplicitHttpConfig'_unknownFields = y__})
  defMessage
    = HttpProtocolOptions'ExplicitHttpConfig'_constructor
        {_HttpProtocolOptions'ExplicitHttpConfig'protocolConfig = Prelude.Nothing,
         _HttpProtocolOptions'ExplicitHttpConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpProtocolOptions'ExplicitHttpConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpProtocolOptions'ExplicitHttpConfig
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
                                       "http_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpProtocolOptions") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http2_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"http2ProtocolOptions") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http3_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"http3ProtocolOptions") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExplicitHttpConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'protocolConfig") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions v))
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
                (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions v))
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
                (Prelude.Just (HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
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
instance Control.DeepSeq.NFData HttpProtocolOptions'ExplicitHttpConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpProtocolOptions'ExplicitHttpConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpProtocolOptions'ExplicitHttpConfig'protocolConfig x__) ())
instance Control.DeepSeq.NFData HttpProtocolOptions'ExplicitHttpConfig'ProtocolConfig where
  rnf
    (HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions x__)
    = Control.DeepSeq.rnf x__
  rnf
    (HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions x__)
    = Control.DeepSeq.rnf x__
  rnf
    (HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions x__)
    = Control.DeepSeq.rnf x__
_HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions ::
  Data.ProtoLens.Prism.Prism' HttpProtocolOptions'ExplicitHttpConfig'ProtocolConfig Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions
_HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions
  = Data.ProtoLens.Prism.prism'
      HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions
      (\ p__
         -> case p__ of
              (HttpProtocolOptions'ExplicitHttpConfig'HttpProtocolOptions p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions ::
  Data.ProtoLens.Prism.Prism' HttpProtocolOptions'ExplicitHttpConfig'ProtocolConfig Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions
_HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions
  = Data.ProtoLens.Prism.prism'
      HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions
      (\ p__
         -> case p__ of
              (HttpProtocolOptions'ExplicitHttpConfig'Http2ProtocolOptions p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions ::
  Data.ProtoLens.Prism.Prism' HttpProtocolOptions'ExplicitHttpConfig'ProtocolConfig Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions
_HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions
  = Data.ProtoLens.Prism.prism'
      HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions
      (\ p__
         -> case p__ of
              (HttpProtocolOptions'ExplicitHttpConfig'Http3ProtocolOptions p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.httpProtocolOptions' @:: Lens' HttpProtocolOptions'UseDownstreamHttpConfig Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'httpProtocolOptions' @:: Lens' HttpProtocolOptions'UseDownstreamHttpConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.http2ProtocolOptions' @:: Lens' HttpProtocolOptions'UseDownstreamHttpConfig Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'http2ProtocolOptions' @:: Lens' HttpProtocolOptions'UseDownstreamHttpConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions)@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.http3ProtocolOptions' @:: Lens' HttpProtocolOptions'UseDownstreamHttpConfig Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions@
         * 'Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields.maybe'http3ProtocolOptions' @:: Lens' HttpProtocolOptions'UseDownstreamHttpConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions)@ -}
data HttpProtocolOptions'UseDownstreamHttpConfig
  = HttpProtocolOptions'UseDownstreamHttpConfig'_constructor {_HttpProtocolOptions'UseDownstreamHttpConfig'httpProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions),
                                                              _HttpProtocolOptions'UseDownstreamHttpConfig'http2ProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions),
                                                              _HttpProtocolOptions'UseDownstreamHttpConfig'http3ProtocolOptions :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions),
                                                              _HttpProtocolOptions'UseDownstreamHttpConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpProtocolOptions'UseDownstreamHttpConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'UseDownstreamHttpConfig "httpProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'UseDownstreamHttpConfig'httpProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'UseDownstreamHttpConfig'httpProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'UseDownstreamHttpConfig "maybe'httpProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'UseDownstreamHttpConfig'httpProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'UseDownstreamHttpConfig'httpProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'UseDownstreamHttpConfig "http2ProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'UseDownstreamHttpConfig'http2ProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'UseDownstreamHttpConfig'http2ProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'UseDownstreamHttpConfig "maybe'http2ProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'UseDownstreamHttpConfig'http2ProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'UseDownstreamHttpConfig'http2ProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'UseDownstreamHttpConfig "http3ProtocolOptions" Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'UseDownstreamHttpConfig'http3ProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'UseDownstreamHttpConfig'http3ProtocolOptions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpProtocolOptions'UseDownstreamHttpConfig "maybe'http3ProtocolOptions" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpProtocolOptions'UseDownstreamHttpConfig'http3ProtocolOptions
           (\ x__ y__
              -> x__
                   {_HttpProtocolOptions'UseDownstreamHttpConfig'http3ProtocolOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpProtocolOptions'UseDownstreamHttpConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.upstreams.http.v3.HttpProtocolOptions.UseDownstreamHttpConfig"
  packedMessageDescriptor _
    = "\n\
      \\ETBUseDownstreamHttpConfig\DC2^\n\
      \\NAKhttp_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsR\DC3httpProtocolOptions\DC2`\n\
      \\SYNhttp2_protocol_options\CAN\STX \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptions\DC2`\n\
      \\SYNhttp3_protocol_options\CAN\ETX \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsR\DC4http3ProtocolOptions"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        httpProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http1ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'httpProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions'UseDownstreamHttpConfig
        http2ProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http2_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http2ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions'UseDownstreamHttpConfig
        http3ProtocolOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "http3_protocol_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Protocol.Http3ProtocolOptions)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'http3ProtocolOptions")) ::
              Data.ProtoLens.FieldDescriptor HttpProtocolOptions'UseDownstreamHttpConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, httpProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 2, http2ProtocolOptions__field_descriptor),
           (Data.ProtoLens.Tag 3, http3ProtocolOptions__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpProtocolOptions'UseDownstreamHttpConfig'_unknownFields
        (\ x__ y__
           -> x__
                {_HttpProtocolOptions'UseDownstreamHttpConfig'_unknownFields = y__})
  defMessage
    = HttpProtocolOptions'UseDownstreamHttpConfig'_constructor
        {_HttpProtocolOptions'UseDownstreamHttpConfig'httpProtocolOptions = Prelude.Nothing,
         _HttpProtocolOptions'UseDownstreamHttpConfig'http2ProtocolOptions = Prelude.Nothing,
         _HttpProtocolOptions'UseDownstreamHttpConfig'http3ProtocolOptions = Prelude.Nothing,
         _HttpProtocolOptions'UseDownstreamHttpConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpProtocolOptions'UseDownstreamHttpConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser HttpProtocolOptions'UseDownstreamHttpConfig
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
                                       "http_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"httpProtocolOptions") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http2_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"http2ProtocolOptions") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "http3_protocol_options"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"http3ProtocolOptions") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "UseDownstreamHttpConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'httpProtocolOptions") _x
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
                       (Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions") _x
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
                          (Data.ProtoLens.Field.field @"maybe'http3ProtocolOptions") _x
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
instance Control.DeepSeq.NFData HttpProtocolOptions'UseDownstreamHttpConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpProtocolOptions'UseDownstreamHttpConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpProtocolOptions'UseDownstreamHttpConfig'httpProtocolOptions
                   x__)
                (Control.DeepSeq.deepseq
                   (_HttpProtocolOptions'UseDownstreamHttpConfig'http2ProtocolOptions
                      x__)
                   (Control.DeepSeq.deepseq
                      (_HttpProtocolOptions'UseDownstreamHttpConfig'http3ProtocolOptions
                         x__)
                      ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \>envoy/extensions/upstreams/http/v3/http_protocol_options.proto\DC2\"envoy.extensions.upstreams.http.v3\SUB#envoy/config/core/v3/protocol.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\240\r\n\
    \\DC3HttpProtocolOptions\DC2j\n\
    \\FScommon_http_protocol_options\CAN\SOH \SOH(\v2).envoy.config.core.v3.HttpProtocolOptionsR\EMcommonHttpProtocolOptions\DC2v\n\
    \\RSupstream_http_protocol_options\CAN\STX \SOH(\v21.envoy.config.core.v3.UpstreamHttpProtocolOptionsR\ESCupstreamHttpProtocolOptions\DC2~\n\
    \\DC4explicit_http_config\CAN\ETX \SOH(\v2J.envoy.extensions.upstreams.http.v3.HttpProtocolOptions.ExplicitHttpConfigH\NULR\DC2explicitHttpConfig\DC2\150\SOH\n\
    \\RSuse_downstream_protocol_config\CAN\EOT \SOH(\v2O.envoy.extensions.upstreams.http.v3.HttpProtocolOptions.UseDownstreamHttpConfigH\NULR\ESCuseDownstreamProtocolConfig\DC2i\n\
    \\vauto_config\CAN\ENQ \SOH(\v2F.envoy.extensions.upstreams.http.v3.HttpProtocolOptions.AutoHttpConfigH\NULR\n\
    \autoConfig\SUB\214\STX\n\
    \\DC2ExplicitHttpConfig\DC2`\n\
    \\NAKhttp_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsH\NULR\DC3httpProtocolOptions\DC2b\n\
    \\SYNhttp2_protocol_options\CAN\STX \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsH\NULR\DC4http2ProtocolOptions\DC2b\n\
    \\SYNhttp3_protocol_options\CAN\ETX \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsH\NULR\DC4http3ProtocolOptionsB\SYN\n\
    \\SIprotocol_config\DC2\ETX\248B\SOH\SUB\189\STX\n\
    \\ETBUseDownstreamHttpConfig\DC2^\n\
    \\NAKhttp_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsR\DC3httpProtocolOptions\DC2`\n\
    \\SYNhttp2_protocol_options\CAN\STX \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptions\DC2`\n\
    \\SYNhttp3_protocol_options\CAN\ETX \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsR\DC4http3ProtocolOptions\SUB\181\ETX\n\
    \\SOAutoHttpConfig\DC2^\n\
    \\NAKhttp_protocol_options\CAN\SOH \SOH(\v2*.envoy.config.core.v3.Http1ProtocolOptionsR\DC3httpProtocolOptions\DC2`\n\
    \\SYNhttp2_protocol_options\CAN\STX \SOH(\v2*.envoy.config.core.v3.Http2ProtocolOptionsR\DC4http2ProtocolOptions\DC2`\n\
    \\SYNhttp3_protocol_options\CAN\ETX \SOH(\v2*.envoy.config.core.v3.Http3ProtocolOptionsR\DC4http3ProtocolOptions\DC2\DEL\n\
    \!alternate_protocols_cache_options\CAN\EOT \SOH(\v24.envoy.config.core.v3.AlternateProtocolsCacheOptionsR\RSalternateProtocolsCacheOptionsB \n\
    \\EMupstream_protocol_options\DC2\ETX\248B\SOHBV\n\
    \0io.envoyproxy.envoy.extensions.upstreams.http.v3B\CANHttpProtocolOptionsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\194+\n\
    \\a\DC2\ENQ\NUL\NUL\147\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL+\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL-\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NULI\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NULI\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL9\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL9\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\f\NULF\n\
    \\206\f\n\
    \\STX\EOT\NUL\DC2\ENQ;\NUL\147\SOH\SOH\SUB\218\v HttpProtocolOptions specifies Http upstream protocol options. This object\n\
    \ is used in\n\
    \ :ref:`typed_extension_protocol_options<envoy_v3_api_field_config.cluster.v3.Cluster.typed_extension_protocol_options>`,\n\
    \ keyed by the name `envoy.extensions.upstreams.http.v3.HttpProtocolOptions`.\n\
    \\n\
    \ This controls what protocol(s) should be used for upstream and how said protocol(s) are configured.\n\
    \\n\
    \ This replaces the prior pattern of explicit protocol configuration directly\n\
    \ in the cluster. So a configuration like this, explicitly configuring the use of HTTP/2 upstream:\n\
    \\n\
    \ .. code::\n\
    \\n\
    \   clusters:\n\
    \     - name: some_service\n\
    \       connect_timeout: 5s\n\
    \       upstream_http_protocol_options:\n\
    \         auto_sni: true\n\
    \       common_http_protocol_options:\n\
    \         idle_timeout: 1s\n\
    \       http2_protocol_options:\n\
    \         max_concurrent_streams: 100\n\
    \        .... [further cluster config]\n\
    \\n\
    \ Would now look like this:\n\
    \\n\
    \ .. code::\n\
    \\n\
    \   clusters:\n\
    \     - name: some_service\n\
    \       connect_timeout: 5s\n\
    \       typed_extension_protocol_options:\n\
    \         envoy.extensions.upstreams.http.v3.HttpProtocolOptions:\n\
    \           \"@type\": type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions\n\
    \           upstream_http_protocol_options:\n\
    \             auto_sni: true\n\
    \           common_http_protocol_options:\n\
    \             idle_timeout: 1s\n\
    \           explicit_http_config:\n\
    \             http2_protocol_options:\n\
    \               max_concurrent_streams: 100\n\
    \        .... [further cluster config]\n\
    \ [#next-free-field: 6]\n\
    \2d [#protodoc-title: HTTP Protocol Options]\n\
    \ [#extension: envoy.upstreams.http.http_protocol_options]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX;\b\ESC\n\
    \\186\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT>\STXK\ETX\SUB\171\SOH If this is used, the cluster will only operate on one of the possible upstream protocols.\n\
    \ Note that HTTP/2 or above should generally be used for upstream gRPC clusters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX>\n\
    \\FS\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOT?\EOTJ\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX?\n\
    \\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\STX\DC2\ETX@\ACK(\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\b\NUL\STX\175\b\DC2\ETX@\ACK(\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXB\ACKD\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETXB\ACK)\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXB*?\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXBBC\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETXD\ACKE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETXD\ACK)\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETXD*@\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETXDCD\n\
    \\159\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETXI\ACKE\SUB\143\SOH .. warning::\n\
    \   QUIC support is currently alpha and should be used with caution. Please\n\
    \   see :ref:`here <arch_overview_http3>` for details.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETXI\ACK)\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETXI*@\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETXICD\n\
    \\161\SOH\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOTO\STXX\ETX\SUB\146\SOH If this is used, the cluster can use either of the configured protocols, and\n\
    \ will use whichever protocol was used by the downstream connection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETXO\n\
    \!\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETXP\EOTB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETXP\EOT'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXP(=\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXP@A\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETXR\EOTC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ACK\DC2\ETXR\EOT'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETXR(>\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETXRAB\n\
    \\159\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\ETXW\EOTC\SUB\143\SOH .. warning::\n\
    \   QUIC support is currently alpha and should be used with caution. Please\n\
    \   see :ref:`here <arch_overview_http3>` for details.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ACK\DC2\ETXW\EOT'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\ETXW(>\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\ETXWAB\n\
    \\149\ENQ\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\EOTc\STX|\ETX\SUB\134\ENQ If this is used, the cluster can use either HTTP/1 or HTTP/2, and will use whichever\n\
    \ protocol is negotiated by ALPN with the upstream.\n\
    \ Clusters configured with *AutoHttpConfig* will use the highest available\n\
    \ protocol; HTTP/2 if supported, otherwise HTTP/1.\n\
    \ If the upstream does not support ALPN, *AutoHttpConfig* will fail over to HTTP/1.\n\
    \ This can only be used with transport sockets which support ALPN. Using a\n\
    \ transport socket which does not support ALPN will result in configuration\n\
    \ failure. The transport layer may be configured with custom ALPN, but the default ALPN\n\
    \ for the cluster (or if custom ALPN fails) will be \"h2,http/1.1\".\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETXc\n\
    \\CAN\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\ETXd\EOTB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ACK\DC2\ETXd\EOT'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETXd(=\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETXd@A\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\ETXf\EOTC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ACK\DC2\ETXf\EOT'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\ETXf(>\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\ETXfAB\n\
    \\181\EOT\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\ETXs\EOTC\SUB\165\EOT Unlike HTTP/1 and HTTP/2, HTTP/3 will not be configured unless it is\n\
    \ present, and (soon) only if there is an indication of server side\n\
    \ support.\n\
    \ See :ref:`here <arch_overview_http3_upstream>` for more information on\n\
    \ when HTTP/3 will be used, and when Envoy will fail over to TCP.\n\
    \\n\
    \ .. warning::\n\
    \   QUIC support is currently alpha and should be used with caution. Please\n\
    \   see :ref:`here <arch_overview_http3>` for details.\n\
    \   AutoHttpConfig config is undergoing especially rapid change and as it\n\
    \   is alpha is not guaranteed to be API-stable.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ACK\DC2\ETXs\EOT'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\ETXs(>\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\ETXsAB\n\
    \\230\STX\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\ETX{\EOTX\SUB\214\STX [#not-implemented-hide:]\n\
    \ The presence of alternate protocols cache options causes the use of the\n\
    \ alternate protocols cache, which is responsible for parsing and caching\n\
    \ HTTP Alt-Svc headers. This enables the use of HTTP/3 for origins that\n\
    \ advertise supporting it.\n\
    \ TODO(RyanTheOptimist): Make this field required when HTTP/3 is enabled.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ACK\DC2\ETX{\EOT1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\ETX{2S\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\ETX{VW\n\
    \D\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\DEL\STXF\SUB7 This contains options common across HTTP/1 and HTTP/2\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\DEL\STX$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\DEL%A\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\DELDE\n\
    \V\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\130\SOH\STXP\SUBH This contains common protocol options which are only applied upstream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\EOT\130\SOH\STX,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\130\SOH-K\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\130\SOHNO\n\
    \H\n\
    \\EOT\EOT\NUL\b\NUL\DC2\ACK\133\SOH\STX\146\SOH\ETX\SUB8 This controls the actual protocol to be used upstream.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\EOT\133\SOH\b!\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\EOT\134\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\EOT\134\SOH\EOT&\n\
    \\167\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\138\SOH\EOT0\SUB\152\SOH To explicitly configure either HTTP/1 or HTTP/2 (but not both!) use *explicit_http_config*.\n\
    \ If the *explicit_http_config* is empty, HTTP/1.1 is used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\EOT\138\SOH\EOT\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\138\SOH\ETB+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\EOT\138\SOH./\n\
    \i\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\142\SOH\EOT?\SUB[ This allows switching on protocol based on what protocol the downstream\n\
    \ connection used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\EOT\142\SOH\EOT\ESC\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\142\SOH\FS:\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\EOT\142\SOH=>\n\
    \?\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\145\SOH\EOT#\SUB1 This allows switching on protocol based on ALPN\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\EOT\145\SOH\EOT\DC2\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\145\SOH\DC3\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\EOT\145\SOH!\"b\ACKproto3"