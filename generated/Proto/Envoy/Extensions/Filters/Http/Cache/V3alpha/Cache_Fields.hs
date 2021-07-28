{- This file was auto-generated from envoy/extensions/filters/http/cache/v3alpha/cache.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.Cache.V3alpha.Cache_Fields where
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
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
allowedVaryHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowedVaryHeaders" a) =>
  Lens.Family2.LensLike' f s a
allowedVaryHeaders
  = Data.ProtoLens.Field.field @"allowedVaryHeaders"
excludeHost ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "excludeHost" a) =>
  Lens.Family2.LensLike' f s a
excludeHost = Data.ProtoLens.Field.field @"excludeHost"
excludeScheme ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "excludeScheme" a) =>
  Lens.Family2.LensLike' f s a
excludeScheme = Data.ProtoLens.Field.field @"excludeScheme"
keyCreatorParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "keyCreatorParams" a) =>
  Lens.Family2.LensLike' f s a
keyCreatorParams = Data.ProtoLens.Field.field @"keyCreatorParams"
maxBodyBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxBodyBytes" a) =>
  Lens.Family2.LensLike' f s a
maxBodyBytes = Data.ProtoLens.Field.field @"maxBodyBytes"
maybe'keyCreatorParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'keyCreatorParams" a) =>
  Lens.Family2.LensLike' f s a
maybe'keyCreatorParams
  = Data.ProtoLens.Field.field @"maybe'keyCreatorParams"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
queryParametersExcluded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "queryParametersExcluded" a) =>
  Lens.Family2.LensLike' f s a
queryParametersExcluded
  = Data.ProtoLens.Field.field @"queryParametersExcluded"
queryParametersIncluded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "queryParametersIncluded" a) =>
  Lens.Family2.LensLike' f s a
queryParametersIncluded
  = Data.ProtoLens.Field.field @"queryParametersIncluded"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
vec'allowedVaryHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'allowedVaryHeaders" a) =>
  Lens.Family2.LensLike' f s a
vec'allowedVaryHeaders
  = Data.ProtoLens.Field.field @"vec'allowedVaryHeaders"
vec'queryParametersExcluded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'queryParametersExcluded" a) =>
  Lens.Family2.LensLike' f s a
vec'queryParametersExcluded
  = Data.ProtoLens.Field.field @"vec'queryParametersExcluded"
vec'queryParametersIncluded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'queryParametersIncluded" a) =>
  Lens.Family2.LensLike' f s a
vec'queryParametersIncluded
  = Data.ProtoLens.Field.field @"vec'queryParametersIncluded"