{- This file was auto-generated from envoy/extensions/filters/network/redis_proxy/v3/redis_proxy.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.RedisProxy.V3.RedisProxy_Fields where
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Sensitive
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
authPassword ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authPassword" a) =>
  Lens.Family2.LensLike' f s a
authPassword = Data.ProtoLens.Field.field @"authPassword"
authUsername ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authUsername" a) =>
  Lens.Family2.LensLike' f s a
authUsername = Data.ProtoLens.Field.field @"authUsername"
bufferFlushTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bufferFlushTimeout" a) =>
  Lens.Family2.LensLike' f s a
bufferFlushTimeout
  = Data.ProtoLens.Field.field @"bufferFlushTimeout"
caseInsensitive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "caseInsensitive" a) =>
  Lens.Family2.LensLike' f s a
caseInsensitive = Data.ProtoLens.Field.field @"caseInsensitive"
catchAllRoute ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "catchAllRoute" a) =>
  Lens.Family2.LensLike' f s a
catchAllRoute = Data.ProtoLens.Field.field @"catchAllRoute"
cluster ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cluster" a) =>
  Lens.Family2.LensLike' f s a
cluster = Data.ProtoLens.Field.field @"cluster"
commands ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commands" a) =>
  Lens.Family2.LensLike' f s a
commands = Data.ProtoLens.Field.field @"commands"
delay ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "delay" a) =>
  Lens.Family2.LensLike' f s a
delay = Data.ProtoLens.Field.field @"delay"
downstreamAuthPassword ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "downstreamAuthPassword" a) =>
  Lens.Family2.LensLike' f s a
downstreamAuthPassword
  = Data.ProtoLens.Field.field @"downstreamAuthPassword"
downstreamAuthUsername ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "downstreamAuthUsername" a) =>
  Lens.Family2.LensLike' f s a
downstreamAuthUsername
  = Data.ProtoLens.Field.field @"downstreamAuthUsername"
enableCommandStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableCommandStats" a) =>
  Lens.Family2.LensLike' f s a
enableCommandStats
  = Data.ProtoLens.Field.field @"enableCommandStats"
enableHashtagging ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableHashtagging" a) =>
  Lens.Family2.LensLike' f s a
enableHashtagging = Data.ProtoLens.Field.field @"enableHashtagging"
enableRedirection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableRedirection" a) =>
  Lens.Family2.LensLike' f s a
enableRedirection = Data.ProtoLens.Field.field @"enableRedirection"
excludeReadCommands ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "excludeReadCommands" a) =>
  Lens.Family2.LensLike' f s a
excludeReadCommands
  = Data.ProtoLens.Field.field @"excludeReadCommands"
faultEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "faultEnabled" a) =>
  Lens.Family2.LensLike' f s a
faultEnabled = Data.ProtoLens.Field.field @"faultEnabled"
faultType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "faultType" a) =>
  Lens.Family2.LensLike' f s a
faultType = Data.ProtoLens.Field.field @"faultType"
faults ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "faults" a) =>
  Lens.Family2.LensLike' f s a
faults = Data.ProtoLens.Field.field @"faults"
latencyInMicros ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "latencyInMicros" a) =>
  Lens.Family2.LensLike' f s a
latencyInMicros = Data.ProtoLens.Field.field @"latencyInMicros"
maxBufferSizeBeforeFlush ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxBufferSizeBeforeFlush" a) =>
  Lens.Family2.LensLike' f s a
maxBufferSizeBeforeFlush
  = Data.ProtoLens.Field.field @"maxBufferSizeBeforeFlush"
maxUpstreamUnknownConnections ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxUpstreamUnknownConnections" a) =>
  Lens.Family2.LensLike' f s a
maxUpstreamUnknownConnections
  = Data.ProtoLens.Field.field @"maxUpstreamUnknownConnections"
maybe'authPassword ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'authPassword" a) =>
  Lens.Family2.LensLike' f s a
maybe'authPassword
  = Data.ProtoLens.Field.field @"maybe'authPassword"
maybe'authUsername ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'authUsername" a) =>
  Lens.Family2.LensLike' f s a
maybe'authUsername
  = Data.ProtoLens.Field.field @"maybe'authUsername"
maybe'bufferFlushTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bufferFlushTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'bufferFlushTimeout
  = Data.ProtoLens.Field.field @"maybe'bufferFlushTimeout"
maybe'catchAllRoute ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'catchAllRoute" a) =>
  Lens.Family2.LensLike' f s a
maybe'catchAllRoute
  = Data.ProtoLens.Field.field @"maybe'catchAllRoute"
maybe'delay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'delay" a) =>
  Lens.Family2.LensLike' f s a
maybe'delay = Data.ProtoLens.Field.field @"maybe'delay"
maybe'downstreamAuthPassword ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'downstreamAuthPassword" a) =>
  Lens.Family2.LensLike' f s a
maybe'downstreamAuthPassword
  = Data.ProtoLens.Field.field @"maybe'downstreamAuthPassword"
maybe'downstreamAuthUsername ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'downstreamAuthUsername" a) =>
  Lens.Family2.LensLike' f s a
maybe'downstreamAuthUsername
  = Data.ProtoLens.Field.field @"maybe'downstreamAuthUsername"
maybe'faultEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'faultEnabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'faultEnabled
  = Data.ProtoLens.Field.field @"maybe'faultEnabled"
maybe'maxUpstreamUnknownConnections ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxUpstreamUnknownConnections" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxUpstreamUnknownConnections
  = Data.ProtoLens.Field.field @"maybe'maxUpstreamUnknownConnections"
maybe'opTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'opTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'opTimeout = Data.ProtoLens.Field.field @"maybe'opTimeout"
maybe'prefixRoutes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefixRoutes" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefixRoutes
  = Data.ProtoLens.Field.field @"maybe'prefixRoutes"
maybe'runtimeFraction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'runtimeFraction" a) =>
  Lens.Family2.LensLike' f s a
maybe'runtimeFraction
  = Data.ProtoLens.Field.field @"maybe'runtimeFraction"
maybe'settings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'settings" a) =>
  Lens.Family2.LensLike' f s a
maybe'settings = Data.ProtoLens.Field.field @"maybe'settings"
opTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "opTimeout" a) =>
  Lens.Family2.LensLike' f s a
opTimeout = Data.ProtoLens.Field.field @"opTimeout"
prefix ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prefix" a) =>
  Lens.Family2.LensLike' f s a
prefix = Data.ProtoLens.Field.field @"prefix"
prefixRoutes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prefixRoutes" a) =>
  Lens.Family2.LensLike' f s a
prefixRoutes = Data.ProtoLens.Field.field @"prefixRoutes"
readPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readPolicy" a) =>
  Lens.Family2.LensLike' f s a
readPolicy = Data.ProtoLens.Field.field @"readPolicy"
removePrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "removePrefix" a) =>
  Lens.Family2.LensLike' f s a
removePrefix = Data.ProtoLens.Field.field @"removePrefix"
requestMirrorPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestMirrorPolicy" a) =>
  Lens.Family2.LensLike' f s a
requestMirrorPolicy
  = Data.ProtoLens.Field.field @"requestMirrorPolicy"
routes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "routes" a) =>
  Lens.Family2.LensLike' f s a
routes = Data.ProtoLens.Field.field @"routes"
runtimeFraction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "runtimeFraction" a) =>
  Lens.Family2.LensLike' f s a
runtimeFraction = Data.ProtoLens.Field.field @"runtimeFraction"
settings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "settings" a) =>
  Lens.Family2.LensLike' f s a
settings = Data.ProtoLens.Field.field @"settings"
statPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statPrefix" a) =>
  Lens.Family2.LensLike' f s a
statPrefix = Data.ProtoLens.Field.field @"statPrefix"
vec'commands ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'commands" a) =>
  Lens.Family2.LensLike' f s a
vec'commands = Data.ProtoLens.Field.field @"vec'commands"
vec'faults ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'faults" a) =>
  Lens.Family2.LensLike' f s a
vec'faults = Data.ProtoLens.Field.field @"vec'faults"
vec'requestMirrorPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestMirrorPolicy" a) =>
  Lens.Family2.LensLike' f s a
vec'requestMirrorPolicy
  = Data.ProtoLens.Field.field @"vec'requestMirrorPolicy"
vec'routes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'routes" a) =>
  Lens.Family2.LensLike' f s a
vec'routes = Data.ProtoLens.Field.field @"vec'routes"