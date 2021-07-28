{- This file was auto-generated from envoy/extensions/filters/http/router/v3/router.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Router.V3.Router_Fields where
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
import qualified Proto.Envoy.Config.Accesslog.V3.Accesslog
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
dynamicStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicStats" a) =>
  Lens.Family2.LensLike' f s a
dynamicStats = Data.ProtoLens.Field.field @"dynamicStats"
maybe'dynamicStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dynamicStats" a) =>
  Lens.Family2.LensLike' f s a
maybe'dynamicStats
  = Data.ProtoLens.Field.field @"maybe'dynamicStats"
respectExpectedRqTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "respectExpectedRqTimeout" a) =>
  Lens.Family2.LensLike' f s a
respectExpectedRqTimeout
  = Data.ProtoLens.Field.field @"respectExpectedRqTimeout"
startChildSpan ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startChildSpan" a) =>
  Lens.Family2.LensLike' f s a
startChildSpan = Data.ProtoLens.Field.field @"startChildSpan"
strictCheckHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "strictCheckHeaders" a) =>
  Lens.Family2.LensLike' f s a
strictCheckHeaders
  = Data.ProtoLens.Field.field @"strictCheckHeaders"
suppressEnvoyHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "suppressEnvoyHeaders" a) =>
  Lens.Family2.LensLike' f s a
suppressEnvoyHeaders
  = Data.ProtoLens.Field.field @"suppressEnvoyHeaders"
suppressGrpcRequestFailureCodeStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "suppressGrpcRequestFailureCodeStats" a) =>
  Lens.Family2.LensLike' f s a
suppressGrpcRequestFailureCodeStats
  = Data.ProtoLens.Field.field @"suppressGrpcRequestFailureCodeStats"
upstreamLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamLog" a) =>
  Lens.Family2.LensLike' f s a
upstreamLog = Data.ProtoLens.Field.field @"upstreamLog"
vec'strictCheckHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'strictCheckHeaders" a) =>
  Lens.Family2.LensLike' f s a
vec'strictCheckHeaders
  = Data.ProtoLens.Field.field @"vec'strictCheckHeaders"
vec'upstreamLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'upstreamLog" a) =>
  Lens.Family2.LensLike' f s a
vec'upstreamLog = Data.ProtoLens.Field.field @"vec'upstreamLog"