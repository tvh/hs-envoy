{- This file was auto-generated from envoy/extensions/filters/network/thrift_proxy/filters/ratelimit/v3/rate_limit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.ThriftProxy.Filters.Ratelimit.V3.RateLimit (
        RateLimit()
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
import qualified Proto.Envoy.Config.Ratelimit.V3.Rls
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.Filters.Ratelimit.V3.RateLimit_Fields.domain' @:: Lens' RateLimit Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.Filters.Ratelimit.V3.RateLimit_Fields.stage' @:: Lens' RateLimit Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.Filters.Ratelimit.V3.RateLimit_Fields.timeout' @:: Lens' RateLimit Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.Filters.Ratelimit.V3.RateLimit_Fields.maybe'timeout' @:: Lens' RateLimit (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.Filters.Ratelimit.V3.RateLimit_Fields.failureModeDeny' @:: Lens' RateLimit Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.Filters.Ratelimit.V3.RateLimit_Fields.rateLimitService' @:: Lens' RateLimit Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig@
         * 'Proto.Envoy.Extensions.Filters.Network.ThriftProxy.Filters.Ratelimit.V3.RateLimit_Fields.maybe'rateLimitService' @:: Lens' RateLimit (Prelude.Maybe Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig)@ -}
data RateLimit
  = RateLimit'_constructor {_RateLimit'domain :: !Data.Text.Text,
                            _RateLimit'stage :: !Data.Word.Word32,
                            _RateLimit'timeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                            _RateLimit'failureModeDeny :: !Prelude.Bool,
                            _RateLimit'rateLimitService :: !(Prelude.Maybe Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig),
                            _RateLimit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimit "domain" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'domain (\ x__ y__ -> x__ {_RateLimit'domain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimit "stage" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'stage (\ x__ y__ -> x__ {_RateLimit'stage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimit "timeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'timeout (\ x__ y__ -> x__ {_RateLimit'timeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimit "maybe'timeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'timeout (\ x__ y__ -> x__ {_RateLimit'timeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimit "failureModeDeny" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'failureModeDeny
           (\ x__ y__ -> x__ {_RateLimit'failureModeDeny = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimit "rateLimitService" Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'rateLimitService
           (\ x__ y__ -> x__ {_RateLimit'rateLimitService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimit "maybe'rateLimitService" (Prelude.Maybe Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'rateLimitService
           (\ x__ y__ -> x__ {_RateLimit'rateLimitService = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimit where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.thrift_proxy.filters.ratelimit.v3.RateLimit"
  packedMessageDescriptor _
    = "\n\
      \\tRateLimit\DC2\US\n\
      \\ACKdomain\CAN\SOH \SOH(\tR\ACKdomainB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
      \\ENQstage\CAN\STX \SOH(\rR\ENQstageB\a\250B\EOT*\STX\CAN\n\
      \\DC23\n\
      \\atimeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\atimeout\DC2*\n\
      \\DC1failure_mode_deny\CAN\EOT \SOH(\bR\SIfailureModeDeny\DC2i\n\
      \\DC2rate_limit_service\CAN\ENQ \SOH(\v21.envoy.config.ratelimit.v3.RateLimitServiceConfigR\DLErateLimitServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH:?\154\197\136\RS:\n\
      \8envoy.config.filter.thrift.rate_limit.v2alpha1.RateLimit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        domain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "domain"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"domain")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
        stage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"stage")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
        timeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeout")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
        failureModeDeny__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failure_mode_deny"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"failureModeDeny")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
        rateLimitService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_limit_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rateLimitService")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, domain__field_descriptor),
           (Data.ProtoLens.Tag 2, stage__field_descriptor),
           (Data.ProtoLens.Tag 3, timeout__field_descriptor),
           (Data.ProtoLens.Tag 4, failureModeDeny__field_descriptor),
           (Data.ProtoLens.Tag 5, rateLimitService__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimit'_unknownFields
        (\ x__ y__ -> x__ {_RateLimit'_unknownFields = y__})
  defMessage
    = RateLimit'_constructor
        {_RateLimit'domain = Data.ProtoLens.fieldDefault,
         _RateLimit'stage = Data.ProtoLens.fieldDefault,
         _RateLimit'timeout = Prelude.Nothing,
         _RateLimit'failureModeDeny = Data.ProtoLens.fieldDefault,
         _RateLimit'rateLimitService = Prelude.Nothing,
         _RateLimit'_unknownFields = []}
  parseMessage
    = let
        loop :: RateLimit -> Data.ProtoLens.Encoding.Bytes.Parser RateLimit
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
                                       "domain"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"domain") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stage"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"stage") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timeout"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"timeout") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "failure_mode_deny"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failureModeDeny") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rate_limit_service"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rateLimitService") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RateLimit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"domain") _x
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
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"stage") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeout") _x
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
                               (Data.ProtoLens.Field.field @"failureModeDeny") _x
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
                                (Data.ProtoLens.Field.field @"maybe'rateLimitService") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData RateLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimit'domain x__)
                (Control.DeepSeq.deepseq
                   (_RateLimit'stage x__)
                   (Control.DeepSeq.deepseq
                      (_RateLimit'timeout x__)
                      (Control.DeepSeq.deepseq
                         (_RateLimit'failureModeDeny x__)
                         (Control.DeepSeq.deepseq (_RateLimit'rateLimitService x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Senvoy/extensions/filters/network/thrift_proxy/filters/ratelimit/v3/rate_limit.proto\DC2Benvoy.extensions.filters.network.thrift_proxy.filters.ratelimit.v3\SUB#envoy/config/ratelimit/v3/rls.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\216\STX\n\
    \\tRateLimit\DC2\US\n\
    \\ACKdomain\CAN\SOH \SOH(\tR\ACKdomainB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
    \\ENQstage\CAN\STX \SOH(\rR\ENQstageB\a\250B\EOT*\STX\CAN\n\
    \\DC23\n\
    \\atimeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\atimeout\DC2*\n\
    \\DC1failure_mode_deny\CAN\EOT \SOH(\bR\SIfailureModeDeny\DC2i\n\
    \\DC2rate_limit_service\CAN\ENQ \SOH(\v21.envoy.config.ratelimit.v3.RateLimitServiceConfigR\DLErateLimitServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH:?\154\197\136\RS:\n\
    \8envoy.config.filter.thrift.rate_limit.v2alpha1.RateLimitBl\n\
    \Pio.envoyproxy.envoy.extensions.filters.network.thrift_proxy.filters.ratelimit.v3B\SORateLimitProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\253\r\n\
    \\ACK\DC2\EOT\NUL\NUL7\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NULK\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL-\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULi\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULi\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\193\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NUL7\SOH\SUB\ETB [#next-free-field: 6]\n\
    \2\155\SOH [#protodoc-title: Rate limit]\n\
    \ Rate limit :ref:`configuration overview <config_thrift_filters_rate_limit>`.\n\
    \ [#extension: envoy.filters.thrift.ratelimit]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\DC1\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\ETB\STX\CANA\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ETB\STX\CANA\n\
    \N\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\ESC\STX=\SUBA The rate limit domain to use in the rate limit service request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\ESC\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\ESC\DC4<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\ESC\NAK;\n\
    \\207\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX&\STX9\SUB\193\ETX Specifies the rate limit configuration stage. Each configured rate limit filter performs a\n\
    \ rate limit check using descriptors configured in the\n\
    \ :ref:`envoy_v3_api_msg_extensions.filters.network.thrift_proxy.v3.RouteAction` for the request.\n\
    \ Only those entries with a matching stage number are used for a given filter. If not set, the\n\
    \ default stage number is 0.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \  The filter supports a range of 0 - 10 inclusively for stage numbers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX&\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX&\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX&\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX&\DC38\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\ENQ\DC2\ETX&\DC47\n\
    \n\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX*\STX'\SUBa The timeout in milliseconds for the rate limit service RPC. If not\n\
    \ set, this defaults to 20ms.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX*\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX*\ESC\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX*%&\n\
    \\248\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX0\STX\GS\SUB\234\SOH The filter's behaviour in case the rate limiting service does\n\
    \ not respond back. When it is set to true, Envoy will not allow traffic in case of\n\
    \ communication failure between rate limiting service and the proxy.\n\
    \ Defaults to false.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX0\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX0\a\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX0\ESC\FS\n\
    \\164\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT5\STX64\SUB\149\SOH Configuration for an external rate limit service provider. If not\n\
    \ specified, any calls to the rate limit service will immediately return\n\
    \ success.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX5\STX,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX5-?\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX5BC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\b\DC2\ETX6\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\EOT\b\175\b\DC1\DC2\ETX6\a2b\ACKproto3"