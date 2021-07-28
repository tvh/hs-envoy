{- This file was auto-generated from envoy/extensions/filters/http/grpc_stats/v3/config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.GrpcStats.V3.Config_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.GrpcMethodList
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
emitFilterState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "emitFilterState" a) =>
  Lens.Family2.LensLike' f s a
emitFilterState = Data.ProtoLens.Field.field @"emitFilterState"
enableUpstreamStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "enableUpstreamStats" a) =>
  Lens.Family2.LensLike' f s a
enableUpstreamStats
  = Data.ProtoLens.Field.field @"enableUpstreamStats"
individualMethodStatsAllowlist ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "individualMethodStatsAllowlist" a) =>
  Lens.Family2.LensLike' f s a
individualMethodStatsAllowlist
  = Data.ProtoLens.Field.field @"individualMethodStatsAllowlist"
maybe'individualMethodStatsAllowlist ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'individualMethodStatsAllowlist" a) =>
  Lens.Family2.LensLike' f s a
maybe'individualMethodStatsAllowlist
  = Data.ProtoLens.Field.field
      @"maybe'individualMethodStatsAllowlist"
maybe'perMethodStatSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'perMethodStatSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'perMethodStatSpecifier
  = Data.ProtoLens.Field.field @"maybe'perMethodStatSpecifier"
maybe'statsForAllMethods ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'statsForAllMethods" a) =>
  Lens.Family2.LensLike' f s a
maybe'statsForAllMethods
  = Data.ProtoLens.Field.field @"maybe'statsForAllMethods"
requestMessageCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestMessageCount" a) =>
  Lens.Family2.LensLike' f s a
requestMessageCount
  = Data.ProtoLens.Field.field @"requestMessageCount"
responseMessageCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "responseMessageCount" a) =>
  Lens.Family2.LensLike' f s a
responseMessageCount
  = Data.ProtoLens.Field.field @"responseMessageCount"
statsForAllMethods ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statsForAllMethods" a) =>
  Lens.Family2.LensLike' f s a
statsForAllMethods
  = Data.ProtoLens.Field.field @"statsForAllMethods"