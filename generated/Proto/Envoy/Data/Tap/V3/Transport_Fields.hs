{- This file was auto-generated from envoy/data/tap/v3/transport.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Tap.V3.Transport_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Data.Tap.V3.Common
import qualified Proto.Google.Protobuf.Timestamp
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
closed ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "closed" a) =>
  Lens.Family2.LensLike' f s a
closed = Data.ProtoLens.Field.field @"closed"
connection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "connection" a) =>
  Lens.Family2.LensLike' f s a
connection = Data.ProtoLens.Field.field @"connection"
data' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "data'" a) =>
  Lens.Family2.LensLike' f s a
data' = Data.ProtoLens.Field.field @"data'"
endStream ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endStream" a) =>
  Lens.Family2.LensLike' f s a
endStream = Data.ProtoLens.Field.field @"endStream"
event ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "event" a) =>
  Lens.Family2.LensLike' f s a
event = Data.ProtoLens.Field.field @"event"
events ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "events" a) =>
  Lens.Family2.LensLike' f s a
events = Data.ProtoLens.Field.field @"events"
localAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localAddress" a) =>
  Lens.Family2.LensLike' f s a
localAddress = Data.ProtoLens.Field.field @"localAddress"
maybe'closed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'closed" a) =>
  Lens.Family2.LensLike' f s a
maybe'closed = Data.ProtoLens.Field.field @"maybe'closed"
maybe'connection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'connection" a) =>
  Lens.Family2.LensLike' f s a
maybe'connection = Data.ProtoLens.Field.field @"maybe'connection"
maybe'data' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'data'" a) =>
  Lens.Family2.LensLike' f s a
maybe'data' = Data.ProtoLens.Field.field @"maybe'data'"
maybe'event ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'event" a) =>
  Lens.Family2.LensLike' f s a
maybe'event = Data.ProtoLens.Field.field @"maybe'event"
maybe'eventSelector ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'eventSelector" a) =>
  Lens.Family2.LensLike' f s a
maybe'eventSelector
  = Data.ProtoLens.Field.field @"maybe'eventSelector"
maybe'localAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'localAddress
  = Data.ProtoLens.Field.field @"maybe'localAddress"
maybe'messagePiece ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'messagePiece" a) =>
  Lens.Family2.LensLike' f s a
maybe'messagePiece
  = Data.ProtoLens.Field.field @"maybe'messagePiece"
maybe'read ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'read" a) =>
  Lens.Family2.LensLike' f s a
maybe'read = Data.ProtoLens.Field.field @"maybe'read"
maybe'remoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'remoteAddress" a) =>
  Lens.Family2.LensLike' f s a
maybe'remoteAddress
  = Data.ProtoLens.Field.field @"maybe'remoteAddress"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'write ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'write" a) =>
  Lens.Family2.LensLike' f s a
maybe'write = Data.ProtoLens.Field.field @"maybe'write"
read ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "read" a) =>
  Lens.Family2.LensLike' f s a
read = Data.ProtoLens.Field.field @"read"
readTruncated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readTruncated" a) =>
  Lens.Family2.LensLike' f s a
readTruncated = Data.ProtoLens.Field.field @"readTruncated"
remoteAddress ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "remoteAddress" a) =>
  Lens.Family2.LensLike' f s a
remoteAddress = Data.ProtoLens.Field.field @"remoteAddress"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
traceId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "traceId" a) =>
  Lens.Family2.LensLike' f s a
traceId = Data.ProtoLens.Field.field @"traceId"
vec'events ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'events" a) =>
  Lens.Family2.LensLike' f s a
vec'events = Data.ProtoLens.Field.field @"vec'events"
write ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "write" a) =>
  Lens.Family2.LensLike' f s a
write = Data.ProtoLens.Field.field @"write"
writeTruncated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "writeTruncated" a) =>
  Lens.Family2.LensLike' f s a
writeTruncated = Data.ProtoLens.Field.field @"writeTruncated"