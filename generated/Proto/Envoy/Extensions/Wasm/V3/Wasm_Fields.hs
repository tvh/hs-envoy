{- This file was auto-generated from envoy/extensions/wasm/v3/wasm.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Wasm.V3.Wasm_Fields where
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
allowPrecompiled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowPrecompiled" a) =>
  Lens.Family2.LensLike' f s a
allowPrecompiled = Data.ProtoLens.Field.field @"allowPrecompiled"
allowedCapabilities ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowedCapabilities" a) =>
  Lens.Family2.LensLike' f s a
allowedCapabilities
  = Data.ProtoLens.Field.field @"allowedCapabilities"
capabilityRestrictionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "capabilityRestrictionConfig" a) =>
  Lens.Family2.LensLike' f s a
capabilityRestrictionConfig
  = Data.ProtoLens.Field.field @"capabilityRestrictionConfig"
code ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "code" a) =>
  Lens.Family2.LensLike' f s a
code = Data.ProtoLens.Field.field @"code"
config ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "config" a) =>
  Lens.Family2.LensLike' f s a
config = Data.ProtoLens.Field.field @"config"
configuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "configuration" a) =>
  Lens.Family2.LensLike' f s a
configuration = Data.ProtoLens.Field.field @"configuration"
environmentVariables ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "environmentVariables" a) =>
  Lens.Family2.LensLike' f s a
environmentVariables
  = Data.ProtoLens.Field.field @"environmentVariables"
failOpen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failOpen" a) =>
  Lens.Family2.LensLike' f s a
failOpen = Data.ProtoLens.Field.field @"failOpen"
hostEnvKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostEnvKeys" a) =>
  Lens.Family2.LensLike' f s a
hostEnvKeys = Data.ProtoLens.Field.field @"hostEnvKeys"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
keyValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "keyValues" a) =>
  Lens.Family2.LensLike' f s a
keyValues = Data.ProtoLens.Field.field @"keyValues"
maybe'capabilityRestrictionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'capabilityRestrictionConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'capabilityRestrictionConfig
  = Data.ProtoLens.Field.field @"maybe'capabilityRestrictionConfig"
maybe'code ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'code" a) =>
  Lens.Family2.LensLike' f s a
maybe'code = Data.ProtoLens.Field.field @"maybe'code"
maybe'config ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'config" a) =>
  Lens.Family2.LensLike' f s a
maybe'config = Data.ProtoLens.Field.field @"maybe'config"
maybe'configuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'configuration
  = Data.ProtoLens.Field.field @"maybe'configuration"
maybe'environmentVariables ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'environmentVariables" a) =>
  Lens.Family2.LensLike' f s a
maybe'environmentVariables
  = Data.ProtoLens.Field.field @"maybe'environmentVariables"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'vm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vm" a) =>
  Lens.Family2.LensLike' f s a
maybe'vm = Data.ProtoLens.Field.field @"maybe'vm"
maybe'vmConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vmConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'vmConfig = Data.ProtoLens.Field.field @"maybe'vmConfig"
nackOnCodeCacheMiss ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nackOnCodeCacheMiss" a) =>
  Lens.Family2.LensLike' f s a
nackOnCodeCacheMiss
  = Data.ProtoLens.Field.field @"nackOnCodeCacheMiss"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
rootId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rootId" a) =>
  Lens.Family2.LensLike' f s a
rootId = Data.ProtoLens.Field.field @"rootId"
runtime ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "runtime" a) =>
  Lens.Family2.LensLike' f s a
runtime = Data.ProtoLens.Field.field @"runtime"
singleton ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "singleton" a) =>
  Lens.Family2.LensLike' f s a
singleton = Data.ProtoLens.Field.field @"singleton"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'hostEnvKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'hostEnvKeys" a) =>
  Lens.Family2.LensLike' f s a
vec'hostEnvKeys = Data.ProtoLens.Field.field @"vec'hostEnvKeys"
vmConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vmConfig" a) =>
  Lens.Family2.LensLike' f s a
vmConfig = Data.ProtoLens.Field.field @"vmConfig"
vmId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vmId" a) =>
  Lens.Family2.LensLike' f s a
vmId = Data.ProtoLens.Field.field @"vmId"