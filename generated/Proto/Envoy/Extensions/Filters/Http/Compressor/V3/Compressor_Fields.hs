{- This file was auto-generated from envoy/extensions/filters/http/compressor/v3/compressor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Compressor.V3.Compressor_Fields where
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
import qualified Proto.Envoy.Annotations.Deprecation
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
commonConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commonConfig" a) =>
  Lens.Family2.LensLike' f s a
commonConfig = Data.ProtoLens.Field.field @"commonConfig"
compressorLibrary ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "compressorLibrary" a) =>
  Lens.Family2.LensLike' f s a
compressorLibrary = Data.ProtoLens.Field.field @"compressorLibrary"
contentLength ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "contentLength" a) =>
  Lens.Family2.LensLike' f s a
contentLength = Data.ProtoLens.Field.field @"contentLength"
contentType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "contentType" a) =>
  Lens.Family2.LensLike' f s a
contentType = Data.ProtoLens.Field.field @"contentType"
disableOnEtagHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disableOnEtagHeader" a) =>
  Lens.Family2.LensLike' f s a
disableOnEtagHeader
  = Data.ProtoLens.Field.field @"disableOnEtagHeader"
enabled ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "enabled" a) =>
  Lens.Family2.LensLike' f s a
enabled = Data.ProtoLens.Field.field @"enabled"
maybe'commonConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commonConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'commonConfig
  = Data.ProtoLens.Field.field @"maybe'commonConfig"
maybe'compressorLibrary ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'compressorLibrary" a) =>
  Lens.Family2.LensLike' f s a
maybe'compressorLibrary
  = Data.ProtoLens.Field.field @"maybe'compressorLibrary"
maybe'contentLength ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'contentLength" a) =>
  Lens.Family2.LensLike' f s a
maybe'contentLength
  = Data.ProtoLens.Field.field @"maybe'contentLength"
maybe'enabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'enabled = Data.ProtoLens.Field.field @"maybe'enabled"
maybe'minContentLength ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minContentLength" a) =>
  Lens.Family2.LensLike' f s a
maybe'minContentLength
  = Data.ProtoLens.Field.field @"maybe'minContentLength"
maybe'requestDirectionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestDirectionConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestDirectionConfig
  = Data.ProtoLens.Field.field @"maybe'requestDirectionConfig"
maybe'responseDirectionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'responseDirectionConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'responseDirectionConfig
  = Data.ProtoLens.Field.field @"maybe'responseDirectionConfig"
maybe'runtimeEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'runtimeEnabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'runtimeEnabled
  = Data.ProtoLens.Field.field @"maybe'runtimeEnabled"
minContentLength ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minContentLength" a) =>
  Lens.Family2.LensLike' f s a
minContentLength = Data.ProtoLens.Field.field @"minContentLength"
removeAcceptEncodingHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "removeAcceptEncodingHeader" a) =>
  Lens.Family2.LensLike' f s a
removeAcceptEncodingHeader
  = Data.ProtoLens.Field.field @"removeAcceptEncodingHeader"
requestDirectionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestDirectionConfig" a) =>
  Lens.Family2.LensLike' f s a
requestDirectionConfig
  = Data.ProtoLens.Field.field @"requestDirectionConfig"
responseDirectionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseDirectionConfig" a) =>
  Lens.Family2.LensLike' f s a
responseDirectionConfig
  = Data.ProtoLens.Field.field @"responseDirectionConfig"
runtimeEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "runtimeEnabled" a) =>
  Lens.Family2.LensLike' f s a
runtimeEnabled = Data.ProtoLens.Field.field @"runtimeEnabled"
vec'contentType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'contentType" a) =>
  Lens.Family2.LensLike' f s a
vec'contentType = Data.ProtoLens.Field.field @"vec'contentType"