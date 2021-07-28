{- This file was auto-generated from google/api/expr/v1alpha1/syntax.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Google.Api.Expr.V1alpha1.Syntax_Fields where
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Timestamp
accuInit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "accuInit" a) =>
  Lens.Family2.LensLike' f s a
accuInit = Data.ProtoLens.Field.field @"accuInit"
accuVar ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "accuVar" a) =>
  Lens.Family2.LensLike' f s a
accuVar = Data.ProtoLens.Field.field @"accuVar"
args ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "args" a) =>
  Lens.Family2.LensLike' f s a
args = Data.ProtoLens.Field.field @"args"
boolValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "boolValue" a) =>
  Lens.Family2.LensLike' f s a
boolValue = Data.ProtoLens.Field.field @"boolValue"
bytesValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bytesValue" a) =>
  Lens.Family2.LensLike' f s a
bytesValue = Data.ProtoLens.Field.field @"bytesValue"
callExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "callExpr" a) =>
  Lens.Family2.LensLike' f s a
callExpr = Data.ProtoLens.Field.field @"callExpr"
column ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "column" a) =>
  Lens.Family2.LensLike' f s a
column = Data.ProtoLens.Field.field @"column"
comprehensionExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "comprehensionExpr" a) =>
  Lens.Family2.LensLike' f s a
comprehensionExpr = Data.ProtoLens.Field.field @"comprehensionExpr"
constExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "constExpr" a) =>
  Lens.Family2.LensLike' f s a
constExpr = Data.ProtoLens.Field.field @"constExpr"
doubleValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "doubleValue" a) =>
  Lens.Family2.LensLike' f s a
doubleValue = Data.ProtoLens.Field.field @"doubleValue"
durationValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "durationValue" a) =>
  Lens.Family2.LensLike' f s a
durationValue = Data.ProtoLens.Field.field @"durationValue"
elements ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "elements" a) =>
  Lens.Family2.LensLike' f s a
elements = Data.ProtoLens.Field.field @"elements"
entries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "entries" a) =>
  Lens.Family2.LensLike' f s a
entries = Data.ProtoLens.Field.field @"entries"
expr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "expr" a) =>
  Lens.Family2.LensLike' f s a
expr = Data.ProtoLens.Field.field @"expr"
field ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "field" a) =>
  Lens.Family2.LensLike' f s a
field = Data.ProtoLens.Field.field @"field"
fieldKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fieldKey" a) =>
  Lens.Family2.LensLike' f s a
fieldKey = Data.ProtoLens.Field.field @"fieldKey"
function ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "function" a) =>
  Lens.Family2.LensLike' f s a
function = Data.ProtoLens.Field.field @"function"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
identExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "identExpr" a) =>
  Lens.Family2.LensLike' f s a
identExpr = Data.ProtoLens.Field.field @"identExpr"
int64Value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "int64Value" a) =>
  Lens.Family2.LensLike' f s a
int64Value = Data.ProtoLens.Field.field @"int64Value"
iterRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "iterRange" a) =>
  Lens.Family2.LensLike' f s a
iterRange = Data.ProtoLens.Field.field @"iterRange"
iterVar ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iterVar" a) =>
  Lens.Family2.LensLike' f s a
iterVar = Data.ProtoLens.Field.field @"iterVar"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
line ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "line" a) =>
  Lens.Family2.LensLike' f s a
line = Data.ProtoLens.Field.field @"line"
lineOffsets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lineOffsets" a) =>
  Lens.Family2.LensLike' f s a
lineOffsets = Data.ProtoLens.Field.field @"lineOffsets"
listExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listExpr" a) =>
  Lens.Family2.LensLike' f s a
listExpr = Data.ProtoLens.Field.field @"listExpr"
location ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "location" a) =>
  Lens.Family2.LensLike' f s a
location = Data.ProtoLens.Field.field @"location"
loopCondition ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "loopCondition" a) =>
  Lens.Family2.LensLike' f s a
loopCondition = Data.ProtoLens.Field.field @"loopCondition"
loopStep ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "loopStep" a) =>
  Lens.Family2.LensLike' f s a
loopStep = Data.ProtoLens.Field.field @"loopStep"
macroCalls ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "macroCalls" a) =>
  Lens.Family2.LensLike' f s a
macroCalls = Data.ProtoLens.Field.field @"macroCalls"
mapKey ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mapKey" a) =>
  Lens.Family2.LensLike' f s a
mapKey = Data.ProtoLens.Field.field @"mapKey"
maybe'accuInit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'accuInit" a) =>
  Lens.Family2.LensLike' f s a
maybe'accuInit = Data.ProtoLens.Field.field @"maybe'accuInit"
maybe'boolValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'boolValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'boolValue = Data.ProtoLens.Field.field @"maybe'boolValue"
maybe'bytesValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytesValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytesValue = Data.ProtoLens.Field.field @"maybe'bytesValue"
maybe'callExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'callExpr" a) =>
  Lens.Family2.LensLike' f s a
maybe'callExpr = Data.ProtoLens.Field.field @"maybe'callExpr"
maybe'comprehensionExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'comprehensionExpr" a) =>
  Lens.Family2.LensLike' f s a
maybe'comprehensionExpr
  = Data.ProtoLens.Field.field @"maybe'comprehensionExpr"
maybe'constExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'constExpr" a) =>
  Lens.Family2.LensLike' f s a
maybe'constExpr = Data.ProtoLens.Field.field @"maybe'constExpr"
maybe'constantKind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'constantKind" a) =>
  Lens.Family2.LensLike' f s a
maybe'constantKind
  = Data.ProtoLens.Field.field @"maybe'constantKind"
maybe'doubleValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'doubleValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'doubleValue = Data.ProtoLens.Field.field @"maybe'doubleValue"
maybe'durationValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'durationValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'durationValue
  = Data.ProtoLens.Field.field @"maybe'durationValue"
maybe'expr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'expr" a) =>
  Lens.Family2.LensLike' f s a
maybe'expr = Data.ProtoLens.Field.field @"maybe'expr"
maybe'exprKind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'exprKind" a) =>
  Lens.Family2.LensLike' f s a
maybe'exprKind = Data.ProtoLens.Field.field @"maybe'exprKind"
maybe'fieldKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fieldKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'fieldKey = Data.ProtoLens.Field.field @"maybe'fieldKey"
maybe'identExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'identExpr" a) =>
  Lens.Family2.LensLike' f s a
maybe'identExpr = Data.ProtoLens.Field.field @"maybe'identExpr"
maybe'int64Value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'int64Value" a) =>
  Lens.Family2.LensLike' f s a
maybe'int64Value = Data.ProtoLens.Field.field @"maybe'int64Value"
maybe'iterRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iterRange" a) =>
  Lens.Family2.LensLike' f s a
maybe'iterRange = Data.ProtoLens.Field.field @"maybe'iterRange"
maybe'keyKind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'keyKind" a) =>
  Lens.Family2.LensLike' f s a
maybe'keyKind = Data.ProtoLens.Field.field @"maybe'keyKind"
maybe'listExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listExpr" a) =>
  Lens.Family2.LensLike' f s a
maybe'listExpr = Data.ProtoLens.Field.field @"maybe'listExpr"
maybe'loopCondition ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'loopCondition" a) =>
  Lens.Family2.LensLike' f s a
maybe'loopCondition
  = Data.ProtoLens.Field.field @"maybe'loopCondition"
maybe'loopStep ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'loopStep" a) =>
  Lens.Family2.LensLike' f s a
maybe'loopStep = Data.ProtoLens.Field.field @"maybe'loopStep"
maybe'mapKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mapKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'mapKey = Data.ProtoLens.Field.field @"maybe'mapKey"
maybe'nullValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nullValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'nullValue = Data.ProtoLens.Field.field @"maybe'nullValue"
maybe'operand ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'operand" a) =>
  Lens.Family2.LensLike' f s a
maybe'operand = Data.ProtoLens.Field.field @"maybe'operand"
maybe'result ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'result" a) =>
  Lens.Family2.LensLike' f s a
maybe'result = Data.ProtoLens.Field.field @"maybe'result"
maybe'selectExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'selectExpr" a) =>
  Lens.Family2.LensLike' f s a
maybe'selectExpr = Data.ProtoLens.Field.field @"maybe'selectExpr"
maybe'sourceInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceInfo = Data.ProtoLens.Field.field @"maybe'sourceInfo"
maybe'stringValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stringValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'stringValue = Data.ProtoLens.Field.field @"maybe'stringValue"
maybe'structExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'structExpr" a) =>
  Lens.Family2.LensLike' f s a
maybe'structExpr = Data.ProtoLens.Field.field @"maybe'structExpr"
maybe'target ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'target" a) =>
  Lens.Family2.LensLike' f s a
maybe'target = Data.ProtoLens.Field.field @"maybe'target"
maybe'timestampValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestampValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestampValue
  = Data.ProtoLens.Field.field @"maybe'timestampValue"
maybe'uint64Value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uint64Value" a) =>
  Lens.Family2.LensLike' f s a
maybe'uint64Value = Data.ProtoLens.Field.field @"maybe'uint64Value"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
messageName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "messageName" a) =>
  Lens.Family2.LensLike' f s a
messageName = Data.ProtoLens.Field.field @"messageName"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
nullValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nullValue" a) =>
  Lens.Family2.LensLike' f s a
nullValue = Data.ProtoLens.Field.field @"nullValue"
offset ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "offset" a) =>
  Lens.Family2.LensLike' f s a
offset = Data.ProtoLens.Field.field @"offset"
operand ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "operand" a) =>
  Lens.Family2.LensLike' f s a
operand = Data.ProtoLens.Field.field @"operand"
positions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "positions" a) =>
  Lens.Family2.LensLike' f s a
positions = Data.ProtoLens.Field.field @"positions"
result ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "result" a) =>
  Lens.Family2.LensLike' f s a
result = Data.ProtoLens.Field.field @"result"
selectExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "selectExpr" a) =>
  Lens.Family2.LensLike' f s a
selectExpr = Data.ProtoLens.Field.field @"selectExpr"
sourceInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceInfo" a) =>
  Lens.Family2.LensLike' f s a
sourceInfo = Data.ProtoLens.Field.field @"sourceInfo"
stringValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stringValue" a) =>
  Lens.Family2.LensLike' f s a
stringValue = Data.ProtoLens.Field.field @"stringValue"
structExpr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "structExpr" a) =>
  Lens.Family2.LensLike' f s a
structExpr = Data.ProtoLens.Field.field @"structExpr"
syntaxVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "syntaxVersion" a) =>
  Lens.Family2.LensLike' f s a
syntaxVersion = Data.ProtoLens.Field.field @"syntaxVersion"
target ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "target" a) =>
  Lens.Family2.LensLike' f s a
target = Data.ProtoLens.Field.field @"target"
testOnly ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "testOnly" a) =>
  Lens.Family2.LensLike' f s a
testOnly = Data.ProtoLens.Field.field @"testOnly"
timestampValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestampValue" a) =>
  Lens.Family2.LensLike' f s a
timestampValue = Data.ProtoLens.Field.field @"timestampValue"
uint64Value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "uint64Value" a) =>
  Lens.Family2.LensLike' f s a
uint64Value = Data.ProtoLens.Field.field @"uint64Value"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'args ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'args" a) =>
  Lens.Family2.LensLike' f s a
vec'args = Data.ProtoLens.Field.field @"vec'args"
vec'elements ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'elements" a) =>
  Lens.Family2.LensLike' f s a
vec'elements = Data.ProtoLens.Field.field @"vec'elements"
vec'entries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'entries" a) =>
  Lens.Family2.LensLike' f s a
vec'entries = Data.ProtoLens.Field.field @"vec'entries"
vec'lineOffsets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'lineOffsets" a) =>
  Lens.Family2.LensLike' f s a
vec'lineOffsets = Data.ProtoLens.Field.field @"vec'lineOffsets"