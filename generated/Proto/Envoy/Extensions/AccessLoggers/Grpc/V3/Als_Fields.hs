{- This file was auto-generated from envoy/extensions/access_loggers/grpc/v3/als.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
additionalRequestHeadersToLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "additionalRequestHeadersToLog" a) =>
  Lens.Family2.LensLike' f s a
additionalRequestHeadersToLog
  = Data.ProtoLens.Field.field @"additionalRequestHeadersToLog"
additionalResponseHeadersToLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "additionalResponseHeadersToLog" a) =>
  Lens.Family2.LensLike' f s a
additionalResponseHeadersToLog
  = Data.ProtoLens.Field.field @"additionalResponseHeadersToLog"
additionalResponseTrailersToLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "additionalResponseTrailersToLog" a) =>
  Lens.Family2.LensLike' f s a
additionalResponseTrailersToLog
  = Data.ProtoLens.Field.field @"additionalResponseTrailersToLog"
bufferFlushInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bufferFlushInterval" a) =>
  Lens.Family2.LensLike' f s a
bufferFlushInterval
  = Data.ProtoLens.Field.field @"bufferFlushInterval"
bufferSizeBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bufferSizeBytes" a) =>
  Lens.Family2.LensLike' f s a
bufferSizeBytes = Data.ProtoLens.Field.field @"bufferSizeBytes"
commonConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commonConfig" a) =>
  Lens.Family2.LensLike' f s a
commonConfig = Data.ProtoLens.Field.field @"commonConfig"
filterStateObjectsToLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterStateObjectsToLog" a) =>
  Lens.Family2.LensLike' f s a
filterStateObjectsToLog
  = Data.ProtoLens.Field.field @"filterStateObjectsToLog"
grpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "grpcService" a) =>
  Lens.Family2.LensLike' f s a
grpcService = Data.ProtoLens.Field.field @"grpcService"
logName ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "logName" a) =>
  Lens.Family2.LensLike' f s a
logName = Data.ProtoLens.Field.field @"logName"
maybe'bufferFlushInterval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bufferFlushInterval" a) =>
  Lens.Family2.LensLike' f s a
maybe'bufferFlushInterval
  = Data.ProtoLens.Field.field @"maybe'bufferFlushInterval"
maybe'bufferSizeBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bufferSizeBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'bufferSizeBytes
  = Data.ProtoLens.Field.field @"maybe'bufferSizeBytes"
maybe'commonConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commonConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'commonConfig
  = Data.ProtoLens.Field.field @"maybe'commonConfig"
maybe'grpcService ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'grpcService" a) =>
  Lens.Family2.LensLike' f s a
maybe'grpcService = Data.ProtoLens.Field.field @"maybe'grpcService"
transportApiVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transportApiVersion" a) =>
  Lens.Family2.LensLike' f s a
transportApiVersion
  = Data.ProtoLens.Field.field @"transportApiVersion"
vec'additionalRequestHeadersToLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'additionalRequestHeadersToLog" a) =>
  Lens.Family2.LensLike' f s a
vec'additionalRequestHeadersToLog
  = Data.ProtoLens.Field.field @"vec'additionalRequestHeadersToLog"
vec'additionalResponseHeadersToLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'additionalResponseHeadersToLog" a) =>
  Lens.Family2.LensLike' f s a
vec'additionalResponseHeadersToLog
  = Data.ProtoLens.Field.field @"vec'additionalResponseHeadersToLog"
vec'additionalResponseTrailersToLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'additionalResponseTrailersToLog" a) =>
  Lens.Family2.LensLike' f s a
vec'additionalResponseTrailersToLog
  = Data.ProtoLens.Field.field @"vec'additionalResponseTrailersToLog"
vec'filterStateObjectsToLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'filterStateObjectsToLog" a) =>
  Lens.Family2.LensLike' f s a
vec'filterStateObjectsToLog
  = Data.ProtoLens.Field.field @"vec'filterStateObjectsToLog"