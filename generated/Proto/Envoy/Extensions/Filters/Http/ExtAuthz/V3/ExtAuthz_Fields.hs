{- This file was auto-generated from envoy/extensions/filters/http/ext_authz/v3/ext_authz.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.ExtAuthz.V3.ExtAuthz_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Envoy.Config.Core.V3.HttpUri
import qualified Proto.Envoy.Type.Matcher.V3.Metadata
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Envoy.Type.V3.HttpStatus
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
allowPartialMessage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowPartialMessage" a) =>
  Lens.Family2.LensLike' f s a
allowPartialMessage
  = Data.ProtoLens.Field.field @"allowPartialMessage"
allowedClientHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowedClientHeaders" a) =>
  Lens.Family2.LensLike' f s a
allowedClientHeaders
  = Data.ProtoLens.Field.field @"allowedClientHeaders"
allowedClientHeadersOnSuccess ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowedClientHeadersOnSuccess" a) =>
  Lens.Family2.LensLike' f s a
allowedClientHeadersOnSuccess
  = Data.ProtoLens.Field.field @"allowedClientHeadersOnSuccess"
allowedHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowedHeaders" a) =>
  Lens.Family2.LensLike' f s a
allowedHeaders = Data.ProtoLens.Field.field @"allowedHeaders"
allowedUpstreamHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowedUpstreamHeaders" a) =>
  Lens.Family2.LensLike' f s a
allowedUpstreamHeaders
  = Data.ProtoLens.Field.field @"allowedUpstreamHeaders"
allowedUpstreamHeadersToAppend ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowedUpstreamHeadersToAppend" a) =>
  Lens.Family2.LensLike' f s a
allowedUpstreamHeadersToAppend
  = Data.ProtoLens.Field.field @"allowedUpstreamHeadersToAppend"
authorizationRequest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authorizationRequest" a) =>
  Lens.Family2.LensLike' f s a
authorizationRequest
  = Data.ProtoLens.Field.field @"authorizationRequest"
authorizationResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authorizationResponse" a) =>
  Lens.Family2.LensLike' f s a
authorizationResponse
  = Data.ProtoLens.Field.field @"authorizationResponse"
bootstrapMetadataLabelsKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bootstrapMetadataLabelsKey" a) =>
  Lens.Family2.LensLike' f s a
bootstrapMetadataLabelsKey
  = Data.ProtoLens.Field.field @"bootstrapMetadataLabelsKey"
checkSettings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "checkSettings" a) =>
  Lens.Family2.LensLike' f s a
checkSettings = Data.ProtoLens.Field.field @"checkSettings"
clearRouteCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clearRouteCache" a) =>
  Lens.Family2.LensLike' f s a
clearRouteCache = Data.ProtoLens.Field.field @"clearRouteCache"
contextExtensions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "contextExtensions" a) =>
  Lens.Family2.LensLike' f s a
contextExtensions = Data.ProtoLens.Field.field @"contextExtensions"
denyAtDisable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "denyAtDisable" a) =>
  Lens.Family2.LensLike' f s a
denyAtDisable = Data.ProtoLens.Field.field @"denyAtDisable"
disableRequestBodyBuffering ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disableRequestBodyBuffering" a) =>
  Lens.Family2.LensLike' f s a
disableRequestBodyBuffering
  = Data.ProtoLens.Field.field @"disableRequestBodyBuffering"
disabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disabled" a) =>
  Lens.Family2.LensLike' f s a
disabled = Data.ProtoLens.Field.field @"disabled"
failureModeAllow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failureModeAllow" a) =>
  Lens.Family2.LensLike' f s a
failureModeAllow = Data.ProtoLens.Field.field @"failureModeAllow"
filterEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterEnabled" a) =>
  Lens.Family2.LensLike' f s a
filterEnabled = Data.ProtoLens.Field.field @"filterEnabled"
filterEnabledMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterEnabledMetadata" a) =>
  Lens.Family2.LensLike' f s a
filterEnabledMetadata
  = Data.ProtoLens.Field.field @"filterEnabledMetadata"
grpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcService" a) =>
  Lens.Family2.LensLike' f s a
grpcService = Data.ProtoLens.Field.field @"grpcService"
headersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headersToAdd" a) =>
  Lens.Family2.LensLike' f s a
headersToAdd = Data.ProtoLens.Field.field @"headersToAdd"
httpService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpService" a) =>
  Lens.Family2.LensLike' f s a
httpService = Data.ProtoLens.Field.field @"httpService"
includePeerCertificate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "includePeerCertificate" a) =>
  Lens.Family2.LensLike' f s a
includePeerCertificate
  = Data.ProtoLens.Field.field @"includePeerCertificate"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maxRequestBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxRequestBytes" a) =>
  Lens.Family2.LensLike' f s a
maxRequestBytes = Data.ProtoLens.Field.field @"maxRequestBytes"
maybe'allowedClientHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allowedClientHeaders" a) =>
  Lens.Family2.LensLike' f s a
maybe'allowedClientHeaders
  = Data.ProtoLens.Field.field @"maybe'allowedClientHeaders"
maybe'allowedClientHeadersOnSuccess ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allowedClientHeadersOnSuccess" a) =>
  Lens.Family2.LensLike' f s a
maybe'allowedClientHeadersOnSuccess
  = Data.ProtoLens.Field.field @"maybe'allowedClientHeadersOnSuccess"
maybe'allowedHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allowedHeaders" a) =>
  Lens.Family2.LensLike' f s a
maybe'allowedHeaders
  = Data.ProtoLens.Field.field @"maybe'allowedHeaders"
maybe'allowedUpstreamHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allowedUpstreamHeaders" a) =>
  Lens.Family2.LensLike' f s a
maybe'allowedUpstreamHeaders
  = Data.ProtoLens.Field.field @"maybe'allowedUpstreamHeaders"
maybe'allowedUpstreamHeadersToAppend ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allowedUpstreamHeadersToAppend" a) =>
  Lens.Family2.LensLike' f s a
maybe'allowedUpstreamHeadersToAppend
  = Data.ProtoLens.Field.field
      @"maybe'allowedUpstreamHeadersToAppend"
maybe'authorizationRequest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'authorizationRequest" a) =>
  Lens.Family2.LensLike' f s a
maybe'authorizationRequest
  = Data.ProtoLens.Field.field @"maybe'authorizationRequest"
maybe'authorizationResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'authorizationResponse" a) =>
  Lens.Family2.LensLike' f s a
maybe'authorizationResponse
  = Data.ProtoLens.Field.field @"maybe'authorizationResponse"
maybe'checkSettings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'checkSettings" a) =>
  Lens.Family2.LensLike' f s a
maybe'checkSettings
  = Data.ProtoLens.Field.field @"maybe'checkSettings"
maybe'denyAtDisable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'denyAtDisable" a) =>
  Lens.Family2.LensLike' f s a
maybe'denyAtDisable
  = Data.ProtoLens.Field.field @"maybe'denyAtDisable"
maybe'disabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'disabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'disabled = Data.ProtoLens.Field.field @"maybe'disabled"
maybe'filterEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterEnabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterEnabled
  = Data.ProtoLens.Field.field @"maybe'filterEnabled"
maybe'filterEnabledMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterEnabledMetadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterEnabledMetadata
  = Data.ProtoLens.Field.field @"maybe'filterEnabledMetadata"
maybe'grpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcService" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcService = Data.ProtoLens.Field.field @"maybe'grpcService"
maybe'httpService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpService" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpService = Data.ProtoLens.Field.field @"maybe'httpService"
maybe'override ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'override" a) =>
  Lens.Family2.LensLike' f s a
maybe'override = Data.ProtoLens.Field.field @"maybe'override"
maybe'serverUri ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'serverUri" a) =>
  Lens.Family2.LensLike' f s a
maybe'serverUri = Data.ProtoLens.Field.field @"maybe'serverUri"
maybe'services ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'services" a) =>
  Lens.Family2.LensLike' f s a
maybe'services = Data.ProtoLens.Field.field @"maybe'services"
maybe'statusOnError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statusOnError" a) =>
  Lens.Family2.LensLike' f s a
maybe'statusOnError
  = Data.ProtoLens.Field.field @"maybe'statusOnError"
maybe'withRequestBody ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'withRequestBody" a) =>
  Lens.Family2.LensLike' f s a
maybe'withRequestBody
  = Data.ProtoLens.Field.field @"maybe'withRequestBody"
metadataContextNamespaces ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadataContextNamespaces" a) =>
  Lens.Family2.LensLike' f s a
metadataContextNamespaces
  = Data.ProtoLens.Field.field @"metadataContextNamespaces"
packAsBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "packAsBytes" a) =>
  Lens.Family2.LensLike' f s a
packAsBytes = Data.ProtoLens.Field.field @"packAsBytes"
pathPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pathPrefix" a) =>
  Lens.Family2.LensLike' f s a
pathPrefix = Data.ProtoLens.Field.field @"pathPrefix"
serverUri ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serverUri" a) =>
  Lens.Family2.LensLike' f s a
serverUri = Data.ProtoLens.Field.field @"serverUri"
statPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statPrefix" a) =>
  Lens.Family2.LensLike' f s a
statPrefix = Data.ProtoLens.Field.field @"statPrefix"
statusOnError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statusOnError" a) =>
  Lens.Family2.LensLike' f s a
statusOnError = Data.ProtoLens.Field.field @"statusOnError"
transportApiVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transportApiVersion" a) =>
  Lens.Family2.LensLike' f s a
transportApiVersion
  = Data.ProtoLens.Field.field @"transportApiVersion"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'headersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'headersToAdd" a) =>
  Lens.Family2.LensLike' f s a
vec'headersToAdd = Data.ProtoLens.Field.field @"vec'headersToAdd"
vec'metadataContextNamespaces ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'metadataContextNamespaces" a) =>
  Lens.Family2.LensLike' f s a
vec'metadataContextNamespaces
  = Data.ProtoLens.Field.field @"vec'metadataContextNamespaces"
withRequestBody ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "withRequestBody" a) =>
  Lens.Family2.LensLike' f s a
withRequestBody = Data.ProtoLens.Field.field @"withRequestBody"