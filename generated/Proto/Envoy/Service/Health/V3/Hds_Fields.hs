{- This file was auto-generated from envoy/service/health/v3/hds.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Health.V3.Hds_Fields where
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
import qualified Proto.Envoy.Config.Cluster.V3.Cluster
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.HealthCheck
import qualified Proto.Envoy.Config.Endpoint.V3.EndpointComponents
import qualified Proto.Google.Api.Annotations
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
capability ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "capability" a) =>
  Lens.Family2.LensLike' f s a
capability = Data.ProtoLens.Field.field @"capability"
clusterEndpointsHealth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterEndpointsHealth" a) =>
  Lens.Family2.LensLike' f s a
clusterEndpointsHealth
  = Data.ProtoLens.Field.field @"clusterEndpointsHealth"
clusterHealthChecks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterHealthChecks" a) =>
  Lens.Family2.LensLike' f s a
clusterHealthChecks
  = Data.ProtoLens.Field.field @"clusterHealthChecks"
clusterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterName" a) =>
  Lens.Family2.LensLike' f s a
clusterName = Data.ProtoLens.Field.field @"clusterName"
endpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpoint" a) =>
  Lens.Family2.LensLike' f s a
endpoint = Data.ProtoLens.Field.field @"endpoint"
endpointHealthResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpointHealthResponse" a) =>
  Lens.Family2.LensLike' f s a
endpointHealthResponse
  = Data.ProtoLens.Field.field @"endpointHealthResponse"
endpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpoints" a) =>
  Lens.Family2.LensLike' f s a
endpoints = Data.ProtoLens.Field.field @"endpoints"
endpointsHealth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpointsHealth" a) =>
  Lens.Family2.LensLike' f s a
endpointsHealth = Data.ProtoLens.Field.field @"endpointsHealth"
healthCheckProtocols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "healthCheckProtocols" a) =>
  Lens.Family2.LensLike' f s a
healthCheckProtocols
  = Data.ProtoLens.Field.field @"healthCheckProtocols"
healthCheckRequest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "healthCheckRequest" a) =>
  Lens.Family2.LensLike' f s a
healthCheckRequest
  = Data.ProtoLens.Field.field @"healthCheckRequest"
healthChecks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "healthChecks" a) =>
  Lens.Family2.LensLike' f s a
healthChecks = Data.ProtoLens.Field.field @"healthChecks"
healthStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "healthStatus" a) =>
  Lens.Family2.LensLike' f s a
healthStatus = Data.ProtoLens.Field.field @"healthStatus"
interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "interval" a) =>
  Lens.Family2.LensLike' f s a
interval = Data.ProtoLens.Field.field @"interval"
locality ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "locality" a) =>
  Lens.Family2.LensLike' f s a
locality = Data.ProtoLens.Field.field @"locality"
localityEndpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localityEndpoints" a) =>
  Lens.Family2.LensLike' f s a
localityEndpoints = Data.ProtoLens.Field.field @"localityEndpoints"
localityEndpointsHealth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localityEndpointsHealth" a) =>
  Lens.Family2.LensLike' f s a
localityEndpointsHealth
  = Data.ProtoLens.Field.field @"localityEndpointsHealth"
maybe'capability ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'capability" a) =>
  Lens.Family2.LensLike' f s a
maybe'capability = Data.ProtoLens.Field.field @"maybe'capability"
maybe'endpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endpoint" a) =>
  Lens.Family2.LensLike' f s a
maybe'endpoint = Data.ProtoLens.Field.field @"maybe'endpoint"
maybe'endpointHealthResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endpointHealthResponse" a) =>
  Lens.Family2.LensLike' f s a
maybe'endpointHealthResponse
  = Data.ProtoLens.Field.field @"maybe'endpointHealthResponse"
maybe'healthCheckRequest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'healthCheckRequest" a) =>
  Lens.Family2.LensLike' f s a
maybe'healthCheckRequest
  = Data.ProtoLens.Field.field @"maybe'healthCheckRequest"
maybe'interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'interval" a) =>
  Lens.Family2.LensLike' f s a
maybe'interval = Data.ProtoLens.Field.field @"maybe'interval"
maybe'locality ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'locality" a) =>
  Lens.Family2.LensLike' f s a
maybe'locality = Data.ProtoLens.Field.field @"maybe'locality"
maybe'node ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'node" a) =>
  Lens.Family2.LensLike' f s a
maybe'node = Data.ProtoLens.Field.field @"maybe'node"
maybe'requestType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestType" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestType = Data.ProtoLens.Field.field @"maybe'requestType"
node ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "node" a) =>
  Lens.Family2.LensLike' f s a
node = Data.ProtoLens.Field.field @"node"
transportSocketMatches ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transportSocketMatches" a) =>
  Lens.Family2.LensLike' f s a
transportSocketMatches
  = Data.ProtoLens.Field.field @"transportSocketMatches"
vec'clusterEndpointsHealth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clusterEndpointsHealth" a) =>
  Lens.Family2.LensLike' f s a
vec'clusterEndpointsHealth
  = Data.ProtoLens.Field.field @"vec'clusterEndpointsHealth"
vec'clusterHealthChecks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clusterHealthChecks" a) =>
  Lens.Family2.LensLike' f s a
vec'clusterHealthChecks
  = Data.ProtoLens.Field.field @"vec'clusterHealthChecks"
vec'endpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'endpoints" a) =>
  Lens.Family2.LensLike' f s a
vec'endpoints = Data.ProtoLens.Field.field @"vec'endpoints"
vec'endpointsHealth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'endpointsHealth" a) =>
  Lens.Family2.LensLike' f s a
vec'endpointsHealth
  = Data.ProtoLens.Field.field @"vec'endpointsHealth"
vec'healthCheckProtocols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'healthCheckProtocols" a) =>
  Lens.Family2.LensLike' f s a
vec'healthCheckProtocols
  = Data.ProtoLens.Field.field @"vec'healthCheckProtocols"
vec'healthChecks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'healthChecks" a) =>
  Lens.Family2.LensLike' f s a
vec'healthChecks = Data.ProtoLens.Field.field @"vec'healthChecks"
vec'localityEndpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'localityEndpoints" a) =>
  Lens.Family2.LensLike' f s a
vec'localityEndpoints
  = Data.ProtoLens.Field.field @"vec'localityEndpoints"
vec'localityEndpointsHealth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'localityEndpointsHealth" a) =>
  Lens.Family2.LensLike' f s a
vec'localityEndpointsHealth
  = Data.ProtoLens.Field.field @"vec'localityEndpointsHealth"
vec'transportSocketMatches ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'transportSocketMatches" a) =>
  Lens.Family2.LensLike' f s a
vec'transportSocketMatches
  = Data.ProtoLens.Field.field @"vec'transportSocketMatches"