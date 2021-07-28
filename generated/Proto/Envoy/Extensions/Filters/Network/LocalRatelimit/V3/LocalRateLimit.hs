{- This file was auto-generated from envoy/extensions/filters/network/local_ratelimit/v3/local_rate_limit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.LocalRatelimit.V3.LocalRateLimit (
        LocalRateLimit()
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
import qualified Proto.Envoy.Type.V3.TokenBucket
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.LocalRatelimit.V3.LocalRateLimit_Fields.statPrefix' @:: Lens' LocalRateLimit Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.LocalRatelimit.V3.LocalRateLimit_Fields.tokenBucket' @:: Lens' LocalRateLimit Proto.Envoy.Type.V3.TokenBucket.TokenBucket@
         * 'Proto.Envoy.Extensions.Filters.Network.LocalRatelimit.V3.LocalRateLimit_Fields.maybe'tokenBucket' @:: Lens' LocalRateLimit (Prelude.Maybe Proto.Envoy.Type.V3.TokenBucket.TokenBucket)@
         * 'Proto.Envoy.Extensions.Filters.Network.LocalRatelimit.V3.LocalRateLimit_Fields.runtimeEnabled' @:: Lens' LocalRateLimit Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag@
         * 'Proto.Envoy.Extensions.Filters.Network.LocalRatelimit.V3.LocalRateLimit_Fields.maybe'runtimeEnabled' @:: Lens' LocalRateLimit (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)@ -}
data LocalRateLimit
  = LocalRateLimit'_constructor {_LocalRateLimit'statPrefix :: !Data.Text.Text,
                                 _LocalRateLimit'tokenBucket :: !(Prelude.Maybe Proto.Envoy.Type.V3.TokenBucket.TokenBucket),
                                 _LocalRateLimit'runtimeEnabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag),
                                 _LocalRateLimit'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LocalRateLimit where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LocalRateLimit "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'statPrefix
           (\ x__ y__ -> x__ {_LocalRateLimit'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalRateLimit "tokenBucket" Proto.Envoy.Type.V3.TokenBucket.TokenBucket where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'tokenBucket
           (\ x__ y__ -> x__ {_LocalRateLimit'tokenBucket = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalRateLimit "maybe'tokenBucket" (Prelude.Maybe Proto.Envoy.Type.V3.TokenBucket.TokenBucket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'tokenBucket
           (\ x__ y__ -> x__ {_LocalRateLimit'tokenBucket = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalRateLimit "runtimeEnabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'runtimeEnabled
           (\ x__ y__ -> x__ {_LocalRateLimit'runtimeEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalRateLimit "maybe'runtimeEnabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'runtimeEnabled
           (\ x__ y__ -> x__ {_LocalRateLimit'runtimeEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Message LocalRateLimit where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.network.local_ratelimit.v3.LocalRateLimit"
  packedMessageDescriptor _
    = "\n\
      \\SOLocalRateLimit\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2G\n\
      \\ftoken_bucket\CAN\STX \SOH(\v2\SUB.envoy.type.v3.TokenBucketR\vtokenBucketB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2Q\n\
      \\SIruntime_enabled\CAN\ETX \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\SOruntimeEnabled:J\154\197\136\RSE\n\
      \Cenvoy.config.filter.network.local_rate_limit.v2alpha.LocalRateLimit"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
        tokenBucket__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "token_bucket"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.TokenBucket.TokenBucket)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tokenBucket")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
        runtimeEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "runtime_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFeatureFlag)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'runtimeEnabled")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, tokenBucket__field_descriptor),
           (Data.ProtoLens.Tag 3, runtimeEnabled__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LocalRateLimit'_unknownFields
        (\ x__ y__ -> x__ {_LocalRateLimit'_unknownFields = y__})
  defMessage
    = LocalRateLimit'_constructor
        {_LocalRateLimit'statPrefix = Data.ProtoLens.fieldDefault,
         _LocalRateLimit'tokenBucket = Prelude.Nothing,
         _LocalRateLimit'runtimeEnabled = Prelude.Nothing,
         _LocalRateLimit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LocalRateLimit
          -> Data.ProtoLens.Encoding.Bytes.Parser LocalRateLimit
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
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "token_bucket"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tokenBucket") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "runtime_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"runtimeEnabled") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LocalRateLimit"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
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
                       (Data.ProtoLens.Field.field @"maybe'tokenBucket") _x
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
                          (Data.ProtoLens.Field.field @"maybe'runtimeEnabled") _x
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
instance Control.DeepSeq.NFData LocalRateLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LocalRateLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LocalRateLimit'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_LocalRateLimit'tokenBucket x__)
                   (Control.DeepSeq.deepseq (_LocalRateLimit'runtimeEnabled x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Jenvoy/extensions/filters/network/local_ratelimit/v3/local_rate_limit.proto\DC23envoy.extensions.filters.network.local_ratelimit.v3\SUB\USenvoy/config/core/v3/base.proto\SUB envoy/type/v3/token_bucket.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\162\STX\n\
    \\SOLocalRateLimit\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2G\n\
    \\ftoken_bucket\CAN\STX \SOH(\v2\SUB.envoy.type.v3.TokenBucketR\vtokenBucketB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2Q\n\
    \\SIruntime_enabled\CAN\ETX \SOH(\v2(.envoy.config.core.v3.RuntimeFeatureFlagR\SOruntimeEnabled:J\154\197\136\RSE\n\
    \Cenvoy.config.filter.network.local_rate_limit.v2alpha.LocalRateLimitBb\n\
    \Aio.envoyproxy.envoy.extensions.filters.network.local_ratelimit.v3B\DC3LocalRateLimitProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\198\v\n\
    \\ACK\DC2\EOT\NUL\NUL-\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL<\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL*\n\
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
    \\SOH\b\DC2\ETX\f\NUL4\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SO\NULF\n\
    \\194\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL-\SOH2\181\SOH [#protodoc-title: Local rate limit]\n\
    \ Local rate limit :ref:`configuration overview <config_network_filters_local_rate_limit>`.\n\
    \ [#extension: envoy.filters.network.local_ratelimit]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\SYN\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\NAK\STX\SYNL\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\NAK\STX\SYNL\n\
    \r\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STXB\SUBe The prefix to use when emitting :ref:`statistics\n\
    \ <config_network_filters_local_rate_limit_stats>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\SUB\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\SUB\SUB@\n\
    \\255\EOT\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX(\STXU\SUB\241\EOT The token bucket configuration to use for rate limiting connections that are processed by the\n\
    \ filter's filter chain. Each incoming connection processed by the filter consumes a single\n\
    \ token. If the token is available, the connection will be allowed. If no tokens are available,\n\
    \ the connection will be immediately closed.\n\
    \\n\
    \ .. note::\n\
    \   In the current implementation each filter and filter chain has an independent rate limit.\n\
    \\n\
    \ .. note::\n\
    \   In the current implementation the token bucket's :ref:`fill_interval\n\
    \   <envoy_v3_api_field_type.v3.TokenBucket.fill_interval>` must be >= 50ms to avoid too aggressive\n\
    \   refills.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX(\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX(\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX(%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX('T\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DC1\DC2\ETX((S\n\
    \w\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX,\STX8\SUBj Runtime flag that controls whether the filter is enabled or not. If not specified, defaults\n\
    \ to enabled.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX,\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX,$3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX,67b\ACKproto3"