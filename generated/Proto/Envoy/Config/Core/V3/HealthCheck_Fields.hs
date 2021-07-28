{- This file was auto-generated from envoy/config/core/v3/health_check.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.HealthCheck_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.EventServiceConfig
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Envoy.Type.V3.Http
import qualified Proto.Envoy.Type.V3.Range
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
alpnProtocols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "alpnProtocols" a) =>
  Lens.Family2.LensLike' f s a
alpnProtocols = Data.ProtoLens.Field.field @"alpnProtocols"
altPort ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "altPort" a) =>
  Lens.Family2.LensLike' f s a
altPort = Data.ProtoLens.Field.field @"altPort"
alwaysLogHealthCheckFailures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "alwaysLogHealthCheckFailures" a) =>
  Lens.Family2.LensLike' f s a
alwaysLogHealthCheckFailures
  = Data.ProtoLens.Field.field @"alwaysLogHealthCheckFailures"
authority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authority" a) =>
  Lens.Family2.LensLike' f s a
authority = Data.ProtoLens.Field.field @"authority"
binary ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "binary" a) =>
  Lens.Family2.LensLike' f s a
binary = Data.ProtoLens.Field.field @"binary"
codecClientType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "codecClientType" a) =>
  Lens.Family2.LensLike' f s a
codecClientType = Data.ProtoLens.Field.field @"codecClientType"
customHealthCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "customHealthCheck" a) =>
  Lens.Family2.LensLike' f s a
customHealthCheck = Data.ProtoLens.Field.field @"customHealthCheck"
eventLogPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventLogPath" a) =>
  Lens.Family2.LensLike' f s a
eventLogPath = Data.ProtoLens.Field.field @"eventLogPath"
eventService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventService" a) =>
  Lens.Family2.LensLike' f s a
eventService = Data.ProtoLens.Field.field @"eventService"
expectedStatuses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expectedStatuses" a) =>
  Lens.Family2.LensLike' f s a
expectedStatuses = Data.ProtoLens.Field.field @"expectedStatuses"
grpcHealthCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcHealthCheck" a) =>
  Lens.Family2.LensLike' f s a
grpcHealthCheck = Data.ProtoLens.Field.field @"grpcHealthCheck"
healthyEdgeInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "healthyEdgeInterval" a) =>
  Lens.Family2.LensLike' f s a
healthyEdgeInterval
  = Data.ProtoLens.Field.field @"healthyEdgeInterval"
healthyThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "healthyThreshold" a) =>
  Lens.Family2.LensLike' f s a
healthyThreshold = Data.ProtoLens.Field.field @"healthyThreshold"
host ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "host" a) =>
  Lens.Family2.LensLike' f s a
host = Data.ProtoLens.Field.field @"host"
httpHealthCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpHealthCheck" a) =>
  Lens.Family2.LensLike' f s a
httpHealthCheck = Data.ProtoLens.Field.field @"httpHealthCheck"
initialJitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialJitter" a) =>
  Lens.Family2.LensLike' f s a
initialJitter = Data.ProtoLens.Field.field @"initialJitter"
interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "interval" a) =>
  Lens.Family2.LensLike' f s a
interval = Data.ProtoLens.Field.field @"interval"
intervalJitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "intervalJitter" a) =>
  Lens.Family2.LensLike' f s a
intervalJitter = Data.ProtoLens.Field.field @"intervalJitter"
intervalJitterPercent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "intervalJitterPercent" a) =>
  Lens.Family2.LensLike' f s a
intervalJitterPercent
  = Data.ProtoLens.Field.field @"intervalJitterPercent"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maybe'altPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'altPort" a) =>
  Lens.Family2.LensLike' f s a
maybe'altPort = Data.ProtoLens.Field.field @"maybe'altPort"
maybe'binary ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binary" a) =>
  Lens.Family2.LensLike' f s a
maybe'binary = Data.ProtoLens.Field.field @"maybe'binary"
maybe'configType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configType" a) =>
  Lens.Family2.LensLike' f s a
maybe'configType = Data.ProtoLens.Field.field @"maybe'configType"
maybe'customHealthCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'customHealthCheck" a) =>
  Lens.Family2.LensLike' f s a
maybe'customHealthCheck
  = Data.ProtoLens.Field.field @"maybe'customHealthCheck"
maybe'eventService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'eventService" a) =>
  Lens.Family2.LensLike' f s a
maybe'eventService
  = Data.ProtoLens.Field.field @"maybe'eventService"
maybe'grpcHealthCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcHealthCheck" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcHealthCheck
  = Data.ProtoLens.Field.field @"maybe'grpcHealthCheck"
maybe'healthChecker ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'healthChecker" a) =>
  Lens.Family2.LensLike' f s a
maybe'healthChecker
  = Data.ProtoLens.Field.field @"maybe'healthChecker"
maybe'healthyEdgeInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'healthyEdgeInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'healthyEdgeInterval
  = Data.ProtoLens.Field.field @"maybe'healthyEdgeInterval"
maybe'healthyThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'healthyThreshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'healthyThreshold
  = Data.ProtoLens.Field.field @"maybe'healthyThreshold"
maybe'httpHealthCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpHealthCheck" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpHealthCheck
  = Data.ProtoLens.Field.field @"maybe'httpHealthCheck"
maybe'initialJitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'initialJitter" a) =>
  Lens.Family2.LensLike' f s a
maybe'initialJitter
  = Data.ProtoLens.Field.field @"maybe'initialJitter"
maybe'interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'interval" a) =>
  Lens.Family2.LensLike' f s a
maybe'interval = Data.ProtoLens.Field.field @"maybe'interval"
maybe'intervalJitter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'intervalJitter" a) =>
  Lens.Family2.LensLike' f s a
maybe'intervalJitter
  = Data.ProtoLens.Field.field @"maybe'intervalJitter"
maybe'noTrafficHealthyInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'noTrafficHealthyInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'noTrafficHealthyInterval
  = Data.ProtoLens.Field.field @"maybe'noTrafficHealthyInterval"
maybe'noTrafficInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'noTrafficInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'noTrafficInterval
  = Data.ProtoLens.Field.field @"maybe'noTrafficInterval"
maybe'payload ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'payload" a) =>
  Lens.Family2.LensLike' f s a
maybe'payload = Data.ProtoLens.Field.field @"maybe'payload"
maybe'receive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'receive" a) =>
  Lens.Family2.LensLike' f s a
maybe'receive = Data.ProtoLens.Field.field @"maybe'receive"
maybe'reuseConnection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'reuseConnection" a) =>
  Lens.Family2.LensLike' f s a
maybe'reuseConnection
  = Data.ProtoLens.Field.field @"maybe'reuseConnection"
maybe'send ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'send" a) =>
  Lens.Family2.LensLike' f s a
maybe'send = Data.ProtoLens.Field.field @"maybe'send"
maybe'serviceNameMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'serviceNameMatcher" a) =>
  Lens.Family2.LensLike' f s a
maybe'serviceNameMatcher
  = Data.ProtoLens.Field.field @"maybe'serviceNameMatcher"
maybe'tcpHealthCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tcpHealthCheck" a) =>
  Lens.Family2.LensLike' f s a
maybe'tcpHealthCheck
  = Data.ProtoLens.Field.field @"maybe'tcpHealthCheck"
maybe'text ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'text" a) =>
  Lens.Family2.LensLike' f s a
maybe'text = Data.ProtoLens.Field.field @"maybe'text"
maybe'timeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeout = Data.ProtoLens.Field.field @"maybe'timeout"
maybe'tlsOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tlsOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'tlsOptions = Data.ProtoLens.Field.field @"maybe'tlsOptions"
maybe'transportSocketMatchCriteria ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'transportSocketMatchCriteria" a) =>
  Lens.Family2.LensLike' f s a
maybe'transportSocketMatchCriteria
  = Data.ProtoLens.Field.field @"maybe'transportSocketMatchCriteria"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
maybe'unhealthyEdgeInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unhealthyEdgeInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'unhealthyEdgeInterval
  = Data.ProtoLens.Field.field @"maybe'unhealthyEdgeInterval"
maybe'unhealthyInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unhealthyInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'unhealthyInterval
  = Data.ProtoLens.Field.field @"maybe'unhealthyInterval"
maybe'unhealthyThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unhealthyThreshold" a) =>
  Lens.Family2.LensLike' f s a
maybe'unhealthyThreshold
  = Data.ProtoLens.Field.field @"maybe'unhealthyThreshold"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
noTrafficHealthyInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "noTrafficHealthyInterval" a) =>
  Lens.Family2.LensLike' f s a
noTrafficHealthyInterval
  = Data.ProtoLens.Field.field @"noTrafficHealthyInterval"
noTrafficInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "noTrafficInterval" a) =>
  Lens.Family2.LensLike' f s a
noTrafficInterval = Data.ProtoLens.Field.field @"noTrafficInterval"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
receive ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "receive" a) =>
  Lens.Family2.LensLike' f s a
receive = Data.ProtoLens.Field.field @"receive"
requestHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
requestHeadersToAdd
  = Data.ProtoLens.Field.field @"requestHeadersToAdd"
requestHeadersToRemove ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeadersToRemove" a) =>
  Lens.Family2.LensLike' f s a
requestHeadersToRemove
  = Data.ProtoLens.Field.field @"requestHeadersToRemove"
reuseConnection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "reuseConnection" a) =>
  Lens.Family2.LensLike' f s a
reuseConnection = Data.ProtoLens.Field.field @"reuseConnection"
send ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "send" a) =>
  Lens.Family2.LensLike' f s a
send = Data.ProtoLens.Field.field @"send"
serviceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serviceName" a) =>
  Lens.Family2.LensLike' f s a
serviceName = Data.ProtoLens.Field.field @"serviceName"
serviceNameMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serviceNameMatcher" a) =>
  Lens.Family2.LensLike' f s a
serviceNameMatcher
  = Data.ProtoLens.Field.field @"serviceNameMatcher"
tcpHealthCheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tcpHealthCheck" a) =>
  Lens.Family2.LensLike' f s a
tcpHealthCheck = Data.ProtoLens.Field.field @"tcpHealthCheck"
text ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "text" a) =>
  Lens.Family2.LensLike' f s a
text = Data.ProtoLens.Field.field @"text"
timeout ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "timeout" a) =>
  Lens.Family2.LensLike' f s a
timeout = Data.ProtoLens.Field.field @"timeout"
tlsOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsOptions" a) =>
  Lens.Family2.LensLike' f s a
tlsOptions = Data.ProtoLens.Field.field @"tlsOptions"
transportSocketMatchCriteria ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transportSocketMatchCriteria" a) =>
  Lens.Family2.LensLike' f s a
transportSocketMatchCriteria
  = Data.ProtoLens.Field.field @"transportSocketMatchCriteria"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
unhealthyEdgeInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unhealthyEdgeInterval" a) =>
  Lens.Family2.LensLike' f s a
unhealthyEdgeInterval
  = Data.ProtoLens.Field.field @"unhealthyEdgeInterval"
unhealthyInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unhealthyInterval" a) =>
  Lens.Family2.LensLike' f s a
unhealthyInterval = Data.ProtoLens.Field.field @"unhealthyInterval"
unhealthyThreshold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unhealthyThreshold" a) =>
  Lens.Family2.LensLike' f s a
unhealthyThreshold
  = Data.ProtoLens.Field.field @"unhealthyThreshold"
vec'alpnProtocols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'alpnProtocols" a) =>
  Lens.Family2.LensLike' f s a
vec'alpnProtocols = Data.ProtoLens.Field.field @"vec'alpnProtocols"
vec'expectedStatuses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'expectedStatuses" a) =>
  Lens.Family2.LensLike' f s a
vec'expectedStatuses
  = Data.ProtoLens.Field.field @"vec'expectedStatuses"
vec'receive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'receive" a) =>
  Lens.Family2.LensLike' f s a
vec'receive = Data.ProtoLens.Field.field @"vec'receive"
vec'requestHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
vec'requestHeadersToAdd
  = Data.ProtoLens.Field.field @"vec'requestHeadersToAdd"
vec'requestHeadersToRemove ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestHeadersToRemove" a) =>
  Lens.Family2.LensLike' f s a
vec'requestHeadersToRemove
  = Data.ProtoLens.Field.field @"vec'requestHeadersToRemove"