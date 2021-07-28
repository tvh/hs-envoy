{- This file was auto-generated from validate/validate.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Validate.Validate_Fields where
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
import qualified Proto.Google.Protobuf.Descriptor
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Timestamp
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
any ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "any" a) =>
  Lens.Family2.LensLike' f s a
any = Data.ProtoLens.Field.field @"any"
bool ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bool" a) =>
  Lens.Family2.LensLike' f s a
bool = Data.ProtoLens.Field.field @"bool"
bytes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bytes" a) =>
  Lens.Family2.LensLike' f s a
bytes = Data.ProtoLens.Field.field @"bytes"
const ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "const" a) =>
  Lens.Family2.LensLike' f s a
const = Data.ProtoLens.Field.field @"const"
contains ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "contains" a) =>
  Lens.Family2.LensLike' f s a
contains = Data.ProtoLens.Field.field @"contains"
definedOnly ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "definedOnly" a) =>
  Lens.Family2.LensLike' f s a
definedOnly = Data.ProtoLens.Field.field @"definedOnly"
double ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "double" a) =>
  Lens.Family2.LensLike' f s a
double = Data.ProtoLens.Field.field @"double"
duration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "duration" a) =>
  Lens.Family2.LensLike' f s a
duration = Data.ProtoLens.Field.field @"duration"
email ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "email" a) =>
  Lens.Family2.LensLike' f s a
email = Data.ProtoLens.Field.field @"email"
enum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "enum" a) =>
  Lens.Family2.LensLike' f s a
enum = Data.ProtoLens.Field.field @"enum"
fixed32 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fixed32" a) =>
  Lens.Family2.LensLike' f s a
fixed32 = Data.ProtoLens.Field.field @"fixed32"
fixed64 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fixed64" a) =>
  Lens.Family2.LensLike' f s a
fixed64 = Data.ProtoLens.Field.field @"fixed64"
float ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "float" a) =>
  Lens.Family2.LensLike' f s a
float = Data.ProtoLens.Field.field @"float"
gt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gt" a) =>
  Lens.Family2.LensLike' f s a
gt = Data.ProtoLens.Field.field @"gt"
gtNow ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gtNow" a) =>
  Lens.Family2.LensLike' f s a
gtNow = Data.ProtoLens.Field.field @"gtNow"
gte ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gte" a) =>
  Lens.Family2.LensLike' f s a
gte = Data.ProtoLens.Field.field @"gte"
hostname ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostname" a) =>
  Lens.Family2.LensLike' f s a
hostname = Data.ProtoLens.Field.field @"hostname"
ignoreEmpty ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ignoreEmpty" a) =>
  Lens.Family2.LensLike' f s a
ignoreEmpty = Data.ProtoLens.Field.field @"ignoreEmpty"
in' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "in'" a) =>
  Lens.Family2.LensLike' f s a
in' = Data.ProtoLens.Field.field @"in'"
int32 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "int32" a) =>
  Lens.Family2.LensLike' f s a
int32 = Data.ProtoLens.Field.field @"int32"
int64 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "int64" a) =>
  Lens.Family2.LensLike' f s a
int64 = Data.ProtoLens.Field.field @"int64"
ip ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ip" a) =>
  Lens.Family2.LensLike' f s a
ip = Data.ProtoLens.Field.field @"ip"
ipv4 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ipv4" a) =>
  Lens.Family2.LensLike' f s a
ipv4 = Data.ProtoLens.Field.field @"ipv4"
ipv6 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ipv6" a) =>
  Lens.Family2.LensLike' f s a
ipv6 = Data.ProtoLens.Field.field @"ipv6"
items ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "items" a) =>
  Lens.Family2.LensLike' f s a
items = Data.ProtoLens.Field.field @"items"
keys ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "keys" a) =>
  Lens.Family2.LensLike' f s a
keys = Data.ProtoLens.Field.field @"keys"
len ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "len" a) =>
  Lens.Family2.LensLike' f s a
len = Data.ProtoLens.Field.field @"len"
lenBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lenBytes" a) =>
  Lens.Family2.LensLike' f s a
lenBytes = Data.ProtoLens.Field.field @"lenBytes"
lt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lt" a) =>
  Lens.Family2.LensLike' f s a
lt = Data.ProtoLens.Field.field @"lt"
ltNow ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ltNow" a) =>
  Lens.Family2.LensLike' f s a
ltNow = Data.ProtoLens.Field.field @"ltNow"
lte ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lte" a) =>
  Lens.Family2.LensLike' f s a
lte = Data.ProtoLens.Field.field @"lte"
map ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "map" a) =>
  Lens.Family2.LensLike' f s a
map = Data.ProtoLens.Field.field @"map"
maxBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxBytes" a) =>
  Lens.Family2.LensLike' f s a
maxBytes = Data.ProtoLens.Field.field @"maxBytes"
maxItems ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxItems" a) =>
  Lens.Family2.LensLike' f s a
maxItems = Data.ProtoLens.Field.field @"maxItems"
maxLen ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "maxLen" a) =>
  Lens.Family2.LensLike' f s a
maxLen = Data.ProtoLens.Field.field @"maxLen"
maxPairs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxPairs" a) =>
  Lens.Family2.LensLike' f s a
maxPairs = Data.ProtoLens.Field.field @"maxPairs"
maybe'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'address" a) =>
  Lens.Family2.LensLike' f s a
maybe'address = Data.ProtoLens.Field.field @"maybe'address"
maybe'any ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'any" a) =>
  Lens.Family2.LensLike' f s a
maybe'any = Data.ProtoLens.Field.field @"maybe'any"
maybe'bool ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bool" a) =>
  Lens.Family2.LensLike' f s a
maybe'bool = Data.ProtoLens.Field.field @"maybe'bool"
maybe'bytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytes = Data.ProtoLens.Field.field @"maybe'bytes"
maybe'const ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'const" a) =>
  Lens.Family2.LensLike' f s a
maybe'const = Data.ProtoLens.Field.field @"maybe'const"
maybe'contains ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'contains" a) =>
  Lens.Family2.LensLike' f s a
maybe'contains = Data.ProtoLens.Field.field @"maybe'contains"
maybe'definedOnly ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'definedOnly" a) =>
  Lens.Family2.LensLike' f s a
maybe'definedOnly = Data.ProtoLens.Field.field @"maybe'definedOnly"
maybe'double ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'double" a) =>
  Lens.Family2.LensLike' f s a
maybe'double = Data.ProtoLens.Field.field @"maybe'double"
maybe'duration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'duration" a) =>
  Lens.Family2.LensLike' f s a
maybe'duration = Data.ProtoLens.Field.field @"maybe'duration"
maybe'email ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'email" a) =>
  Lens.Family2.LensLike' f s a
maybe'email = Data.ProtoLens.Field.field @"maybe'email"
maybe'enum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'enum" a) =>
  Lens.Family2.LensLike' f s a
maybe'enum = Data.ProtoLens.Field.field @"maybe'enum"
maybe'fixed32 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fixed32" a) =>
  Lens.Family2.LensLike' f s a
maybe'fixed32 = Data.ProtoLens.Field.field @"maybe'fixed32"
maybe'fixed64 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fixed64" a) =>
  Lens.Family2.LensLike' f s a
maybe'fixed64 = Data.ProtoLens.Field.field @"maybe'fixed64"
maybe'float ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'float" a) =>
  Lens.Family2.LensLike' f s a
maybe'float = Data.ProtoLens.Field.field @"maybe'float"
maybe'gt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gt" a) =>
  Lens.Family2.LensLike' f s a
maybe'gt = Data.ProtoLens.Field.field @"maybe'gt"
maybe'gtNow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gtNow" a) =>
  Lens.Family2.LensLike' f s a
maybe'gtNow = Data.ProtoLens.Field.field @"maybe'gtNow"
maybe'gte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gte" a) =>
  Lens.Family2.LensLike' f s a
maybe'gte = Data.ProtoLens.Field.field @"maybe'gte"
maybe'hostname ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostname" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostname = Data.ProtoLens.Field.field @"maybe'hostname"
maybe'ignoreEmpty ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ignoreEmpty" a) =>
  Lens.Family2.LensLike' f s a
maybe'ignoreEmpty = Data.ProtoLens.Field.field @"maybe'ignoreEmpty"
maybe'int32 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'int32" a) =>
  Lens.Family2.LensLike' f s a
maybe'int32 = Data.ProtoLens.Field.field @"maybe'int32"
maybe'int64 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'int64" a) =>
  Lens.Family2.LensLike' f s a
maybe'int64 = Data.ProtoLens.Field.field @"maybe'int64"
maybe'ip ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ip" a) =>
  Lens.Family2.LensLike' f s a
maybe'ip = Data.ProtoLens.Field.field @"maybe'ip"
maybe'ipv4 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ipv4" a) =>
  Lens.Family2.LensLike' f s a
maybe'ipv4 = Data.ProtoLens.Field.field @"maybe'ipv4"
maybe'ipv6 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ipv6" a) =>
  Lens.Family2.LensLike' f s a
maybe'ipv6 = Data.ProtoLens.Field.field @"maybe'ipv6"
maybe'items ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'items" a) =>
  Lens.Family2.LensLike' f s a
maybe'items = Data.ProtoLens.Field.field @"maybe'items"
maybe'keys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'keys" a) =>
  Lens.Family2.LensLike' f s a
maybe'keys = Data.ProtoLens.Field.field @"maybe'keys"
maybe'len ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'len" a) =>
  Lens.Family2.LensLike' f s a
maybe'len = Data.ProtoLens.Field.field @"maybe'len"
maybe'lenBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lenBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'lenBytes = Data.ProtoLens.Field.field @"maybe'lenBytes"
maybe'lt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lt" a) =>
  Lens.Family2.LensLike' f s a
maybe'lt = Data.ProtoLens.Field.field @"maybe'lt"
maybe'ltNow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ltNow" a) =>
  Lens.Family2.LensLike' f s a
maybe'ltNow = Data.ProtoLens.Field.field @"maybe'ltNow"
maybe'lte ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lte" a) =>
  Lens.Family2.LensLike' f s a
maybe'lte = Data.ProtoLens.Field.field @"maybe'lte"
maybe'map ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'map" a) =>
  Lens.Family2.LensLike' f s a
maybe'map = Data.ProtoLens.Field.field @"maybe'map"
maybe'maxBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxBytes = Data.ProtoLens.Field.field @"maybe'maxBytes"
maybe'maxItems ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxItems" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxItems = Data.ProtoLens.Field.field @"maybe'maxItems"
maybe'maxLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxLen = Data.ProtoLens.Field.field @"maybe'maxLen"
maybe'maxPairs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxPairs" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxPairs = Data.ProtoLens.Field.field @"maybe'maxPairs"
maybe'message ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'message" a) =>
  Lens.Family2.LensLike' f s a
maybe'message = Data.ProtoLens.Field.field @"maybe'message"
maybe'minBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'minBytes = Data.ProtoLens.Field.field @"maybe'minBytes"
maybe'minItems ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minItems" a) =>
  Lens.Family2.LensLike' f s a
maybe'minItems = Data.ProtoLens.Field.field @"maybe'minItems"
maybe'minLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'minLen = Data.ProtoLens.Field.field @"maybe'minLen"
maybe'minPairs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minPairs" a) =>
  Lens.Family2.LensLike' f s a
maybe'minPairs = Data.ProtoLens.Field.field @"maybe'minPairs"
maybe'noSparse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'noSparse" a) =>
  Lens.Family2.LensLike' f s a
maybe'noSparse = Data.ProtoLens.Field.field @"maybe'noSparse"
maybe'notContains ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'notContains" a) =>
  Lens.Family2.LensLike' f s a
maybe'notContains = Data.ProtoLens.Field.field @"maybe'notContains"
maybe'pattern' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pattern'" a) =>
  Lens.Family2.LensLike' f s a
maybe'pattern' = Data.ProtoLens.Field.field @"maybe'pattern'"
maybe'prefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefix" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefix = Data.ProtoLens.Field.field @"maybe'prefix"
maybe'repeated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'repeated" a) =>
  Lens.Family2.LensLike' f s a
maybe'repeated = Data.ProtoLens.Field.field @"maybe'repeated"
maybe'required ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'required" a) =>
  Lens.Family2.LensLike' f s a
maybe'required = Data.ProtoLens.Field.field @"maybe'required"
maybe'sfixed32 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sfixed32" a) =>
  Lens.Family2.LensLike' f s a
maybe'sfixed32 = Data.ProtoLens.Field.field @"maybe'sfixed32"
maybe'sfixed64 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sfixed64" a) =>
  Lens.Family2.LensLike' f s a
maybe'sfixed64 = Data.ProtoLens.Field.field @"maybe'sfixed64"
maybe'sint32 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sint32" a) =>
  Lens.Family2.LensLike' f s a
maybe'sint32 = Data.ProtoLens.Field.field @"maybe'sint32"
maybe'sint64 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sint64" a) =>
  Lens.Family2.LensLike' f s a
maybe'sint64 = Data.ProtoLens.Field.field @"maybe'sint64"
maybe'skip ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'skip" a) =>
  Lens.Family2.LensLike' f s a
maybe'skip = Data.ProtoLens.Field.field @"maybe'skip"
maybe'strict ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'strict" a) =>
  Lens.Family2.LensLike' f s a
maybe'strict = Data.ProtoLens.Field.field @"maybe'strict"
maybe'string ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'string" a) =>
  Lens.Family2.LensLike' f s a
maybe'string = Data.ProtoLens.Field.field @"maybe'string"
maybe'suffix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'suffix" a) =>
  Lens.Family2.LensLike' f s a
maybe'suffix = Data.ProtoLens.Field.field @"maybe'suffix"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'uint32 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uint32" a) =>
  Lens.Family2.LensLike' f s a
maybe'uint32 = Data.ProtoLens.Field.field @"maybe'uint32"
maybe'uint64 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uint64" a) =>
  Lens.Family2.LensLike' f s a
maybe'uint64 = Data.ProtoLens.Field.field @"maybe'uint64"
maybe'unique ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unique" a) =>
  Lens.Family2.LensLike' f s a
maybe'unique = Data.ProtoLens.Field.field @"maybe'unique"
maybe'uri ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uri" a) =>
  Lens.Family2.LensLike' f s a
maybe'uri = Data.ProtoLens.Field.field @"maybe'uri"
maybe'uriRef ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uriRef" a) =>
  Lens.Family2.LensLike' f s a
maybe'uriRef = Data.ProtoLens.Field.field @"maybe'uriRef"
maybe'uuid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uuid" a) =>
  Lens.Family2.LensLike' f s a
maybe'uuid = Data.ProtoLens.Field.field @"maybe'uuid"
maybe'values ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'values" a) =>
  Lens.Family2.LensLike' f s a
maybe'values = Data.ProtoLens.Field.field @"maybe'values"
maybe'wellKnown ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wellKnown" a) =>
  Lens.Family2.LensLike' f s a
maybe'wellKnown = Data.ProtoLens.Field.field @"maybe'wellKnown"
maybe'wellKnownRegex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wellKnownRegex" a) =>
  Lens.Family2.LensLike' f s a
maybe'wellKnownRegex
  = Data.ProtoLens.Field.field @"maybe'wellKnownRegex"
maybe'within ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'within" a) =>
  Lens.Family2.LensLike' f s a
maybe'within = Data.ProtoLens.Field.field @"maybe'within"
message ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "message" a) =>
  Lens.Family2.LensLike' f s a
message = Data.ProtoLens.Field.field @"message"
minBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minBytes" a) =>
  Lens.Family2.LensLike' f s a
minBytes = Data.ProtoLens.Field.field @"minBytes"
minItems ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minItems" a) =>
  Lens.Family2.LensLike' f s a
minItems = Data.ProtoLens.Field.field @"minItems"
minLen ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "minLen" a) =>
  Lens.Family2.LensLike' f s a
minLen = Data.ProtoLens.Field.field @"minLen"
minPairs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "minPairs" a) =>
  Lens.Family2.LensLike' f s a
minPairs = Data.ProtoLens.Field.field @"minPairs"
noSparse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "noSparse" a) =>
  Lens.Family2.LensLike' f s a
noSparse = Data.ProtoLens.Field.field @"noSparse"
notContains ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "notContains" a) =>
  Lens.Family2.LensLike' f s a
notContains = Data.ProtoLens.Field.field @"notContains"
notIn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "notIn" a) =>
  Lens.Family2.LensLike' f s a
notIn = Data.ProtoLens.Field.field @"notIn"
pattern' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pattern'" a) =>
  Lens.Family2.LensLike' f s a
pattern' = Data.ProtoLens.Field.field @"pattern'"
prefix ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prefix" a) =>
  Lens.Family2.LensLike' f s a
prefix = Data.ProtoLens.Field.field @"prefix"
repeated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "repeated" a) =>
  Lens.Family2.LensLike' f s a
repeated = Data.ProtoLens.Field.field @"repeated"
required ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "required" a) =>
  Lens.Family2.LensLike' f s a
required = Data.ProtoLens.Field.field @"required"
sfixed32 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sfixed32" a) =>
  Lens.Family2.LensLike' f s a
sfixed32 = Data.ProtoLens.Field.field @"sfixed32"
sfixed64 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sfixed64" a) =>
  Lens.Family2.LensLike' f s a
sfixed64 = Data.ProtoLens.Field.field @"sfixed64"
sint32 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sint32" a) =>
  Lens.Family2.LensLike' f s a
sint32 = Data.ProtoLens.Field.field @"sint32"
sint64 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sint64" a) =>
  Lens.Family2.LensLike' f s a
sint64 = Data.ProtoLens.Field.field @"sint64"
skip ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "skip" a) =>
  Lens.Family2.LensLike' f s a
skip = Data.ProtoLens.Field.field @"skip"
strict ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "strict" a) =>
  Lens.Family2.LensLike' f s a
strict = Data.ProtoLens.Field.field @"strict"
string ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "string" a) =>
  Lens.Family2.LensLike' f s a
string = Data.ProtoLens.Field.field @"string"
suffix ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "suffix" a) =>
  Lens.Family2.LensLike' f s a
suffix = Data.ProtoLens.Field.field @"suffix"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
uint32 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uint32" a) =>
  Lens.Family2.LensLike' f s a
uint32 = Data.ProtoLens.Field.field @"uint32"
uint64 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uint64" a) =>
  Lens.Family2.LensLike' f s a
uint64 = Data.ProtoLens.Field.field @"uint64"
unique ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "unique" a) =>
  Lens.Family2.LensLike' f s a
unique = Data.ProtoLens.Field.field @"unique"
uri ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uri" a) =>
  Lens.Family2.LensLike' f s a
uri = Data.ProtoLens.Field.field @"uri"
uriRef ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uriRef" a) =>
  Lens.Family2.LensLike' f s a
uriRef = Data.ProtoLens.Field.field @"uriRef"
uuid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uuid" a) =>
  Lens.Family2.LensLike' f s a
uuid = Data.ProtoLens.Field.field @"uuid"
values ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "values" a) =>
  Lens.Family2.LensLike' f s a
values = Data.ProtoLens.Field.field @"values"
vec'in' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'in'" a) =>
  Lens.Family2.LensLike' f s a
vec'in' = Data.ProtoLens.Field.field @"vec'in'"
vec'notIn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'notIn" a) =>
  Lens.Family2.LensLike' f s a
vec'notIn = Data.ProtoLens.Field.field @"vec'notIn"
wellKnownRegex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wellKnownRegex" a) =>
  Lens.Family2.LensLike' f s a
wellKnownRegex = Data.ProtoLens.Field.field @"wellKnownRegex"
within ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "within" a) =>
  Lens.Family2.LensLike' f s a
within = Data.ProtoLens.Field.field @"within"