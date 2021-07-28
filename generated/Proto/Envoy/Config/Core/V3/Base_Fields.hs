{- This file was auto-generated from envoy/config/core/v3/base.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.Base_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Backoff
import qualified Proto.Envoy.Config.Core.V3.HttpUri
import qualified Proto.Envoy.Type.V3.Percent
import qualified Proto.Envoy.Type.V3.SemanticVersion
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
import qualified Proto.Xds.Core.V3.ContextParams
append ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "append" a) =>
  Lens.Family2.LensLike' f s a
append = Data.ProtoLens.Field.field @"append"
category ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "category" a) =>
  Lens.Family2.LensLike' f s a
category = Data.ProtoLens.Field.field @"category"
clientFeatures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clientFeatures" a) =>
  Lens.Family2.LensLike' f s a
clientFeatures = Data.ProtoLens.Field.field @"clientFeatures"
cluster ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cluster" a) =>
  Lens.Family2.LensLike' f s a
cluster = Data.ProtoLens.Field.field @"cluster"
defaultValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultValue" a) =>
  Lens.Family2.LensLike' f s a
defaultValue = Data.ProtoLens.Field.field @"defaultValue"
disabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disabled" a) =>
  Lens.Family2.LensLike' f s a
disabled = Data.ProtoLens.Field.field @"disabled"
dynamicParameters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dynamicParameters" a) =>
  Lens.Family2.LensLike' f s a
dynamicParameters = Data.ProtoLens.Field.field @"dynamicParameters"
extensions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extensions" a) =>
  Lens.Family2.LensLike' f s a
extensions = Data.ProtoLens.Field.field @"extensions"
filename ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filename" a) =>
  Lens.Family2.LensLike' f s a
filename = Data.ProtoLens.Field.field @"filename"
filterMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterMetadata" a) =>
  Lens.Family2.LensLike' f s a
filterMetadata = Data.ProtoLens.Field.field @"filterMetadata"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
headers ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "headers" a) =>
  Lens.Family2.LensLike' f s a
headers = Data.ProtoLens.Field.field @"headers"
httpUri ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "httpUri" a) =>
  Lens.Family2.LensLike' f s a
httpUri = Data.ProtoLens.Field.field @"httpUri"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
identifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "identifier" a) =>
  Lens.Family2.LensLike' f s a
identifier = Data.ProtoLens.Field.field @"identifier"
inlineBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inlineBytes" a) =>
  Lens.Family2.LensLike' f s a
inlineBytes = Data.ProtoLens.Field.field @"inlineBytes"
inlineString ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inlineString" a) =>
  Lens.Family2.LensLike' f s a
inlineString = Data.ProtoLens.Field.field @"inlineString"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
listeningAddresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listeningAddresses" a) =>
  Lens.Family2.LensLike' f s a
listeningAddresses
  = Data.ProtoLens.Field.field @"listeningAddresses"
local ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "local" a) =>
  Lens.Family2.LensLike' f s a
local = Data.ProtoLens.Field.field @"local"
locality ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "locality" a) =>
  Lens.Family2.LensLike' f s a
locality = Data.ProtoLens.Field.field @"locality"
maybe'append ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'append" a) =>
  Lens.Family2.LensLike' f s a
maybe'append = Data.ProtoLens.Field.field @"maybe'append"
maybe'configType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configType" a) =>
  Lens.Family2.LensLike' f s a
maybe'configType = Data.ProtoLens.Field.field @"maybe'configType"
maybe'defaultValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'defaultValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'defaultValue
  = Data.ProtoLens.Field.field @"maybe'defaultValue"
maybe'filename ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filename" a) =>
  Lens.Family2.LensLike' f s a
maybe'filename = Data.ProtoLens.Field.field @"maybe'filename"
maybe'header ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'header" a) =>
  Lens.Family2.LensLike' f s a
maybe'header = Data.ProtoLens.Field.field @"maybe'header"
maybe'httpUri ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpUri" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpUri = Data.ProtoLens.Field.field @"maybe'httpUri"
maybe'inlineBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'inlineBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'inlineBytes = Data.ProtoLens.Field.field @"maybe'inlineBytes"
maybe'inlineString ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'inlineString" a) =>
  Lens.Family2.LensLike' f s a
maybe'inlineString
  = Data.ProtoLens.Field.field @"maybe'inlineString"
maybe'local ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'local" a) =>
  Lens.Family2.LensLike' f s a
maybe'local = Data.ProtoLens.Field.field @"maybe'local"
maybe'locality ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'locality" a) =>
  Lens.Family2.LensLike' f s a
maybe'locality = Data.ProtoLens.Field.field @"maybe'locality"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
maybe'numRetries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'numRetries" a) =>
  Lens.Family2.LensLike' f s a
maybe'numRetries = Data.ProtoLens.Field.field @"maybe'numRetries"
maybe'remote ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'remote" a) =>
  Lens.Family2.LensLike' f s a
maybe'remote = Data.ProtoLens.Field.field @"maybe'remote"
maybe'retryBackOff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'retryBackOff" a) =>
  Lens.Family2.LensLike' f s a
maybe'retryBackOff
  = Data.ProtoLens.Field.field @"maybe'retryBackOff"
maybe'retryPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'retryPolicy" a) =>
  Lens.Family2.LensLike' f s a
maybe'retryPolicy = Data.ProtoLens.Field.field @"maybe'retryPolicy"
maybe'specifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'specifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'specifier = Data.ProtoLens.Field.field @"maybe'specifier"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
maybe'userAgentBuildVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'userAgentBuildVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'userAgentBuildVersion
  = Data.ProtoLens.Field.field @"maybe'userAgentBuildVersion"
maybe'userAgentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'userAgentVersion" a) =>
  Lens.Family2.LensLike' f s a
maybe'userAgentVersion
  = Data.ProtoLens.Field.field @"maybe'userAgentVersion"
maybe'userAgentVersionType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'userAgentVersionType" a) =>
  Lens.Family2.LensLike' f s a
maybe'userAgentVersionType
  = Data.ProtoLens.Field.field @"maybe'userAgentVersionType"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'version ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'version" a) =>
  Lens.Family2.LensLike' f s a
maybe'version = Data.ProtoLens.Field.field @"maybe'version"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
numRetries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numRetries" a) =>
  Lens.Family2.LensLike' f s a
numRetries = Data.ProtoLens.Field.field @"numRetries"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
region ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "region" a) =>
  Lens.Family2.LensLike' f s a
region = Data.ProtoLens.Field.field @"region"
remote ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "remote" a) =>
  Lens.Family2.LensLike' f s a
remote = Data.ProtoLens.Field.field @"remote"
retryBackOff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retryBackOff" a) =>
  Lens.Family2.LensLike' f s a
retryBackOff = Data.ProtoLens.Field.field @"retryBackOff"
retryPolicy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "retryPolicy" a) =>
  Lens.Family2.LensLike' f s a
retryPolicy = Data.ProtoLens.Field.field @"retryPolicy"
runtimeKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "runtimeKey" a) =>
  Lens.Family2.LensLike' f s a
runtimeKey = Data.ProtoLens.Field.field @"runtimeKey"
sha256 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sha256" a) =>
  Lens.Family2.LensLike' f s a
sha256 = Data.ProtoLens.Field.field @"sha256"
subZone ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "subZone" a) =>
  Lens.Family2.LensLike' f s a
subZone = Data.ProtoLens.Field.field @"subZone"
typeDescriptor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typeDescriptor" a) =>
  Lens.Family2.LensLike' f s a
typeDescriptor = Data.ProtoLens.Field.field @"typeDescriptor"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
typedFilterMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedFilterMetadata" a) =>
  Lens.Family2.LensLike' f s a
typedFilterMetadata
  = Data.ProtoLens.Field.field @"typedFilterMetadata"
userAgentBuildVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "userAgentBuildVersion" a) =>
  Lens.Family2.LensLike' f s a
userAgentBuildVersion
  = Data.ProtoLens.Field.field @"userAgentBuildVersion"
userAgentName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "userAgentName" a) =>
  Lens.Family2.LensLike' f s a
userAgentName = Data.ProtoLens.Field.field @"userAgentName"
userAgentVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "userAgentVersion" a) =>
  Lens.Family2.LensLike' f s a
userAgentVersion = Data.ProtoLens.Field.field @"userAgentVersion"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'clientFeatures ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clientFeatures" a) =>
  Lens.Family2.LensLike' f s a
vec'clientFeatures
  = Data.ProtoLens.Field.field @"vec'clientFeatures"
vec'extensions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'extensions" a) =>
  Lens.Family2.LensLike' f s a
vec'extensions = Data.ProtoLens.Field.field @"vec'extensions"
vec'headers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'headers" a) =>
  Lens.Family2.LensLike' f s a
vec'headers = Data.ProtoLens.Field.field @"vec'headers"
vec'listeningAddresses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'listeningAddresses" a) =>
  Lens.Family2.LensLike' f s a
vec'listeningAddresses
  = Data.ProtoLens.Field.field @"vec'listeningAddresses"
version ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
  Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
zone ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "zone" a) =>
  Lens.Family2.LensLike' f s a
zone = Data.ProtoLens.Field.field @"zone"