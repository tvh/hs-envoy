{- This file was auto-generated from envoy/extensions/filters/http/header_to_metadata/v3/header_to_metadata.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.HeaderToMetadata.V3.HeaderToMetadata_Fields where
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
import qualified Proto.Envoy.Type.Matcher.V3.Regex
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
cookie ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cookie" a) =>
  Lens.Family2.LensLike' f s a
cookie = Data.ProtoLens.Field.field @"cookie"
encode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "encode" a) =>
  Lens.Family2.LensLike' f s a
encode = Data.ProtoLens.Field.field @"encode"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maybe'onHeaderMissing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'onHeaderMissing" a) =>
  Lens.Family2.LensLike' f s a
maybe'onHeaderMissing
  = Data.ProtoLens.Field.field @"maybe'onHeaderMissing"
maybe'onHeaderPresent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'onHeaderPresent" a) =>
  Lens.Family2.LensLike' f s a
maybe'onHeaderPresent
  = Data.ProtoLens.Field.field @"maybe'onHeaderPresent"
maybe'regexValueRewrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regexValueRewrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'regexValueRewrite
  = Data.ProtoLens.Field.field @"maybe'regexValueRewrite"
metadataNamespace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadataNamespace" a) =>
  Lens.Family2.LensLike' f s a
metadataNamespace = Data.ProtoLens.Field.field @"metadataNamespace"
onHeaderMissing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "onHeaderMissing" a) =>
  Lens.Family2.LensLike' f s a
onHeaderMissing = Data.ProtoLens.Field.field @"onHeaderMissing"
onHeaderPresent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "onHeaderPresent" a) =>
  Lens.Family2.LensLike' f s a
onHeaderPresent = Data.ProtoLens.Field.field @"onHeaderPresent"
regexValueRewrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "regexValueRewrite" a) =>
  Lens.Family2.LensLike' f s a
regexValueRewrite = Data.ProtoLens.Field.field @"regexValueRewrite"
remove ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "remove" a) =>
  Lens.Family2.LensLike' f s a
remove = Data.ProtoLens.Field.field @"remove"
requestRules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestRules" a) =>
  Lens.Family2.LensLike' f s a
requestRules = Data.ProtoLens.Field.field @"requestRules"
responseRules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseRules" a) =>
  Lens.Family2.LensLike' f s a
responseRules = Data.ProtoLens.Field.field @"responseRules"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'requestRules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestRules" a) =>
  Lens.Family2.LensLike' f s a
vec'requestRules = Data.ProtoLens.Field.field @"vec'requestRules"
vec'responseRules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'responseRules" a) =>
  Lens.Family2.LensLike' f s a
vec'responseRules = Data.ProtoLens.Field.field @"vec'responseRules"