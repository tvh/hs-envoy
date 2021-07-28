{- This file was auto-generated from envoy/service/status/v3/csds.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Status.V3.Csds_Fields where
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
import qualified Proto.Envoy.Admin.V3.ConfigDump
import qualified Proto.Envoy.Annotations.Deprecation
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Type.Matcher.V3.Node
import qualified Proto.Google.Api.Annotations
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
clientStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clientStatus" a) =>
  Lens.Family2.LensLike' f s a
clientStatus = Data.ProtoLens.Field.field @"clientStatus"
clusterConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterConfig" a) =>
  Lens.Family2.LensLike' f s a
clusterConfig = Data.ProtoLens.Field.field @"clusterConfig"
config ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "config" a) =>
  Lens.Family2.LensLike' f s a
config = Data.ProtoLens.Field.field @"config"
configStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "configStatus" a) =>
  Lens.Family2.LensLike' f s a
configStatus = Data.ProtoLens.Field.field @"configStatus"
endpointConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpointConfig" a) =>
  Lens.Family2.LensLike' f s a
endpointConfig = Data.ProtoLens.Field.field @"endpointConfig"
errorState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "errorState" a) =>
  Lens.Family2.LensLike' f s a
errorState = Data.ProtoLens.Field.field @"errorState"
genericXdsConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "genericXdsConfigs" a) =>
  Lens.Family2.LensLike' f s a
genericXdsConfigs = Data.ProtoLens.Field.field @"genericXdsConfigs"
isStaticResource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isStaticResource" a) =>
  Lens.Family2.LensLike' f s a
isStaticResource = Data.ProtoLens.Field.field @"isStaticResource"
lastUpdated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lastUpdated" a) =>
  Lens.Family2.LensLike' f s a
lastUpdated = Data.ProtoLens.Field.field @"lastUpdated"
listenerConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listenerConfig" a) =>
  Lens.Family2.LensLike' f s a
listenerConfig = Data.ProtoLens.Field.field @"listenerConfig"
maybe'clusterConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clusterConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'clusterConfig
  = Data.ProtoLens.Field.field @"maybe'clusterConfig"
maybe'endpointConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endpointConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'endpointConfig
  = Data.ProtoLens.Field.field @"maybe'endpointConfig"
maybe'errorState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'errorState" a) =>
  Lens.Family2.LensLike' f s a
maybe'errorState = Data.ProtoLens.Field.field @"maybe'errorState"
maybe'lastUpdated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lastUpdated" a) =>
  Lens.Family2.LensLike' f s a
maybe'lastUpdated = Data.ProtoLens.Field.field @"maybe'lastUpdated"
maybe'listenerConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listenerConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'listenerConfig
  = Data.ProtoLens.Field.field @"maybe'listenerConfig"
maybe'node ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'node" a) =>
  Lens.Family2.LensLike' f s a
maybe'node = Data.ProtoLens.Field.field @"maybe'node"
maybe'perXdsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'perXdsConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'perXdsConfig
  = Data.ProtoLens.Field.field @"maybe'perXdsConfig"
maybe'routeConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'routeConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'routeConfig = Data.ProtoLens.Field.field @"maybe'routeConfig"
maybe'scopedRouteConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scopedRouteConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'scopedRouteConfig
  = Data.ProtoLens.Field.field @"maybe'scopedRouteConfig"
maybe'xdsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'xdsConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'xdsConfig = Data.ProtoLens.Field.field @"maybe'xdsConfig"
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
nodeMatchers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nodeMatchers" a) =>
  Lens.Family2.LensLike' f s a
nodeMatchers = Data.ProtoLens.Field.field @"nodeMatchers"
routeConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "routeConfig" a) =>
  Lens.Family2.LensLike' f s a
routeConfig = Data.ProtoLens.Field.field @"routeConfig"
scopedRouteConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scopedRouteConfig" a) =>
  Lens.Family2.LensLike' f s a
scopedRouteConfig = Data.ProtoLens.Field.field @"scopedRouteConfig"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
typeUrl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "typeUrl" a) =>
  Lens.Family2.LensLike' f s a
typeUrl = Data.ProtoLens.Field.field @"typeUrl"
vec'config ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'config" a) =>
  Lens.Family2.LensLike' f s a
vec'config = Data.ProtoLens.Field.field @"vec'config"
vec'genericXdsConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'genericXdsConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'genericXdsConfigs
  = Data.ProtoLens.Field.field @"vec'genericXdsConfigs"
vec'nodeMatchers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'nodeMatchers" a) =>
  Lens.Family2.LensLike' f s a
vec'nodeMatchers = Data.ProtoLens.Field.field @"vec'nodeMatchers"
vec'xdsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'xdsConfig" a) =>
  Lens.Family2.LensLike' f s a
vec'xdsConfig = Data.ProtoLens.Field.field @"vec'xdsConfig"
versionInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "versionInfo" a) =>
  Lens.Family2.LensLike' f s a
versionInfo = Data.ProtoLens.Field.field @"versionInfo"
xdsConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "xdsConfig" a) =>
  Lens.Family2.LensLike' f s a
xdsConfig = Data.ProtoLens.Field.field @"xdsConfig"