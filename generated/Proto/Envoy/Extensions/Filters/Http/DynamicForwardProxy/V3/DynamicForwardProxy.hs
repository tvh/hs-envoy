{- This file was auto-generated from envoy/extensions/filters/http/dynamic_forward_proxy/v3/dynamic_forward_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.DynamicForwardProxy.V3.DynamicForwardProxy (
        FilterConfig(), PerRouteConfig(),
        PerRouteConfig'HostRewriteSpecifier(..),
        _PerRouteConfig'HostRewriteLiteral,
        _PerRouteConfig'HostRewriteHeader
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
import qualified Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.DynamicForwardProxy.V3.DynamicForwardProxy_Fields.dnsCacheConfig' @:: Lens' FilterConfig Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.DynamicForwardProxy.V3.DynamicForwardProxy_Fields.maybe'dnsCacheConfig' @:: Lens' FilterConfig (Prelude.Maybe Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig)@ -}
data FilterConfig
  = FilterConfig'_constructor {_FilterConfig'dnsCacheConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig),
                               _FilterConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FilterConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FilterConfig "dnsCacheConfig" Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'dnsCacheConfig
           (\ x__ y__ -> x__ {_FilterConfig'dnsCacheConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FilterConfig "maybe'dnsCacheConfig" (Prelude.Maybe Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FilterConfig'dnsCacheConfig
           (\ x__ y__ -> x__ {_FilterConfig'dnsCacheConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message FilterConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.dynamic_forward_proxy.v3.FilterConfig"
  packedMessageDescriptor _
    = "\n\
      \\fFilterConfig\DC2t\n\
      \\DLEdns_cache_config\CAN\SOH \SOH(\v2@.envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheConfigR\SOdnsCacheConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH:J\154\197\136\RSE\n\
      \Cenvoy.config.filter.http.dynamic_forward_proxy.v2alpha.FilterConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dnsCacheConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dns_cache_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache.DnsCacheConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dnsCacheConfig")) ::
              Data.ProtoLens.FieldDescriptor FilterConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dnsCacheConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FilterConfig'_unknownFields
        (\ x__ y__ -> x__ {_FilterConfig'_unknownFields = y__})
  defMessage
    = FilterConfig'_constructor
        {_FilterConfig'dnsCacheConfig = Prelude.Nothing,
         _FilterConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FilterConfig -> Data.ProtoLens.Encoding.Bytes.Parser FilterConfig
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
                                       "dns_cache_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dnsCacheConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FilterConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'dnsCacheConfig") _x
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
instance Control.DeepSeq.NFData FilterConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FilterConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FilterConfig'dnsCacheConfig x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.DynamicForwardProxy.V3.DynamicForwardProxy_Fields.maybe'hostRewriteSpecifier' @:: Lens' PerRouteConfig (Prelude.Maybe PerRouteConfig'HostRewriteSpecifier)@
         * 'Proto.Envoy.Extensions.Filters.Http.DynamicForwardProxy.V3.DynamicForwardProxy_Fields.maybe'hostRewriteLiteral' @:: Lens' PerRouteConfig (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.DynamicForwardProxy.V3.DynamicForwardProxy_Fields.hostRewriteLiteral' @:: Lens' PerRouteConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.DynamicForwardProxy.V3.DynamicForwardProxy_Fields.maybe'hostRewriteHeader' @:: Lens' PerRouteConfig (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Extensions.Filters.Http.DynamicForwardProxy.V3.DynamicForwardProxy_Fields.hostRewriteHeader' @:: Lens' PerRouteConfig Data.Text.Text@ -}
data PerRouteConfig
  = PerRouteConfig'_constructor {_PerRouteConfig'hostRewriteSpecifier :: !(Prelude.Maybe PerRouteConfig'HostRewriteSpecifier),
                                 _PerRouteConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerRouteConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PerRouteConfig'HostRewriteSpecifier
  = PerRouteConfig'HostRewriteLiteral !Data.Text.Text |
    PerRouteConfig'HostRewriteHeader !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PerRouteConfig "maybe'hostRewriteSpecifier" (Prelude.Maybe PerRouteConfig'HostRewriteSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'hostRewriteSpecifier
           (\ x__ y__ -> x__ {_PerRouteConfig'hostRewriteSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerRouteConfig "maybe'hostRewriteLiteral" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'hostRewriteSpecifier
           (\ x__ y__ -> x__ {_PerRouteConfig'hostRewriteSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerRouteConfig'HostRewriteLiteral x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerRouteConfig'HostRewriteLiteral y__))
instance Data.ProtoLens.Field.HasField PerRouteConfig "hostRewriteLiteral" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'hostRewriteSpecifier
           (\ x__ y__ -> x__ {_PerRouteConfig'hostRewriteSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerRouteConfig'HostRewriteLiteral x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerRouteConfig'HostRewriteLiteral y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField PerRouteConfig "maybe'hostRewriteHeader" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'hostRewriteSpecifier
           (\ x__ y__ -> x__ {_PerRouteConfig'hostRewriteSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerRouteConfig'HostRewriteHeader x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerRouteConfig'HostRewriteHeader y__))
instance Data.ProtoLens.Field.HasField PerRouteConfig "hostRewriteHeader" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerRouteConfig'hostRewriteSpecifier
           (\ x__ y__ -> x__ {_PerRouteConfig'hostRewriteSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerRouteConfig'HostRewriteHeader x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerRouteConfig'HostRewriteHeader y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message PerRouteConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.dynamic_forward_proxy.v3.PerRouteConfig"
  packedMessageDescriptor _
    = "\n\
      \\SOPerRouteConfig\DC22\n\
      \\DC4host_rewrite_literal\CAN\SOH \SOH(\tH\NULR\DC2hostRewriteLiteral\DC20\n\
      \\DC3host_rewrite_header\CAN\STX \SOH(\tH\NULR\DC1hostRewriteHeaderB\CAN\n\
      \\SYNhost_rewrite_specifier:L\154\197\136\RSG\n\
      \Eenvoy.config.filter.http.dynamic_forward_proxy.v2alpha.PerRouteConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        hostRewriteLiteral__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_rewrite_literal"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hostRewriteLiteral")) ::
              Data.ProtoLens.FieldDescriptor PerRouteConfig
        hostRewriteHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "host_rewrite_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hostRewriteHeader")) ::
              Data.ProtoLens.FieldDescriptor PerRouteConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, hostRewriteLiteral__field_descriptor),
           (Data.ProtoLens.Tag 2, hostRewriteHeader__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerRouteConfig'_unknownFields
        (\ x__ y__ -> x__ {_PerRouteConfig'_unknownFields = y__})
  defMessage
    = PerRouteConfig'_constructor
        {_PerRouteConfig'hostRewriteSpecifier = Prelude.Nothing,
         _PerRouteConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerRouteConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser PerRouteConfig
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
                                       "host_rewrite_literal"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hostRewriteLiteral") y x)
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
                                       "host_rewrite_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hostRewriteHeader") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PerRouteConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'hostRewriteSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (PerRouteConfig'HostRewriteLiteral v))
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
                (Prelude.Just (PerRouteConfig'HostRewriteHeader v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
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
instance Control.DeepSeq.NFData PerRouteConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PerRouteConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PerRouteConfig'hostRewriteSpecifier x__) ())
instance Control.DeepSeq.NFData PerRouteConfig'HostRewriteSpecifier where
  rnf (PerRouteConfig'HostRewriteLiteral x__)
    = Control.DeepSeq.rnf x__
  rnf (PerRouteConfig'HostRewriteHeader x__)
    = Control.DeepSeq.rnf x__
_PerRouteConfig'HostRewriteLiteral ::
  Data.ProtoLens.Prism.Prism' PerRouteConfig'HostRewriteSpecifier Data.Text.Text
_PerRouteConfig'HostRewriteLiteral
  = Data.ProtoLens.Prism.prism'
      PerRouteConfig'HostRewriteLiteral
      (\ p__
         -> case p__ of
              (PerRouteConfig'HostRewriteLiteral p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PerRouteConfig'HostRewriteHeader ::
  Data.ProtoLens.Prism.Prism' PerRouteConfig'HostRewriteSpecifier Data.Text.Text
_PerRouteConfig'HostRewriteHeader
  = Data.ProtoLens.Prism.prism'
      PerRouteConfig'HostRewriteHeader
      (\ p__
         -> case p__ of
              (PerRouteConfig'HostRewriteHeader p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Renvoy/extensions/filters/http/dynamic_forward_proxy/v3/dynamic_forward_proxy.proto\DC26envoy.extensions.filters.http.dynamic_forward_proxy.v3\SUB@envoy/extensions/common/dynamic_forward_proxy/v3/dns_cache.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\208\SOH\n\
    \\fFilterConfig\DC2t\n\
    \\DLEdns_cache_config\CAN\SOH \SOH(\v2@.envoy.extensions.common.dynamic_forward_proxy.v3.DnsCacheConfigR\SOdnsCacheConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH:J\154\197\136\RSE\n\
    \Cenvoy.config.filter.http.dynamic_forward_proxy.v2alpha.FilterConfig\"\222\SOH\n\
    \\SOPerRouteConfig\DC22\n\
    \\DC4host_rewrite_literal\CAN\SOH \SOH(\tH\NULR\DC2hostRewriteLiteral\DC20\n\
    \\DC3host_rewrite_header\CAN\STX \SOH(\tH\NULR\DC1hostRewriteHeaderB\CAN\n\
    \\SYNhost_rewrite_specifier:L\154\197\136\RSG\n\
    \Eenvoy.config.filter.http.dynamic_forward_proxy.v2alpha.PerRouteConfigBj\n\
    \Dio.envoyproxy.envoy.extensions.filters.http.dynamic_forward_proxy.v3B\CANDynamicForwardProxyProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\157\DC2\n\
    \\ACK\DC2\EOT\NUL\NUL?\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL?\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NULJ\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL]\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\n\
    \\NUL]\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL9\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\v\NUL9\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\f\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \\146\STX\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL\GS\SOH\SUB\217\SOH Configuration for the dynamic forward proxy HTTP filter. See the :ref:`architecture overview\n\
    \ <arch_overview_http_dynamic_forward_proxy>` for more information.\n\
    \ [#extension: envoy.filters.http.dynamic_forward_proxy]\n\
    \2* [#protodoc-title: Dynamic forward proxy]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\DC4\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\NAK\STX\SYNL\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\NAK\STX\SYNL\n\
    \\153\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\ESC\STX\FS4\SUB\138\STX The DNS cache configuration that the filter will attach to. Note this configuration must\n\
    \ match that of associated :ref:`dynamic forward proxy cluster configuration\n\
    \ <envoy_v3_api_field_extensions.clusters.dynamic_forward_proxy.v3.ClusterConfig.dns_cache_config>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\ESC\STX0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC1A\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESCDE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\FS\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\FS\a2\n\
    \P\n\
    \\STX\EOT\SOH\DC2\EOT \NUL?\SOH\SUBD Per route Configuration for the dynamic forward proxy HTTP filter.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX \b\SYN\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT!\STX\"N\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT!\STX\"N\n\
    \\f\n\
    \\EOT\EOT\SOH\b\NUL\DC2\EOT$\STX>\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\ETX$\b\RS\n\
    \\192\EOT\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX.\EOT$\SUB\178\EOT Indicates that before DNS lookup, the host header will be swapped with\n\
    \ this value. If not set or empty, the original host header value\n\
    \ will be used and no rewrite will happen.\n\
    \\n\
    \ Note: this rewrite affects both DNS lookup and host header forwarding. However, this\n\
    \ option shouldn't be used with\n\
    \ :ref:`HCM host rewrite <envoy_v3_api_field_config.route.v3.RouteAction.host_rewrite_literal>` given that the\n\
    \ value set here would be used for DNS lookups whereas the value set in the HCM would be used\n\
    \ for host header forwarding which is not the desired outcome.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX.\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX.\v\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX.\"#\n\
    \\165\ENQ\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX=\EOT#\SUB\151\ENQ Indicates that before DNS lookup, the host header will be swapped with\n\
    \ the value of this header. If not set or empty, the original host header\n\
    \ value will be used and no rewrite will happen.\n\
    \\n\
    \ Note: this rewrite affects both DNS lookup and host header forwarding. However, this\n\
    \ option shouldn't be used with\n\
    \ :ref:`HCM host rewrite header <envoy_v3_api_field_config.route.v3.RouteAction.auto_host_rewrite>`\n\
    \ given that the value set here would be used for DNS lookups whereas the value set in the HCM\n\
    \ would be used for host header forwarding which is not the desired outcome.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   If the header appears multiple times only the first value is used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX=\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX=\v\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX=!\"b\ACKproto3"