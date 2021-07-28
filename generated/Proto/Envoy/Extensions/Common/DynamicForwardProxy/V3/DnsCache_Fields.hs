{- This file was auto-generated from envoy/extensions/common/dynamic_forward_proxy/v3/dns_cache.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Common.DynamicForwardProxy.V3.DnsCache_Fields where
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
import qualified Proto.Envoy.Config.Cluster.V3.Cluster
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Resolver
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
dnsCacheCircuitBreaker ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsCacheCircuitBreaker" a) =>
  Lens.Family2.LensLike' f s a
dnsCacheCircuitBreaker
  = Data.ProtoLens.Field.field @"dnsCacheCircuitBreaker"
dnsFailureRefreshRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsFailureRefreshRate" a) =>
  Lens.Family2.LensLike' f s a
dnsFailureRefreshRate
  = Data.ProtoLens.Field.field @"dnsFailureRefreshRate"
dnsLookupFamily ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsLookupFamily" a) =>
  Lens.Family2.LensLike' f s a
dnsLookupFamily = Data.ProtoLens.Field.field @"dnsLookupFamily"
dnsQueryTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsQueryTimeout" a) =>
  Lens.Family2.LensLike' f s a
dnsQueryTimeout = Data.ProtoLens.Field.field @"dnsQueryTimeout"
dnsRefreshRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsRefreshRate" a) =>
  Lens.Family2.LensLike' f s a
dnsRefreshRate = Data.ProtoLens.Field.field @"dnsRefreshRate"
dnsResolutionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dnsResolutionConfig" a) =>
  Lens.Family2.LensLike' f s a
dnsResolutionConfig
  = Data.ProtoLens.Field.field @"dnsResolutionConfig"
hostTtl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hostTtl" a) =>
  Lens.Family2.LensLike' f s a
hostTtl = Data.ProtoLens.Field.field @"hostTtl"
maxHosts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxHosts" a) =>
  Lens.Family2.LensLike' f s a
maxHosts = Data.ProtoLens.Field.field @"maxHosts"
maxPendingRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxPendingRequests" a) =>
  Lens.Family2.LensLike' f s a
maxPendingRequests
  = Data.ProtoLens.Field.field @"maxPendingRequests"
maybe'dnsCacheCircuitBreaker ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dnsCacheCircuitBreaker" a) =>
  Lens.Family2.LensLike' f s a
maybe'dnsCacheCircuitBreaker
  = Data.ProtoLens.Field.field @"maybe'dnsCacheCircuitBreaker"
maybe'dnsFailureRefreshRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dnsFailureRefreshRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'dnsFailureRefreshRate
  = Data.ProtoLens.Field.field @"maybe'dnsFailureRefreshRate"
maybe'dnsQueryTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dnsQueryTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'dnsQueryTimeout
  = Data.ProtoLens.Field.field @"maybe'dnsQueryTimeout"
maybe'dnsRefreshRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dnsRefreshRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'dnsRefreshRate
  = Data.ProtoLens.Field.field @"maybe'dnsRefreshRate"
maybe'dnsResolutionConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dnsResolutionConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'dnsResolutionConfig
  = Data.ProtoLens.Field.field @"maybe'dnsResolutionConfig"
maybe'hostTtl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostTtl" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostTtl = Data.ProtoLens.Field.field @"maybe'hostTtl"
maybe'maxHosts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxHosts" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxHosts = Data.ProtoLens.Field.field @"maybe'maxHosts"
maybe'maxPendingRequests ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxPendingRequests" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxPendingRequests
  = Data.ProtoLens.Field.field @"maybe'maxPendingRequests"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
preresolveHostnames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "preresolveHostnames" a) =>
  Lens.Family2.LensLike' f s a
preresolveHostnames
  = Data.ProtoLens.Field.field @"preresolveHostnames"
useTcpForDnsLookups ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useTcpForDnsLookups" a) =>
  Lens.Family2.LensLike' f s a
useTcpForDnsLookups
  = Data.ProtoLens.Field.field @"useTcpForDnsLookups"
vec'preresolveHostnames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'preresolveHostnames" a) =>
  Lens.Family2.LensLike' f s a
vec'preresolveHostnames
  = Data.ProtoLens.Field.field @"vec'preresolveHostnames"