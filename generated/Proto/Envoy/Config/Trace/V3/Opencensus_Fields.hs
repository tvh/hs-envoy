{- This file was auto-generated from envoy/config/trace/v3/opencensus.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.Opencensus_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Opencensus.Proto.Trace.V1.TraceConfig
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
incomingTraceContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "incomingTraceContext" a) =>
  Lens.Family2.LensLike' f s a
incomingTraceContext
  = Data.ProtoLens.Field.field @"incomingTraceContext"
maybe'ocagentGrpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ocagentGrpcService" a) =>
  Lens.Family2.LensLike' f s a
maybe'ocagentGrpcService
  = Data.ProtoLens.Field.field @"maybe'ocagentGrpcService"
maybe'stackdriverGrpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stackdriverGrpcService" a) =>
  Lens.Family2.LensLike' f s a
maybe'stackdriverGrpcService
  = Data.ProtoLens.Field.field @"maybe'stackdriverGrpcService"
maybe'traceConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'traceConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'traceConfig = Data.ProtoLens.Field.field @"maybe'traceConfig"
ocagentAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ocagentAddress" a) =>
  Lens.Family2.LensLike' f s a
ocagentAddress = Data.ProtoLens.Field.field @"ocagentAddress"
ocagentExporterEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ocagentExporterEnabled" a) =>
  Lens.Family2.LensLike' f s a
ocagentExporterEnabled
  = Data.ProtoLens.Field.field @"ocagentExporterEnabled"
ocagentGrpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ocagentGrpcService" a) =>
  Lens.Family2.LensLike' f s a
ocagentGrpcService
  = Data.ProtoLens.Field.field @"ocagentGrpcService"
outgoingTraceContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "outgoingTraceContext" a) =>
  Lens.Family2.LensLike' f s a
outgoingTraceContext
  = Data.ProtoLens.Field.field @"outgoingTraceContext"
stackdriverAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stackdriverAddress" a) =>
  Lens.Family2.LensLike' f s a
stackdriverAddress
  = Data.ProtoLens.Field.field @"stackdriverAddress"
stackdriverExporterEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stackdriverExporterEnabled" a) =>
  Lens.Family2.LensLike' f s a
stackdriverExporterEnabled
  = Data.ProtoLens.Field.field @"stackdriverExporterEnabled"
stackdriverGrpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stackdriverGrpcService" a) =>
  Lens.Family2.LensLike' f s a
stackdriverGrpcService
  = Data.ProtoLens.Field.field @"stackdriverGrpcService"
stackdriverProjectId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stackdriverProjectId" a) =>
  Lens.Family2.LensLike' f s a
stackdriverProjectId
  = Data.ProtoLens.Field.field @"stackdriverProjectId"
stdoutExporterEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stdoutExporterEnabled" a) =>
  Lens.Family2.LensLike' f s a
stdoutExporterEnabled
  = Data.ProtoLens.Field.field @"stdoutExporterEnabled"
traceConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "traceConfig" a) =>
  Lens.Family2.LensLike' f s a
traceConfig = Data.ProtoLens.Field.field @"traceConfig"
vec'incomingTraceContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'incomingTraceContext" a) =>
  Lens.Family2.LensLike' f s a
vec'incomingTraceContext
  = Data.ProtoLens.Field.field @"vec'incomingTraceContext"
vec'outgoingTraceContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'outgoingTraceContext" a) =>
  Lens.Family2.LensLike' f s a
vec'outgoingTraceContext
  = Data.ProtoLens.Field.field @"vec'outgoingTraceContext"
zipkinExporterEnabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "zipkinExporterEnabled" a) =>
  Lens.Family2.LensLike' f s a
zipkinExporterEnabled
  = Data.ProtoLens.Field.field @"zipkinExporterEnabled"
zipkinUrl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "zipkinUrl" a) =>
  Lens.Family2.LensLike' f s a
zipkinUrl = Data.ProtoLens.Field.field @"zipkinUrl"