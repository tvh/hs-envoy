{- This file was auto-generated from envoy/extensions/filters/http/ext_proc/v3alpha/ext_proc.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ExtProc_Fields where
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
import qualified Proto.Envoy.Extensions.Filters.Http.ExtProc.V3alpha.ProcessingMode
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
asyncMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "asyncMode" a) =>
  Lens.Family2.LensLike' f s a
asyncMode = Data.ProtoLens.Field.field @"asyncMode"
disabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disabled" a) =>
  Lens.Family2.LensLike' f s a
disabled = Data.ProtoLens.Field.field @"disabled"
failureModeAllow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failureModeAllow" a) =>
  Lens.Family2.LensLike' f s a
failureModeAllow = Data.ProtoLens.Field.field @"failureModeAllow"
grpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcService" a) =>
  Lens.Family2.LensLike' f s a
grpcService = Data.ProtoLens.Field.field @"grpcService"
maybe'disabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'disabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'disabled = Data.ProtoLens.Field.field @"maybe'disabled"
maybe'grpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcService" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcService = Data.ProtoLens.Field.field @"maybe'grpcService"
maybe'messageTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'messageTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'messageTimeout
  = Data.ProtoLens.Field.field @"maybe'messageTimeout"
maybe'override ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'override" a) =>
  Lens.Family2.LensLike' f s a
maybe'override = Data.ProtoLens.Field.field @"maybe'override"
maybe'overrides ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'overrides" a) =>
  Lens.Family2.LensLike' f s a
maybe'overrides = Data.ProtoLens.Field.field @"maybe'overrides"
maybe'processingMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'processingMode" a) =>
  Lens.Family2.LensLike' f s a
maybe'processingMode
  = Data.ProtoLens.Field.field @"maybe'processingMode"
messageTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "messageTimeout" a) =>
  Lens.Family2.LensLike' f s a
messageTimeout = Data.ProtoLens.Field.field @"messageTimeout"
overrides ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "overrides" a) =>
  Lens.Family2.LensLike' f s a
overrides = Data.ProtoLens.Field.field @"overrides"
processingMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processingMode" a) =>
  Lens.Family2.LensLike' f s a
processingMode = Data.ProtoLens.Field.field @"processingMode"
requestAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestAttributes" a) =>
  Lens.Family2.LensLike' f s a
requestAttributes = Data.ProtoLens.Field.field @"requestAttributes"
requestProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestProperties" a) =>
  Lens.Family2.LensLike' f s a
requestProperties = Data.ProtoLens.Field.field @"requestProperties"
responseAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseAttributes" a) =>
  Lens.Family2.LensLike' f s a
responseAttributes
  = Data.ProtoLens.Field.field @"responseAttributes"
responseProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseProperties" a) =>
  Lens.Family2.LensLike' f s a
responseProperties
  = Data.ProtoLens.Field.field @"responseProperties"
statPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statPrefix" a) =>
  Lens.Family2.LensLike' f s a
statPrefix = Data.ProtoLens.Field.field @"statPrefix"
vec'requestAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestAttributes" a) =>
  Lens.Family2.LensLike' f s a
vec'requestAttributes
  = Data.ProtoLens.Field.field @"vec'requestAttributes"
vec'requestProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requestProperties" a) =>
  Lens.Family2.LensLike' f s a
vec'requestProperties
  = Data.ProtoLens.Field.field @"vec'requestProperties"
vec'responseAttributes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'responseAttributes" a) =>
  Lens.Family2.LensLike' f s a
vec'responseAttributes
  = Data.ProtoLens.Field.field @"vec'responseAttributes"
vec'responseProperties ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'responseProperties" a) =>
  Lens.Family2.LensLike' f s a
vec'responseProperties
  = Data.ProtoLens.Field.field @"vec'responseProperties"