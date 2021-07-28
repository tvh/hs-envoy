{- This file was auto-generated from envoy/data/accesslog/v3/accesslog.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Accesslog.V3.Accesslog_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
authority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authority" a) =>
  Lens.Family2.LensLike' f s a
authority = Data.ProtoLens.Field.field @"authority"
commonProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commonProperties" a) =>
  Lens.Family2.LensLike' f s a
commonProperties = Data.ProtoLens.Field.field @"commonProperties"
connectionProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "connectionProperties" a) =>
  Lens.Family2.LensLike' f s a
connectionProperties
  = Data.ProtoLens.Field.field @"connectionProperties"
delayInjected ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delayInjected" a) =>
  Lens.Family2.LensLike' f s a
delayInjected = Data.ProtoLens.Field.field @"delayInjected"
dns ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dns" a) =>
  Lens.Family2.LensLike' f s a
dns = Data.ProtoLens.Field.field @"dns"
downstreamConnectionTermination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "downstreamConnectionTermination" a) =>
  Lens.Family2.LensLike' f s a
downstreamConnectionTermination
  = Data.ProtoLens.Field.field @"downstreamConnectionTermination"
downstreamDirectRemoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "downstreamDirectRemoteAddress" a) =>
  Lens.Family2.LensLike' f s a
downstreamDirectRemoteAddress
  = Data.ProtoLens.Field.field @"downstreamDirectRemoteAddress"
downstreamLocalAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "downstreamLocalAddress" a) =>
  Lens.Family2.LensLike' f s a
downstreamLocalAddress
  = Data.ProtoLens.Field.field @"downstreamLocalAddress"
downstreamProtocolError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "downstreamProtocolError" a) =>
  Lens.Family2.LensLike' f s a
downstreamProtocolError
  = Data.ProtoLens.Field.field @"downstreamProtocolError"
downstreamRemoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "downstreamRemoteAddress" a) =>
  Lens.Family2.LensLike' f s a
downstreamRemoteAddress
  = Data.ProtoLens.Field.field @"downstreamRemoteAddress"
durationTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "durationTimeout" a) =>
  Lens.Family2.LensLike' f s a
durationTimeout = Data.ProtoLens.Field.field @"durationTimeout"
failedLocalHealthcheck ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failedLocalHealthcheck" a) =>
  Lens.Family2.LensLike' f s a
failedLocalHealthcheck
  = Data.ProtoLens.Field.field @"failedLocalHealthcheck"
faultInjected ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "faultInjected" a) =>
  Lens.Family2.LensLike' f s a
faultInjected = Data.ProtoLens.Field.field @"faultInjected"
filterStateObjects ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterStateObjects" a) =>
  Lens.Family2.LensLike' f s a
filterStateObjects
  = Data.ProtoLens.Field.field @"filterStateObjects"
forwardedFor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "forwardedFor" a) =>
  Lens.Family2.LensLike' f s a
forwardedFor = Data.ProtoLens.Field.field @"forwardedFor"
invalidEnvoyRequestHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "invalidEnvoyRequestHeaders" a) =>
  Lens.Family2.LensLike' f s a
invalidEnvoyRequestHeaders
  = Data.ProtoLens.Field.field @"invalidEnvoyRequestHeaders"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
localCertificateProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localCertificateProperties" a) =>
  Lens.Family2.LensLike' f s a
localCertificateProperties
  = Data.ProtoLens.Field.field @"localCertificateProperties"
localReset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localReset" a) =>
  Lens.Family2.LensLike' f s a
localReset = Data.ProtoLens.Field.field @"localReset"
maybe'commonProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commonProperties" a) =>
  Lens.Family2.LensLike' f s a
maybe'commonProperties
  = Data.ProtoLens.Field.field @"maybe'commonProperties"
maybe'connectionProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'connectionProperties" a) =>
  Lens.Family2.LensLike' f s a
maybe'connectionProperties
  = Data.ProtoLens.Field.field @"maybe'connectionProperties"
maybe'dns ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dns" a) =>
  Lens.Family2.LensLike' f s a
maybe'dns = Data.ProtoLens.Field.field @"maybe'dns"
maybe'downstreamDirectRemoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'downstreamDirectRemoteAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'downstreamDirectRemoteAddress
  = Data.ProtoLens.Field.field @"maybe'downstreamDirectRemoteAddress"
maybe'downstreamLocalAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'downstreamLocalAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'downstreamLocalAddress
  = Data.ProtoLens.Field.field @"maybe'downstreamLocalAddress"
maybe'downstreamRemoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'downstreamRemoteAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'downstreamRemoteAddress
  = Data.ProtoLens.Field.field @"maybe'downstreamRemoteAddress"
maybe'localCertificateProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localCertificateProperties" a) =>
  Lens.Family2.LensLike' f s a
maybe'localCertificateProperties
  = Data.ProtoLens.Field.field @"maybe'localCertificateProperties"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
maybe'peerCertificateProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'peerCertificateProperties" a) =>
  Lens.Family2.LensLike' f s a
maybe'peerCertificateProperties
  = Data.ProtoLens.Field.field @"maybe'peerCertificateProperties"
maybe'port ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'port" a) =>
  Lens.Family2.LensLike' f s a
maybe'port = Data.ProtoLens.Field.field @"maybe'port"
maybe'request ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'request" a) =>
  Lens.Family2.LensLike' f s a
maybe'request = Data.ProtoLens.Field.field @"maybe'request"
maybe'response ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'response" a) =>
  Lens.Family2.LensLike' f s a
maybe'response = Data.ProtoLens.Field.field @"maybe'response"
maybe'responseCode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'responseCode" a) =>
  Lens.Family2.LensLike' f s a
maybe'responseCode
  = Data.ProtoLens.Field.field @"maybe'responseCode"
maybe'responseFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'responseFlags" a) =>
  Lens.Family2.LensLike' f s a
maybe'responseFlags
  = Data.ProtoLens.Field.field @"maybe'responseFlags"
maybe'san ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'san" a) =>
  Lens.Family2.LensLike' f s a
maybe'san = Data.ProtoLens.Field.field @"maybe'san"
maybe'startTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'startTime = Data.ProtoLens.Field.field @"maybe'startTime"
maybe'timeToFirstDownstreamTxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeToFirstDownstreamTxByte" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeToFirstDownstreamTxByte
  = Data.ProtoLens.Field.field @"maybe'timeToFirstDownstreamTxByte"
maybe'timeToFirstUpstreamRxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeToFirstUpstreamRxByte" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeToFirstUpstreamRxByte
  = Data.ProtoLens.Field.field @"maybe'timeToFirstUpstreamRxByte"
maybe'timeToFirstUpstreamTxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeToFirstUpstreamTxByte" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeToFirstUpstreamTxByte
  = Data.ProtoLens.Field.field @"maybe'timeToFirstUpstreamTxByte"
maybe'timeToLastDownstreamTxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeToLastDownstreamTxByte" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeToLastDownstreamTxByte
  = Data.ProtoLens.Field.field @"maybe'timeToLastDownstreamTxByte"
maybe'timeToLastRxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeToLastRxByte" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeToLastRxByte
  = Data.ProtoLens.Field.field @"maybe'timeToLastRxByte"
maybe'timeToLastUpstreamRxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeToLastUpstreamRxByte" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeToLastUpstreamRxByte
  = Data.ProtoLens.Field.field @"maybe'timeToLastUpstreamRxByte"
maybe'timeToLastUpstreamTxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeToLastUpstreamTxByte" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeToLastUpstreamTxByte
  = Data.ProtoLens.Field.field @"maybe'timeToLastUpstreamTxByte"
maybe'tlsCipherSuite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tlsCipherSuite" a) =>
  Lens.Family2.LensLike' f s a
maybe'tlsCipherSuite
  = Data.ProtoLens.Field.field @"maybe'tlsCipherSuite"
maybe'tlsProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tlsProperties" a) =>
  Lens.Family2.LensLike' f s a
maybe'tlsProperties
  = Data.ProtoLens.Field.field @"maybe'tlsProperties"
maybe'unauthorizedDetails ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unauthorizedDetails" a) =>
  Lens.Family2.LensLike' f s a
maybe'unauthorizedDetails
  = Data.ProtoLens.Field.field @"maybe'unauthorizedDetails"
maybe'upstreamLocalAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upstreamLocalAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'upstreamLocalAddress
  = Data.ProtoLens.Field.field @"maybe'upstreamLocalAddress"
maybe'upstreamRemoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upstreamRemoteAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'upstreamRemoteAddress
  = Data.ProtoLens.Field.field @"maybe'upstreamRemoteAddress"
maybe'uri ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uri" a) =>
  Lens.Family2.LensLike' f s a
maybe'uri = Data.ProtoLens.Field.field @"maybe'uri"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
noClusterFound ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "noClusterFound" a) =>
  Lens.Family2.LensLike' f s a
noClusterFound = Data.ProtoLens.Field.field @"noClusterFound"
noFilterConfigFound ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "noFilterConfigFound" a) =>
  Lens.Family2.LensLike' f s a
noFilterConfigFound
  = Data.ProtoLens.Field.field @"noFilterConfigFound"
noHealthyUpstream ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "noHealthyUpstream" a) =>
  Lens.Family2.LensLike' f s a
noHealthyUpstream = Data.ProtoLens.Field.field @"noHealthyUpstream"
noRouteFound ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "noRouteFound" a) =>
  Lens.Family2.LensLike' f s a
noRouteFound = Data.ProtoLens.Field.field @"noRouteFound"
originalPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "originalPath" a) =>
  Lens.Family2.LensLike' f s a
originalPath = Data.ProtoLens.Field.field @"originalPath"
overloadManager ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overloadManager" a) =>
  Lens.Family2.LensLike' f s a
overloadManager = Data.ProtoLens.Field.field @"overloadManager"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
peerCertificateProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "peerCertificateProperties" a) =>
  Lens.Family2.LensLike' f s a
peerCertificateProperties
  = Data.ProtoLens.Field.field @"peerCertificateProperties"
port ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "port" a) =>
  Lens.Family2.LensLike' f s a
port = Data.ProtoLens.Field.field @"port"
protocolVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocolVersion" a) =>
  Lens.Family2.LensLike' f s a
protocolVersion = Data.ProtoLens.Field.field @"protocolVersion"
rateLimitServiceError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rateLimitServiceError" a) =>
  Lens.Family2.LensLike' f s a
rateLimitServiceError
  = Data.ProtoLens.Field.field @"rateLimitServiceError"
rateLimited ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rateLimited" a) =>
  Lens.Family2.LensLike' f s a
rateLimited = Data.ProtoLens.Field.field @"rateLimited"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
receivedBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "receivedBytes" a) =>
  Lens.Family2.LensLike' f s a
receivedBytes = Data.ProtoLens.Field.field @"receivedBytes"
referer ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "referer" a) =>
  Lens.Family2.LensLike' f s a
referer = Data.ProtoLens.Field.field @"referer"
request ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "request" a) =>
  Lens.Family2.LensLike' f s a
request = Data.ProtoLens.Field.field @"request"
requestBodyBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestBodyBytes" a) =>
  Lens.Family2.LensLike' f s a
requestBodyBytes = Data.ProtoLens.Field.field @"requestBodyBytes"
requestHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeaders" a) =>
  Lens.Family2.LensLike' f s a
requestHeaders = Data.ProtoLens.Field.field @"requestHeaders"
requestHeadersBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeadersBytes" a) =>
  Lens.Family2.LensLike' f s a
requestHeadersBytes
  = Data.ProtoLens.Field.field @"requestHeadersBytes"
requestId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestId" a) =>
  Lens.Family2.LensLike' f s a
requestId = Data.ProtoLens.Field.field @"requestId"
requestMethod ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestMethod" a) =>
  Lens.Family2.LensLike' f s a
requestMethod = Data.ProtoLens.Field.field @"requestMethod"
response ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "response" a) =>
  Lens.Family2.LensLike' f s a
response = Data.ProtoLens.Field.field @"response"
responseBodyBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseBodyBytes" a) =>
  Lens.Family2.LensLike' f s a
responseBodyBytes = Data.ProtoLens.Field.field @"responseBodyBytes"
responseCode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseCode" a) =>
  Lens.Family2.LensLike' f s a
responseCode = Data.ProtoLens.Field.field @"responseCode"
responseCodeDetails ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseCodeDetails" a) =>
  Lens.Family2.LensLike' f s a
responseCodeDetails
  = Data.ProtoLens.Field.field @"responseCodeDetails"
responseFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseFlags" a) =>
  Lens.Family2.LensLike' f s a
responseFlags = Data.ProtoLens.Field.field @"responseFlags"
responseFromCacheFilter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseFromCacheFilter" a) =>
  Lens.Family2.LensLike' f s a
responseFromCacheFilter
  = Data.ProtoLens.Field.field @"responseFromCacheFilter"
responseHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseHeaders" a) =>
  Lens.Family2.LensLike' f s a
responseHeaders = Data.ProtoLens.Field.field @"responseHeaders"
responseHeadersBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseHeadersBytes" a) =>
  Lens.Family2.LensLike' f s a
responseHeadersBytes
  = Data.ProtoLens.Field.field @"responseHeadersBytes"
responseTrailers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseTrailers" a) =>
  Lens.Family2.LensLike' f s a
responseTrailers = Data.ProtoLens.Field.field @"responseTrailers"
routeName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "routeName" a) =>
  Lens.Family2.LensLike' f s a
routeName = Data.ProtoLens.Field.field @"routeName"
sampleRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sampleRate" a) =>
  Lens.Family2.LensLike' f s a
sampleRate = Data.ProtoLens.Field.field @"sampleRate"
scheme ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "scheme" a) =>
  Lens.Family2.LensLike' f s a
scheme = Data.ProtoLens.Field.field @"scheme"
sentBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sentBytes" a) =>
  Lens.Family2.LensLike' f s a
sentBytes = Data.ProtoLens.Field.field @"sentBytes"
startTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startTime" a) =>
  Lens.Family2.LensLike' f s a
startTime = Data.ProtoLens.Field.field @"startTime"
streamIdleTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "streamIdleTimeout" a) =>
  Lens.Family2.LensLike' f s a
streamIdleTimeout = Data.ProtoLens.Field.field @"streamIdleTimeout"
subject ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "subject" a) =>
  Lens.Family2.LensLike' f s a
subject = Data.ProtoLens.Field.field @"subject"
subjectAltName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "subjectAltName" a) =>
  Lens.Family2.LensLike' f s a
subjectAltName = Data.ProtoLens.Field.field @"subjectAltName"
timeToFirstDownstreamTxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeToFirstDownstreamTxByte" a) =>
  Lens.Family2.LensLike' f s a
timeToFirstDownstreamTxByte
  = Data.ProtoLens.Field.field @"timeToFirstDownstreamTxByte"
timeToFirstUpstreamRxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeToFirstUpstreamRxByte" a) =>
  Lens.Family2.LensLike' f s a
timeToFirstUpstreamRxByte
  = Data.ProtoLens.Field.field @"timeToFirstUpstreamRxByte"
timeToFirstUpstreamTxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeToFirstUpstreamTxByte" a) =>
  Lens.Family2.LensLike' f s a
timeToFirstUpstreamTxByte
  = Data.ProtoLens.Field.field @"timeToFirstUpstreamTxByte"
timeToLastDownstreamTxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeToLastDownstreamTxByte" a) =>
  Lens.Family2.LensLike' f s a
timeToLastDownstreamTxByte
  = Data.ProtoLens.Field.field @"timeToLastDownstreamTxByte"
timeToLastRxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeToLastRxByte" a) =>
  Lens.Family2.LensLike' f s a
timeToLastRxByte = Data.ProtoLens.Field.field @"timeToLastRxByte"
timeToLastUpstreamRxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeToLastUpstreamRxByte" a) =>
  Lens.Family2.LensLike' f s a
timeToLastUpstreamRxByte
  = Data.ProtoLens.Field.field @"timeToLastUpstreamRxByte"
timeToLastUpstreamTxByte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeToLastUpstreamTxByte" a) =>
  Lens.Family2.LensLike' f s a
timeToLastUpstreamTxByte
  = Data.ProtoLens.Field.field @"timeToLastUpstreamTxByte"
tlsCipherSuite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsCipherSuite" a) =>
  Lens.Family2.LensLike' f s a
tlsCipherSuite = Data.ProtoLens.Field.field @"tlsCipherSuite"
tlsProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsProperties" a) =>
  Lens.Family2.LensLike' f s a
tlsProperties = Data.ProtoLens.Field.field @"tlsProperties"
tlsSessionId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsSessionId" a) =>
  Lens.Family2.LensLike' f s a
tlsSessionId = Data.ProtoLens.Field.field @"tlsSessionId"
tlsSniHostname ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsSniHostname" a) =>
  Lens.Family2.LensLike' f s a
tlsSniHostname = Data.ProtoLens.Field.field @"tlsSniHostname"
tlsVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsVersion" a) =>
  Lens.Family2.LensLike' f s a
tlsVersion = Data.ProtoLens.Field.field @"tlsVersion"
unauthorizedDetails ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unauthorizedDetails" a) =>
  Lens.Family2.LensLike' f s a
unauthorizedDetails
  = Data.ProtoLens.Field.field @"unauthorizedDetails"
upstreamCluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamCluster" a) =>
  Lens.Family2.LensLike' f s a
upstreamCluster = Data.ProtoLens.Field.field @"upstreamCluster"
upstreamConnectionFailure ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamConnectionFailure" a) =>
  Lens.Family2.LensLike' f s a
upstreamConnectionFailure
  = Data.ProtoLens.Field.field @"upstreamConnectionFailure"
upstreamConnectionTermination ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamConnectionTermination" a) =>
  Lens.Family2.LensLike' f s a
upstreamConnectionTermination
  = Data.ProtoLens.Field.field @"upstreamConnectionTermination"
upstreamLocalAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamLocalAddress" a) =>
  Lens.Family2.LensLike' f s a
upstreamLocalAddress
  = Data.ProtoLens.Field.field @"upstreamLocalAddress"
upstreamMaxStreamDurationReached ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamMaxStreamDurationReached" a) =>
  Lens.Family2.LensLike' f s a
upstreamMaxStreamDurationReached
  = Data.ProtoLens.Field.field @"upstreamMaxStreamDurationReached"
upstreamOverflow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamOverflow" a) =>
  Lens.Family2.LensLike' f s a
upstreamOverflow = Data.ProtoLens.Field.field @"upstreamOverflow"
upstreamProtocolError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamProtocolError" a) =>
  Lens.Family2.LensLike' f s a
upstreamProtocolError
  = Data.ProtoLens.Field.field @"upstreamProtocolError"
upstreamRemoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamRemoteAddress" a) =>
  Lens.Family2.LensLike' f s a
upstreamRemoteAddress
  = Data.ProtoLens.Field.field @"upstreamRemoteAddress"
upstreamRemoteReset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamRemoteReset" a) =>
  Lens.Family2.LensLike' f s a
upstreamRemoteReset
  = Data.ProtoLens.Field.field @"upstreamRemoteReset"
upstreamRequestTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamRequestTimeout" a) =>
  Lens.Family2.LensLike' f s a
upstreamRequestTimeout
  = Data.ProtoLens.Field.field @"upstreamRequestTimeout"
upstreamRetryLimitExceeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamRetryLimitExceeded" a) =>
  Lens.Family2.LensLike' f s a
upstreamRetryLimitExceeded
  = Data.ProtoLens.Field.field @"upstreamRetryLimitExceeded"
upstreamTransportFailureReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamTransportFailureReason" a) =>
  Lens.Family2.LensLike' f s a
upstreamTransportFailureReason
  = Data.ProtoLens.Field.field @"upstreamTransportFailureReason"
uri ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uri" a) =>
  Lens.Family2.LensLike' f s a
uri = Data.ProtoLens.Field.field @"uri"
userAgent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "userAgent" a) =>
  Lens.Family2.LensLike' f s a
userAgent = Data.ProtoLens.Field.field @"userAgent"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'subjectAltName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'subjectAltName" a) =>
  Lens.Family2.LensLike' f s a
vec'subjectAltName
  = Data.ProtoLens.Field.field @"vec'subjectAltName"