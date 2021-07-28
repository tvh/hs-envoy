{- This file was auto-generated from envoy/config/route/v3/route.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Route.V3.Route_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
clusterSpecifierPlugins ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterSpecifierPlugins" a) =>
  Lens.Family2.LensLike' f s a
clusterSpecifierPlugins
  = Data.ProtoLens.Field.field @"clusterSpecifierPlugins"
configSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "configSource" a) =>
  Lens.Family2.LensLike' f s a
configSource = Data.ProtoLens.Field.field @"configSource"
extension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extension" a) =>
  Lens.Family2.LensLike' f s a
extension = Data.ProtoLens.Field.field @"extension"
internalOnlyHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "internalOnlyHeaders" a) =>
  Lens.Family2.LensLike' f s a
internalOnlyHeaders
  = Data.ProtoLens.Field.field @"internalOnlyHeaders"
maxDirectResponseBodySizeBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxDirectResponseBodySizeBytes" a) =>
  Lens.Family2.LensLike' f s a
maxDirectResponseBodySizeBytes
  = Data.ProtoLens.Field.field @"maxDirectResponseBodySizeBytes"
maybe'configSource ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configSource" a) =>
  Lens.Family2.LensLike' f s a
maybe'configSource
  = Data.ProtoLens.Field.field @"maybe'configSource"
maybe'extension ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'extension" a) =>
  Lens.Family2.LensLike' f s a
maybe'extension = Data.ProtoLens.Field.field @"maybe'extension"
maybe'maxDirectResponseBodySizeBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxDirectResponseBodySizeBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxDirectResponseBodySizeBytes
  = Data.ProtoLens.Field.field
      @"maybe'maxDirectResponseBodySizeBytes"
maybe'validateClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'validateClusters" a) =>
  Lens.Family2.LensLike' f s a
maybe'validateClusters
  = Data.ProtoLens.Field.field @"maybe'validateClusters"
maybe'vhds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vhds" a) =>
  Lens.Family2.LensLike' f s a
maybe'vhds = Data.ProtoLens.Field.field @"maybe'vhds"
mostSpecificHeaderMutationsWins ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mostSpecificHeaderMutationsWins" a) =>
  Lens.Family2.LensLike' f s a
mostSpecificHeaderMutationsWins
  = Data.ProtoLens.Field.field @"mostSpecificHeaderMutationsWins"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
requestHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
requestHeadersToAdd
  = Data.ProtoLens.Field.field @"requestHeadersToAdd"
requestHeadersToRemove ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestHeadersToRemove" a) =>
  Lens.Family2.LensLike' f s a
requestHeadersToRemove
  = Data.ProtoLens.Field.field @"requestHeadersToRemove"
responseHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
responseHeadersToAdd
  = Data.ProtoLens.Field.field @"responseHeadersToAdd"
responseHeadersToRemove ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseHeadersToRemove" a) =>
  Lens.Family2.LensLike' f s a
responseHeadersToRemove
  = Data.ProtoLens.Field.field @"responseHeadersToRemove"
validateClusters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "validateClusters" a) =>
  Lens.Family2.LensLike' f s a
validateClusters = Data.ProtoLens.Field.field @"validateClusters"
vec'clusterSpecifierPlugins ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clusterSpecifierPlugins" a) =>
  Lens.Family2.LensLike' f s a
vec'clusterSpecifierPlugins
  = Data.ProtoLens.Field.field @"vec'clusterSpecifierPlugins"
vec'internalOnlyHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'internalOnlyHeaders" a) =>
  Lens.Family2.LensLike' f s a
vec'internalOnlyHeaders
  = Data.ProtoLens.Field.field @"vec'internalOnlyHeaders"
vec'requestHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
vec'requestHeadersToAdd
  = Data.ProtoLens.Field.field @"vec'requestHeadersToAdd"
vec'requestHeadersToRemove ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestHeadersToRemove" a) =>
  Lens.Family2.LensLike' f s a
vec'requestHeadersToRemove
  = Data.ProtoLens.Field.field @"vec'requestHeadersToRemove"
vec'responseHeadersToAdd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'responseHeadersToAdd" a) =>
  Lens.Family2.LensLike' f s a
vec'responseHeadersToAdd
  = Data.ProtoLens.Field.field @"vec'responseHeadersToAdd"
vec'responseHeadersToRemove ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'responseHeadersToRemove" a) =>
  Lens.Family2.LensLike' f s a
vec'responseHeadersToRemove
  = Data.ProtoLens.Field.field @"vec'responseHeadersToRemove"
vec'virtualHosts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'virtualHosts" a) =>
  Lens.Family2.LensLike' f s a
vec'virtualHosts = Data.ProtoLens.Field.field @"vec'virtualHosts"
vhds ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vhds" a) =>
  Lens.Family2.LensLike' f s a
vhds = Data.ProtoLens.Field.field @"vhds"
virtualHosts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "virtualHosts" a) =>
  Lens.Family2.LensLike' f s a
virtualHosts = Data.ProtoLens.Field.field @"virtualHosts"