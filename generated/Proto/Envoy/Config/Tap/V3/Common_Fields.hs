{- This file was auto-generated from envoy/config/tap/v3/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Tap.V3.Common_Fields where
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
import qualified Proto.Envoy.Config.Common.Matcher.V3.Matcher
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
andMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "andMatch" a) =>
  Lens.Family2.LensLike' f s a
andMatch = Data.ProtoLens.Field.field @"andMatch"
anyMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "anyMatch" a) =>
  Lens.Family2.LensLike' f s a
anyMatch = Data.ProtoLens.Field.field @"anyMatch"
binaryMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binaryMatch" a) =>
  Lens.Family2.LensLike' f s a
binaryMatch = Data.ProtoLens.Field.field @"binaryMatch"
bytesLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bytesLimit" a) =>
  Lens.Family2.LensLike' f s a
bytesLimit = Data.ProtoLens.Field.field @"bytesLimit"
filePerTap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filePerTap" a) =>
  Lens.Family2.LensLike' f s a
filePerTap = Data.ProtoLens.Field.field @"filePerTap"
format ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "format" a) =>
  Lens.Family2.LensLike' f s a
format = Data.ProtoLens.Field.field @"format"
grpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcService" a) =>
  Lens.Family2.LensLike' f s a
grpcService = Data.ProtoLens.Field.field @"grpcService"
headers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "headers" a) =>
  Lens.Family2.LensLike' f s a
headers = Data.ProtoLens.Field.field @"headers"
httpRequestGenericBodyMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpRequestGenericBodyMatch" a) =>
  Lens.Family2.LensLike' f s a
httpRequestGenericBodyMatch
  = Data.ProtoLens.Field.field @"httpRequestGenericBodyMatch"
httpRequestHeadersMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpRequestHeadersMatch" a) =>
  Lens.Family2.LensLike' f s a
httpRequestHeadersMatch
  = Data.ProtoLens.Field.field @"httpRequestHeadersMatch"
httpRequestTrailersMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpRequestTrailersMatch" a) =>
  Lens.Family2.LensLike' f s a
httpRequestTrailersMatch
  = Data.ProtoLens.Field.field @"httpRequestTrailersMatch"
httpResponseGenericBodyMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpResponseGenericBodyMatch" a) =>
  Lens.Family2.LensLike' f s a
httpResponseGenericBodyMatch
  = Data.ProtoLens.Field.field @"httpResponseGenericBodyMatch"
httpResponseHeadersMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpResponseHeadersMatch" a) =>
  Lens.Family2.LensLike' f s a
httpResponseHeadersMatch
  = Data.ProtoLens.Field.field @"httpResponseHeadersMatch"
httpResponseTrailersMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpResponseTrailersMatch" a) =>
  Lens.Family2.LensLike' f s a
httpResponseTrailersMatch
  = Data.ProtoLens.Field.field @"httpResponseTrailersMatch"
match ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "match" a) =>
  Lens.Family2.LensLike' f s a
match = Data.ProtoLens.Field.field @"match"
matchConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchConfig" a) =>
  Lens.Family2.LensLike' f s a
matchConfig = Data.ProtoLens.Field.field @"matchConfig"
maxBufferedRxBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxBufferedRxBytes" a) =>
  Lens.Family2.LensLike' f s a
maxBufferedRxBytes
  = Data.ProtoLens.Field.field @"maxBufferedRxBytes"
maxBufferedTxBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxBufferedTxBytes" a) =>
  Lens.Family2.LensLike' f s a
maxBufferedTxBytes
  = Data.ProtoLens.Field.field @"maxBufferedTxBytes"
maybe'andMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'andMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'andMatch = Data.ProtoLens.Field.field @"maybe'andMatch"
maybe'anyMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'anyMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'anyMatch = Data.ProtoLens.Field.field @"maybe'anyMatch"
maybe'binaryMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binaryMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'binaryMatch = Data.ProtoLens.Field.field @"maybe'binaryMatch"
maybe'filePerTap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filePerTap" a) =>
  Lens.Family2.LensLike' f s a
maybe'filePerTap = Data.ProtoLens.Field.field @"maybe'filePerTap"
maybe'grpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcService" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcService = Data.ProtoLens.Field.field @"maybe'grpcService"
maybe'httpRequestGenericBodyMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpRequestGenericBodyMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpRequestGenericBodyMatch
  = Data.ProtoLens.Field.field @"maybe'httpRequestGenericBodyMatch"
maybe'httpRequestHeadersMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpRequestHeadersMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpRequestHeadersMatch
  = Data.ProtoLens.Field.field @"maybe'httpRequestHeadersMatch"
maybe'httpRequestTrailersMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpRequestTrailersMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpRequestTrailersMatch
  = Data.ProtoLens.Field.field @"maybe'httpRequestTrailersMatch"
maybe'httpResponseGenericBodyMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpResponseGenericBodyMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpResponseGenericBodyMatch
  = Data.ProtoLens.Field.field @"maybe'httpResponseGenericBodyMatch"
maybe'httpResponseHeadersMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpResponseHeadersMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpResponseHeadersMatch
  = Data.ProtoLens.Field.field @"maybe'httpResponseHeadersMatch"
maybe'httpResponseTrailersMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpResponseTrailersMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpResponseTrailersMatch
  = Data.ProtoLens.Field.field @"maybe'httpResponseTrailersMatch"
maybe'match ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'match" a) =>
  Lens.Family2.LensLike' f s a
maybe'match = Data.ProtoLens.Field.field @"maybe'match"
maybe'matchConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'matchConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'matchConfig = Data.ProtoLens.Field.field @"maybe'matchConfig"
maybe'maxBufferedRxBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxBufferedRxBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxBufferedRxBytes
  = Data.ProtoLens.Field.field @"maybe'maxBufferedRxBytes"
maybe'maxBufferedTxBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxBufferedTxBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxBufferedTxBytes
  = Data.ProtoLens.Field.field @"maybe'maxBufferedTxBytes"
maybe'notMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'notMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'notMatch = Data.ProtoLens.Field.field @"maybe'notMatch"
maybe'orMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'orMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'orMatch = Data.ProtoLens.Field.field @"maybe'orMatch"
maybe'outputConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'outputConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'outputConfig
  = Data.ProtoLens.Field.field @"maybe'outputConfig"
maybe'outputSinkType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'outputSinkType" a) =>
  Lens.Family2.LensLike' f s a
maybe'outputSinkType
  = Data.ProtoLens.Field.field @"maybe'outputSinkType"
maybe'rule ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rule" a) =>
  Lens.Family2.LensLike' f s a
maybe'rule = Data.ProtoLens.Field.field @"maybe'rule"
maybe'streamingAdmin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'streamingAdmin" a) =>
  Lens.Family2.LensLike' f s a
maybe'streamingAdmin
  = Data.ProtoLens.Field.field @"maybe'streamingAdmin"
maybe'streamingGrpc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'streamingGrpc" a) =>
  Lens.Family2.LensLike' f s a
maybe'streamingGrpc
  = Data.ProtoLens.Field.field @"maybe'streamingGrpc"
maybe'stringMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stringMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'stringMatch = Data.ProtoLens.Field.field @"maybe'stringMatch"
maybe'tapEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tapEnabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'tapEnabled = Data.ProtoLens.Field.field @"maybe'tapEnabled"
notMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "notMatch" a) =>
  Lens.Family2.LensLike' f s a
notMatch = Data.ProtoLens.Field.field @"notMatch"
orMatch ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "orMatch" a) =>
  Lens.Family2.LensLike' f s a
orMatch = Data.ProtoLens.Field.field @"orMatch"
outputConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "outputConfig" a) =>
  Lens.Family2.LensLike' f s a
outputConfig = Data.ProtoLens.Field.field @"outputConfig"
pathPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pathPrefix" a) =>
  Lens.Family2.LensLike' f s a
pathPrefix = Data.ProtoLens.Field.field @"pathPrefix"
patterns ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "patterns" a) =>
  Lens.Family2.LensLike' f s a
patterns = Data.ProtoLens.Field.field @"patterns"
rules ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rules" a) =>
  Lens.Family2.LensLike' f s a
rules = Data.ProtoLens.Field.field @"rules"
sinks ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sinks" a) =>
  Lens.Family2.LensLike' f s a
sinks = Data.ProtoLens.Field.field @"sinks"
streaming ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "streaming" a) =>
  Lens.Family2.LensLike' f s a
streaming = Data.ProtoLens.Field.field @"streaming"
streamingAdmin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "streamingAdmin" a) =>
  Lens.Family2.LensLike' f s a
streamingAdmin = Data.ProtoLens.Field.field @"streamingAdmin"
streamingGrpc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "streamingGrpc" a) =>
  Lens.Family2.LensLike' f s a
streamingGrpc = Data.ProtoLens.Field.field @"streamingGrpc"
stringMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stringMatch" a) =>
  Lens.Family2.LensLike' f s a
stringMatch = Data.ProtoLens.Field.field @"stringMatch"
tapEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tapEnabled" a) =>
  Lens.Family2.LensLike' f s a
tapEnabled = Data.ProtoLens.Field.field @"tapEnabled"
tapId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tapId" a) =>
  Lens.Family2.LensLike' f s a
tapId = Data.ProtoLens.Field.field @"tapId"
vec'headers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'headers" a) =>
  Lens.Family2.LensLike' f s a
vec'headers = Data.ProtoLens.Field.field @"vec'headers"
vec'patterns ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'patterns" a) =>
  Lens.Family2.LensLike' f s a
vec'patterns = Data.ProtoLens.Field.field @"vec'patterns"
vec'rules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'rules" a) =>
  Lens.Family2.LensLike' f s a
vec'rules = Data.ProtoLens.Field.field @"vec'rules"
vec'sinks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'sinks" a) =>
  Lens.Family2.LensLike' f s a
vec'sinks = Data.ProtoLens.Field.field @"vec'sinks"