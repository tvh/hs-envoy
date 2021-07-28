{- This file was auto-generated from envoy/config/endpoint/v3/endpoint.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Endpoint.V3.Endpoint_Fields where
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
import qualified Proto.Envoy.Config.Endpoint.V3.EndpointComponents
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
category ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "category" a) =>
  Lens.Family2.LensLike' f s a
category = Data.ProtoLens.Field.field @"category"
clusterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterName" a) =>
  Lens.Family2.LensLike' f s a
clusterName = Data.ProtoLens.Field.field @"clusterName"
dropOverloads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dropOverloads" a) =>
  Lens.Family2.LensLike' f s a
dropOverloads = Data.ProtoLens.Field.field @"dropOverloads"
dropPercentage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dropPercentage" a) =>
  Lens.Family2.LensLike' f s a
dropPercentage = Data.ProtoLens.Field.field @"dropPercentage"
endpointStaleAfter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpointStaleAfter" a) =>
  Lens.Family2.LensLike' f s a
endpointStaleAfter
  = Data.ProtoLens.Field.field @"endpointStaleAfter"
endpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpoints" a) =>
  Lens.Family2.LensLike' f s a
endpoints = Data.ProtoLens.Field.field @"endpoints"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maybe'dropPercentage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dropPercentage" a) =>
  Lens.Family2.LensLike' f s a
maybe'dropPercentage
  = Data.ProtoLens.Field.field @"maybe'dropPercentage"
maybe'endpointStaleAfter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endpointStaleAfter" a) =>
  Lens.Family2.LensLike' f s a
maybe'endpointStaleAfter
  = Data.ProtoLens.Field.field @"maybe'endpointStaleAfter"
maybe'overprovisioningFactor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'overprovisioningFactor" a) =>
  Lens.Family2.LensLike' f s a
maybe'overprovisioningFactor
  = Data.ProtoLens.Field.field @"maybe'overprovisioningFactor"
maybe'policy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'policy" a) =>
  Lens.Family2.LensLike' f s a
maybe'policy = Data.ProtoLens.Field.field @"maybe'policy"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
namedEndpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "namedEndpoints" a) =>
  Lens.Family2.LensLike' f s a
namedEndpoints = Data.ProtoLens.Field.field @"namedEndpoints"
overprovisioningFactor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overprovisioningFactor" a) =>
  Lens.Family2.LensLike' f s a
overprovisioningFactor
  = Data.ProtoLens.Field.field @"overprovisioningFactor"
policy ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "policy" a) =>
  Lens.Family2.LensLike' f s a
policy = Data.ProtoLens.Field.field @"policy"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'dropOverloads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'dropOverloads" a) =>
  Lens.Family2.LensLike' f s a
vec'dropOverloads = Data.ProtoLens.Field.field @"vec'dropOverloads"
vec'endpoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'endpoints" a) =>
  Lens.Family2.LensLike' f s a
vec'endpoints = Data.ProtoLens.Field.field @"vec'endpoints"