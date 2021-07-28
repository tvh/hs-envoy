{- This file was auto-generated from envoy/extensions/filters/http/local_ratelimit/v3/local_rate_limit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.LocalRatelimit.V3.LocalRateLimit_Fields where
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
descriptors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "descriptors" a) =>
  Lens.Family2.LensLike' f s a
descriptors = Data.ProtoLens.Field.field @"descriptors"
filterEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterEnabled" a) =>
  Lens.Family2.LensLike' f s a
filterEnabled = Data.ProtoLens.Field.field @"filterEnabled"
filterEnforced ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterEnforced" a) =>
  Lens.Family2.LensLike' f s a
filterEnforced = Data.ProtoLens.Field.field @"filterEnforced"
localRateLimitPerDownstreamConnection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localRateLimitPerDownstreamConnection" a) =>
  Lens.Family2.LensLike' f s a
localRateLimitPerDownstreamConnection
  = Data.ProtoLens.Field.field
      @"localRateLimitPerDownstreamConnection"
maybe'filterEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterEnabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterEnabled
  = Data.ProtoLens.Field.field @"maybe'filterEnabled"
maybe'filterEnforced ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterEnforced" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterEnforced
  = Data.ProtoLens.Field.field @"maybe'filterEnforced"
maybe'status ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'status" a) =>
  Lens.Family2.LensLike' f s a
maybe'status = Data.ProtoLens.Field.field @"maybe'status"
maybe'tokenBucket ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tokenBucket" a) =>
  Lens.Family2.LensLike' f s a
maybe'tokenBucket = Data.ProtoLens.Field.field @"maybe'tokenBucket"
requestHeadersToAddWhenNotEnforced ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeadersToAddWhenNotEnforced" a) =>
  Lens.Family2.LensLike' f s a
requestHeadersToAddWhenNotEnforced
  = Data.ProtoLens.Field.field @"requestHeadersToAddWhenNotEnforced"
responseHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
responseHeadersToAdd
  = Data.ProtoLens.Field.field @"responseHeadersToAdd"
stage ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stage" a) =>
  Lens.Family2.LensLike' f s a
stage = Data.ProtoLens.Field.field @"stage"
statPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statPrefix" a) =>
  Lens.Family2.LensLike' f s a
statPrefix = Data.ProtoLens.Field.field @"statPrefix"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
tokenBucket ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tokenBucket" a) =>
  Lens.Family2.LensLike' f s a
tokenBucket = Data.ProtoLens.Field.field @"tokenBucket"
vec'descriptors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'descriptors" a) =>
  Lens.Family2.LensLike' f s a
vec'descriptors = Data.ProtoLens.Field.field @"vec'descriptors"
vec'requestHeadersToAddWhenNotEnforced ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestHeadersToAddWhenNotEnforced" a) =>
  Lens.Family2.LensLike' f s a
vec'requestHeadersToAddWhenNotEnforced
  = Data.ProtoLens.Field.field
      @"vec'requestHeadersToAddWhenNotEnforced"
vec'responseHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'responseHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
vec'responseHeadersToAdd
  = Data.ProtoLens.Field.field @"vec'responseHeadersToAdd"