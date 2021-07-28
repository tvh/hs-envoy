{- This file was auto-generated from envoy/service/ext_proc/v3alpha/external_processor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.ExtProc.V3alpha.ExternalProcessor_Fields where
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
import qualified Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode
import qualified Proto.Envoy.Type.V3.HttpStatus
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
asyncMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "asyncMode" a) =>
  Lens.Family2.LensLike' f s a
asyncMode = Data.ProtoLens.Field.field @"asyncMode"
attributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "attributes" a) =>
  Lens.Family2.LensLike' f s a
attributes = Data.ProtoLens.Field.field @"attributes"
body ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "body" a) =>
  Lens.Family2.LensLike' f s a
body = Data.ProtoLens.Field.field @"body"
bodyMutation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bodyMutation" a) =>
  Lens.Family2.LensLike' f s a
bodyMutation = Data.ProtoLens.Field.field @"bodyMutation"
clearBody ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clearBody" a) =>
  Lens.Family2.LensLike' f s a
clearBody = Data.ProtoLens.Field.field @"clearBody"
clearRouteCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clearRouteCache" a) =>
  Lens.Family2.LensLike' f s a
clearRouteCache = Data.ProtoLens.Field.field @"clearRouteCache"
details ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "details" a) =>
  Lens.Family2.LensLike' f s a
details = Data.ProtoLens.Field.field @"details"
dynamicMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicMetadata" a) =>
  Lens.Family2.LensLike' f s a
dynamicMetadata = Data.ProtoLens.Field.field @"dynamicMetadata"
endOfStream ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endOfStream" a) =>
  Lens.Family2.LensLike' f s a
endOfStream = Data.ProtoLens.Field.field @"endOfStream"
grpcStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcStatus" a) =>
  Lens.Family2.LensLike' f s a
grpcStatus = Data.ProtoLens.Field.field @"grpcStatus"
headerMutation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "headerMutation" a) =>
  Lens.Family2.LensLike' f s a
headerMutation = Data.ProtoLens.Field.field @"headerMutation"
headers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "headers" a) =>
  Lens.Family2.LensLike' f s a
headers = Data.ProtoLens.Field.field @"headers"
immediateResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "immediateResponse" a) =>
  Lens.Family2.LensLike' f s a
immediateResponse = Data.ProtoLens.Field.field @"immediateResponse"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maybe'body ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'body" a) =>
  Lens.Family2.LensLike' f s a
maybe'body = Data.ProtoLens.Field.field @"maybe'body"
maybe'bodyMutation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bodyMutation" a) =>
  Lens.Family2.LensLike' f s a
maybe'bodyMutation
  = Data.ProtoLens.Field.field @"maybe'bodyMutation"
maybe'clearBody ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clearBody" a) =>
  Lens.Family2.LensLike' f s a
maybe'clearBody = Data.ProtoLens.Field.field @"maybe'clearBody"
maybe'dynamicMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dynamicMetadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'dynamicMetadata
  = Data.ProtoLens.Field.field @"maybe'dynamicMetadata"
maybe'grpcStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcStatus" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcStatus = Data.ProtoLens.Field.field @"maybe'grpcStatus"
maybe'headerMutation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'headerMutation" a) =>
  Lens.Family2.LensLike' f s a
maybe'headerMutation
  = Data.ProtoLens.Field.field @"maybe'headerMutation"
maybe'headers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'headers" a) =>
  Lens.Family2.LensLike' f s a
maybe'headers = Data.ProtoLens.Field.field @"maybe'headers"
maybe'immediateResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'immediateResponse" a) =>
  Lens.Family2.LensLike' f s a
maybe'immediateResponse
  = Data.ProtoLens.Field.field @"maybe'immediateResponse"
maybe'modeOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'modeOverride" a) =>
  Lens.Family2.LensLike' f s a
maybe'modeOverride
  = Data.ProtoLens.Field.field @"maybe'modeOverride"
maybe'mutation ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mutation" a) =>
  Lens.Family2.LensLike' f s a
maybe'mutation = Data.ProtoLens.Field.field @"maybe'mutation"
maybe'request ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'request" a) =>
  Lens.Family2.LensLike' f s a
maybe'request = Data.ProtoLens.Field.field @"maybe'request"
maybe'requestBody ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestBody" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestBody = Data.ProtoLens.Field.field @"maybe'requestBody"
maybe'requestHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestHeaders" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestHeaders
  = Data.ProtoLens.Field.field @"maybe'requestHeaders"
maybe'requestTrailers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestTrailers" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestTrailers
  = Data.ProtoLens.Field.field @"maybe'requestTrailers"
maybe'response ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'response" a) =>
  Lens.Family2.LensLike' f s a
maybe'response = Data.ProtoLens.Field.field @"maybe'response"
maybe'responseBody ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'responseBody" a) =>
  Lens.Family2.LensLike' f s a
maybe'responseBody
  = Data.ProtoLens.Field.field @"maybe'responseBody"
maybe'responseHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'responseHeaders" a) =>
  Lens.Family2.LensLike' f s a
maybe'responseHeaders
  = Data.ProtoLens.Field.field @"maybe'responseHeaders"
maybe'responseTrailers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'responseTrailers" a) =>
  Lens.Family2.LensLike' f s a
maybe'responseTrailers
  = Data.ProtoLens.Field.field @"maybe'responseTrailers"
maybe'status ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'status" a) =>
  Lens.Family2.LensLike' f s a
maybe'status = Data.ProtoLens.Field.field @"maybe'status"
maybe'trailers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trailers" a) =>
  Lens.Family2.LensLike' f s a
maybe'trailers = Data.ProtoLens.Field.field @"maybe'trailers"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
modeOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "modeOverride" a) =>
  Lens.Family2.LensLike' f s a
modeOverride = Data.ProtoLens.Field.field @"modeOverride"
removeHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "removeHeaders" a) =>
  Lens.Family2.LensLike' f s a
removeHeaders = Data.ProtoLens.Field.field @"removeHeaders"
requestBody ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestBody" a) =>
  Lens.Family2.LensLike' f s a
requestBody = Data.ProtoLens.Field.field @"requestBody"
requestHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeaders" a) =>
  Lens.Family2.LensLike' f s a
requestHeaders = Data.ProtoLens.Field.field @"requestHeaders"
requestTrailers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestTrailers" a) =>
  Lens.Family2.LensLike' f s a
requestTrailers = Data.ProtoLens.Field.field @"requestTrailers"
response ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "response" a) =>
  Lens.Family2.LensLike' f s a
response = Data.ProtoLens.Field.field @"response"
responseBody ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseBody" a) =>
  Lens.Family2.LensLike' f s a
responseBody = Data.ProtoLens.Field.field @"responseBody"
responseHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseHeaders" a) =>
  Lens.Family2.LensLike' f s a
responseHeaders = Data.ProtoLens.Field.field @"responseHeaders"
responseTrailers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseTrailers" a) =>
  Lens.Family2.LensLike' f s a
responseTrailers = Data.ProtoLens.Field.field @"responseTrailers"
setHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "setHeaders" a) =>
  Lens.Family2.LensLike' f s a
setHeaders = Data.ProtoLens.Field.field @"setHeaders"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
trailers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trailers" a) =>
  Lens.Family2.LensLike' f s a
trailers = Data.ProtoLens.Field.field @"trailers"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'removeHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'removeHeaders" a) =>
  Lens.Family2.LensLike' f s a
vec'removeHeaders = Data.ProtoLens.Field.field @"vec'removeHeaders"
vec'setHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'setHeaders" a) =>
  Lens.Family2.LensLike' f s a
vec'setHeaders = Data.ProtoLens.Field.field @"vec'setHeaders"