{- This file was auto-generated from envoy/extensions/upstreams/http/v3/http_protocol_options.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Upstreams.Http.V3.HttpProtocolOptions_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Protocol
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
alternateProtocolsCacheOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "alternateProtocolsCacheOptions" a) =>
  Lens.Family2.LensLike' f s a
alternateProtocolsCacheOptions
  = Data.ProtoLens.Field.field @"alternateProtocolsCacheOptions"
autoConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "autoConfig" a) =>
  Lens.Family2.LensLike' f s a
autoConfig = Data.ProtoLens.Field.field @"autoConfig"
commonHttpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commonHttpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
commonHttpProtocolOptions
  = Data.ProtoLens.Field.field @"commonHttpProtocolOptions"
explicitHttpConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "explicitHttpConfig" a) =>
  Lens.Family2.LensLike' f s a
explicitHttpConfig
  = Data.ProtoLens.Field.field @"explicitHttpConfig"
http2ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "http2ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
http2ProtocolOptions
  = Data.ProtoLens.Field.field @"http2ProtocolOptions"
http3ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "http3ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
http3ProtocolOptions
  = Data.ProtoLens.Field.field @"http3ProtocolOptions"
httpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "httpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
httpProtocolOptions
  = Data.ProtoLens.Field.field @"httpProtocolOptions"
maybe'alternateProtocolsCacheOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'alternateProtocolsCacheOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'alternateProtocolsCacheOptions
  = Data.ProtoLens.Field.field
      @"maybe'alternateProtocolsCacheOptions"
maybe'autoConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'autoConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'autoConfig = Data.ProtoLens.Field.field @"maybe'autoConfig"
maybe'commonHttpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commonHttpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'commonHttpProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'commonHttpProtocolOptions"
maybe'explicitHttpConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'explicitHttpConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'explicitHttpConfig
  = Data.ProtoLens.Field.field @"maybe'explicitHttpConfig"
maybe'http2ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'http2ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'http2ProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'http2ProtocolOptions"
maybe'http3ProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'http3ProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'http3ProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'http3ProtocolOptions"
maybe'httpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'httpProtocolOptions"
maybe'protocolConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protocolConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'protocolConfig
  = Data.ProtoLens.Field.field @"maybe'protocolConfig"
maybe'upstreamHttpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upstreamHttpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'upstreamHttpProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'upstreamHttpProtocolOptions"
maybe'upstreamProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upstreamProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
maybe'upstreamProtocolOptions
  = Data.ProtoLens.Field.field @"maybe'upstreamProtocolOptions"
maybe'useDownstreamProtocolConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'useDownstreamProtocolConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'useDownstreamProtocolConfig
  = Data.ProtoLens.Field.field @"maybe'useDownstreamProtocolConfig"
upstreamHttpProtocolOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upstreamHttpProtocolOptions" a) =>
  Lens.Family2.LensLike' f s a
upstreamHttpProtocolOptions
  = Data.ProtoLens.Field.field @"upstreamHttpProtocolOptions"
useDownstreamProtocolConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useDownstreamProtocolConfig" a) =>
  Lens.Family2.LensLike' f s a
useDownstreamProtocolConfig
  = Data.ProtoLens.Field.field @"useDownstreamProtocolConfig"