{- This file was auto-generated from google/api/expr/v1alpha1/checked.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Google.Api.Expr.V1alpha1.Checked_Fields where
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
import qualified Proto.Google.Api.Expr.V1alpha1.Syntax
import qualified Proto.Google.Protobuf.Empty
import qualified Proto.Google.Protobuf.Struct
abstractType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "abstractType" a) =>
  Lens.Family2.LensLike' f s a
abstractType = Data.ProtoLens.Field.field @"abstractType"
argTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "argTypes" a) =>
  Lens.Family2.LensLike' f s a
argTypes = Data.ProtoLens.Field.field @"argTypes"
doc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "doc" a) =>
  Lens.Family2.LensLike' f s a
doc = Data.ProtoLens.Field.field @"doc"
dyn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dyn" a) =>
  Lens.Family2.LensLike' f s a
dyn = Data.ProtoLens.Field.field @"dyn"
elemType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "elemType" a) =>
  Lens.Family2.LensLike' f s a
elemType = Data.ProtoLens.Field.field @"elemType"
error ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "error" a) =>
  Lens.Family2.LensLike' f s a
error = Data.ProtoLens.Field.field @"error"
expr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "expr" a) =>
  Lens.Family2.LensLike' f s a
expr = Data.ProtoLens.Field.field @"expr"
function ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "function" a) =>
  Lens.Family2.LensLike' f s a
function = Data.ProtoLens.Field.field @"function"
ident ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ident" a) =>
  Lens.Family2.LensLike' f s a
ident = Data.ProtoLens.Field.field @"ident"
isInstanceFunction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isInstanceFunction" a) =>
  Lens.Family2.LensLike' f s a
isInstanceFunction
  = Data.ProtoLens.Field.field @"isInstanceFunction"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
keyType ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "keyType" a) =>
  Lens.Family2.LensLike' f s a
keyType = Data.ProtoLens.Field.field @"keyType"
listType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listType" a) =>
  Lens.Family2.LensLike' f s a
listType = Data.ProtoLens.Field.field @"listType"
mapType ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mapType" a) =>
  Lens.Family2.LensLike' f s a
mapType = Data.ProtoLens.Field.field @"mapType"
maybe'abstractType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'abstractType" a) =>
  Lens.Family2.LensLike' f s a
maybe'abstractType
  = Data.ProtoLens.Field.field @"maybe'abstractType"
maybe'declKind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'declKind" a) =>
  Lens.Family2.LensLike' f s a
maybe'declKind = Data.ProtoLens.Field.field @"maybe'declKind"
maybe'dyn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dyn" a) =>
  Lens.Family2.LensLike' f s a
maybe'dyn = Data.ProtoLens.Field.field @"maybe'dyn"
maybe'elemType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'elemType" a) =>
  Lens.Family2.LensLike' f s a
maybe'elemType = Data.ProtoLens.Field.field @"maybe'elemType"
maybe'error ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'error" a) =>
  Lens.Family2.LensLike' f s a
maybe'error = Data.ProtoLens.Field.field @"maybe'error"
maybe'expr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expr" a) =>
  Lens.Family2.LensLike' f s a
maybe'expr = Data.ProtoLens.Field.field @"maybe'expr"
maybe'function ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'function" a) =>
  Lens.Family2.LensLike' f s a
maybe'function = Data.ProtoLens.Field.field @"maybe'function"
maybe'ident ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ident" a) =>
  Lens.Family2.LensLike' f s a
maybe'ident = Data.ProtoLens.Field.field @"maybe'ident"
maybe'keyType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'keyType" a) =>
  Lens.Family2.LensLike' f s a
maybe'keyType = Data.ProtoLens.Field.field @"maybe'keyType"
maybe'listType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listType" a) =>
  Lens.Family2.LensLike' f s a
maybe'listType = Data.ProtoLens.Field.field @"maybe'listType"
maybe'mapType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mapType" a) =>
  Lens.Family2.LensLike' f s a
maybe'mapType = Data.ProtoLens.Field.field @"maybe'mapType"
maybe'messageType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'messageType" a) =>
  Lens.Family2.LensLike' f s a
maybe'messageType = Data.ProtoLens.Field.field @"maybe'messageType"
maybe'null ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'null" a) =>
  Lens.Family2.LensLike' f s a
maybe'null = Data.ProtoLens.Field.field @"maybe'null"
maybe'primitive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'primitive" a) =>
  Lens.Family2.LensLike' f s a
maybe'primitive = Data.ProtoLens.Field.field @"maybe'primitive"
maybe'resultType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'resultType" a) =>
  Lens.Family2.LensLike' f s a
maybe'resultType = Data.ProtoLens.Field.field @"maybe'resultType"
maybe'sourceInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceInfo = Data.ProtoLens.Field.field @"maybe'sourceInfo"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'typeKind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typeKind" a) =>
  Lens.Family2.LensLike' f s a
maybe'typeKind = Data.ProtoLens.Field.field @"maybe'typeKind"
maybe'typeParam ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typeParam" a) =>
  Lens.Family2.LensLike' f s a
maybe'typeParam = Data.ProtoLens.Field.field @"maybe'typeParam"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'valueType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'valueType" a) =>
  Lens.Family2.LensLike' f s a
maybe'valueType = Data.ProtoLens.Field.field @"maybe'valueType"
maybe'wellKnown ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wellKnown" a) =>
  Lens.Family2.LensLike' f s a
maybe'wellKnown = Data.ProtoLens.Field.field @"maybe'wellKnown"
maybe'wrapper ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wrapper" a) =>
  Lens.Family2.LensLike' f s a
maybe'wrapper = Data.ProtoLens.Field.field @"maybe'wrapper"
messageType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "messageType" a) =>
  Lens.Family2.LensLike' f s a
messageType = Data.ProtoLens.Field.field @"messageType"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
null ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "null" a) =>
  Lens.Family2.LensLike' f s a
null = Data.ProtoLens.Field.field @"null"
overloadId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overloadId" a) =>
  Lens.Family2.LensLike' f s a
overloadId = Data.ProtoLens.Field.field @"overloadId"
overloads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overloads" a) =>
  Lens.Family2.LensLike' f s a
overloads = Data.ProtoLens.Field.field @"overloads"
parameterTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parameterTypes" a) =>
  Lens.Family2.LensLike' f s a
parameterTypes = Data.ProtoLens.Field.field @"parameterTypes"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
primitive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "primitive" a) =>
  Lens.Family2.LensLike' f s a
primitive = Data.ProtoLens.Field.field @"primitive"
referenceMap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "referenceMap" a) =>
  Lens.Family2.LensLike' f s a
referenceMap = Data.ProtoLens.Field.field @"referenceMap"
resultType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resultType" a) =>
  Lens.Family2.LensLike' f s a
resultType = Data.ProtoLens.Field.field @"resultType"
sourceInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceInfo" a) =>
  Lens.Family2.LensLike' f s a
sourceInfo = Data.ProtoLens.Field.field @"sourceInfo"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
typeMap ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "typeMap" a) =>
  Lens.Family2.LensLike' f s a
typeMap = Data.ProtoLens.Field.field @"typeMap"
typeParam ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typeParam" a) =>
  Lens.Family2.LensLike' f s a
typeParam = Data.ProtoLens.Field.field @"typeParam"
typeParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typeParams" a) =>
  Lens.Family2.LensLike' f s a
typeParams = Data.ProtoLens.Field.field @"typeParams"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
valueType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "valueType" a) =>
  Lens.Family2.LensLike' f s a
valueType = Data.ProtoLens.Field.field @"valueType"
vec'argTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'argTypes" a) =>
  Lens.Family2.LensLike' f s a
vec'argTypes = Data.ProtoLens.Field.field @"vec'argTypes"
vec'overloadId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'overloadId" a) =>
  Lens.Family2.LensLike' f s a
vec'overloadId = Data.ProtoLens.Field.field @"vec'overloadId"
vec'overloads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'overloads" a) =>
  Lens.Family2.LensLike' f s a
vec'overloads = Data.ProtoLens.Field.field @"vec'overloads"
vec'parameterTypes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'parameterTypes" a) =>
  Lens.Family2.LensLike' f s a
vec'parameterTypes
  = Data.ProtoLens.Field.field @"vec'parameterTypes"
vec'params ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'params" a) =>
  Lens.Family2.LensLike' f s a
vec'params = Data.ProtoLens.Field.field @"vec'params"
vec'typeParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'typeParams" a) =>
  Lens.Family2.LensLike' f s a
vec'typeParams = Data.ProtoLens.Field.field @"vec'typeParams"
wellKnown ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wellKnown" a) =>
  Lens.Family2.LensLike' f s a
wellKnown = Data.ProtoLens.Field.field @"wellKnown"
wrapper ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "wrapper" a) =>
  Lens.Family2.LensLike' f s a
wrapper = Data.ProtoLens.Field.field @"wrapper"