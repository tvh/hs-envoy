{- This file was auto-generated from envoy/extensions/filters/network/ratelimit/v3/rate_limit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.Ratelimit.V3.RateLimit (
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
import qualified Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Network.Ratelimit.V3.RateLimit_Fields.statPrefix' @:: Lens' RateLimit Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.Ratelimit.V3.RateLimit_Fields.domain' @:: Lens' RateLimit Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Network.Ratelimit.V3.RateLimit_Fields.descriptors' @:: Lens' RateLimit [Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor]@
         * 'Proto.Envoy.Extensions.Filters.Network.Ratelimit.V3.RateLimit_Fields.vec'descriptors' @:: Lens' RateLimit (Data.Vector.Vector Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor)@
         * 'Proto.Envoy.Extensions.Filters.Network.Ratelimit.V3.RateLimit_Fields.timeout' @:: Lens' RateLimit Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.Filters.Network.Ratelimit.V3.RateLimit_Fields.maybe'timeout' @:: Lens' RateLimit (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.Filters.Network.Ratelimit.V3.RateLimit_Fields.failureModeDeny' @:: Lens' RateLimit Prelude.Bool@
         * 'Proto.Envoy.Extensions.Filters.Network.Ratelimit.V3.RateLimit_Fields.rateLimitService' @:: Lens' RateLimit Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig@
         * 'Proto.Envoy.Extensions.Filters.Network.Ratelimit.V3.RateLimit_Fields.maybe'rateLimitService' @:: Lens' RateLimit (Prelude.Maybe Proto.Envoy.Config.Ratelimit.V3.Rls.RateLimitServiceConfig)@ -}
data RateLimit
  = RateLimit'_constructor {_RateLimit'statPrefix :: !Data.Text.Text,
                            _RateLimit'domain :: !Data.Text.Text,
                            _RateLimit'descriptors :: !(Data.Vector.Vector Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor),
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
instance Data.ProtoLens.Field.HasField RateLimit "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'statPrefix
           (\ x__ y__ -> x__ {_RateLimit'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimit "domain" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'domain (\ x__ y__ -> x__ {_RateLimit'domain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimit "descriptors" [Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'descriptors
           (\ x__ y__ -> x__ {_RateLimit'descriptors = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField RateLimit "vec'descriptors" (Data.Vector.Vector Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimit'descriptors
           (\ x__ y__ -> x__ {_RateLimit'descriptors = y__}))
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
        "envoy.extensions.filters.network.ratelimit.v3.RateLimit"
  packedMessageDescriptor _
    = "\n\
      \\tRateLimit\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2\US\n\
      \\ACKdomain\CAN\STX \SOH(\tR\ACKdomainB\a\250B\EOTr\STX\DLE\SOH\DC2e\n\
      \\vdescriptors\CAN\ETX \ETX(\v29.envoy.extensions.common.ratelimit.v3.RateLimitDescriptorR\vdescriptorsB\b\250B\ENQ\146\SOH\STX\b\SOH\DC23\n\
      \\atimeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\atimeout\DC2*\n\
      \\DC1failure_mode_deny\CAN\ENQ \SOH(\bR\SIfailureModeDeny\DC2i\n\
      \\DC2rate_limit_service\CAN\ACK \SOH(\v21.envoy.config.ratelimit.v3.RateLimitServiceConfigR\DLErateLimitServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH::\154\197\136\RS5\n\
      \3envoy.config.filter.network.rate_limit.v2.RateLimit"
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
              Data.ProtoLens.FieldDescriptor RateLimit
        domain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "domain"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"domain")) ::
              Data.ProtoLens.FieldDescriptor RateLimit
        descriptors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "descriptors"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"descriptors")) ::
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
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, domain__field_descriptor),
           (Data.ProtoLens.Tag 3, descriptors__field_descriptor),
           (Data.ProtoLens.Tag 4, timeout__field_descriptor),
           (Data.ProtoLens.Tag 5, failureModeDeny__field_descriptor),
           (Data.ProtoLens.Tag 6, rateLimitService__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimit'_unknownFields
        (\ x__ y__ -> x__ {_RateLimit'_unknownFields = y__})
  defMessage
    = RateLimit'_constructor
        {_RateLimit'statPrefix = Data.ProtoLens.fieldDefault,
         _RateLimit'domain = Data.ProtoLens.fieldDefault,
         _RateLimit'descriptors = Data.Vector.Generic.empty,
         _RateLimit'timeout = Prelude.Nothing,
         _RateLimit'failureModeDeny = Data.ProtoLens.fieldDefault,
         _RateLimit'rateLimitService = Prelude.Nothing,
         _RateLimit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimit
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.RateLimitDescriptor
             -> Data.ProtoLens.Encoding.Bytes.Parser RateLimit
        loop x mutable'descriptors
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'descriptors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'descriptors)
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
                              (Data.ProtoLens.Field.field @"vec'descriptors")
                              frozen'descriptors
                              x))
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
                                  mutable'descriptors
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
                                       "domain"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"domain") y x)
                                  mutable'descriptors
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "descriptors"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'descriptors y)
                                loop x v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timeout"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeout") y x)
                                  mutable'descriptors
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "failure_mode_deny"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"failureModeDeny") y x)
                                  mutable'descriptors
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rate_limit_service"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rateLimitService") y x)
                                  mutable'descriptors
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'descriptors
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'descriptors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'descriptors)
          "RateLimit"
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"domain") _x
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
                                 Data.ProtoLens.encodeMessage
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'descriptors") _x))
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
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'rateLimitService") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData RateLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimit'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_RateLimit'domain x__)
                   (Control.DeepSeq.deepseq
                      (_RateLimit'descriptors x__)
                      (Control.DeepSeq.deepseq
                         (_RateLimit'timeout x__)
                         (Control.DeepSeq.deepseq
                            (_RateLimit'failureModeDeny x__)
                            (Control.DeepSeq.deepseq (_RateLimit'rateLimitService x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \>envoy/extensions/filters/network/ratelimit/v3/rate_limit.proto\DC2-envoy.extensions.filters.network.ratelimit.v3\SUB#envoy/config/ratelimit/v3/rls.proto\SUB4envoy/extensions/common/ratelimit/v3/ratelimit.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\197\ETX\n\
    \\tRateLimit\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC2\US\n\
    \\ACKdomain\CAN\STX \SOH(\tR\ACKdomainB\a\250B\EOTr\STX\DLE\SOH\DC2e\n\
    \\vdescriptors\CAN\ETX \ETX(\v29.envoy.extensions.common.ratelimit.v3.RateLimitDescriptorR\vdescriptorsB\b\250B\ENQ\146\SOH\STX\b\SOH\DC23\n\
    \\atimeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\atimeout\DC2*\n\
    \\DC1failure_mode_deny\CAN\ENQ \SOH(\bR\SIfailureModeDeny\DC2i\n\
    \\DC2rate_limit_service\CAN\ACK \SOH(\v21.envoy.config.ratelimit.v3.RateLimitServiceConfigR\DLErateLimitServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH::\154\197\136\RS5\n\
    \3envoy.config.filter.network.rate_limit.v2.RateLimitBW\n\
    \;io.envoyproxy.envoy.extensions.filters.network.ratelimit.v3B\SORateLimitProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\214\f\n\
    \\ACK\DC2\EOT\NUL\NUL4\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL6\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL-\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL>\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULT\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NULT\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL/\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL/\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\195\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL4\SOH\SUB\ETB [#next-free-field: 7]\n\
    \2\157\SOH [#protodoc-title: Rate limit]\n\
    \ Rate limit :ref:`configuration overview <config_network_filters_rate_limit>`.\n\
    \ [#extension: envoy.filters.network.ratelimit]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\DC1\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\CAN\STX\EM<\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\CAN\STX\EM<\n\
    \k\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\FS\STXB\SUB^ The prefix to use when emitting :ref:`statistics <config_network_filters_rate_limit_stats>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\FS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\FS\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\FS\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\FS\SUB@\n\
    \N\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\US\STX=\SUBA The rate limit domain to use in the rate limit service request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\US\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\t\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\US\DC2\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\US\DC4<\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX\US\NAK;\n\
    \X\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\"\STX#3\SUBJ The rate limit descriptor list to use in the rate limit service request.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX\"\v2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\"3>\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\"AB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\b\DC2\ETX#\ACK2\n\
    \\SI\n\
    \\b\EOT\NUL\STX\STX\b\175\b\DC2\DC2\ETX#\a1\n\
    \n\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX'\STX'\SUBa The timeout in milliseconds for the rate limit service RPC. If not\n\
    \ set, this defaults to 20ms.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX'\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX'\ESC\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX'%&\n\
    \\248\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX-\STX\GS\SUB\234\SOH The filter's behaviour in case the rate limiting service does\n\
    \ not respond back. When it is set to true, Envoy will not allow traffic in case of\n\
    \ communication failure between rate limiting service and the proxy.\n\
    \ Defaults to false.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX-\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX-\a\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX-\ESC\FS\n\
    \\164\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT2\STX34\SUB\149\SOH Configuration for an external rate limit service provider. If not\n\
    \ specified, any calls to the rate limit service will immediately return\n\
    \ success.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX2\STX,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX2-?\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX2BC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETX3\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\DC1\DC2\ETX3\a2b\ACKproto3"