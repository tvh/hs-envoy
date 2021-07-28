{- This file was auto-generated from envoy/type/matcher/string.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Type.Matcher.String_Fields where
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
import qualified Proto.Envoy.Type.Matcher.Regex
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
exact ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "exact" a) =>
  Lens.Family2.LensLike' f s a
exact = Data.ProtoLens.Field.field @"exact"
ignoreCase ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ignoreCase" a) =>
  Lens.Family2.LensLike' f s a
ignoreCase = Data.ProtoLens.Field.field @"ignoreCase"
maybe'exact ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'exact" a) =>
  Lens.Family2.LensLike' f s a
maybe'exact = Data.ProtoLens.Field.field @"maybe'exact"
maybe'matchPattern ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'matchPattern" a) =>
  Lens.Family2.LensLike' f s a
maybe'matchPattern
  = Data.ProtoLens.Field.field @"maybe'matchPattern"
maybe'prefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefix" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefix = Data.ProtoLens.Field.field @"maybe'prefix"
maybe'regex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regex" a) =>
  Lens.Family2.LensLike' f s a
maybe'regex = Data.ProtoLens.Field.field @"maybe'regex"
maybe'safeRegex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'safeRegex" a) =>
  Lens.Family2.LensLike' f s a
maybe'safeRegex = Data.ProtoLens.Field.field @"maybe'safeRegex"
maybe'suffix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'suffix" a) =>
  Lens.Family2.LensLike' f s a
maybe'suffix = Data.ProtoLens.Field.field @"maybe'suffix"
patterns ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "patterns" a) =>
  Lens.Family2.LensLike' f s a
patterns = Data.ProtoLens.Field.field @"patterns"
prefix ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prefix" a) =>
  Lens.Family2.LensLike' f s a
prefix = Data.ProtoLens.Field.field @"prefix"
regex ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "regex" a) =>
  Lens.Family2.LensLike' f s a
regex = Data.ProtoLens.Field.field @"regex"
safeRegex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "safeRegex" a) =>
  Lens.Family2.LensLike' f s a
safeRegex = Data.ProtoLens.Field.field @"safeRegex"
suffix ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "suffix" a) =>
  Lens.Family2.LensLike' f s a
suffix = Data.ProtoLens.Field.field @"suffix"
vec'patterns ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'patterns" a) =>
  Lens.Family2.LensLike' f s a
vec'patterns = Data.ProtoLens.Field.field @"vec'patterns"