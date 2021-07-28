{- This file was auto-generated from envoy/config/trace/v3/skywalking.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.Skywalking_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Sensitive
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
backendToken ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "backendToken" a) =>
  Lens.Family2.LensLike' f s a
backendToken = Data.ProtoLens.Field.field @"backendToken"
clientConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clientConfig" a) =>
  Lens.Family2.LensLike' f s a
clientConfig = Data.ProtoLens.Field.field @"clientConfig"
grpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcService" a) =>
  Lens.Family2.LensLike' f s a
grpcService = Data.ProtoLens.Field.field @"grpcService"
instanceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "instanceName" a) =>
  Lens.Family2.LensLike' f s a
instanceName = Data.ProtoLens.Field.field @"instanceName"
maxCacheSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxCacheSize" a) =>
  Lens.Family2.LensLike' f s a
maxCacheSize = Data.ProtoLens.Field.field @"maxCacheSize"
maybe'backendToken ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'backendToken" a) =>
  Lens.Family2.LensLike' f s a
maybe'backendToken
  = Data.ProtoLens.Field.field @"maybe'backendToken"
maybe'backendTokenSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'backendTokenSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'backendTokenSpecifier
  = Data.ProtoLens.Field.field @"maybe'backendTokenSpecifier"
maybe'clientConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clientConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'clientConfig
  = Data.ProtoLens.Field.field @"maybe'clientConfig"
maybe'grpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcService" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcService = Data.ProtoLens.Field.field @"maybe'grpcService"
maybe'maxCacheSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxCacheSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxCacheSize
  = Data.ProtoLens.Field.field @"maybe'maxCacheSize"
serviceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serviceName" a) =>
  Lens.Family2.LensLike' f s a
serviceName = Data.ProtoLens.Field.field @"serviceName"