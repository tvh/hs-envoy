{- This file was auto-generated from envoy/extensions/filters/http/local_ratelimit/v3/local_rate_limit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit (
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
import qualified Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit
import qualified Proto.Envoy.Type.V3.HttpStatus
import qualified Proto.Envoy.Type.V3.TokenBucket
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.statPrefix' @:: Lens' LocalRateLimit Data.Text.Text@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.status' @:: Lens' LocalRateLimit Proto.Envoy.Type.V3.HttpStatus.HttpStatus@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.maybe'status' @:: Lens' LocalRateLimit (Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus)@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.tokenBucket' @:: Lens' LocalRateLimit Proto.Envoy.Type.V3.TokenBucket.TokenBucket@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.maybe'tokenBucket' @:: Lens' LocalRateLimit (Prelude.Maybe Proto.Envoy.Type.V3.TokenBucket.TokenBucket)@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.filterEnabled' @:: Lens' LocalRateLimit Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.maybe'filterEnabled' @:: Lens' LocalRateLimit (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.filterEnforced' @:: Lens' LocalRateLimit Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.maybe'filterEnforced' @:: Lens' LocalRateLimit (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.requestHeadersToAddWhenNotEnforced' @:: Lens' LocalRateLimit [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.vec'requestHeadersToAddWhenNotEnforced' @:: Lens' LocalRateLimit (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.responseHeadersToAdd' @:: Lens' LocalRateLimit [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption]@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.vec'responseHeadersToAdd' @:: Lens' LocalRateLimit (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.descriptors' @:: Lens' LocalRateLimit [Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.LocalRateLimitDescriptor]@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.vec'descriptors' @:: Lens' LocalRateLimit (Data.Vector.Vector Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.LocalRateLimitDescriptor)@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.stage' @:: Lens' LocalRateLimit Data.Word.Word32@
         * 'Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields.localRateLimitPerDownstreamConnection' @:: Lens' LocalRateLimit Prelude.Bool@ -}
data LocalRateLimit
  = LocalRateLimit'_constructor {_LocalRateLimit'statPrefix :: !Data.Text.Text,
                                 _LocalRateLimit'status :: !(Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus),
                                 _LocalRateLimit'tokenBucket :: !(Prelude.Maybe Proto.Envoy.Type.V3.TokenBucket.TokenBucket),
                                 _LocalRateLimit'filterEnabled :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent),
                                 _LocalRateLimit'filterEnforced :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent),
                                 _LocalRateLimit'requestHeadersToAddWhenNotEnforced :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                 _LocalRateLimit'responseHeadersToAdd :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption),
                                 _LocalRateLimit'descriptors :: !(Data.Vector.Vector Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.LocalRateLimitDescriptor),
                                 _LocalRateLimit'stage :: !Data.Word.Word32,
                                 _LocalRateLimit'localRateLimitPerDownstreamConnection :: !Prelude.Bool,
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
instance Data.ProtoLens.Field.HasField LocalRateLimit "status" Proto.Envoy.Type.V3.HttpStatus.HttpStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'status
           (\ x__ y__ -> x__ {_LocalRateLimit'status = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalRateLimit "maybe'status" (Prelude.Maybe Proto.Envoy.Type.V3.HttpStatus.HttpStatus) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'status
           (\ x__ y__ -> x__ {_LocalRateLimit'status = y__}))
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
instance Data.ProtoLens.Field.HasField LocalRateLimit "filterEnabled" Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'filterEnabled
           (\ x__ y__ -> x__ {_LocalRateLimit'filterEnabled = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalRateLimit "maybe'filterEnabled" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'filterEnabled
           (\ x__ y__ -> x__ {_LocalRateLimit'filterEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalRateLimit "filterEnforced" Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'filterEnforced
           (\ x__ y__ -> x__ {_LocalRateLimit'filterEnforced = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField LocalRateLimit "maybe'filterEnforced" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'filterEnforced
           (\ x__ y__ -> x__ {_LocalRateLimit'filterEnforced = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalRateLimit "requestHeadersToAddWhenNotEnforced" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'requestHeadersToAddWhenNotEnforced
           (\ x__ y__
              -> x__ {_LocalRateLimit'requestHeadersToAddWhenNotEnforced = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LocalRateLimit "vec'requestHeadersToAddWhenNotEnforced" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'requestHeadersToAddWhenNotEnforced
           (\ x__ y__
              -> x__ {_LocalRateLimit'requestHeadersToAddWhenNotEnforced = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalRateLimit "responseHeadersToAdd" [Proto.Envoy.Config.Core.V3.Base.HeaderValueOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'responseHeadersToAdd
           (\ x__ y__ -> x__ {_LocalRateLimit'responseHeadersToAdd = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LocalRateLimit "vec'responseHeadersToAdd" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValueOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'responseHeadersToAdd
           (\ x__ y__ -> x__ {_LocalRateLimit'responseHeadersToAdd = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalRateLimit "descriptors" [Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.LocalRateLimitDescriptor] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'descriptors
           (\ x__ y__ -> x__ {_LocalRateLimit'descriptors = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField LocalRateLimit "vec'descriptors" (Data.Vector.Vector Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.LocalRateLimitDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'descriptors
           (\ x__ y__ -> x__ {_LocalRateLimit'descriptors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalRateLimit "stage" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'stage
           (\ x__ y__ -> x__ {_LocalRateLimit'stage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LocalRateLimit "localRateLimitPerDownstreamConnection" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LocalRateLimit'localRateLimitPerDownstreamConnection
           (\ x__ y__
              -> x__
                   {_LocalRateLimit'localRateLimitPerDownstreamConnection = y__}))
        Prelude.id
instance Data.ProtoLens.Message LocalRateLimit where
  messageName _
    = Data.Text.pack
        "envoy.extensions.filters.http.local_ratelimit.v3.LocalRateLimit"
  packedMessageDescriptor _
    = "\n\
      \\SOLocalRateLimit\DC2(\n\
      \\vstat_prefix\CAN\SOH \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC21\n\
      \\ACKstatus\CAN\STX \SOH(\v2\EM.envoy.type.v3.HttpStatusR\ACKstatus\DC2=\n\
      \\ftoken_bucket\CAN\ETX \SOH(\v2\SUB.envoy.type.v3.TokenBucketR\vtokenBucket\DC2U\n\
      \\SOfilter_enabled\CAN\EOT \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\rfilterEnabled\DC2W\n\
      \\SIfilter_enforced\CAN\ENQ \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\SOfilterEnforced\DC2\135\SOH\n\
      \(request_headers_to_add_when_not_enforced\CAN\n\
      \ \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\"requestHeadersToAddWhenNotEnforcedB\b\250B\ENQ\146\SOH\STX\DLE\n\
      \\DC2h\n\
      \\ETBresponse_headers_to_add\CAN\ACK \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC4responseHeadersToAddB\b\250B\ENQ\146\SOH\STX\DLE\n\
      \\DC2`\n\
      \\vdescriptors\CAN\b \ETX(\v2>.envoy.extensions.common.ratelimit.v3.LocalRateLimitDescriptorR\vdescriptors\DC2\GS\n\
      \\ENQstage\CAN\t \SOH(\rR\ENQstageB\a\250B\EOT*\STX\CAN\n\
      \\DC2Y\n\
      \*local_rate_limit_per_downstream_connection\CAN\v \SOH(\bR%localRateLimitPerDownstreamConnection"
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
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.HttpStatus.HttpStatus)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'status")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
        tokenBucket__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "token_bucket"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.V3.TokenBucket.TokenBucket)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tokenBucket")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
        filterEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_enabled"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filterEnabled")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
        filterEnforced__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_enforced"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.RuntimeFractionalPercent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filterEnforced")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
        requestHeadersToAddWhenNotEnforced__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_headers_to_add_when_not_enforced"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field
                    @"requestHeadersToAddWhenNotEnforced")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
        responseHeadersToAdd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "response_headers_to_add"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValueOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"responseHeadersToAdd")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
        descriptors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "descriptors"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.LocalRateLimitDescriptor)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"descriptors")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
        stage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"stage")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
        localRateLimitPerDownstreamConnection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_rate_limit_per_downstream_connection"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"localRateLimitPerDownstreamConnection")) ::
              Data.ProtoLens.FieldDescriptor LocalRateLimit
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 2, status__field_descriptor),
           (Data.ProtoLens.Tag 3, tokenBucket__field_descriptor),
           (Data.ProtoLens.Tag 4, filterEnabled__field_descriptor),
           (Data.ProtoLens.Tag 5, filterEnforced__field_descriptor),
           (Data.ProtoLens.Tag 10, 
            requestHeadersToAddWhenNotEnforced__field_descriptor),
           (Data.ProtoLens.Tag 6, responseHeadersToAdd__field_descriptor),
           (Data.ProtoLens.Tag 8, descriptors__field_descriptor),
           (Data.ProtoLens.Tag 9, stage__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            localRateLimitPerDownstreamConnection__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LocalRateLimit'_unknownFields
        (\ x__ y__ -> x__ {_LocalRateLimit'_unknownFields = y__})
  defMessage
    = LocalRateLimit'_constructor
        {_LocalRateLimit'statPrefix = Data.ProtoLens.fieldDefault,
         _LocalRateLimit'status = Prelude.Nothing,
         _LocalRateLimit'tokenBucket = Prelude.Nothing,
         _LocalRateLimit'filterEnabled = Prelude.Nothing,
         _LocalRateLimit'filterEnforced = Prelude.Nothing,
         _LocalRateLimit'requestHeadersToAddWhenNotEnforced = Data.Vector.Generic.empty,
         _LocalRateLimit'responseHeadersToAdd = Data.Vector.Generic.empty,
         _LocalRateLimit'descriptors = Data.Vector.Generic.empty,
         _LocalRateLimit'stage = Data.ProtoLens.fieldDefault,
         _LocalRateLimit'localRateLimitPerDownstreamConnection = Data.ProtoLens.fieldDefault,
         _LocalRateLimit'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LocalRateLimit
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Extensions.Common.Ratelimit.V3.Ratelimit.LocalRateLimitDescriptor
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValueOption
                   -> Data.ProtoLens.Encoding.Bytes.Parser LocalRateLimit
        loop
          x
          mutable'descriptors
          mutable'requestHeadersToAddWhenNotEnforced
          mutable'responseHeadersToAdd
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'descriptors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'descriptors)
                      frozen'requestHeadersToAddWhenNotEnforced <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                        mutable'requestHeadersToAddWhenNotEnforced)
                      frozen'responseHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'responseHeadersToAdd)
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
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field
                                    @"vec'requestHeadersToAddWhenNotEnforced")
                                 frozen'requestHeadersToAddWhenNotEnforced
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'responseHeadersToAdd")
                                    frozen'responseHeadersToAdd
                                    x))))
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
                                  mutable'requestHeadersToAddWhenNotEnforced
                                  mutable'responseHeadersToAdd
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'descriptors
                                  mutable'requestHeadersToAddWhenNotEnforced
                                  mutable'responseHeadersToAdd
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "token_bucket"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tokenBucket") y x)
                                  mutable'descriptors
                                  mutable'requestHeadersToAddWhenNotEnforced
                                  mutable'responseHeadersToAdd
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"filterEnabled") y x)
                                  mutable'descriptors
                                  mutable'requestHeadersToAddWhenNotEnforced
                                  mutable'responseHeadersToAdd
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter_enforced"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"filterEnforced") y x)
                                  mutable'descriptors
                                  mutable'requestHeadersToAddWhenNotEnforced
                                  mutable'responseHeadersToAdd
                        82
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "request_headers_to_add_when_not_enforced"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'requestHeadersToAddWhenNotEnforced y)
                                loop x mutable'descriptors v mutable'responseHeadersToAdd
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "response_headers_to_add"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'responseHeadersToAdd y)
                                loop
                                  x mutable'descriptors mutable'requestHeadersToAddWhenNotEnforced v
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "descriptors"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'descriptors y)
                                loop
                                  x
                                  v
                                  mutable'requestHeadersToAddWhenNotEnforced
                                  mutable'responseHeadersToAdd
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stage"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stage") y x)
                                  mutable'descriptors
                                  mutable'requestHeadersToAddWhenNotEnforced
                                  mutable'responseHeadersToAdd
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "local_rate_limit_per_downstream_connection"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"localRateLimitPerDownstreamConnection")
                                     y
                                     x)
                                  mutable'descriptors
                                  mutable'requestHeadersToAddWhenNotEnforced
                                  mutable'responseHeadersToAdd
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'descriptors
                                  mutable'requestHeadersToAddWhenNotEnforced
                                  mutable'responseHeadersToAdd
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'descriptors <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'requestHeadersToAddWhenNotEnforced <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                              Data.ProtoLens.Encoding.Growing.new
              mutable'responseHeadersToAdd <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'descriptors
                mutable'requestHeadersToAddWhenNotEnforced
                mutable'responseHeadersToAdd)
          "LocalRateLimit"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'status") _x
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
                          (Data.ProtoLens.Field.field @"maybe'tokenBucket") _x
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
                             (Data.ProtoLens.Field.field @"maybe'filterEnabled") _x
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
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'filterEnforced") _x
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
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage
                                          _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field
                                     @"vec'requestHeadersToAddWhenNotEnforced")
                                  _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
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
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'responseHeadersToAdd") _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
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
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'descriptors") _x))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"stage") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 Prelude.fromIntegral
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field
                                                    @"localRateLimitPerDownstreamConnection")
                                                 _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (\ b -> if b then 1 else 0)
                                                    _v))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData LocalRateLimit where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LocalRateLimit'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LocalRateLimit'statPrefix x__)
                (Control.DeepSeq.deepseq
                   (_LocalRateLimit'status x__)
                   (Control.DeepSeq.deepseq
                      (_LocalRateLimit'tokenBucket x__)
                      (Control.DeepSeq.deepseq
                         (_LocalRateLimit'filterEnabled x__)
                         (Control.DeepSeq.deepseq
                            (_LocalRateLimit'filterEnforced x__)
                            (Control.DeepSeq.deepseq
                               (_LocalRateLimit'requestHeadersToAddWhenNotEnforced x__)
                               (Control.DeepSeq.deepseq
                                  (_LocalRateLimit'responseHeadersToAdd x__)
                                  (Control.DeepSeq.deepseq
                                     (_LocalRateLimit'descriptors x__)
                                     (Control.DeepSeq.deepseq
                                        (_LocalRateLimit'stage x__)
                                        (Control.DeepSeq.deepseq
                                           (_LocalRateLimit'localRateLimitPerDownstreamConnection
                                              x__)
                                           ()))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Genvoy/extensions/filters/http/local_ratelimit/v3/local_rate_limit.proto\DC20envoy.extensions.filters.http.local_ratelimit.v3\SUB\USenvoy/config/core/v3/base.proto\SUB4envoy/extensions/common/ratelimit/v3/ratelimit.proto\SUB\USenvoy/type/v3/http_status.proto\SUB envoy/type/v3/token_bucket.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\172\ACK\n\
    \\SOLocalRateLimit\DC2(\n\
    \\vstat_prefix\CAN\SOH \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC21\n\
    \\ACKstatus\CAN\STX \SOH(\v2\EM.envoy.type.v3.HttpStatusR\ACKstatus\DC2=\n\
    \\ftoken_bucket\CAN\ETX \SOH(\v2\SUB.envoy.type.v3.TokenBucketR\vtokenBucket\DC2U\n\
    \\SOfilter_enabled\CAN\EOT \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\rfilterEnabled\DC2W\n\
    \\SIfilter_enforced\CAN\ENQ \SOH(\v2..envoy.config.core.v3.RuntimeFractionalPercentR\SOfilterEnforced\DC2\135\SOH\n\
    \(request_headers_to_add_when_not_enforced\CAN\n\
    \ \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\"requestHeadersToAddWhenNotEnforcedB\b\250B\ENQ\146\SOH\STX\DLE\n\
    \\DC2h\n\
    \\ETBresponse_headers_to_add\CAN\ACK \ETX(\v2'.envoy.config.core.v3.HeaderValueOptionR\DC4responseHeadersToAddB\b\250B\ENQ\146\SOH\STX\DLE\n\
    \\DC2`\n\
    \\vdescriptors\CAN\b \ETX(\v2>.envoy.extensions.common.ratelimit.v3.LocalRateLimitDescriptorR\vdescriptors\DC2\GS\n\
    \\ENQstage\CAN\t \SOH(\rR\ENQstageB\a\250B\EOT*\STX\CAN\n\
    \\DC2Y\n\
    \*local_rate_limit_per_downstream_connection\CAN\v \SOH(\bR%localRateLimitPerDownstreamConnectionB_\n\
    \>io.envoyproxy.envoy.extensions.filters.http.local_ratelimit.v3B\DC3LocalRateLimitProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\174\"\n\
    \\ACK\DC2\EOT\NUL\NULl\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL9\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL>\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL*\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULW\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NULW\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL4\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\214\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NULl\SOH\SUB\CAN [#next-free-field: 12]\n\
    \2\175\SOH [#protodoc-title: Local Rate limit]\n\
    \ Local Rate limit :ref:`configuration overview <config_http_filters_local_rate_limit>`.\n\
    \ [#extension: envoy.filters.http.local_ratelimit]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\SYN\n\
    \D\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STXB\SUB7 The human readable prefix to use when emitting stats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN\ETB\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\CAN\EMA\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\CAN\SUB@\n\
    \\240\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX \STX \SUB\226\SOH This field allows for a custom HTTP response status code to the downstream client when\n\
    \ the request has been rate limited.\n\
    \ Defaults to 429 (TooManyRequests).\n\
    \\n\
    \ .. note::\n\
    \   If this is set to < 400, 429 will be used instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX \STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX \NAK\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX \RS\US\n\
    \\243\ACK\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX3\STX'\SUB\229\ACK The token bucket configuration to use for rate limiting requests that are processed by this\n\
    \ filter. Each request processed by the filter consumes a single token. If the token is available,\n\
    \ the request will be allowed. If no tokens are available, the request will receive the configured\n\
    \ rate limit status.\n\
    \\n\
    \ .. note::\n\
    \   It's fine for the token bucket to be unset for the global configuration since the rate limit\n\
    \   can be applied at a the virtual host or route level. Thus, the token bucket must be set\n\
    \   for the per route configuration otherwise the config will be rejected.\n\
    \\n\
    \ .. note::\n\
    \   When using per route configuration, the bucket becomes unique to that route.\n\
    \\n\
    \ .. note::\n\
    \   In the current implementation the token bucket's :ref:`fill_interval\n\
    \   <envoy_v3_api_field_type.v3.TokenBucket.fill_interval>` must be >= 50ms to avoid too aggressive\n\
    \   refills.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX3\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX3\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX3%&\n\
    \\166\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX8\STX=\SUB\152\SOH If set, this will enable -- but not necessarily enforce -- the rate limit for the given\n\
    \ fraction of requests.\n\
    \ Defaults to 0% of requests for safety.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX8\STX)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX8*8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX8;<\n\
    \\206\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX?\STX>\SUB\192\SOH If set, this will enforce the rate limit decisions for the given fraction of requests.\n\
    \\n\
    \ Note: this only applies to the fraction of enabled requests.\n\
    \\n\
    \ Defaults to 0% of requests for safety.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX?\STX)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX?*9\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX?<=\n\
    \\212\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOTD\STXE4\SUB\197\SOH Specifies a list of HTTP headers that should be added to each request that\n\
    \ has been rate limited and is also forwarded upstream. This can only occur when the\n\
    \ filter is enabled but not enforced.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXD\v+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXD,T\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXDWY\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETXE\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\DC2\DC2\ETXE\a2\n\
    \\195\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOTI\STXJ4\SUB\180\SOH Specifies a list of HTTP headers that should be added to each response for requests that\n\
    \ have been rate limited. This occurs when the filter is either enabled or fully enforced.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXI\v+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXI,C\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXIFG\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\ETXJ\ACK3\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ACK\b\175\b\DC2\DC2\ETXJ\a2\n\
    \\237\ENQ\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETXZ\STXH\SUB\223\ENQ The rate limit descriptor list to use in the local rate limit to override\n\
    \ on. The rate limit descriptor is selected by the first full match from the\n\
    \ request descriptors.\n\
    \\n\
    \ Example on how to use ::ref:`this <config_http_filters_local_rate_limit_descriptors>`\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   In the current implementation the descriptor's token bucket :ref:`fill_interval\n\
    \   <envoy_v3_api_field_type.v3.TokenBucket.fill_interval>` must be a multiple\n\
    \   global :ref:`token bucket's<envoy_v3_api_field_extensions.filters.http.local_ratelimit.v3.LocalRateLimit.token_bucket>` fill interval.\n\
    \\n\
    \   The descriptors must match verbatim for rate limiting to apply. There is no partial\n\
    \   match by a subset of descriptor entries in the current implementation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETXZ\v7\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXZ8C\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXZFG\n\
    \\225\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXb\STX9\SUB\211\SOH Specifies the rate limit configurations to be applied with the same\n\
    \ stage number. If not set, the default stage number is 0.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \  The filter supports a range of 0 - 10 inclusively for stage numbers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETXb\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXb\t\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXb\DC1\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\b\DC2\ETXb\DC38\n\
    \\SI\n\
    \\b\EOT\NUL\STX\b\b\175\b\ENQ\DC2\ETXb\DC47\n\
    \\172\ETX\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETXk\STX7\SUB\158\ETX Specifies the scope of the rate limiter's token bucket.\n\
    \ If set to false, the token bucket is shared across all worker threads,\n\
    \ thus the rate limits are applied per Envoy process.\n\
    \ If set to true, a token bucket is allocated for each connection.\n\
    \ Thus the rate limits are applied per connection thereby allowing\n\
    \ one to rate limit requests on a per connection basis.\n\
    \ If unspecified, the default value is false.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\ETXk\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETXk\a1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETXk46b\ACKproto3"