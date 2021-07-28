{- This file was auto-generated from envoy/extensions/filters/network/http_connection_manager/v3/http_connection_manager.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Network.HttpConnectionManager.V3.HttpConnectionManager_Fields where
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
import qualified Proto.Envoy.Config.Accesslog.V3.Accesslog
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Config.Core.V3.Protocol
import qualified Proto.Envoy.Config.Core.V3.SubstitutionFormatString
import qualified Proto.Envoy.Config.Route.V3.Route
import qualified Proto.Envoy.Config.Route.V3.ScopedRoute
import qualified Proto.Envoy.Config.Trace.V3.HttpTracer
import qualified Proto.Envoy.Type.Http.V3.PathTransformation
import qualified Proto.Envoy.Type.Tracing.V3.CustomTag
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Security
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
accessLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "accessLog" a) =>
  Lens.Family2.LensLike' f s a
accessLog = Data.ProtoLens.Field.field @"accessLog"
addUserAgent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "addUserAgent" a) =>
  Lens.Family2.LensLike' f s a
addUserAgent = Data.ProtoLens.Field.field @"addUserAgent"
alwaysSetRequestIdInResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "alwaysSetRequestIdInResponse" a) =>
  Lens.Family2.LensLike' f s a
alwaysSetRequestIdInResponse
  = Data.ProtoLens.Field.field @"alwaysSetRequestIdInResponse"
body ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "body" a) =>
  Lens.Family2.LensLike' f s a
body = Data.ProtoLens.Field.field @"body"
bodyFormat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bodyFormat" a) =>
  Lens.Family2.LensLike' f s a
bodyFormat = Data.ProtoLens.Field.field @"bodyFormat"
bodyFormatOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bodyFormatOverride" a) =>
  Lens.Family2.LensLike' f s a
bodyFormatOverride
  = Data.ProtoLens.Field.field @"bodyFormatOverride"
cert ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cert" a) =>
  Lens.Family2.LensLike' f s a
cert = Data.ProtoLens.Field.field @"cert"
chain ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chain" a) =>
  Lens.Family2.LensLike' f s a
chain = Data.ProtoLens.Field.field @"chain"
clientSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clientSampling" a) =>
  Lens.Family2.LensLike' f s a
clientSampling = Data.ProtoLens.Field.field @"clientSampling"
codecType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "codecType" a) =>
  Lens.Family2.LensLike' f s a
codecType = Data.ProtoLens.Field.field @"codecType"
commonHttpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commonHttpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
commonHttpProtocolOptions
  = Data.ProtoLens.Field.field @"commonHttpProtocolOptions"
configDiscovery ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "configDiscovery" a) =>
  Lens.Family2.LensLike' f s a
configDiscovery = Data.ProtoLens.Field.field @"configDiscovery"
configSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "configSource" a) =>
  Lens.Family2.LensLike' f s a
configSource = Data.ProtoLens.Field.field @"configSource"
customTags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "customTags" a) =>
  Lens.Family2.LensLike' f s a
customTags = Data.ProtoLens.Field.field @"customTags"
delayedCloseTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "delayedCloseTimeout" a) =>
  Lens.Family2.LensLike' f s a
delayedCloseTimeout
  = Data.ProtoLens.Field.field @"delayedCloseTimeout"
dns ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dns" a) =>
  Lens.Family2.LensLike' f s a
dns = Data.ProtoLens.Field.field @"dns"
drainTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drainTimeout" a) =>
  Lens.Family2.LensLike' f s a
drainTimeout = Data.ProtoLens.Field.field @"drainTimeout"
element ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "element" a) =>
  Lens.Family2.LensLike' f s a
element = Data.ProtoLens.Field.field @"element"
elementSeparator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "elementSeparator" a) =>
  Lens.Family2.LensLike' f s a
elementSeparator = Data.ProtoLens.Field.field @"elementSeparator"
enabled ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "enabled" a) =>
  Lens.Family2.LensLike' f s a
enabled = Data.ProtoLens.Field.field @"enabled"
filter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "filter" a) =>
  Lens.Family2.LensLike' f s a
filter = Data.ProtoLens.Field.field @"filter"
filters ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "filters" a) =>
  Lens.Family2.LensLike' f s a
filters = Data.ProtoLens.Field.field @"filters"
forwardClientCertDetails ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "forwardClientCertDetails" a) =>
  Lens.Family2.LensLike' f s a
forwardClientCertDetails
  = Data.ProtoLens.Field.field @"forwardClientCertDetails"
forwardingTransformation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "forwardingTransformation" a) =>
  Lens.Family2.LensLike' f s a
forwardingTransformation
  = Data.ProtoLens.Field.field @"forwardingTransformation"
fragments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fragments" a) =>
  Lens.Family2.LensLike' f s a
fragments = Data.ProtoLens.Field.field @"fragments"
generateRequestId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "generateRequestId" a) =>
  Lens.Family2.LensLike' f s a
generateRequestId = Data.ProtoLens.Field.field @"generateRequestId"
headerValueExtractor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headerValueExtractor" a) =>
  Lens.Family2.LensLike' f s a
headerValueExtractor
  = Data.ProtoLens.Field.field @"headerValueExtractor"
headersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headersToAdd" a) =>
  Lens.Family2.LensLike' f s a
headersToAdd = Data.ProtoLens.Field.field @"headersToAdd"
http2ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "http2ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
http2ProtocolOptions
  = Data.ProtoLens.Field.field @"http2ProtocolOptions"
http3ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "http3ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
http3ProtocolOptions
  = Data.ProtoLens.Field.field @"http3ProtocolOptions"
httpFilterTransformation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpFilterTransformation" a) =>
  Lens.Family2.LensLike' f s a
httpFilterTransformation
  = Data.ProtoLens.Field.field @"httpFilterTransformation"
httpFilters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpFilters" a) =>
  Lens.Family2.LensLike' f s a
httpFilters = Data.ProtoLens.Field.field @"httpFilters"
httpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
httpProtocolOptions
  = Data.ProtoLens.Field.field @"httpProtocolOptions"
index ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
  Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
internalAddressConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "internalAddressConfig" a) =>
  Lens.Family2.LensLike' f s a
internalAddressConfig
  = Data.ProtoLens.Field.field @"internalAddressConfig"
isOptional ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isOptional" a) =>
  Lens.Family2.LensLike' f s a
isOptional = Data.ProtoLens.Field.field @"isOptional"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
localReplyConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localReplyConfig" a) =>
  Lens.Family2.LensLike' f s a
localReplyConfig = Data.ProtoLens.Field.field @"localReplyConfig"
mappers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mappers" a) =>
  Lens.Family2.LensLike' f s a
mappers = Data.ProtoLens.Field.field @"mappers"
maxPathTagLength ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxPathTagLength" a) =>
  Lens.Family2.LensLike' f s a
maxPathTagLength = Data.ProtoLens.Field.field @"maxPathTagLength"
maxRequestHeadersKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxRequestHeadersKb" a) =>
  Lens.Family2.LensLike' f s a
maxRequestHeadersKb
  = Data.ProtoLens.Field.field @"maxRequestHeadersKb"
maybe'addUserAgent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'addUserAgent" a) =>
  Lens.Family2.LensLike' f s a
maybe'addUserAgent
  = Data.ProtoLens.Field.field @"maybe'addUserAgent"
maybe'body ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'body" a) =>
  Lens.Family2.LensLike' f s a
maybe'body = Data.ProtoLens.Field.field @"maybe'body"
maybe'bodyFormat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bodyFormat" a) =>
  Lens.Family2.LensLike' f s a
maybe'bodyFormat = Data.ProtoLens.Field.field @"maybe'bodyFormat"
maybe'bodyFormatOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bodyFormatOverride" a) =>
  Lens.Family2.LensLike' f s a
maybe'bodyFormatOverride
  = Data.ProtoLens.Field.field @"maybe'bodyFormatOverride"
maybe'clientSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clientSampling" a) =>
  Lens.Family2.LensLike' f s a
maybe'clientSampling
  = Data.ProtoLens.Field.field @"maybe'clientSampling"
maybe'commonHttpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commonHttpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'commonHttpProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'commonHttpProtocolOptions"
maybe'configDiscovery ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configDiscovery" a) =>
  Lens.Family2.LensLike' f s a
maybe'configDiscovery
  = Data.ProtoLens.Field.field @"maybe'configDiscovery"
maybe'configSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configSource" a) =>
  Lens.Family2.LensLike' f s a
maybe'configSource
  = Data.ProtoLens.Field.field @"maybe'configSource"
maybe'configSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'configSpecifier
  = Data.ProtoLens.Field.field @"maybe'configSpecifier"
maybe'configType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configType" a) =>
  Lens.Family2.LensLike' f s a
maybe'configType = Data.ProtoLens.Field.field @"maybe'configType"
maybe'delayedCloseTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'delayedCloseTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'delayedCloseTimeout
  = Data.ProtoLens.Field.field @"maybe'delayedCloseTimeout"
maybe'drainTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drainTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'drainTimeout
  = Data.ProtoLens.Field.field @"maybe'drainTimeout"
maybe'element ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'element" a) =>
  Lens.Family2.LensLike' f s a
maybe'element = Data.ProtoLens.Field.field @"maybe'element"
maybe'enabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'enabled = Data.ProtoLens.Field.field @"maybe'enabled"
maybe'extractType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'extractType" a) =>
  Lens.Family2.LensLike' f s a
maybe'extractType = Data.ProtoLens.Field.field @"maybe'extractType"
maybe'filter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filter" a) =>
  Lens.Family2.LensLike' f s a
maybe'filter = Data.ProtoLens.Field.field @"maybe'filter"
maybe'forwardingTransformation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'forwardingTransformation" a) =>
  Lens.Family2.LensLike' f s a
maybe'forwardingTransformation
  = Data.ProtoLens.Field.field @"maybe'forwardingTransformation"
maybe'generateRequestId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'generateRequestId" a) =>
  Lens.Family2.LensLike' f s a
maybe'generateRequestId
  = Data.ProtoLens.Field.field @"maybe'generateRequestId"
maybe'headerValueExtractor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'headerValueExtractor" a) =>
  Lens.Family2.LensLike' f s a
maybe'headerValueExtractor
  = Data.ProtoLens.Field.field @"maybe'headerValueExtractor"
maybe'http2ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'http2ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'http2ProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions"
maybe'http3ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'http3ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'http3ProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'http3ProtocolOptions"
maybe'httpFilterTransformation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpFilterTransformation" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpFilterTransformation
  = Data.ProtoLens.Field.field @"maybe'httpFilterTransformation"
maybe'httpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'httpProtocolOptions"
maybe'index ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'index" a) =>
  Lens.Family2.LensLike' f s a
maybe'index = Data.ProtoLens.Field.field @"maybe'index"
maybe'internalAddressConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'internalAddressConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'internalAddressConfig
  = Data.ProtoLens.Field.field @"maybe'internalAddressConfig"
maybe'localReplyConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localReplyConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'localReplyConfig
  = Data.ProtoLens.Field.field @"maybe'localReplyConfig"
maybe'maxPathTagLength ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxPathTagLength" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxPathTagLength
  = Data.ProtoLens.Field.field @"maybe'maxPathTagLength"
maybe'maxRequestHeadersKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxRequestHeadersKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxRequestHeadersKb
  = Data.ProtoLens.Field.field @"maybe'maxRequestHeadersKb"
maybe'normalizePath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'normalizePath" a) =>
  Lens.Family2.LensLike' f s a
maybe'normalizePath
  = Data.ProtoLens.Field.field @"maybe'normalizePath"
maybe'overallSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'overallSampling" a) =>
  Lens.Family2.LensLike' f s a
maybe'overallSampling
  = Data.ProtoLens.Field.field @"maybe'overallSampling"
maybe'pathNormalizationOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pathNormalizationOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'pathNormalizationOptions
  = Data.ProtoLens.Field.field @"maybe'pathNormalizationOptions"
maybe'provider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'provider" a) =>
  Lens.Family2.LensLike' f s a
maybe'provider = Data.ProtoLens.Field.field @"maybe'provider"
maybe'randomSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'randomSampling" a) =>
  Lens.Family2.LensLike' f s a
maybe'randomSampling
  = Data.ProtoLens.Field.field @"maybe'randomSampling"
maybe'rds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rds" a) =>
  Lens.Family2.LensLike' f s a
maybe'rds = Data.ProtoLens.Field.field @"maybe'rds"
maybe'rdsConfigSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rdsConfigSource" a) =>
  Lens.Family2.LensLike' f s a
maybe'rdsConfigSource
  = Data.ProtoLens.Field.field @"maybe'rdsConfigSource"
maybe'requestHeadersTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestHeadersTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestHeadersTimeout
  = Data.ProtoLens.Field.field @"maybe'requestHeadersTimeout"
maybe'requestIdExtension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestIdExtension" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestIdExtension
  = Data.ProtoLens.Field.field @"maybe'requestIdExtension"
maybe'requestTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestTimeout
  = Data.ProtoLens.Field.field @"maybe'requestTimeout"
maybe'routeConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'routeConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'routeConfig = Data.ProtoLens.Field.field @"maybe'routeConfig"
maybe'routeSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'routeSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'routeSpecifier
  = Data.ProtoLens.Field.field @"maybe'routeSpecifier"
maybe'schemeHeaderTransformation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schemeHeaderTransformation" a) =>
  Lens.Family2.LensLike' f s a
maybe'schemeHeaderTransformation
  = Data.ProtoLens.Field.field @"maybe'schemeHeaderTransformation"
maybe'scopeKeyBuilder ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scopeKeyBuilder" a) =>
  Lens.Family2.LensLike' f s a
maybe'scopeKeyBuilder
  = Data.ProtoLens.Field.field @"maybe'scopeKeyBuilder"
maybe'scopedRds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scopedRds" a) =>
  Lens.Family2.LensLike' f s a
maybe'scopedRds = Data.ProtoLens.Field.field @"maybe'scopedRds"
maybe'scopedRdsConfigSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scopedRdsConfigSource" a) =>
  Lens.Family2.LensLike' f s a
maybe'scopedRdsConfigSource
  = Data.ProtoLens.Field.field @"maybe'scopedRdsConfigSource"
maybe'scopedRouteConfigurationsList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scopedRouteConfigurationsList" a) =>
  Lens.Family2.LensLike' f s a
maybe'scopedRouteConfigurationsList
  = Data.ProtoLens.Field.field @"maybe'scopedRouteConfigurationsList"
maybe'scopedRoutes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scopedRoutes" a) =>
  Lens.Family2.LensLike' f s a
maybe'scopedRoutes
  = Data.ProtoLens.Field.field @"maybe'scopedRoutes"
maybe'setCurrentClientCertDetails ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'setCurrentClientCertDetails" a) =>
  Lens.Family2.LensLike' f s a
maybe'setCurrentClientCertDetails
  = Data.ProtoLens.Field.field @"maybe'setCurrentClientCertDetails"
maybe'statusCode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statusCode" a) =>
  Lens.Family2.LensLike' f s a
maybe'statusCode = Data.ProtoLens.Field.field @"maybe'statusCode"
maybe'streamErrorOnInvalidHttpMessage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'streamErrorOnInvalidHttpMessage" a) =>
  Lens.Family2.LensLike' f s a
maybe'streamErrorOnInvalidHttpMessage
  = Data.ProtoLens.Field.field
      @"maybe'streamErrorOnInvalidHttpMessage"
maybe'streamIdleTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'streamIdleTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'streamIdleTimeout
  = Data.ProtoLens.Field.field @"maybe'streamIdleTimeout"
maybe'stripAnyHostPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stripAnyHostPort" a) =>
  Lens.Family2.LensLike' f s a
maybe'stripAnyHostPort
  = Data.ProtoLens.Field.field @"maybe'stripAnyHostPort"
maybe'stripPortMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stripPortMode" a) =>
  Lens.Family2.LensLike' f s a
maybe'stripPortMode
  = Data.ProtoLens.Field.field @"maybe'stripPortMode"
maybe'subject ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'subject" a) =>
  Lens.Family2.LensLike' f s a
maybe'subject = Data.ProtoLens.Field.field @"maybe'subject"
maybe'tracing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tracing" a) =>
  Lens.Family2.LensLike' f s a
maybe'tracing = Data.ProtoLens.Field.field @"maybe'tracing"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
maybe'useRemoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'useRemoteAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'useRemoteAddress
  = Data.ProtoLens.Field.field @"maybe'useRemoteAddress"
mergeSlashes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mergeSlashes" a) =>
  Lens.Family2.LensLike' f s a
mergeSlashes = Data.ProtoLens.Field.field @"mergeSlashes"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
normalizePath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "normalizePath" a) =>
  Lens.Family2.LensLike' f s a
normalizePath = Data.ProtoLens.Field.field @"normalizePath"
originalIpDetectionExtensions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "originalIpDetectionExtensions" a) =>
  Lens.Family2.LensLike' f s a
originalIpDetectionExtensions
  = Data.ProtoLens.Field.field @"originalIpDetectionExtensions"
overallSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overallSampling" a) =>
  Lens.Family2.LensLike' f s a
overallSampling = Data.ProtoLens.Field.field @"overallSampling"
pathNormalizationOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pathNormalizationOptions" a) =>
  Lens.Family2.LensLike' f s a
pathNormalizationOptions
  = Data.ProtoLens.Field.field @"pathNormalizationOptions"
pathWithEscapedSlashesAction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pathWithEscapedSlashesAction" a) =>
  Lens.Family2.LensLike' f s a
pathWithEscapedSlashesAction
  = Data.ProtoLens.Field.field @"pathWithEscapedSlashesAction"
preserveExternalRequestId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "preserveExternalRequestId" a) =>
  Lens.Family2.LensLike' f s a
preserveExternalRequestId
  = Data.ProtoLens.Field.field @"preserveExternalRequestId"
provider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "provider" a) =>
  Lens.Family2.LensLike' f s a
provider = Data.ProtoLens.Field.field @"provider"
proxy100Continue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proxy100Continue" a) =>
  Lens.Family2.LensLike' f s a
proxy100Continue = Data.ProtoLens.Field.field @"proxy100Continue"
randomSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "randomSampling" a) =>
  Lens.Family2.LensLike' f s a
randomSampling = Data.ProtoLens.Field.field @"randomSampling"
rds ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rds" a) =>
  Lens.Family2.LensLike' f s a
rds = Data.ProtoLens.Field.field @"rds"
rdsConfigSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rdsConfigSource" a) =>
  Lens.Family2.LensLike' f s a
rdsConfigSource = Data.ProtoLens.Field.field @"rdsConfigSource"
representIpv4RemoteAddressAsIpv4MappedIpv6 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "representIpv4RemoteAddressAsIpv4MappedIpv6" a) =>
  Lens.Family2.LensLike' f s a
representIpv4RemoteAddressAsIpv4MappedIpv6
  = Data.ProtoLens.Field.field
      @"representIpv4RemoteAddressAsIpv4MappedIpv6"
requestHeadersTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeadersTimeout" a) =>
  Lens.Family2.LensLike' f s a
requestHeadersTimeout
  = Data.ProtoLens.Field.field @"requestHeadersTimeout"
requestIdExtension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestIdExtension" a) =>
  Lens.Family2.LensLike' f s a
requestIdExtension
  = Data.ProtoLens.Field.field @"requestIdExtension"
requestTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestTimeout" a) =>
  Lens.Family2.LensLike' f s a
requestTimeout = Data.ProtoLens.Field.field @"requestTimeout"
routeConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "routeConfig" a) =>
  Lens.Family2.LensLike' f s a
routeConfig = Data.ProtoLens.Field.field @"routeConfig"
routeConfigName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "routeConfigName" a) =>
  Lens.Family2.LensLike' f s a
routeConfigName = Data.ProtoLens.Field.field @"routeConfigName"
schemeHeaderTransformation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schemeHeaderTransformation" a) =>
  Lens.Family2.LensLike' f s a
schemeHeaderTransformation
  = Data.ProtoLens.Field.field @"schemeHeaderTransformation"
scopeKeyBuilder ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scopeKeyBuilder" a) =>
  Lens.Family2.LensLike' f s a
scopeKeyBuilder = Data.ProtoLens.Field.field @"scopeKeyBuilder"
scopedRds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scopedRds" a) =>
  Lens.Family2.LensLike' f s a
scopedRds = Data.ProtoLens.Field.field @"scopedRds"
scopedRdsConfigSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scopedRdsConfigSource" a) =>
  Lens.Family2.LensLike' f s a
scopedRdsConfigSource
  = Data.ProtoLens.Field.field @"scopedRdsConfigSource"
scopedRouteConfigurations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scopedRouteConfigurations" a) =>
  Lens.Family2.LensLike' f s a
scopedRouteConfigurations
  = Data.ProtoLens.Field.field @"scopedRouteConfigurations"
scopedRouteConfigurationsList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scopedRouteConfigurationsList" a) =>
  Lens.Family2.LensLike' f s a
scopedRouteConfigurationsList
  = Data.ProtoLens.Field.field @"scopedRouteConfigurationsList"
scopedRoutes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scopedRoutes" a) =>
  Lens.Family2.LensLike' f s a
scopedRoutes = Data.ProtoLens.Field.field @"scopedRoutes"
separator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "separator" a) =>
  Lens.Family2.LensLike' f s a
separator = Data.ProtoLens.Field.field @"separator"
serverHeaderTransformation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serverHeaderTransformation" a) =>
  Lens.Family2.LensLike' f s a
serverHeaderTransformation
  = Data.ProtoLens.Field.field @"serverHeaderTransformation"
serverName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serverName" a) =>
  Lens.Family2.LensLike' f s a
serverName = Data.ProtoLens.Field.field @"serverName"
setCurrentClientCertDetails ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "setCurrentClientCertDetails" a) =>
  Lens.Family2.LensLike' f s a
setCurrentClientCertDetails
  = Data.ProtoLens.Field.field @"setCurrentClientCertDetails"
skipXffAppend ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "skipXffAppend" a) =>
  Lens.Family2.LensLike' f s a
skipXffAppend = Data.ProtoLens.Field.field @"skipXffAppend"
srdsResourcesLocator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "srdsResourcesLocator" a) =>
  Lens.Family2.LensLike' f s a
srdsResourcesLocator
  = Data.ProtoLens.Field.field @"srdsResourcesLocator"
statPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statPrefix" a) =>
  Lens.Family2.LensLike' f s a
statPrefix = Data.ProtoLens.Field.field @"statPrefix"
statusCode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statusCode" a) =>
  Lens.Family2.LensLike' f s a
statusCode = Data.ProtoLens.Field.field @"statusCode"
streamErrorOnInvalidHttpMessage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "streamErrorOnInvalidHttpMessage" a) =>
  Lens.Family2.LensLike' f s a
streamErrorOnInvalidHttpMessage
  = Data.ProtoLens.Field.field @"streamErrorOnInvalidHttpMessage"
streamIdleTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "streamIdleTimeout" a) =>
  Lens.Family2.LensLike' f s a
streamIdleTimeout = Data.ProtoLens.Field.field @"streamIdleTimeout"
stripAnyHostPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stripAnyHostPort" a) =>
  Lens.Family2.LensLike' f s a
stripAnyHostPort = Data.ProtoLens.Field.field @"stripAnyHostPort"
stripMatchingHostPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stripMatchingHostPort" a) =>
  Lens.Family2.LensLike' f s a
stripMatchingHostPort
  = Data.ProtoLens.Field.field @"stripMatchingHostPort"
stripTrailingHostDot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stripTrailingHostDot" a) =>
  Lens.Family2.LensLike' f s a
stripTrailingHostDot
  = Data.ProtoLens.Field.field @"stripTrailingHostDot"
subject ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "subject" a) =>
  Lens.Family2.LensLike' f s a
subject = Data.ProtoLens.Field.field @"subject"
tracing ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tracing" a) =>
  Lens.Family2.LensLike' f s a
tracing = Data.ProtoLens.Field.field @"tracing"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
unixSockets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unixSockets" a) =>
  Lens.Family2.LensLike' f s a
unixSockets = Data.ProtoLens.Field.field @"unixSockets"
upgradeConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upgradeConfigs" a) =>
  Lens.Family2.LensLike' f s a
upgradeConfigs = Data.ProtoLens.Field.field @"upgradeConfigs"
upgradeType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upgradeType" a) =>
  Lens.Family2.LensLike' f s a
upgradeType = Data.ProtoLens.Field.field @"upgradeType"
uri ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uri" a) =>
  Lens.Family2.LensLike' f s a
uri = Data.ProtoLens.Field.field @"uri"
useRemoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useRemoteAddress" a) =>
  Lens.Family2.LensLike' f s a
useRemoteAddress = Data.ProtoLens.Field.field @"useRemoteAddress"
vec'accessLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'accessLog" a) =>
  Lens.Family2.LensLike' f s a
vec'accessLog = Data.ProtoLens.Field.field @"vec'accessLog"
vec'customTags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'customTags" a) =>
  Lens.Family2.LensLike' f s a
vec'customTags = Data.ProtoLens.Field.field @"vec'customTags"
vec'filters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'filters" a) =>
  Lens.Family2.LensLike' f s a
vec'filters = Data.ProtoLens.Field.field @"vec'filters"
vec'fragments ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fragments" a) =>
  Lens.Family2.LensLike' f s a
vec'fragments = Data.ProtoLens.Field.field @"vec'fragments"
vec'headersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'headersToAdd" a) =>
  Lens.Family2.LensLike' f s a
vec'headersToAdd = Data.ProtoLens.Field.field @"vec'headersToAdd"
vec'httpFilters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'httpFilters" a) =>
  Lens.Family2.LensLike' f s a
vec'httpFilters = Data.ProtoLens.Field.field @"vec'httpFilters"
vec'mappers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'mappers" a) =>
  Lens.Family2.LensLike' f s a
vec'mappers = Data.ProtoLens.Field.field @"vec'mappers"
vec'originalIpDetectionExtensions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'originalIpDetectionExtensions" a) =>
  Lens.Family2.LensLike' f s a
vec'originalIpDetectionExtensions
  = Data.ProtoLens.Field.field @"vec'originalIpDetectionExtensions"
vec'scopedRouteConfigurations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'scopedRouteConfigurations" a) =>
  Lens.Family2.LensLike' f s a
vec'scopedRouteConfigurations
  = Data.ProtoLens.Field.field @"vec'scopedRouteConfigurations"
vec'upgradeConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'upgradeConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'upgradeConfigs
  = Data.ProtoLens.Field.field @"vec'upgradeConfigs"
verbose ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "verbose" a) =>
  Lens.Family2.LensLike' f s a
verbose = Data.ProtoLens.Field.field @"verbose"
via ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "via" a) =>
  Lens.Family2.LensLike' f s a
via = Data.ProtoLens.Field.field @"via"
xffNumTrustedHops ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "xffNumTrustedHops" a) =>
  Lens.Family2.LensLike' f s a
xffNumTrustedHops = Data.ProtoLens.Field.field @"xffNumTrustedHops"