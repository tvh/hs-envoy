{- This file was auto-generated from envoy/service/discovery/v3/discovery.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Discovery.V3.Discovery_Fields where
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Rpc.Status
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
aliases ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "aliases" a) =>
  Lens.Family2.LensLike' f s a
aliases = Data.ProtoLens.Field.field @"aliases"
cacheControl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cacheControl" a) =>
  Lens.Family2.LensLike' f s a
cacheControl = Data.ProtoLens.Field.field @"cacheControl"
canary ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "canary" a) =>
  Lens.Family2.LensLike' f s a
canary = Data.ProtoLens.Field.field @"canary"
controlPlane ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "controlPlane" a) =>
  Lens.Family2.LensLike' f s a
controlPlane = Data.ProtoLens.Field.field @"controlPlane"
doNotCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "doNotCache" a) =>
  Lens.Family2.LensLike' f s a
doNotCache = Data.ProtoLens.Field.field @"doNotCache"
errorDetail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "errorDetail" a) =>
  Lens.Family2.LensLike' f s a
errorDetail = Data.ProtoLens.Field.field @"errorDetail"
initialResourceVersions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialResourceVersions" a) =>
  Lens.Family2.LensLike' f s a
initialResourceVersions
  = Data.ProtoLens.Field.field @"initialResourceVersions"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maybe'cacheControl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cacheControl" a) =>
  Lens.Family2.LensLike' f s a
maybe'cacheControl
  = Data.ProtoLens.Field.field @"maybe'cacheControl"
maybe'controlPlane ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'controlPlane" a) =>
  Lens.Family2.LensLike' f s a
maybe'controlPlane
  = Data.ProtoLens.Field.field @"maybe'controlPlane"
maybe'errorDetail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'errorDetail" a) =>
  Lens.Family2.LensLike' f s a
maybe'errorDetail = Data.ProtoLens.Field.field @"maybe'errorDetail"
maybe'node ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'node" a) =>
  Lens.Family2.LensLike' f s a
maybe'node = Data.ProtoLens.Field.field @"maybe'node"
maybe'resource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'resource" a) =>
  Lens.Family2.LensLike' f s a
maybe'resource = Data.ProtoLens.Field.field @"maybe'resource"
maybe'ttl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ttl" a) =>
  Lens.Family2.LensLike' f s a
maybe'ttl = Data.ProtoLens.Field.field @"maybe'ttl"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
node ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "node" a) =>
  Lens.Family2.LensLike' f s a
node = Data.ProtoLens.Field.field @"node"
nonce ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nonce" a) =>
  Lens.Family2.LensLike' f s a
nonce = Data.ProtoLens.Field.field @"nonce"
removedResources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "removedResources" a) =>
  Lens.Family2.LensLike' f s a
removedResources = Data.ProtoLens.Field.field @"removedResources"
resource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resource" a) =>
  Lens.Family2.LensLike' f s a
resource = Data.ProtoLens.Field.field @"resource"
resourceNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resourceNames" a) =>
  Lens.Family2.LensLike' f s a
resourceNames = Data.ProtoLens.Field.field @"resourceNames"
resourceNamesSubscribe ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resourceNamesSubscribe" a) =>
  Lens.Family2.LensLike' f s a
resourceNamesSubscribe
  = Data.ProtoLens.Field.field @"resourceNamesSubscribe"
resourceNamesUnsubscribe ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resourceNamesUnsubscribe" a) =>
  Lens.Family2.LensLike' f s a
resourceNamesUnsubscribe
  = Data.ProtoLens.Field.field @"resourceNamesUnsubscribe"
resources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resources" a) =>
  Lens.Family2.LensLike' f s a
resources = Data.ProtoLens.Field.field @"resources"
responseNonce ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseNonce" a) =>
  Lens.Family2.LensLike' f s a
responseNonce = Data.ProtoLens.Field.field @"responseNonce"
systemVersionInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "systemVersionInfo" a) =>
  Lens.Family2.LensLike' f s a
systemVersionInfo = Data.ProtoLens.Field.field @"systemVersionInfo"
ttl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ttl" a) =>
  Lens.Family2.LensLike' f s a
ttl = Data.ProtoLens.Field.field @"ttl"
typeUrl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "typeUrl" a) =>
  Lens.Family2.LensLike' f s a
typeUrl = Data.ProtoLens.Field.field @"typeUrl"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'aliases ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'aliases" a) =>
  Lens.Family2.LensLike' f s a
vec'aliases = Data.ProtoLens.Field.field @"vec'aliases"
vec'removedResources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'removedResources" a) =>
  Lens.Family2.LensLike' f s a
vec'removedResources
  = Data.ProtoLens.Field.field @"vec'removedResources"
vec'resourceNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'resourceNames" a) =>
  Lens.Family2.LensLike' f s a
vec'resourceNames = Data.ProtoLens.Field.field @"vec'resourceNames"
vec'resourceNamesSubscribe ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'resourceNamesSubscribe" a) =>
  Lens.Family2.LensLike' f s a
vec'resourceNamesSubscribe
  = Data.ProtoLens.Field.field @"vec'resourceNamesSubscribe"
vec'resourceNamesUnsubscribe ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'resourceNamesUnsubscribe" a) =>
  Lens.Family2.LensLike' f s a
vec'resourceNamesUnsubscribe
  = Data.ProtoLens.Field.field @"vec'resourceNamesUnsubscribe"
vec'resources ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'resources" a) =>
  Lens.Family2.LensLike' f s a
vec'resources = Data.ProtoLens.Field.field @"vec'resources"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
versionInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versionInfo" a) =>
  Lens.Family2.LensLike' f s a
versionInfo = Data.ProtoLens.Field.field @"versionInfo"