{- This file was auto-generated from envoy/extensions/filters/http/ratelimit/v3/rate_limit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit (
        RateLimit(), RateLimit'XRateLimitHeadersRFCVersion(..),
        RateLimit'XRateLimitHeadersRFCVersion(),
        RateLimit'XRateLimitHeadersRFCVersion'UnrecognizedValue,
        RateLimitPerRoute(), RateLimitPerRoute'VhRateLimitsOptions(..),
        RateLimitPerRoute'VhRateLimitsOptions(),
        RateLimitPerRoute'VhRateLimitsOptions'UnrecognizedValue
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
     
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.domain' @:: Lens' RateLimit Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.stage' @:: Lens' RateLimit Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.requestType' @:: Lens' RateLimit Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.timeout' @:: Lens' RateLimit Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.maybe'timeout' @:: Lens' RateLimit (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.failureModeDeny' @:: Lens' RateLimit Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.rateLimitedAsResourceExhausted' @:: Lens' RateLimit Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.rateLimitService' @:: Lens' RateLimit Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig@
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.maybe'rateLimitService' @:: Lens' RateLimit (Prelude.Maybe Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig)@
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.enableXRatelimitHeaders' @:: Lens' RateLimit RateLimit'XRateLimitHeadersRFCVersion@
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.disableXEnvoyRatelimitedHeader' @:: Lens' RateLimit Prelude.Bool@ -}
data RateLimit
  = RateLimit'_constructor {_RateLimit'domain :: !Data.Text.Text,
                            _RateLimit'stage :: !Data.Word.Word32,
                            _RateLimit'requestType :: !Data.Text.Text,
                            _RateLimit'timeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                            _RateLimit'failureModeDeny :: !Prelude.Bool,
                            _RateLimit'rateLimitedAsResourceExhausted :: !Prelude.Bool,
                            _RateLimit'rateLimitService :: !(Prelude.Maybe Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig),
                            _RateLimit'enableXRatelimitHeaders :: !RateLimit'XRateLimitHeadersRFCVersion,
                            _RateLimit'disableXEnvoyRatelimitedHeader :: !Prelude.Bool,
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
instance Data.ProtoLens.Field.HasField RateLimit "requestType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'requestType
           (\ x__ y__ -> x__ {_RateLimit'requestType = y__}))
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
instance Data.ProtoLens.Field.HasField RateLimit "rateLimitedAsResourceExhausted" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'rateLimitedAsResourceExhausted
           (\ x__ y__
              -> x__ {_RateLimit'rateLimitedAsResourceExhausted = y__}))
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
instance Data.ProtoLens.Field.HasField RateLimit "enableXRatelimitHeaders" RateLimit'XRateLimitHeadersRFCVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'enableXRatelimitHeaders
           (\ x__ y__ -> x__ {_RateLimit'enableXRatelimitHeaders = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimit "disableXEnvoyRatelimitedHeader" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'disableXEnvoyRatelimitedHeader
           (\ x__ y__
              -> x__ {_RateLimit'disableXEnvoyRatelimitedHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimit where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ratelimit.v3.RateLimit"
  packedMessageDescriptor _
    = "\n\
      \\tRateLimit\DC2\US\n\
      \\ACKdomain\CAN\SOH \SOH(\tR\ACKdomainB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
      \\ENQstage\CAN\STX \SOH(\rR\ENQstageB\a\250B\EOT*\STX\CAN\n\
      \\DC2D\n\
      \\frequest_type\CAN\ETX \SOH(\tR\vrequestTypeB!\250B\RSr\FSR\binternalR\bexternalR\EOTbothR\NUL\DC23\n\
      \\atimeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\atimeout\DC2*\n\
      \\DC1failure_mode_deny\CAN\ENQ \SOH(\bR\SIfailureModeDeny\DC2J\n\
      \\"rate_limited_as_resource_exhausted\CAN\ACK \SOH(\bR\RSrateLimitedAsResourceExhausted\DC2i\n\
      \\DC2rate_limit_service\CAN\a \SOH(\v21.envoy.config.ratelimit.v3.RateLimitServiceConfigR\DLErateLimitServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\152\SOH\n\
      \\SUBenable_x_ratelimit_headers\CAN\b \SOH(\SO2Q.envoy.extensions.filters.http.ratelimit.v3.RateLimit.XRateLimitHeadersRFCVersionR\ETBenableXRatelimitHeadersB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2J\n\
      \\"disable_x_envoy_ratelimited_header\CAN\t \SOH(\bR\RSdisableXEnvoyRatelimitedHeader\"<\n\
      \\ESCXRateLimitHeadersRFCVersion\DC2\a\n\
      \\ETXOFF\DLE\NUL\DC2\DC4\n\
      \\DLEDRAFT_VERSION_03\DLE\SOH:7\154\197\136\RS2\n\
      \0envoy.config.filter.http.rate_limit.v2.RateLimit"
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
        requestType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestType")) ::
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
        rateLimitedAsResourceExhausted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_limited_as_resource_exhausted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"rateLimitedAsResourceExhausted")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
        rateLimitService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_limit_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rateLimitService")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
        enableXRatelimitHeaders__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "enable_x_ratelimit_headers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimit'XRateLimitHeadersRFCVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"enableXRatelimitHeaders")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
        disableXEnvoyRatelimitedHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disable_x_envoy_ratelimited_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"disableXEnvoyRatelimitedHeader")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, domain__field_descriptor),
           (Data.ProtoLens.Tag 2, stage__field_descriptor),
           (Data.ProtoLens.Tag 3, requestType__field_descriptor),
           (Data.ProtoLens.Tag 4, timeout__field_descriptor),
           (Data.ProtoLens.Tag 5, failureModeDeny__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            rateLimitedAsResourceExhausted__field_descriptor),
           (Data.ProtoLens.Tag 7, rateLimitService__field_descriptor),
           (Data.ProtoLens.Tag 8, enableXRatelimitHeaders__field_descriptor),
           (Data.ProtoLens.Tag 9, 
            disableXEnvoyRatelimitedHeader__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimit'_unknownFields
        (\ x__ y__ -> x__ {_RateLimit'_unknownFields = y__})
  defMessage
    = RateLimit'_constructor
        {_RateLimit'domain = Data.ProtoLens.fieldDefault,
         _RateLimit'stage = Data.ProtoLens.fieldDefault,
         _RateLimit'requestType = Data.ProtoLens.fieldDefault,
         _RateLimit'timeout = Prelude.Nothing,
         _RateLimit'failureModeDeny = Data.ProtoLens.fieldDefault,
         _RateLimit'rateLimitedAsResourceExhausted = Data.ProtoLens.fieldDefault,
         _RateLimit'rateLimitService = Prelude.Nothing,
         _RateLimit'enableXRatelimitHeaders = Data.ProtoLens.fieldDefault,
         _RateLimit'disableXEnvoyRatelimitedHeader = Data.ProtoLens.fieldDefault,
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "request_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"requestType") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timeout"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"timeout") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "failure_mode_deny"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failureModeDeny") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rate_limited_as_resource_exhausted"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rateLimitedAsResourceExhausted")
                                     y
                                     x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rate_limit_service"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rateLimitService") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "enable_x_ratelimit_headers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"enableXRatelimitHeaders") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disable_x_envoy_ratelimited_header"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disableXEnvoyRatelimitedHeader")
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
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"requestType") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeout") _x
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
                                  (Data.ProtoLens.Field.field @"failureModeDeny") _x
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
                                     (Data.ProtoLens.Field.field @"rateLimitedAsResourceExhausted")
                                     _x
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
                                      (Data.ProtoLens.Field.field @"maybe'rateLimitService") _x
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
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"enableXRatelimitHeaders")
                                           _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral)
                                              Prelude.fromEnum
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field
                                                 @"disableXEnvoyRatelimitedHeader")
                                              _x
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
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
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
                      (_RateLimit'requestType x__)
                      (Control.DeepSeq.deepseq
                         (_RateLimit'timeout x__)
                         (Control.DeepSeq.deepseq
                            (_RateLimit'failureModeDeny x__)
                            (Control.DeepSeq.deepseq
                               (_RateLimit'rateLimitedAsResourceExhausted x__)
                               (Control.DeepSeq.deepseq
                                  (_RateLimit'rateLimitService x__)
                                  (Control.DeepSeq.deepseq
                                     (_RateLimit'enableXRatelimitHeaders x__)
                                     (Control.DeepSeq.deepseq
                                        (_RateLimit'disableXEnvoyRatelimitedHeader x__) ())))))))))
newtype RateLimit'XRateLimitHeadersRFCVersion'UnrecognizedValue
  = RateLimit'XRateLimitHeadersRFCVersion'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RateLimit'XRateLimitHeadersRFCVersion
  = RateLimit'OFF |
    RateLimit'DRAFT_VERSION_03 |
    RateLimit'XRateLimitHeadersRFCVersion'Unrecognized !RateLimit'XRateLimitHeadersRFCVersion'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RateLimit'XRateLimitHeadersRFCVersion where
  maybeToEnum 0 = Prelude.Just RateLimit'OFF
  maybeToEnum 1 = Prelude.Just RateLimit'DRAFT_VERSION_03
  maybeToEnum k
    = Prelude.Just
        (RateLimit'XRateLimitHeadersRFCVersion'Unrecognized
           (RateLimit'XRateLimitHeadersRFCVersion'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum RateLimit'OFF = "OFF"
  showEnum RateLimit'DRAFT_VERSION_03 = "DRAFT_VERSION_03"
  showEnum
    (RateLimit'XRateLimitHeadersRFCVersion'Unrecognized (RateLimit'XRateLimitHeadersRFCVersion'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "OFF" = Prelude.Just RateLimit'OFF
    | (Prelude.==) k "DRAFT_VERSION_03"
    = Prelude.Just RateLimit'DRAFT_VERSION_03
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RateLimit'XRateLimitHeadersRFCVersion where
  minBound = RateLimit'OFF
  maxBound = RateLimit'DRAFT_VERSION_03
instance Prelude.Enum RateLimit'XRateLimitHeadersRFCVersion where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum XRateLimitHeadersRFCVersion: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum RateLimit'OFF = 0
  fromEnum RateLimit'DRAFT_VERSION_03 = 1
  fromEnum
    (RateLimit'XRateLimitHeadersRFCVersion'Unrecognized (RateLimit'XRateLimitHeadersRFCVersion'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RateLimit'DRAFT_VERSION_03
    = Prelude.error
        "RateLimit'XRateLimitHeadersRFCVersion.succ: bad argument RateLimit'DRAFT_VERSION_03. This value would be out of bounds."
  succ RateLimit'OFF = RateLimit'DRAFT_VERSION_03
  succ (RateLimit'XRateLimitHeadersRFCVersion'Unrecognized _)
    = Prelude.error
        "RateLimit'XRateLimitHeadersRFCVersion.succ: bad argument: unrecognized value"
  pred RateLimit'OFF
    = Prelude.error
        "RateLimit'XRateLimitHeadersRFCVersion.pred: bad argument RateLimit'OFF. This value would be out of bounds."
  pred RateLimit'DRAFT_VERSION_03 = RateLimit'OFF
  pred (RateLimit'XRateLimitHeadersRFCVersion'Unrecognized _)
    = Prelude.error
        "RateLimit'XRateLimitHeadersRFCVersion.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RateLimit'XRateLimitHeadersRFCVersion where
  fieldDefault = RateLimit'OFF
instance Control.DeepSeq.NFData RateLimit'XRateLimitHeadersRFCVersion where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.Ratelimit.V3.RateLimit_Fields.vhRateLimits' @:: Lens' RateLimitPerRoute RateLimitPerRoute'VhRateLimitsOptions@ -}
data RateLimitPerRoute
  = RateLimitPerRoute'_constructor {_RateLimitPerRoute'vhRateLimits :: !RateLimitPerRoute'VhRateLimitsOptions,
                                    _RateLimitPerRoute'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitPerRoute where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitPerRoute "vhRateLimits" RateLimitPerRoute'VhRateLimitsOptions where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitPerRoute'vhRateLimits
           (\ x__ y__ -> x__ {_RateLimitPerRoute'vhRateLimits = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitPerRoute where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.ratelimit.v3.RateLimitPerRoute"
  packedMessageDescriptor _
    = "\n\
      \\DC1RateLimitPerRoute\DC2\129\SOH\n\
      \\SOvh_rate_limits\CAN\SOH \SOH(\SO2Q.envoy.extensions.filters.http.ratelimit.v3.RateLimitPerRoute.VhRateLimitsOptionsR\fvhRateLimitsB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"<\n\
      \\DC3VhRateLimitsOptions\DC2\f\n\
      \\bOVERRIDE\DLE\NUL\DC2\v\n\
      \\aINCLUDE\DLE\SOH\DC2\n\
      \\n\
      \\ACKIGNORE\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        vhRateLimits__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vh_rate_limits"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitPerRoute'VhRateLimitsOptions)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"vhRateLimits")) ::
              Data.ProtoLens.FieldDescriptor RateLimitPerRoute
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, vhRateLimits__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitPerRoute'_unknownFields
        (\ x__ y__ -> x__ {_RateLimitPerRoute'_unknownFields = y__})
  defMessage
    = RateLimitPerRoute'_constructor
        {_RateLimitPerRoute'vhRateLimits = Data.ProtoLens.fieldDefault,
         _RateLimitPerRoute'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitPerRoute
          -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitPerRoute
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
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "vh_rate_limits"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"vhRateLimits") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RateLimitPerRoute"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"vhRateLimits") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RateLimitPerRoute where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitPerRoute'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RateLimitPerRoute'vhRateLimits x__) ())
newtype RateLimitPerRoute'VhRateLimitsOptions'UnrecognizedValue
  = RateLimitPerRoute'VhRateLimitsOptions'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data RateLimitPerRoute'VhRateLimitsOptions
  = RateLimitPerRoute'OVERRIDE |
    RateLimitPerRoute'INCLUDE |
    RateLimitPerRoute'IGNORE |
    RateLimitPerRoute'VhRateLimitsOptions'Unrecognized !RateLimitPerRoute'VhRateLimitsOptions'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum RateLimitPerRoute'VhRateLimitsOptions where
  maybeToEnum 0 = Prelude.Just RateLimitPerRoute'OVERRIDE
  maybeToEnum 1 = Prelude.Just RateLimitPerRoute'INCLUDE
  maybeToEnum 2 = Prelude.Just RateLimitPerRoute'IGNORE
  maybeToEnum k
    = Prelude.Just
        (RateLimitPerRoute'VhRateLimitsOptions'Unrecognized
           (RateLimitPerRoute'VhRateLimitsOptions'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum RateLimitPerRoute'OVERRIDE = "OVERRIDE"
  showEnum RateLimitPerRoute'INCLUDE = "INCLUDE"
  showEnum RateLimitPerRoute'IGNORE = "IGNORE"
  showEnum
    (RateLimitPerRoute'VhRateLimitsOptions'Unrecognized (RateLimitPerRoute'VhRateLimitsOptions'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "OVERRIDE"
    = Prelude.Just RateLimitPerRoute'OVERRIDE
    | (Prelude.==) k "INCLUDE" = Prelude.Just RateLimitPerRoute'INCLUDE
    | (Prelude.==) k "IGNORE" = Prelude.Just RateLimitPerRoute'IGNORE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded RateLimitPerRoute'VhRateLimitsOptions where
  minBound = RateLimitPerRoute'OVERRIDE
  maxBound = RateLimitPerRoute'IGNORE
instance Prelude.Enum RateLimitPerRoute'VhRateLimitsOptions where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum VhRateLimitsOptions: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum RateLimitPerRoute'OVERRIDE = 0
  fromEnum RateLimitPerRoute'INCLUDE = 1
  fromEnum RateLimitPerRoute'IGNORE = 2
  fromEnum
    (RateLimitPerRoute'VhRateLimitsOptions'Unrecognized (RateLimitPerRoute'VhRateLimitsOptions'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ RateLimitPerRoute'IGNORE
    = Prelude.error
        "RateLimitPerRoute'VhRateLimitsOptions.succ: bad argument RateLimitPerRoute'IGNORE. This value would be out of bounds."
  succ RateLimitPerRoute'OVERRIDE = RateLimitPerRoute'INCLUDE
  succ RateLimitPerRoute'INCLUDE = RateLimitPerRoute'IGNORE
  succ (RateLimitPerRoute'VhRateLimitsOptions'Unrecognized _)
    = Prelude.error
        "RateLimitPerRoute'VhRateLimitsOptions.succ: bad argument: unrecognized value"
  pred RateLimitPerRoute'OVERRIDE
    = Prelude.error
        "RateLimitPerRoute'VhRateLimitsOptions.pred: bad argument RateLimitPerRoute'OVERRIDE. This value would be out of bounds."
  pred RateLimitPerRoute'INCLUDE = RateLimitPerRoute'OVERRIDE
  pred RateLimitPerRoute'IGNORE = RateLimitPerRoute'INCLUDE
  pred (RateLimitPerRoute'VhRateLimitsOptions'Unrecognized _)
    = Prelude.error
        "RateLimitPerRoute'VhRateLimitsOptions.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault RateLimitPerRoute'VhRateLimitsOptions where
  fieldDefault = RateLimitPerRoute'OVERRIDE
instance Control.DeepSeq.NFData RateLimitPerRoute'VhRateLimitsOptions where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \;envoy/extensions/filters/http/ratelimit/v3/rate_limit.proto\DC2*envoy.extensions.filters.http.ratelimit.v3\SUB#envoy/config/ratelimit/v3/rls.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\135\ACK\n\
    \\tRateLimit\DC2\US\n\
    \\ACKdomain\CAN\SOH \SOH(\tR\ACKdomainB\a\250B\EOTr\STX\DLE\SOH\DC2\GS\n\
    \\ENQstage\CAN\STX \SOH(\rR\ENQstageB\a\250B\EOT*\STX\CAN\n\
    \\DC2D\n\
    \\frequest_type\CAN\ETX \SOH(\tR\vrequestTypeB!\250B\RSr\FSR\binternalR\bexternalR\EOTbothR\NUL\DC23\n\
    \\atimeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\atimeout\DC2*\n\
    \\DC1failure_mode_deny\CAN\ENQ \SOH(\bR\SIfailureModeDeny\DC2J\n\
    \\"rate_limited_as_resource_exhausted\CAN\ACK \SOH(\bR\RSrateLimitedAsResourceExhausted\DC2i\n\
    \\DC2rate_limit_service\CAN\a \SOH(\v21.envoy.config.ratelimit.v3.RateLimitServiceConfigR\DLErateLimitServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\152\SOH\n\
    \\SUBenable_x_ratelimit_headers\CAN\b \SOH(\SO2Q.envoy.extensions.filters.http.ratelimit.v3.RateLimit.XRateLimitHeadersRFCVersionR\ETBenableXRatelimitHeadersB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2J\n\
    \\"disable_x_envoy_ratelimited_header\CAN\t \SOH(\bR\RSdisableXEnvoyRatelimitedHeader\"<\n\
    \\ESCXRateLimitHeadersRFCVersion\DC2\a\n\
    \\ETXOFF\DLE\NUL\DC2\DC4\n\
    \\DLEDRAFT_VERSION_03\DLE\SOH:7\154\197\136\RS2\n\
    \0envoy.config.filter.http.rate_limit.v2.RateLimit\"\213\SOH\n\
    \\DC1RateLimitPerRoute\DC2\129\SOH\n\
    \\SOvh_rate_limits\CAN\SOH \SOH(\SO2Q.envoy.extensions.filters.http.ratelimit.v3.RateLimitPerRoute.VhRateLimitsOptionsR\fvhRateLimitsB\b\250B\ENQ\130\SOH\STX\DLE\SOH\"<\n\
    \\DC3VhRateLimitsOptions\DC2\f\n\
    \\bOVERRIDE\DLE\NUL\DC2\v\n\
    \\aINCLUDE\DLE\SOH\DC2\n\
    \\n\
    \\ACKIGNORE\DLE\STXBT\n\
    \8io.envoyproxy.envoy.extensions.filters.http.ratelimit.v3B\SORateLimitProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\143'\n\
    \\ACK\DC2\EOT\NUL\NULy\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL3\n\
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
    \\SOH\b\DC2\ETX\f\NULQ\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULQ\n\
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
    \\190\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NULi\SOH\SUB\CAN [#next-free-field: 10]\n\
    \2\151\SOH [#protodoc-title: Rate limit]\n\
    \ Rate limit :ref:`configuration overview <config_http_filters_rate_limit>`.\n\
    \ [#extension: envoy.filters.http.ratelimit]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\DC1\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\ETB\STX\CAN9\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ETB\STX\CAN9\n\
    \S\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\ESC\STX!\ETX\SUBE Defines the version of the standard to use for X-RateLimit headers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\ESC\a\"\n\
    \.\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\GS\EOT\f\SUB\US X-RateLimit headers disabled.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\EOT\a\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\GS\n\
    \\v\n\
    \o\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX \EOT\EM\SUB` Use `draft RFC Version 03 <https://tools.ietf.org/id/draft-polli-ratelimit-headers-03.html>`_.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX \EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX \ETB\CAN\n\
    \P\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX$\STX=\SUBC The rate limit domain to use when calling the rate limit service.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX$\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX$\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX$\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX$\DC4<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX$\NAK;\n\
    \\225\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX,\STX9\SUB\211\SOH Specifies the rate limit configurations to be applied with the same\n\
    \ stage number. If not set, the default stage number is 0.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \  The filter supports a range of 0 - 10 inclusively for stage numbers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX,\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX,\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX,\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX,\DC38\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\ENQ\DC2\ETX,\DC47\n\
    \\195\ETX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT4\STX5T\SUB\180\ETX The type of requests the filter should apply to. The supported\n\
    \ types are *internal*, *external* or *both*. A request is considered internal if\n\
    \ :ref:`x-envoy-internal<config_http_conn_man_headers_x-envoy-internal>` is set to true. If\n\
    \ :ref:`x-envoy-internal<config_http_conn_man_headers_x-envoy-internal>` is not set or false, a\n\
    \ request is considered external. The filter defaults to *both*, and it will apply to all request\n\
    \ types.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX4\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX4\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX4\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX5\ACKS\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\SO\DC2\ETX5\aR\n\
    \n\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX9\STX'\SUBa The timeout in milliseconds for the rate limit service RPC. If not\n\
    \ set, this defaults to 20ms.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX9\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX9\ESC\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX9%&\n\
    \\228\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX>\STX\GS\SUB\214\SOH The filter's behaviour in case the rate limiting service does\n\
    \ not respond back. When it is set to true, Envoy will not allow traffic in case of\n\
    \ communication failure between rate limiting service and the proxy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX>\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX>\a\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX>\ESC\FS\n\
    \\209\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXC\STX.\SUB\195\SOH Specifies whether a `RESOURCE_EXHAUSTED` gRPC code must be returned instead\n\
    \ of the default `UNAVAILABLE` gRPC code for a rate limited gRPC call. The\n\
    \ HTTP code will be 200 for a gRPC response.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXC\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXC\a)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXC,-\n\
    \\164\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOTH\STXI4\SUB\149\SOH Configuration for an external rate limit service provider. If not\n\
    \ specified, any calls to the rate limit service will immediately return\n\
    \ success.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXH\STX,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXH-?\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXHBC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\ETXI\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\175\b\DC1\DC2\ETXI\a2\n\
    \\248\n\
    \\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOTb\STXc5\SUB\233\n\
    \ Defines the standard version to use for X-RateLimit headers emitted by the filter:\n\
    \\n\
    \ * ``X-RateLimit-Limit`` - indicates the request-quota associated to the\n\
    \   client in the current time-window followed by the description of the\n\
    \   quota policy. The values are returned by the rate limiting service in\n\
    \   :ref:`current_limit<envoy_v3_api_field_service.ratelimit.v3.RateLimitResponse.DescriptorStatus.current_limit>`\n\
    \   field. Example: `10, 10;w=1;name=\"per-ip\", 1000;w=3600`.\n\
    \ * ``X-RateLimit-Remaining`` - indicates the remaining requests in the\n\
    \   current time-window. The values are returned by the rate limiting service\n\
    \   in :ref:`limit_remaining<envoy_v3_api_field_service.ratelimit.v3.RateLimitResponse.DescriptorStatus.limit_remaining>`\n\
    \   field.\n\
    \ * ``X-RateLimit-Reset`` - indicates the number of seconds until reset of\n\
    \   the current time-window. The values are returned by the rate limiting service\n\
    \   in :ref:`duration_until_reset<envoy_v3_api_field_service.ratelimit.v3.RateLimitResponse.DescriptorStatus.duration_until_reset>`\n\
    \   field.\n\
    \\n\
    \ In case rate limiting policy specifies more then one time window, the values\n\
    \ above represent the window that is closest to reaching its limit.\n\
    \\n\
    \ For more information about the headers specification see selected version of\n\
    \ the `draft RFC <https://tools.ietf.org/id/draft-polli-ratelimit-headers-03.html>`_.\n\
    \\n\
    \ Disabled by default.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETXb\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXb\RS8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXb;<\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\b\DC2\ETXc\ACK4\n\
    \\SI\n\
    \\b\EOT\NUL\STX\a\b\175\b\DLE\DC2\ETXc\a3\n\
    \\240\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXh\STX.\SUB\226\SOH Disables emitting the :ref:`x-envoy-ratelimited<config_http_filters_router_x-envoy-ratelimited>` header\n\
    \ in case of rate limiting (i.e. 429 responses).\n\
    \ Having this header not present potentially makes the request retriable.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETXh\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXh\a)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXh,-\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOTk\NULy\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXk\b\EM\n\
    \\f\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\EOTl\STXu\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETXl\a\SUB\n\
    \[\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETXn\EOT\DC1\SUBL Use the virtual host rate limits unless the route has a rate limit policy.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETXn\EOT\f\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETXn\SI\DLE\n\
    \\\\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETXq\EOT\DLE\SUBM Use the virtual host rate limits even if the route has a rate limit policy.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETXq\EOT\v\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETXq\SO\SI\n\
    \i\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\STX\DC2\ETXt\EOT\SI\SUBZ Ignore the virtual host rate limits even if the route does not have a rate limit policy.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\SOH\DC2\ETXt\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\STX\DC2\ETXt\r\SO\n\
    \^\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXx\STXX\SUBQ Specifies if the rate limit filter should include the virtual host rate limits.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXx\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXx\SYN$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXx'(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETXx)W\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DLE\DC2\ETXx*Vb\ACKproto3"