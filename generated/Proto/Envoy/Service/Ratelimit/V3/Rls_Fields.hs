{- This file was auto-generated from envoy/service/ratelimit/v3/rls.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Ratelimit.V3.Rls_Fields where
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
code ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "code" a) =>
  Lens.Family2.LensLike' f s a
code = Data.ProtoLens.Field.field @"code"
currentLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentLimit" a) =>
  Lens.Family2.LensLike' f s a
currentLimit = Data.ProtoLens.Field.field @"currentLimit"
descriptors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "descriptors" a) =>
  Lens.Family2.LensLike' f s a
descriptors = Data.ProtoLens.Field.field @"descriptors"
domain ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "domain" a) =>
  Lens.Family2.LensLike' f s a
domain = Data.ProtoLens.Field.field @"domain"
durationUntilReset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "durationUntilReset" a) =>
  Lens.Family2.LensLike' f s a
durationUntilReset
  = Data.ProtoLens.Field.field @"durationUntilReset"
dynamicMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicMetadata" a) =>
  Lens.Family2.LensLike' f s a
dynamicMetadata = Data.ProtoLens.Field.field @"dynamicMetadata"
hitsAddend ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hitsAddend" a) =>
  Lens.Family2.LensLike' f s a
hitsAddend = Data.ProtoLens.Field.field @"hitsAddend"
limitRemaining ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "limitRemaining" a) =>
  Lens.Family2.LensLike' f s a
limitRemaining = Data.ProtoLens.Field.field @"limitRemaining"
maybe'currentLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'currentLimit" a) =>
  Lens.Family2.LensLike' f s a
maybe'currentLimit
  = Data.ProtoLens.Field.field @"maybe'currentLimit"
maybe'durationUntilReset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'durationUntilReset" a) =>
  Lens.Family2.LensLike' f s a
maybe'durationUntilReset
  = Data.ProtoLens.Field.field @"maybe'durationUntilReset"
maybe'dynamicMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dynamicMetadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'dynamicMetadata
  = Data.ProtoLens.Field.field @"maybe'dynamicMetadata"
maybe'expirationSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expirationSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'expirationSpecifier
  = Data.ProtoLens.Field.field @"maybe'expirationSpecifier"
maybe'quota ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'quota" a) =>
  Lens.Family2.LensLike' f s a
maybe'quota = Data.ProtoLens.Field.field @"maybe'quota"
maybe'validUntil ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validUntil" a) =>
  Lens.Family2.LensLike' f s a
maybe'validUntil = Data.ProtoLens.Field.field @"maybe'validUntil"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
overallCode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overallCode" a) =>
  Lens.Family2.LensLike' f s a
overallCode = Data.ProtoLens.Field.field @"overallCode"
quota ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "quota" a) =>
  Lens.Family2.LensLike' f s a
quota = Data.ProtoLens.Field.field @"quota"
rawBody ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rawBody" a) =>
  Lens.Family2.LensLike' f s a
rawBody = Data.ProtoLens.Field.field @"rawBody"
requestHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
requestHeadersToAdd
  = Data.ProtoLens.Field.field @"requestHeadersToAdd"
requests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requests" a) =>
  Lens.Family2.LensLike' f s a
requests = Data.ProtoLens.Field.field @"requests"
requestsPerUnit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestsPerUnit" a) =>
  Lens.Family2.LensLike' f s a
requestsPerUnit = Data.ProtoLens.Field.field @"requestsPerUnit"
responseHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
responseHeadersToAdd
  = Data.ProtoLens.Field.field @"responseHeadersToAdd"
statuses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statuses" a) =>
  Lens.Family2.LensLike' f s a
statuses = Data.ProtoLens.Field.field @"statuses"
unit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "unit" a) =>
  Lens.Family2.LensLike' f s a
unit = Data.ProtoLens.Field.field @"unit"
validUntil ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validUntil" a) =>
  Lens.Family2.LensLike' f s a
validUntil = Data.ProtoLens.Field.field @"validUntil"
vec'descriptors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'descriptors" a) =>
  Lens.Family2.LensLike' f s a
vec'descriptors = Data.ProtoLens.Field.field @"vec'descriptors"
vec'requestHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
vec'requestHeadersToAdd
  = Data.ProtoLens.Field.field @"vec'requestHeadersToAdd"
vec'responseHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'responseHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
vec'responseHeadersToAdd
  = Data.ProtoLens.Field.field @"vec'responseHeadersToAdd"
vec'statuses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'statuses" a) =>
  Lens.Family2.LensLike' f s a
vec'statuses = Data.ProtoLens.Field.field @"vec'statuses"