{- This file was auto-generated from xds/core/v3/resource_locator.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Xds.Core.V3.ResourceLocator_Fields where
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
import qualified Proto.Xds.Core.V3.ContextParams
alt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "alt" a) =>
  Lens.Family2.LensLike' f s a
alt = Data.ProtoLens.Field.field @"alt"
authority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authority" a) =>
  Lens.Family2.LensLike' f s a
authority = Data.ProtoLens.Field.field @"authority"
directives ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "directives" a) =>
  Lens.Family2.LensLike' f s a
directives = Data.ProtoLens.Field.field @"directives"
entry ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "entry" a) =>
  Lens.Family2.LensLike' f s a
entry = Data.ProtoLens.Field.field @"entry"
exactContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exactContext" a) =>
  Lens.Family2.LensLike' f s a
exactContext = Data.ProtoLens.Field.field @"exactContext"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
maybe'alt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'alt" a) =>
  Lens.Family2.LensLike' f s a
maybe'alt = Data.ProtoLens.Field.field @"maybe'alt"
maybe'contextParamSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'contextParamSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'contextParamSpecifier
  = Data.ProtoLens.Field.field @"maybe'contextParamSpecifier"
maybe'directive ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'directive" a) =>
  Lens.Family2.LensLike' f s a
maybe'directive = Data.ProtoLens.Field.field @"maybe'directive"
maybe'entry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'entry" a) =>
  Lens.Family2.LensLike' f s a
maybe'entry = Data.ProtoLens.Field.field @"maybe'entry"
maybe'exactContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'exactContext" a) =>
  Lens.Family2.LensLike' f s a
maybe'exactContext
  = Data.ProtoLens.Field.field @"maybe'exactContext"
resourceType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resourceType" a) =>
  Lens.Family2.LensLike' f s a
resourceType = Data.ProtoLens.Field.field @"resourceType"
scheme ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "scheme" a) =>
  Lens.Family2.LensLike' f s a
scheme = Data.ProtoLens.Field.field @"scheme"
vec'directives ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'directives" a) =>
  Lens.Family2.LensLike' f s a
vec'directives = Data.ProtoLens.Field.field @"vec'directives"