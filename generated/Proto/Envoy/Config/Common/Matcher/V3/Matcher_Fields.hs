{- This file was auto-generated from envoy/config/common/matcher/v3/matcher.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Common.Matcher.V3.Matcher_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
action ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "action" a) =>
  Lens.Family2.LensLike' f s a
action = Data.ProtoLens.Field.field @"action"
andMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "andMatch" a) =>
  Lens.Family2.LensLike' f s a
andMatch = Data.ProtoLens.Field.field @"andMatch"
andMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "andMatcher" a) =>
  Lens.Family2.LensLike' f s a
andMatcher = Data.ProtoLens.Field.field @"andMatcher"
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
customMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "customMatch" a) =>
  Lens.Family2.LensLike' f s a
customMatch = Data.ProtoLens.Field.field @"customMatch"
exactMatchMap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exactMatchMap" a) =>
  Lens.Family2.LensLike' f s a
exactMatchMap = Data.ProtoLens.Field.field @"exactMatchMap"
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
input ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "input" a) =>
  Lens.Family2.LensLike' f s a
input = Data.ProtoLens.Field.field @"input"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
map ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "map" a) =>
  Lens.Family2.LensLike' f s a
map = Data.ProtoLens.Field.field @"map"
matcher ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "matcher" a) =>
  Lens.Family2.LensLike' f s a
matcher = Data.ProtoLens.Field.field @"matcher"
matcherList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matcherList" a) =>
  Lens.Family2.LensLike' f s a
matcherList = Data.ProtoLens.Field.field @"matcherList"
matcherTree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matcherTree" a) =>
  Lens.Family2.LensLike' f s a
matcherTree = Data.ProtoLens.Field.field @"matcherTree"
matchers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchers" a) =>
  Lens.Family2.LensLike' f s a
matchers = Data.ProtoLens.Field.field @"matchers"
maybe'action ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'action" a) =>
  Lens.Family2.LensLike' f s a
maybe'action = Data.ProtoLens.Field.field @"maybe'action"
maybe'andMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'andMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'andMatch = Data.ProtoLens.Field.field @"maybe'andMatch"
maybe'andMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'andMatcher" a) =>
  Lens.Family2.LensLike' f s a
maybe'andMatcher = Data.ProtoLens.Field.field @"maybe'andMatcher"
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
maybe'customMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'customMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'customMatch = Data.ProtoLens.Field.field @"maybe'customMatch"
maybe'exactMatchMap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'exactMatchMap" a) =>
  Lens.Family2.LensLike' f s a
maybe'exactMatchMap
  = Data.ProtoLens.Field.field @"maybe'exactMatchMap"
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
maybe'input ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'input" a) =>
  Lens.Family2.LensLike' f s a
maybe'input = Data.ProtoLens.Field.field @"maybe'input"
maybe'matchType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'matchType" a) =>
  Lens.Family2.LensLike' f s a
maybe'matchType = Data.ProtoLens.Field.field @"maybe'matchType"
maybe'matcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'matcher" a) =>
  Lens.Family2.LensLike' f s a
maybe'matcher = Data.ProtoLens.Field.field @"maybe'matcher"
maybe'matcherList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'matcherList" a) =>
  Lens.Family2.LensLike' f s a
maybe'matcherList = Data.ProtoLens.Field.field @"maybe'matcherList"
maybe'matcherTree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'matcherTree" a) =>
  Lens.Family2.LensLike' f s a
maybe'matcherTree = Data.ProtoLens.Field.field @"maybe'matcherTree"
maybe'matcherType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'matcherType" a) =>
  Lens.Family2.LensLike' f s a
maybe'matcherType = Data.ProtoLens.Field.field @"maybe'matcherType"
maybe'notMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'notMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'notMatch = Data.ProtoLens.Field.field @"maybe'notMatch"
maybe'notMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'notMatcher" a) =>
  Lens.Family2.LensLike' f s a
maybe'notMatcher = Data.ProtoLens.Field.field @"maybe'notMatcher"
maybe'onMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'onMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'onMatch = Data.ProtoLens.Field.field @"maybe'onMatch"
maybe'onNoMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'onNoMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'onNoMatch = Data.ProtoLens.Field.field @"maybe'onNoMatch"
maybe'orMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'orMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'orMatch = Data.ProtoLens.Field.field @"maybe'orMatch"
maybe'orMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'orMatcher" a) =>
  Lens.Family2.LensLike' f s a
maybe'orMatcher = Data.ProtoLens.Field.field @"maybe'orMatcher"
maybe'predicate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'predicate" a) =>
  Lens.Family2.LensLike' f s a
maybe'predicate = Data.ProtoLens.Field.field @"maybe'predicate"
maybe'prefixMatchMap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefixMatchMap" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefixMatchMap
  = Data.ProtoLens.Field.field @"maybe'prefixMatchMap"
maybe'rule ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rule" a) =>
  Lens.Family2.LensLike' f s a
maybe'rule = Data.ProtoLens.Field.field @"maybe'rule"
maybe'singlePredicate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'singlePredicate" a) =>
  Lens.Family2.LensLike' f s a
maybe'singlePredicate
  = Data.ProtoLens.Field.field @"maybe'singlePredicate"
maybe'stringMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stringMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'stringMatch = Data.ProtoLens.Field.field @"maybe'stringMatch"
maybe'treeType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'treeType" a) =>
  Lens.Family2.LensLike' f s a
maybe'treeType = Data.ProtoLens.Field.field @"maybe'treeType"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'valueMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'valueMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'valueMatch = Data.ProtoLens.Field.field @"maybe'valueMatch"
notMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "notMatch" a) =>
  Lens.Family2.LensLike' f s a
notMatch = Data.ProtoLens.Field.field @"notMatch"
notMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "notMatcher" a) =>
  Lens.Family2.LensLike' f s a
notMatcher = Data.ProtoLens.Field.field @"notMatcher"
onMatch ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "onMatch" a) =>
  Lens.Family2.LensLike' f s a
onMatch = Data.ProtoLens.Field.field @"onMatch"
onNoMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "onNoMatch" a) =>
  Lens.Family2.LensLike' f s a
onNoMatch = Data.ProtoLens.Field.field @"onNoMatch"
orMatch ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "orMatch" a) =>
  Lens.Family2.LensLike' f s a
orMatch = Data.ProtoLens.Field.field @"orMatch"
orMatcher ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "orMatcher" a) =>
  Lens.Family2.LensLike' f s a
orMatcher = Data.ProtoLens.Field.field @"orMatcher"
patterns ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "patterns" a) =>
  Lens.Family2.LensLike' f s a
patterns = Data.ProtoLens.Field.field @"patterns"
predicate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "predicate" a) =>
  Lens.Family2.LensLike' f s a
predicate = Data.ProtoLens.Field.field @"predicate"
prefixMatchMap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prefixMatchMap" a) =>
  Lens.Family2.LensLike' f s a
prefixMatchMap = Data.ProtoLens.Field.field @"prefixMatchMap"
rules ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rules" a) =>
  Lens.Family2.LensLike' f s a
rules = Data.ProtoLens.Field.field @"rules"
singlePredicate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "singlePredicate" a) =>
  Lens.Family2.LensLike' f s a
singlePredicate = Data.ProtoLens.Field.field @"singlePredicate"
stringMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stringMatch" a) =>
  Lens.Family2.LensLike' f s a
stringMatch = Data.ProtoLens.Field.field @"stringMatch"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
valueMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "valueMatch" a) =>
  Lens.Family2.LensLike' f s a
valueMatch = Data.ProtoLens.Field.field @"valueMatch"
vec'headers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'headers" a) =>
  Lens.Family2.LensLike' f s a
vec'headers = Data.ProtoLens.Field.field @"vec'headers"
vec'matchers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'matchers" a) =>
  Lens.Family2.LensLike' f s a
vec'matchers = Data.ProtoLens.Field.field @"vec'matchers"
vec'patterns ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'patterns" a) =>
  Lens.Family2.LensLike' f s a
vec'patterns = Data.ProtoLens.Field.field @"vec'patterns"
vec'predicate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'predicate" a) =>
  Lens.Family2.LensLike' f s a
vec'predicate = Data.ProtoLens.Field.field @"vec'predicate"
vec'rules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'rules" a) =>
  Lens.Family2.LensLike' f s a
vec'rules = Data.ProtoLens.Field.field @"vec'rules"