{- This file was auto-generated from envoy/config/core/v3/config_source.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.ConfigSource_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
import qualified Proto.Xds.Core.V3.Authority
ads ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ads" a) =>
  Lens.Family2.LensLike' f s a
ads = Data.ProtoLens.Field.field @"ads"
apiConfigSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "apiConfigSource" a) =>
  Lens.Family2.LensLike' f s a
apiConfigSource = Data.ProtoLens.Field.field @"apiConfigSource"
apiType ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "apiType" a) =>
  Lens.Family2.LensLike' f s a
apiType = Data.ProtoLens.Field.field @"apiType"
authorities ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authorities" a) =>
  Lens.Family2.LensLike' f s a
authorities = Data.ProtoLens.Field.field @"authorities"
clusterNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterNames" a) =>
  Lens.Family2.LensLike' f s a
clusterNames = Data.ProtoLens.Field.field @"clusterNames"
fillRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fillRate" a) =>
  Lens.Family2.LensLike' f s a
fillRate = Data.ProtoLens.Field.field @"fillRate"
grpcServices ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcServices" a) =>
  Lens.Family2.LensLike' f s a
grpcServices = Data.ProtoLens.Field.field @"grpcServices"
initialFetchTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialFetchTimeout" a) =>
  Lens.Family2.LensLike' f s a
initialFetchTimeout
  = Data.ProtoLens.Field.field @"initialFetchTimeout"
maxTokens ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxTokens" a) =>
  Lens.Family2.LensLike' f s a
maxTokens = Data.ProtoLens.Field.field @"maxTokens"
maybe'ads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ads" a) =>
  Lens.Family2.LensLike' f s a
maybe'ads = Data.ProtoLens.Field.field @"maybe'ads"
maybe'apiConfigSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'apiConfigSource" a) =>
  Lens.Family2.LensLike' f s a
maybe'apiConfigSource
  = Data.ProtoLens.Field.field @"maybe'apiConfigSource"
maybe'configSourceSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configSourceSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'configSourceSpecifier
  = Data.ProtoLens.Field.field @"maybe'configSourceSpecifier"
maybe'fillRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fillRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'fillRate = Data.ProtoLens.Field.field @"maybe'fillRate"
maybe'initialFetchTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'initialFetchTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'initialFetchTimeout
  = Data.ProtoLens.Field.field @"maybe'initialFetchTimeout"
maybe'maxTokens ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxTokens" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxTokens = Data.ProtoLens.Field.field @"maybe'maxTokens"
maybe'path ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'path" a) =>
  Lens.Family2.LensLike' f s a
maybe'path = Data.ProtoLens.Field.field @"maybe'path"
maybe'rateLimitSettings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rateLimitSettings" a) =>
  Lens.Family2.LensLike' f s a
maybe'rateLimitSettings
  = Data.ProtoLens.Field.field @"maybe'rateLimitSettings"
maybe'refreshDelay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'refreshDelay" a) =>
  Lens.Family2.LensLike' f s a
maybe'refreshDelay
  = Data.ProtoLens.Field.field @"maybe'refreshDelay"
maybe'requestTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestTimeout
  = Data.ProtoLens.Field.field @"maybe'requestTimeout"
maybe'self ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'self" a) =>
  Lens.Family2.LensLike' f s a
maybe'self = Data.ProtoLens.Field.field @"maybe'self"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
rateLimitSettings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rateLimitSettings" a) =>
  Lens.Family2.LensLike' f s a
rateLimitSettings = Data.ProtoLens.Field.field @"rateLimitSettings"
refreshDelay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "refreshDelay" a) =>
  Lens.Family2.LensLike' f s a
refreshDelay = Data.ProtoLens.Field.field @"refreshDelay"
requestTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestTimeout" a) =>
  Lens.Family2.LensLike' f s a
requestTimeout = Data.ProtoLens.Field.field @"requestTimeout"
resourceApiVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resourceApiVersion" a) =>
  Lens.Family2.LensLike' f s a
resourceApiVersion
  = Data.ProtoLens.Field.field @"resourceApiVersion"
self ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "self" a) =>
  Lens.Family2.LensLike' f s a
self = Data.ProtoLens.Field.field @"self"
setNodeOnFirstMessageOnly ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "setNodeOnFirstMessageOnly" a) =>
  Lens.Family2.LensLike' f s a
setNodeOnFirstMessageOnly
  = Data.ProtoLens.Field.field @"setNodeOnFirstMessageOnly"
transportApiVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transportApiVersion" a) =>
  Lens.Family2.LensLike' f s a
transportApiVersion
  = Data.ProtoLens.Field.field @"transportApiVersion"
vec'authorities ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'authorities" a) =>
  Lens.Family2.LensLike' f s a
vec'authorities = Data.ProtoLens.Field.field @"vec'authorities"
vec'clusterNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clusterNames" a) =>
  Lens.Family2.LensLike' f s a
vec'clusterNames = Data.ProtoLens.Field.field @"vec'clusterNames"
vec'grpcServices ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'grpcServices" a) =>
  Lens.Family2.LensLike' f s a
vec'grpcServices = Data.ProtoLens.Field.field @"vec'grpcServices"