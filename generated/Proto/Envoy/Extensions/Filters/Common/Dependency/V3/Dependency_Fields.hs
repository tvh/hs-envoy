{- This file was auto-generated from envoy/extensions/filters/common/dependency/v3/dependency.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Common.Dependency.V3.Dependency_Fields where
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
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
dataInputAllowList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dataInputAllowList" a) =>
  Lens.Family2.LensLike' f s a
dataInputAllowList
  = Data.ProtoLens.Field.field @"dataInputAllowList"
decodeProvided ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "decodeProvided" a) =>
  Lens.Family2.LensLike' f s a
decodeProvided = Data.ProtoLens.Field.field @"decodeProvided"
decodeRequired ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "decodeRequired" a) =>
  Lens.Family2.LensLike' f s a
decodeRequired = Data.ProtoLens.Field.field @"decodeRequired"
encodeProvided ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "encodeProvided" a) =>
  Lens.Family2.LensLike' f s a
encodeProvided = Data.ProtoLens.Field.field @"encodeProvided"
encodeRequired ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "encodeRequired" a) =>
  Lens.Family2.LensLike' f s a
encodeRequired = Data.ProtoLens.Field.field @"encodeRequired"
maybe'dataInputAllowList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dataInputAllowList" a) =>
  Lens.Family2.LensLike' f s a
maybe'dataInputAllowList
  = Data.ProtoLens.Field.field @"maybe'dataInputAllowList"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
typeUrl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "typeUrl" a) =>
  Lens.Family2.LensLike' f s a
typeUrl = Data.ProtoLens.Field.field @"typeUrl"
vec'decodeProvided ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'decodeProvided" a) =>
  Lens.Family2.LensLike' f s a
vec'decodeProvided
  = Data.ProtoLens.Field.field @"vec'decodeProvided"
vec'decodeRequired ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'decodeRequired" a) =>
  Lens.Family2.LensLike' f s a
vec'decodeRequired
  = Data.ProtoLens.Field.field @"vec'decodeRequired"
vec'encodeProvided ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'encodeProvided" a) =>
  Lens.Family2.LensLike' f s a
vec'encodeProvided
  = Data.ProtoLens.Field.field @"vec'encodeProvided"
vec'encodeRequired ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'encodeRequired" a) =>
  Lens.Family2.LensLike' f s a
vec'encodeRequired
  = Data.ProtoLens.Field.field @"vec'encodeRequired"
vec'typeUrl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'typeUrl" a) =>
  Lens.Family2.LensLike' f s a
vec'typeUrl = Data.ProtoLens.Field.field @"vec'typeUrl"