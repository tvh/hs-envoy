{- This file was auto-generated from envoy/config/route/v3/route_components.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Route.V3.RouteComponents_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.ProxyProtocol
import qualified Proto.Envoy.Type.Matcher.V3.Regex
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Envoy.Type.Metadata.V3.Metadata
import qualified Proto.Envoy.Type.Tracing.V3.CustomTag
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Envoy.Type.V3.Range
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
action ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "action" a) =>
  Lens.Family2.LensLike' f s a
action = Data.ProtoLens.Field.field @"action"
actions ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "actions" a) =>
  Lens.Family2.LensLike' f s a
actions = Data.ProtoLens.Field.field @"actions"
additionalRequestChance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "additionalRequestChance" a) =>
  Lens.Family2.LensLike' f s a
additionalRequestChance
  = Data.ProtoLens.Field.field @"additionalRequestChance"
allowCredentials ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowCredentials" a) =>
  Lens.Family2.LensLike' f s a
allowCredentials = Data.ProtoLens.Field.field @"allowCredentials"
allowCrossSchemeRedirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowCrossSchemeRedirect" a) =>
  Lens.Family2.LensLike' f s a
allowCrossSchemeRedirect
  = Data.ProtoLens.Field.field @"allowCrossSchemeRedirect"
allowHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowHeaders" a) =>
  Lens.Family2.LensLike' f s a
allowHeaders = Data.ProtoLens.Field.field @"allowHeaders"
allowMethods ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowMethods" a) =>
  Lens.Family2.LensLike' f s a
allowMethods = Data.ProtoLens.Field.field @"allowMethods"
allowOriginStringMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowOriginStringMatch" a) =>
  Lens.Family2.LensLike' f s a
allowOriginStringMatch
  = Data.ProtoLens.Field.field @"allowOriginStringMatch"
allowPost ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowPost" a) =>
  Lens.Family2.LensLike' f s a
allowPost = Data.ProtoLens.Field.field @"allowPost"
autoHostRewrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "autoHostRewrite" a) =>
  Lens.Family2.LensLike' f s a
autoHostRewrite = Data.ProtoLens.Field.field @"autoHostRewrite"
baseInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "baseInterval" a) =>
  Lens.Family2.LensLike' f s a
baseInterval = Data.ProtoLens.Field.field @"baseInterval"
body ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "body" a) =>
  Lens.Family2.LensLike' f s a
body = Data.ProtoLens.Field.field @"body"
caseSensitive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "caseSensitive" a) =>
  Lens.Family2.LensLike' f s a
caseSensitive = Data.ProtoLens.Field.field @"caseSensitive"
clientSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clientSampling" a) =>
  Lens.Family2.LensLike' f s a
clientSampling = Data.ProtoLens.Field.field @"clientSampling"
cluster ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cluster" a) =>
  Lens.Family2.LensLike' f s a
cluster = Data.ProtoLens.Field.field @"cluster"
clusterHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterHeader" a) =>
  Lens.Family2.LensLike' f s a
clusterHeader = Data.ProtoLens.Field.field @"clusterHeader"
clusterNotFoundResponseCode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterNotFoundResponseCode" a) =>
  Lens.Family2.LensLike' f s a
clusterNotFoundResponseCode
  = Data.ProtoLens.Field.field @"clusterNotFoundResponseCode"
clusterSpecifierPlugin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterSpecifierPlugin" a) =>
  Lens.Family2.LensLike' f s a
clusterSpecifierPlugin
  = Data.ProtoLens.Field.field @"clusterSpecifierPlugin"
clusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusters" a) =>
  Lens.Family2.LensLike' f s a
clusters = Data.ProtoLens.Field.field @"clusters"
config ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "config" a) =>
  Lens.Family2.LensLike' f s a
config = Data.ProtoLens.Field.field @"config"
connectConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "connectConfig" a) =>
  Lens.Family2.LensLike' f s a
connectConfig = Data.ProtoLens.Field.field @"connectConfig"
connectMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "connectMatcher" a) =>
  Lens.Family2.LensLike' f s a
connectMatcher = Data.ProtoLens.Field.field @"connectMatcher"
connectionProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "connectionProperties" a) =>
  Lens.Family2.LensLike' f s a
connectionProperties
  = Data.ProtoLens.Field.field @"connectionProperties"
containsMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "containsMatch" a) =>
  Lens.Family2.LensLike' f s a
containsMatch = Data.ProtoLens.Field.field @"containsMatch"
cookie ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cookie" a) =>
  Lens.Family2.LensLike' f s a
cookie = Data.ProtoLens.Field.field @"cookie"
cors ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cors" a) =>
  Lens.Family2.LensLike' f s a
cors = Data.ProtoLens.Field.field @"cors"
customTags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "customTags" a) =>
  Lens.Family2.LensLike' f s a
customTags = Data.ProtoLens.Field.field @"customTags"
decorator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "decorator" a) =>
  Lens.Family2.LensLike' f s a
decorator = Data.ProtoLens.Field.field @"decorator"
defaultValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultValue" a) =>
  Lens.Family2.LensLike' f s a
defaultValue = Data.ProtoLens.Field.field @"defaultValue"
descriptorKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "descriptorKey" a) =>
  Lens.Family2.LensLike' f s a
descriptorKey = Data.ProtoLens.Field.field @"descriptorKey"
descriptorValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "descriptorValue" a) =>
  Lens.Family2.LensLike' f s a
descriptorValue = Data.ProtoLens.Field.field @"descriptorValue"
destinationCluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "destinationCluster" a) =>
  Lens.Family2.LensLike' f s a
destinationCluster
  = Data.ProtoLens.Field.field @"destinationCluster"
directResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "directResponse" a) =>
  Lens.Family2.LensLike' f s a
directResponse = Data.ProtoLens.Field.field @"directResponse"
disableKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disableKey" a) =>
  Lens.Family2.LensLike' f s a
disableKey = Data.ProtoLens.Field.field @"disableKey"
domains ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "domains" a) =>
  Lens.Family2.LensLike' f s a
domains = Data.ProtoLens.Field.field @"domains"
dynamicMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicMetadata" a) =>
  Lens.Family2.LensLike' f s a
dynamicMetadata = Data.ProtoLens.Field.field @"dynamicMetadata"
enabled ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "enabled" a) =>
  Lens.Family2.LensLike' f s a
enabled = Data.ProtoLens.Field.field @"enabled"
exactMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exactMatch" a) =>
  Lens.Family2.LensLike' f s a
exactMatch = Data.ProtoLens.Field.field @"exactMatch"
expectMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "expectMatch" a) =>
  Lens.Family2.LensLike' f s a
expectMatch = Data.ProtoLens.Field.field @"expectMatch"
exposeHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exposeHeaders" a) =>
  Lens.Family2.LensLike' f s a
exposeHeaders = Data.ProtoLens.Field.field @"exposeHeaders"
extension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extension" a) =>
  Lens.Family2.LensLike' f s a
extension = Data.ProtoLens.Field.field @"extension"
filterAction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterAction" a) =>
  Lens.Family2.LensLike' f s a
filterAction = Data.ProtoLens.Field.field @"filterAction"
filterEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterEnabled" a) =>
  Lens.Family2.LensLike' f s a
filterEnabled = Data.ProtoLens.Field.field @"filterEnabled"
filterState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterState" a) =>
  Lens.Family2.LensLike' f s a
filterState = Data.ProtoLens.Field.field @"filterState"
format ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "format" a) =>
  Lens.Family2.LensLike' f s a
format = Data.ProtoLens.Field.field @"format"
genericKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "genericKey" a) =>
  Lens.Family2.LensLike' f s a
genericKey = Data.ProtoLens.Field.field @"genericKey"
grpc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "grpc" a) =>
  Lens.Family2.LensLike' f s a
grpc = Data.ProtoLens.Field.field @"grpc"
grpcTimeoutHeaderMax ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcTimeoutHeaderMax" a) =>
  Lens.Family2.LensLike' f s a
grpcTimeoutHeaderMax
  = Data.ProtoLens.Field.field @"grpcTimeoutHeaderMax"
grpcTimeoutHeaderOffset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcTimeoutHeaderOffset" a) =>
  Lens.Family2.LensLike' f s a
grpcTimeoutHeaderOffset
  = Data.ProtoLens.Field.field @"grpcTimeoutHeaderOffset"
grpcTimeoutOffset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcTimeoutOffset" a) =>
  Lens.Family2.LensLike' f s a
grpcTimeoutOffset = Data.ProtoLens.Field.field @"grpcTimeoutOffset"
hashPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hashPolicy" a) =>
  Lens.Family2.LensLike' f s a
hashPolicy = Data.ProtoLens.Field.field @"hashPolicy"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
headerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headerName" a) =>
  Lens.Family2.LensLike' f s a
headerName = Data.ProtoLens.Field.field @"headerName"
headerValueMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headerValueMatch" a) =>
  Lens.Family2.LensLike' f s a
headerValueMatch = Data.ProtoLens.Field.field @"headerValueMatch"
headers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "headers" a) =>
  Lens.Family2.LensLike' f s a
headers = Data.ProtoLens.Field.field @"headers"
hedgeOnPerTryTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hedgeOnPerTryTimeout" a) =>
  Lens.Family2.LensLike' f s a
hedgeOnPerTryTimeout
  = Data.ProtoLens.Field.field @"hedgeOnPerTryTimeout"
hedgePolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hedgePolicy" a) =>
  Lens.Family2.LensLike' f s a
hedgePolicy = Data.ProtoLens.Field.field @"hedgePolicy"
hostRedirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostRedirect" a) =>
  Lens.Family2.LensLike' f s a
hostRedirect = Data.ProtoLens.Field.field @"hostRedirect"
hostRewriteHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostRewriteHeader" a) =>
  Lens.Family2.LensLike' f s a
hostRewriteHeader = Data.ProtoLens.Field.field @"hostRewriteHeader"
hostRewriteLiteral ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostRewriteLiteral" a) =>
  Lens.Family2.LensLike' f s a
hostRewriteLiteral
  = Data.ProtoLens.Field.field @"hostRewriteLiteral"
hostRewritePathRegex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostRewritePathRegex" a) =>
  Lens.Family2.LensLike' f s a
hostRewritePathRegex
  = Data.ProtoLens.Field.field @"hostRewritePathRegex"
hostSelectionRetryMaxAttempts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostSelectionRetryMaxAttempts" a) =>
  Lens.Family2.LensLike' f s a
hostSelectionRetryMaxAttempts
  = Data.ProtoLens.Field.field @"hostSelectionRetryMaxAttempts"
httpsRedirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpsRedirect" a) =>
  Lens.Family2.LensLike' f s a
httpsRedirect = Data.ProtoLens.Field.field @"httpsRedirect"
idleTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "idleTimeout" a) =>
  Lens.Family2.LensLike' f s a
idleTimeout = Data.ProtoLens.Field.field @"idleTimeout"
includeAttemptCountInResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "includeAttemptCountInResponse" a) =>
  Lens.Family2.LensLike' f s a
includeAttemptCountInResponse
  = Data.ProtoLens.Field.field @"includeAttemptCountInResponse"
includeRequestAttemptCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "includeRequestAttemptCount" a) =>
  Lens.Family2.LensLike' f s a
includeRequestAttemptCount
  = Data.ProtoLens.Field.field @"includeRequestAttemptCount"
includeVhRateLimits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "includeVhRateLimits" a) =>
  Lens.Family2.LensLike' f s a
includeVhRateLimits
  = Data.ProtoLens.Field.field @"includeVhRateLimits"
initialRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "initialRequests" a) =>
  Lens.Family2.LensLike' f s a
initialRequests = Data.ProtoLens.Field.field @"initialRequests"
internalRedirectAction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "internalRedirectAction" a) =>
  Lens.Family2.LensLike' f s a
internalRedirectAction
  = Data.ProtoLens.Field.field @"internalRedirectAction"
internalRedirectPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "internalRedirectPolicy" a) =>
  Lens.Family2.LensLike' f s a
internalRedirectPolicy
  = Data.ProtoLens.Field.field @"internalRedirectPolicy"
invertMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "invertMatch" a) =>
  Lens.Family2.LensLike' f s a
invertMatch = Data.ProtoLens.Field.field @"invertMatch"
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
limit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "limit" a) =>
  Lens.Family2.LensLike' f s a
limit = Data.ProtoLens.Field.field @"limit"
match ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "match" a) =>
  Lens.Family2.LensLike' f s a
match = Data.ProtoLens.Field.field @"match"
maxAge ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "maxAge" a) =>
  Lens.Family2.LensLike' f s a
maxAge = Data.ProtoLens.Field.field @"maxAge"
maxGrpcTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxGrpcTimeout" a) =>
  Lens.Family2.LensLike' f s a
maxGrpcTimeout = Data.ProtoLens.Field.field @"maxGrpcTimeout"
maxInternalRedirects ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxInternalRedirects" a) =>
  Lens.Family2.LensLike' f s a
maxInternalRedirects
  = Data.ProtoLens.Field.field @"maxInternalRedirects"
maxInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxInterval" a) =>
  Lens.Family2.LensLike' f s a
maxInterval = Data.ProtoLens.Field.field @"maxInterval"
maxStreamDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxStreamDuration" a) =>
  Lens.Family2.LensLike' f s a
maxStreamDuration = Data.ProtoLens.Field.field @"maxStreamDuration"
maybe'action ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'action" a) =>
  Lens.Family2.LensLike' f s a
maybe'action = Data.ProtoLens.Field.field @"maybe'action"
maybe'actionSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'actionSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'actionSpecifier
  = Data.ProtoLens.Field.field @"maybe'actionSpecifier"
maybe'additionalRequestChance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'additionalRequestChance" a) =>
  Lens.Family2.LensLike' f s a
maybe'additionalRequestChance
  = Data.ProtoLens.Field.field @"maybe'additionalRequestChance"
maybe'allowCredentials ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allowCredentials" a) =>
  Lens.Family2.LensLike' f s a
maybe'allowCredentials
  = Data.ProtoLens.Field.field @"maybe'allowCredentials"
maybe'autoHostRewrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'autoHostRewrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'autoHostRewrite
  = Data.ProtoLens.Field.field @"maybe'autoHostRewrite"
maybe'baseInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'baseInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'baseInterval
  = Data.ProtoLens.Field.field @"maybe'baseInterval"
maybe'body ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'body" a) =>
  Lens.Family2.LensLike' f s a
maybe'body = Data.ProtoLens.Field.field @"maybe'body"
maybe'caseSensitive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'caseSensitive" a) =>
  Lens.Family2.LensLike' f s a
maybe'caseSensitive
  = Data.ProtoLens.Field.field @"maybe'caseSensitive"
maybe'clientSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clientSampling" a) =>
  Lens.Family2.LensLike' f s a
maybe'clientSampling
  = Data.ProtoLens.Field.field @"maybe'clientSampling"
maybe'cluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cluster" a) =>
  Lens.Family2.LensLike' f s a
maybe'cluster = Data.ProtoLens.Field.field @"maybe'cluster"
maybe'clusterHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clusterHeader" a) =>
  Lens.Family2.LensLike' f s a
maybe'clusterHeader
  = Data.ProtoLens.Field.field @"maybe'clusterHeader"
maybe'clusterSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clusterSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'clusterSpecifier
  = Data.ProtoLens.Field.field @"maybe'clusterSpecifier"
maybe'clusterSpecifierPlugin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clusterSpecifierPlugin" a) =>
  Lens.Family2.LensLike' f s a
maybe'clusterSpecifierPlugin
  = Data.ProtoLens.Field.field @"maybe'clusterSpecifierPlugin"
maybe'config ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'config" a) =>
  Lens.Family2.LensLike' f s a
maybe'config = Data.ProtoLens.Field.field @"maybe'config"
maybe'configType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configType" a) =>
  Lens.Family2.LensLike' f s a
maybe'configType = Data.ProtoLens.Field.field @"maybe'configType"
maybe'connectConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'connectConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'connectConfig
  = Data.ProtoLens.Field.field @"maybe'connectConfig"
maybe'connectMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'connectMatcher" a) =>
  Lens.Family2.LensLike' f s a
maybe'connectMatcher
  = Data.ProtoLens.Field.field @"maybe'connectMatcher"
maybe'connectionProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'connectionProperties" a) =>
  Lens.Family2.LensLike' f s a
maybe'connectionProperties
  = Data.ProtoLens.Field.field @"maybe'connectionProperties"
maybe'containsMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'containsMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'containsMatch
  = Data.ProtoLens.Field.field @"maybe'containsMatch"
maybe'cookie ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cookie" a) =>
  Lens.Family2.LensLike' f s a
maybe'cookie = Data.ProtoLens.Field.field @"maybe'cookie"
maybe'cors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cors" a) =>
  Lens.Family2.LensLike' f s a
maybe'cors = Data.ProtoLens.Field.field @"maybe'cors"
maybe'decorator ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'decorator" a) =>
  Lens.Family2.LensLike' f s a
maybe'decorator = Data.ProtoLens.Field.field @"maybe'decorator"
maybe'destinationCluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'destinationCluster" a) =>
  Lens.Family2.LensLike' f s a
maybe'destinationCluster
  = Data.ProtoLens.Field.field @"maybe'destinationCluster"
maybe'directResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'directResponse" a) =>
  Lens.Family2.LensLike' f s a
maybe'directResponse
  = Data.ProtoLens.Field.field @"maybe'directResponse"
maybe'dynamicMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dynamicMetadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'dynamicMetadata
  = Data.ProtoLens.Field.field @"maybe'dynamicMetadata"
maybe'enabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'enabled = Data.ProtoLens.Field.field @"maybe'enabled"
maybe'enabledSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enabledSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'enabledSpecifier
  = Data.ProtoLens.Field.field @"maybe'enabledSpecifier"
maybe'exactMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'exactMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'exactMatch = Data.ProtoLens.Field.field @"maybe'exactMatch"
maybe'expectMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expectMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'expectMatch = Data.ProtoLens.Field.field @"maybe'expectMatch"
maybe'extension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'extension" a) =>
  Lens.Family2.LensLike' f s a
maybe'extension = Data.ProtoLens.Field.field @"maybe'extension"
maybe'filterAction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterAction" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterAction
  = Data.ProtoLens.Field.field @"maybe'filterAction"
maybe'filterEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterEnabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterEnabled
  = Data.ProtoLens.Field.field @"maybe'filterEnabled"
maybe'filterState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterState" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterState = Data.ProtoLens.Field.field @"maybe'filterState"
maybe'genericKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'genericKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'genericKey = Data.ProtoLens.Field.field @"maybe'genericKey"
maybe'grpc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpc" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpc = Data.ProtoLens.Field.field @"maybe'grpc"
maybe'grpcTimeoutHeaderMax ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcTimeoutHeaderMax" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcTimeoutHeaderMax
  = Data.ProtoLens.Field.field @"maybe'grpcTimeoutHeaderMax"
maybe'grpcTimeoutHeaderOffset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcTimeoutHeaderOffset" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcTimeoutHeaderOffset
  = Data.ProtoLens.Field.field @"maybe'grpcTimeoutHeaderOffset"
maybe'grpcTimeoutOffset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcTimeoutOffset" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcTimeoutOffset
  = Data.ProtoLens.Field.field @"maybe'grpcTimeoutOffset"
maybe'header ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'header" a) =>
  Lens.Family2.LensLike' f s a
maybe'header = Data.ProtoLens.Field.field @"maybe'header"
maybe'headerMatchSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'headerMatchSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'headerMatchSpecifier
  = Data.ProtoLens.Field.field @"maybe'headerMatchSpecifier"
maybe'headerValueMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'headerValueMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'headerValueMatch
  = Data.ProtoLens.Field.field @"maybe'headerValueMatch"
maybe'hedgePolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hedgePolicy" a) =>
  Lens.Family2.LensLike' f s a
maybe'hedgePolicy = Data.ProtoLens.Field.field @"maybe'hedgePolicy"
maybe'hostRewriteHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostRewriteHeader" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostRewriteHeader
  = Data.ProtoLens.Field.field @"maybe'hostRewriteHeader"
maybe'hostRewriteLiteral ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostRewriteLiteral" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostRewriteLiteral
  = Data.ProtoLens.Field.field @"maybe'hostRewriteLiteral"
maybe'hostRewritePathRegex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostRewritePathRegex" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostRewritePathRegex
  = Data.ProtoLens.Field.field @"maybe'hostRewritePathRegex"
maybe'hostRewriteSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostRewriteSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostRewriteSpecifier
  = Data.ProtoLens.Field.field @"maybe'hostRewriteSpecifier"
maybe'httpsRedirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpsRedirect" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpsRedirect
  = Data.ProtoLens.Field.field @"maybe'httpsRedirect"
maybe'idleTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'idleTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'idleTimeout = Data.ProtoLens.Field.field @"maybe'idleTimeout"
maybe'includeVhRateLimits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'includeVhRateLimits" a) =>
  Lens.Family2.LensLike' f s a
maybe'includeVhRateLimits
  = Data.ProtoLens.Field.field @"maybe'includeVhRateLimits"
maybe'initialRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'initialRequests" a) =>
  Lens.Family2.LensLike' f s a
maybe'initialRequests
  = Data.ProtoLens.Field.field @"maybe'initialRequests"
maybe'internalRedirectPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'internalRedirectPolicy" a) =>
  Lens.Family2.LensLike' f s a
maybe'internalRedirectPolicy
  = Data.ProtoLens.Field.field @"maybe'internalRedirectPolicy"
maybe'limit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'limit" a) =>
  Lens.Family2.LensLike' f s a
maybe'limit = Data.ProtoLens.Field.field @"maybe'limit"
maybe'match ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'match" a) =>
  Lens.Family2.LensLike' f s a
maybe'match = Data.ProtoLens.Field.field @"maybe'match"
maybe'maxGrpcTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxGrpcTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxGrpcTimeout
  = Data.ProtoLens.Field.field @"maybe'maxGrpcTimeout"
maybe'maxInternalRedirects ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxInternalRedirects" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxInternalRedirects
  = Data.ProtoLens.Field.field @"maybe'maxInternalRedirects"
maybe'maxInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxInterval = Data.ProtoLens.Field.field @"maybe'maxInterval"
maybe'maxStreamDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxStreamDuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxStreamDuration
  = Data.ProtoLens.Field.field @"maybe'maxStreamDuration"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
maybe'metadataKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadataKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadataKey = Data.ProtoLens.Field.field @"maybe'metadataKey"
maybe'metadataMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadataMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadataMatch
  = Data.ProtoLens.Field.field @"maybe'metadataMatch"
maybe'nonForwardingAction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nonForwardingAction" a) =>
  Lens.Family2.LensLike' f s a
maybe'nonForwardingAction
  = Data.ProtoLens.Field.field @"maybe'nonForwardingAction"
maybe'numRetries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'numRetries" a) =>
  Lens.Family2.LensLike' f s a
maybe'numRetries = Data.ProtoLens.Field.field @"maybe'numRetries"
maybe'overallSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'overallSampling" a) =>
  Lens.Family2.LensLike' f s a
maybe'overallSampling
  = Data.ProtoLens.Field.field @"maybe'overallSampling"
maybe'overrideSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'overrideSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'overrideSpecifier
  = Data.ProtoLens.Field.field @"maybe'overrideSpecifier"
maybe'path ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'path" a) =>
  Lens.Family2.LensLike' f s a
maybe'path = Data.ProtoLens.Field.field @"maybe'path"
maybe'pathRedirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pathRedirect" a) =>
  Lens.Family2.LensLike' f s a
maybe'pathRedirect
  = Data.ProtoLens.Field.field @"maybe'pathRedirect"
maybe'pathRewriteSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pathRewriteSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'pathRewriteSpecifier
  = Data.ProtoLens.Field.field @"maybe'pathRewriteSpecifier"
maybe'pathSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pathSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'pathSpecifier
  = Data.ProtoLens.Field.field @"maybe'pathSpecifier"
maybe'perRequestBufferLimitBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'perRequestBufferLimitBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'perRequestBufferLimitBytes
  = Data.ProtoLens.Field.field @"maybe'perRequestBufferLimitBytes"
maybe'perTryTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'perTryTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'perTryTimeout
  = Data.ProtoLens.Field.field @"maybe'perTryTimeout"
maybe'policySpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'policySpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'policySpecifier
  = Data.ProtoLens.Field.field @"maybe'policySpecifier"
maybe'prefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefix" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefix = Data.ProtoLens.Field.field @"maybe'prefix"
maybe'prefixMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefixMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefixMatch = Data.ProtoLens.Field.field @"maybe'prefixMatch"
maybe'prefixRewrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefixRewrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefixRewrite
  = Data.ProtoLens.Field.field @"maybe'prefixRewrite"
maybe'presentMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'presentMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'presentMatch
  = Data.ProtoLens.Field.field @"maybe'presentMatch"
maybe'presented ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'presented" a) =>
  Lens.Family2.LensLike' f s a
maybe'presented = Data.ProtoLens.Field.field @"maybe'presented"
maybe'propagate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'propagate" a) =>
  Lens.Family2.LensLike' f s a
maybe'propagate = Data.ProtoLens.Field.field @"maybe'propagate"
maybe'proxyProtocolConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'proxyProtocolConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'proxyProtocolConfig
  = Data.ProtoLens.Field.field @"maybe'proxyProtocolConfig"
maybe'queryParameter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'queryParameter" a) =>
  Lens.Family2.LensLike' f s a
maybe'queryParameter
  = Data.ProtoLens.Field.field @"maybe'queryParameter"
maybe'queryParameterMatchSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'queryParameterMatchSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'queryParameterMatchSpecifier
  = Data.ProtoLens.Field.field @"maybe'queryParameterMatchSpecifier"
maybe'randomSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'randomSampling" a) =>
  Lens.Family2.LensLike' f s a
maybe'randomSampling
  = Data.ProtoLens.Field.field @"maybe'randomSampling"
maybe'rangeMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rangeMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'rangeMatch = Data.ProtoLens.Field.field @"maybe'rangeMatch"
maybe'rateLimitedRetryBackOff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rateLimitedRetryBackOff" a) =>
  Lens.Family2.LensLike' f s a
maybe'rateLimitedRetryBackOff
  = Data.ProtoLens.Field.field @"maybe'rateLimitedRetryBackOff"
maybe'redirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'redirect" a) =>
  Lens.Family2.LensLike' f s a
maybe'redirect = Data.ProtoLens.Field.field @"maybe'redirect"
maybe'regexRewrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regexRewrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'regexRewrite
  = Data.ProtoLens.Field.field @"maybe'regexRewrite"
maybe'remoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'remoteAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'remoteAddress
  = Data.ProtoLens.Field.field @"maybe'remoteAddress"
maybe'requestHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestHeaders" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestHeaders
  = Data.ProtoLens.Field.field @"maybe'requestHeaders"
maybe'retryBackOff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'retryBackOff" a) =>
  Lens.Family2.LensLike' f s a
maybe'retryBackOff
  = Data.ProtoLens.Field.field @"maybe'retryBackOff"
maybe'retryPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'retryPolicy" a) =>
  Lens.Family2.LensLike' f s a
maybe'retryPolicy = Data.ProtoLens.Field.field @"maybe'retryPolicy"
maybe'retryPolicyTypedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'retryPolicyTypedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'retryPolicyTypedConfig
  = Data.ProtoLens.Field.field @"maybe'retryPolicyTypedConfig"
maybe'retryPriority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'retryPriority" a) =>
  Lens.Family2.LensLike' f s a
maybe'retryPriority
  = Data.ProtoLens.Field.field @"maybe'retryPriority"
maybe'route ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'route" a) =>
  Lens.Family2.LensLike' f s a
maybe'route = Data.ProtoLens.Field.field @"maybe'route"
maybe'runtimeFraction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'runtimeFraction" a) =>
  Lens.Family2.LensLike' f s a
maybe'runtimeFraction
  = Data.ProtoLens.Field.field @"maybe'runtimeFraction"
maybe'safeRegex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'safeRegex" a) =>
  Lens.Family2.LensLike' f s a
maybe'safeRegex = Data.ProtoLens.Field.field @"maybe'safeRegex"
maybe'safeRegexMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'safeRegexMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'safeRegexMatch
  = Data.ProtoLens.Field.field @"maybe'safeRegexMatch"
maybe'schemeRedirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schemeRedirect" a) =>
  Lens.Family2.LensLike' f s a
maybe'schemeRedirect
  = Data.ProtoLens.Field.field @"maybe'schemeRedirect"
maybe'schemeRewriteSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schemeRewriteSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'schemeRewriteSpecifier
  = Data.ProtoLens.Field.field @"maybe'schemeRewriteSpecifier"
maybe'shadowEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'shadowEnabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'shadowEnabled
  = Data.ProtoLens.Field.field @"maybe'shadowEnabled"
maybe'sourceCluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceCluster" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceCluster
  = Data.ProtoLens.Field.field @"maybe'sourceCluster"
maybe'stage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stage" a) =>
  Lens.Family2.LensLike' f s a
maybe'stage = Data.ProtoLens.Field.field @"maybe'stage"
maybe'stringMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stringMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'stringMatch = Data.ProtoLens.Field.field @"maybe'stringMatch"
maybe'suffixMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'suffixMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'suffixMatch = Data.ProtoLens.Field.field @"maybe'suffixMatch"
maybe'timeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeout = Data.ProtoLens.Field.field @"maybe'timeout"
maybe'tlsContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tlsContext" a) =>
  Lens.Family2.LensLike' f s a
maybe'tlsContext = Data.ProtoLens.Field.field @"maybe'tlsContext"
maybe'totalWeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'totalWeight" a) =>
  Lens.Family2.LensLike' f s a
maybe'totalWeight = Data.ProtoLens.Field.field @"maybe'totalWeight"
maybe'traceSampled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'traceSampled" a) =>
  Lens.Family2.LensLike' f s a
maybe'traceSampled
  = Data.ProtoLens.Field.field @"maybe'traceSampled"
maybe'tracing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tracing" a) =>
  Lens.Family2.LensLike' f s a
maybe'tracing = Data.ProtoLens.Field.field @"maybe'tracing"
maybe'ttl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ttl" a) =>
  Lens.Family2.LensLike' f s a
maybe'ttl = Data.ProtoLens.Field.field @"maybe'ttl"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
maybe'validated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validated" a) =>
  Lens.Family2.LensLike' f s a
maybe'validated = Data.ProtoLens.Field.field @"maybe'validated"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'weight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'weight" a) =>
  Lens.Family2.LensLike' f s a
maybe'weight = Data.ProtoLens.Field.field @"maybe'weight"
maybe'weightedClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'weightedClusters" a) =>
  Lens.Family2.LensLike' f s a
maybe'weightedClusters
  = Data.ProtoLens.Field.field @"maybe'weightedClusters"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
metadataKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadataKey" a) =>
  Lens.Family2.LensLike' f s a
metadataKey = Data.ProtoLens.Field.field @"metadataKey"
metadataMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadataMatch" a) =>
  Lens.Family2.LensLike' f s a
metadataMatch = Data.ProtoLens.Field.field @"metadataMatch"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
nonForwardingAction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nonForwardingAction" a) =>
  Lens.Family2.LensLike' f s a
nonForwardingAction
  = Data.ProtoLens.Field.field @"nonForwardingAction"
numRetries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numRetries" a) =>
  Lens.Family2.LensLike' f s a
numRetries = Data.ProtoLens.Field.field @"numRetries"
operation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "operation" a) =>
  Lens.Family2.LensLike' f s a
operation = Data.ProtoLens.Field.field @"operation"
overallSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overallSampling" a) =>
  Lens.Family2.LensLike' f s a
overallSampling = Data.ProtoLens.Field.field @"overallSampling"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
pathRedirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pathRedirect" a) =>
  Lens.Family2.LensLike' f s a
pathRedirect = Data.ProtoLens.Field.field @"pathRedirect"
perRequestBufferLimitBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "perRequestBufferLimitBytes" a) =>
  Lens.Family2.LensLike' f s a
perRequestBufferLimitBytes
  = Data.ProtoLens.Field.field @"perRequestBufferLimitBytes"
perTryTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "perTryTimeout" a) =>
  Lens.Family2.LensLike' f s a
perTryTimeout = Data.ProtoLens.Field.field @"perTryTimeout"
portRedirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "portRedirect" a) =>
  Lens.Family2.LensLike' f s a
portRedirect = Data.ProtoLens.Field.field @"portRedirect"
predicates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "predicates" a) =>
  Lens.Family2.LensLike' f s a
predicates = Data.ProtoLens.Field.field @"predicates"
prefix ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prefix" a) =>
  Lens.Family2.LensLike' f s a
prefix = Data.ProtoLens.Field.field @"prefix"
prefixMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prefixMatch" a) =>
  Lens.Family2.LensLike' f s a
prefixMatch = Data.ProtoLens.Field.field @"prefixMatch"
prefixRewrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prefixRewrite" a) =>
  Lens.Family2.LensLike' f s a
prefixRewrite = Data.ProtoLens.Field.field @"prefixRewrite"
presentMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "presentMatch" a) =>
  Lens.Family2.LensLike' f s a
presentMatch = Data.ProtoLens.Field.field @"presentMatch"
presented ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "presented" a) =>
  Lens.Family2.LensLike' f s a
presented = Data.ProtoLens.Field.field @"presented"
priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priority" a) =>
  Lens.Family2.LensLike' f s a
priority = Data.ProtoLens.Field.field @"priority"
propagate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "propagate" a) =>
  Lens.Family2.LensLike' f s a
propagate = Data.ProtoLens.Field.field @"propagate"
proxyProtocolConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "proxyProtocolConfig" a) =>
  Lens.Family2.LensLike' f s a
proxyProtocolConfig
  = Data.ProtoLens.Field.field @"proxyProtocolConfig"
queryParameter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "queryParameter" a) =>
  Lens.Family2.LensLike' f s a
queryParameter = Data.ProtoLens.Field.field @"queryParameter"
queryParameters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "queryParameters" a) =>
  Lens.Family2.LensLike' f s a
queryParameters = Data.ProtoLens.Field.field @"queryParameters"
randomSampling ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "randomSampling" a) =>
  Lens.Family2.LensLike' f s a
randomSampling = Data.ProtoLens.Field.field @"randomSampling"
rangeMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rangeMatch" a) =>
  Lens.Family2.LensLike' f s a
rangeMatch = Data.ProtoLens.Field.field @"rangeMatch"
rateLimitedRetryBackOff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rateLimitedRetryBackOff" a) =>
  Lens.Family2.LensLike' f s a
rateLimitedRetryBackOff
  = Data.ProtoLens.Field.field @"rateLimitedRetryBackOff"
rateLimits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rateLimits" a) =>
  Lens.Family2.LensLike' f s a
rateLimits = Data.ProtoLens.Field.field @"rateLimits"
redirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redirect" a) =>
  Lens.Family2.LensLike' f s a
redirect = Data.ProtoLens.Field.field @"redirect"
redirectResponseCodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "redirectResponseCodes" a) =>
  Lens.Family2.LensLike' f s a
redirectResponseCodes
  = Data.ProtoLens.Field.field @"redirectResponseCodes"
regexRewrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "regexRewrite" a) =>
  Lens.Family2.LensLike' f s a
regexRewrite = Data.ProtoLens.Field.field @"regexRewrite"
remoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "remoteAddress" a) =>
  Lens.Family2.LensLike' f s a
remoteAddress = Data.ProtoLens.Field.field @"remoteAddress"
requestHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeaders" a) =>
  Lens.Family2.LensLike' f s a
requestHeaders = Data.ProtoLens.Field.field @"requestHeaders"
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
requestMirrorPolicies ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestMirrorPolicies" a) =>
  Lens.Family2.LensLike' f s a
requestMirrorPolicies
  = Data.ProtoLens.Field.field @"requestMirrorPolicies"
requireTls ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requireTls" a) =>
  Lens.Family2.LensLike' f s a
requireTls = Data.ProtoLens.Field.field @"requireTls"
resetHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resetHeaders" a) =>
  Lens.Family2.LensLike' f s a
resetHeaders = Data.ProtoLens.Field.field @"resetHeaders"
responseCode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseCode" a) =>
  Lens.Family2.LensLike' f s a
responseCode = Data.ProtoLens.Field.field @"responseCode"
responseHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
responseHeadersToAdd
  = Data.ProtoLens.Field.field @"responseHeadersToAdd"
responseHeadersToRemove ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseHeadersToRemove" a) =>
  Lens.Family2.LensLike' f s a
responseHeadersToRemove
  = Data.ProtoLens.Field.field @"responseHeadersToRemove"
retriableHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retriableHeaders" a) =>
  Lens.Family2.LensLike' f s a
retriableHeaders = Data.ProtoLens.Field.field @"retriableHeaders"
retriableRequestHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retriableRequestHeaders" a) =>
  Lens.Family2.LensLike' f s a
retriableRequestHeaders
  = Data.ProtoLens.Field.field @"retriableRequestHeaders"
retriableStatusCodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retriableStatusCodes" a) =>
  Lens.Family2.LensLike' f s a
retriableStatusCodes
  = Data.ProtoLens.Field.field @"retriableStatusCodes"
retryBackOff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retryBackOff" a) =>
  Lens.Family2.LensLike' f s a
retryBackOff = Data.ProtoLens.Field.field @"retryBackOff"
retryHostPredicate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retryHostPredicate" a) =>
  Lens.Family2.LensLike' f s a
retryHostPredicate
  = Data.ProtoLens.Field.field @"retryHostPredicate"
retryOn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "retryOn" a) =>
  Lens.Family2.LensLike' f s a
retryOn = Data.ProtoLens.Field.field @"retryOn"
retryPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retryPolicy" a) =>
  Lens.Family2.LensLike' f s a
retryPolicy = Data.ProtoLens.Field.field @"retryPolicy"
retryPolicyTypedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retryPolicyTypedConfig" a) =>
  Lens.Family2.LensLike' f s a
retryPolicyTypedConfig
  = Data.ProtoLens.Field.field @"retryPolicyTypedConfig"
retryPriority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retryPriority" a) =>
  Lens.Family2.LensLike' f s a
retryPriority = Data.ProtoLens.Field.field @"retryPriority"
route ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "route" a) =>
  Lens.Family2.LensLike' f s a
route = Data.ProtoLens.Field.field @"route"
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
runtimeKeyPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "runtimeKeyPrefix" a) =>
  Lens.Family2.LensLike' f s a
runtimeKeyPrefix = Data.ProtoLens.Field.field @"runtimeKeyPrefix"
safeRegex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "safeRegex" a) =>
  Lens.Family2.LensLike' f s a
safeRegex = Data.ProtoLens.Field.field @"safeRegex"
safeRegexMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "safeRegexMatch" a) =>
  Lens.Family2.LensLike' f s a
safeRegexMatch = Data.ProtoLens.Field.field @"safeRegexMatch"
schemeRedirect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schemeRedirect" a) =>
  Lens.Family2.LensLike' f s a
schemeRedirect = Data.ProtoLens.Field.field @"schemeRedirect"
shadowEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "shadowEnabled" a) =>
  Lens.Family2.LensLike' f s a
shadowEnabled = Data.ProtoLens.Field.field @"shadowEnabled"
skipIfAbsent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "skipIfAbsent" a) =>
  Lens.Family2.LensLike' f s a
skipIfAbsent = Data.ProtoLens.Field.field @"skipIfAbsent"
source ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "source" a) =>
  Lens.Family2.LensLike' f s a
source = Data.ProtoLens.Field.field @"source"
sourceCluster ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceCluster" a) =>
  Lens.Family2.LensLike' f s a
sourceCluster = Data.ProtoLens.Field.field @"sourceCluster"
sourceIp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceIp" a) =>
  Lens.Family2.LensLike' f s a
sourceIp = Data.ProtoLens.Field.field @"sourceIp"
stage ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stage" a) =>
  Lens.Family2.LensLike' f s a
stage = Data.ProtoLens.Field.field @"stage"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
stringMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stringMatch" a) =>
  Lens.Family2.LensLike' f s a
stringMatch = Data.ProtoLens.Field.field @"stringMatch"
stripQuery ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stripQuery" a) =>
  Lens.Family2.LensLike' f s a
stripQuery = Data.ProtoLens.Field.field @"stripQuery"
suffixMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "suffixMatch" a) =>
  Lens.Family2.LensLike' f s a
suffixMatch = Data.ProtoLens.Field.field @"suffixMatch"
terminal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "terminal" a) =>
  Lens.Family2.LensLike' f s a
terminal = Data.ProtoLens.Field.field @"terminal"
timeout ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "timeout" a) =>
  Lens.Family2.LensLike' f s a
timeout = Data.ProtoLens.Field.field @"timeout"
tlsContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsContext" a) =>
  Lens.Family2.LensLike' f s a
tlsContext = Data.ProtoLens.Field.field @"tlsContext"
totalWeight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalWeight" a) =>
  Lens.Family2.LensLike' f s a
totalWeight = Data.ProtoLens.Field.field @"totalWeight"
traceSampled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "traceSampled" a) =>
  Lens.Family2.LensLike' f s a
traceSampled = Data.ProtoLens.Field.field @"traceSampled"
tracing ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tracing" a) =>
  Lens.Family2.LensLike' f s a
tracing = Data.ProtoLens.Field.field @"tracing"
ttl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ttl" a) =>
  Lens.Family2.LensLike' f s a
ttl = Data.ProtoLens.Field.field @"ttl"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
typedPerFilterConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedPerFilterConfig" a) =>
  Lens.Family2.LensLike' f s a
typedPerFilterConfig
  = Data.ProtoLens.Field.field @"typedPerFilterConfig"
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
validated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validated" a) =>
  Lens.Family2.LensLike' f s a
validated = Data.ProtoLens.Field.field @"validated"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'actions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'actions" a) =>
  Lens.Family2.LensLike' f s a
vec'actions = Data.ProtoLens.Field.field @"vec'actions"
vec'allowOriginStringMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'allowOriginStringMatch" a) =>
  Lens.Family2.LensLike' f s a
vec'allowOriginStringMatch
  = Data.ProtoLens.Field.field @"vec'allowOriginStringMatch"
vec'clusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clusters" a) =>
  Lens.Family2.LensLike' f s a
vec'clusters = Data.ProtoLens.Field.field @"vec'clusters"
vec'customTags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'customTags" a) =>
  Lens.Family2.LensLike' f s a
vec'customTags = Data.ProtoLens.Field.field @"vec'customTags"
vec'domains ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'domains" a) =>
  Lens.Family2.LensLike' f s a
vec'domains = Data.ProtoLens.Field.field @"vec'domains"
vec'hashPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'hashPolicy" a) =>
  Lens.Family2.LensLike' f s a
vec'hashPolicy = Data.ProtoLens.Field.field @"vec'hashPolicy"
vec'headers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'headers" a) =>
  Lens.Family2.LensLike' f s a
vec'headers = Data.ProtoLens.Field.field @"vec'headers"
vec'predicates ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'predicates" a) =>
  Lens.Family2.LensLike' f s a
vec'predicates = Data.ProtoLens.Field.field @"vec'predicates"
vec'queryParameters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'queryParameters" a) =>
  Lens.Family2.LensLike' f s a
vec'queryParameters
  = Data.ProtoLens.Field.field @"vec'queryParameters"
vec'rateLimits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'rateLimits" a) =>
  Lens.Family2.LensLike' f s a
vec'rateLimits = Data.ProtoLens.Field.field @"vec'rateLimits"
vec'redirectResponseCodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'redirectResponseCodes" a) =>
  Lens.Family2.LensLike' f s a
vec'redirectResponseCodes
  = Data.ProtoLens.Field.field @"vec'redirectResponseCodes"
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
vec'requestMirrorPolicies ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestMirrorPolicies" a) =>
  Lens.Family2.LensLike' f s a
vec'requestMirrorPolicies
  = Data.ProtoLens.Field.field @"vec'requestMirrorPolicies"
vec'resetHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'resetHeaders" a) =>
  Lens.Family2.LensLike' f s a
vec'resetHeaders = Data.ProtoLens.Field.field @"vec'resetHeaders"
vec'responseHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'responseHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
vec'responseHeadersToAdd
  = Data.ProtoLens.Field.field @"vec'responseHeadersToAdd"
vec'responseHeadersToRemove ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'responseHeadersToRemove" a) =>
  Lens.Family2.LensLike' f s a
vec'responseHeadersToRemove
  = Data.ProtoLens.Field.field @"vec'responseHeadersToRemove"
vec'retriableHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'retriableHeaders" a) =>
  Lens.Family2.LensLike' f s a
vec'retriableHeaders
  = Data.ProtoLens.Field.field @"vec'retriableHeaders"
vec'retriableRequestHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'retriableRequestHeaders" a) =>
  Lens.Family2.LensLike' f s a
vec'retriableRequestHeaders
  = Data.ProtoLens.Field.field @"vec'retriableRequestHeaders"
vec'retriableStatusCodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'retriableStatusCodes" a) =>
  Lens.Family2.LensLike' f s a
vec'retriableStatusCodes
  = Data.ProtoLens.Field.field @"vec'retriableStatusCodes"
vec'retryHostPredicate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'retryHostPredicate" a) =>
  Lens.Family2.LensLike' f s a
vec'retryHostPredicate
  = Data.ProtoLens.Field.field @"vec'retryHostPredicate"
vec'routes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'routes" a) =>
  Lens.Family2.LensLike' f s a
vec'routes = Data.ProtoLens.Field.field @"vec'routes"
vec'upgradeConfigs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'upgradeConfigs" a) =>
  Lens.Family2.LensLike' f s a
vec'upgradeConfigs
  = Data.ProtoLens.Field.field @"vec'upgradeConfigs"
vec'virtualClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'virtualClusters" a) =>
  Lens.Family2.LensLike' f s a
vec'virtualClusters
  = Data.ProtoLens.Field.field @"vec'virtualClusters"
virtualClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "virtualClusters" a) =>
  Lens.Family2.LensLike' f s a
virtualClusters = Data.ProtoLens.Field.field @"virtualClusters"
weight ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "weight" a) =>
  Lens.Family2.LensLike' f s a
weight = Data.ProtoLens.Field.field @"weight"
weightedClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "weightedClusters" a) =>
  Lens.Family2.LensLike' f s a
weightedClusters = Data.ProtoLens.Field.field @"weightedClusters"