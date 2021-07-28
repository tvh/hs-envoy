{- This file was auto-generated from envoy/data/dns/v3/dns_table.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Data.Dns.V3.DnsTable_Fields where
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
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
addressList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "addressList" a) =>
  Lens.Family2.LensLike' f s a
addressList = Data.ProtoLens.Field.field @"addressList"
answerTtl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "answerTtl" a) =>
  Lens.Family2.LensLike' f s a
answerTtl = Data.ProtoLens.Field.field @"answerTtl"
clusterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clusterName" a) =>
  Lens.Family2.LensLike' f s a
clusterName = Data.ProtoLens.Field.field @"clusterName"
endpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "endpoint" a) =>
  Lens.Family2.LensLike' f s a
endpoint = Data.ProtoLens.Field.field @"endpoint"
externalRetryCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "externalRetryCount" a) =>
  Lens.Family2.LensLike' f s a
externalRetryCount
  = Data.ProtoLens.Field.field @"externalRetryCount"
hostName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostName" a) =>
  Lens.Family2.LensLike' f s a
hostName = Data.ProtoLens.Field.field @"hostName"
knownSuffixes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "knownSuffixes" a) =>
  Lens.Family2.LensLike' f s a
knownSuffixes = Data.ProtoLens.Field.field @"knownSuffixes"
maybe'addressList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'addressList" a) =>
  Lens.Family2.LensLike' f s a
maybe'addressList = Data.ProtoLens.Field.field @"maybe'addressList"
maybe'answerTtl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'answerTtl" a) =>
  Lens.Family2.LensLike' f s a
maybe'answerTtl = Data.ProtoLens.Field.field @"maybe'answerTtl"
maybe'clusterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clusterName" a) =>
  Lens.Family2.LensLike' f s a
maybe'clusterName = Data.ProtoLens.Field.field @"maybe'clusterName"
maybe'endpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endpoint" a) =>
  Lens.Family2.LensLike' f s a
maybe'endpoint = Data.ProtoLens.Field.field @"maybe'endpoint"
maybe'endpointConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endpointConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'endpointConfig
  = Data.ProtoLens.Field.field @"maybe'endpointConfig"
maybe'endpointType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endpointType" a) =>
  Lens.Family2.LensLike' f s a
maybe'endpointType
  = Data.ProtoLens.Field.field @"maybe'endpointType"
maybe'hostName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostName" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostName = Data.ProtoLens.Field.field @"maybe'hostName"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'number ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'number" a) =>
  Lens.Family2.LensLike' f s a
maybe'number = Data.ProtoLens.Field.field @"maybe'number"
maybe'protocol ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protocol" a) =>
  Lens.Family2.LensLike' f s a
maybe'protocol = Data.ProtoLens.Field.field @"maybe'protocol"
maybe'protocolConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protocolConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'protocolConfig
  = Data.ProtoLens.Field.field @"maybe'protocolConfig"
maybe'serviceList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'serviceList" a) =>
  Lens.Family2.LensLike' f s a
maybe'serviceList = Data.ProtoLens.Field.field @"maybe'serviceList"
maybe'ttl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ttl" a) =>
  Lens.Family2.LensLike' f s a
maybe'ttl = Data.ProtoLens.Field.field @"maybe'ttl"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
number ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "number" a) =>
  Lens.Family2.LensLike' f s a
number = Data.ProtoLens.Field.field @"number"
port ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "port" a) =>
  Lens.Family2.LensLike' f s a
port = Data.ProtoLens.Field.field @"port"
priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priority" a) =>
  Lens.Family2.LensLike' f s a
priority = Data.ProtoLens.Field.field @"priority"
protocol ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocol" a) =>
  Lens.Family2.LensLike' f s a
protocol = Data.ProtoLens.Field.field @"protocol"
serviceList ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serviceList" a) =>
  Lens.Family2.LensLike' f s a
serviceList = Data.ProtoLens.Field.field @"serviceList"
serviceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serviceName" a) =>
  Lens.Family2.LensLike' f s a
serviceName = Data.ProtoLens.Field.field @"serviceName"
services ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "services" a) =>
  Lens.Family2.LensLike' f s a
services = Data.ProtoLens.Field.field @"services"
targets ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "targets" a) =>
  Lens.Family2.LensLike' f s a
targets = Data.ProtoLens.Field.field @"targets"
ttl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ttl" a) =>
  Lens.Family2.LensLike' f s a
ttl = Data.ProtoLens.Field.field @"ttl"
vec'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'address" a) =>
  Lens.Family2.LensLike' f s a
vec'address = Data.ProtoLens.Field.field @"vec'address"
vec'knownSuffixes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'knownSuffixes" a) =>
  Lens.Family2.LensLike' f s a
vec'knownSuffixes = Data.ProtoLens.Field.field @"vec'knownSuffixes"
vec'services ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'services" a) =>
  Lens.Family2.LensLike' f s a
vec'services = Data.ProtoLens.Field.field @"vec'services"
vec'targets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'targets" a) =>
  Lens.Family2.LensLike' f s a
vec'targets = Data.ProtoLens.Field.field @"vec'targets"
vec'virtualDomains ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'virtualDomains" a) =>
  Lens.Family2.LensLike' f s a
vec'virtualDomains
  = Data.ProtoLens.Field.field @"vec'virtualDomains"
virtualDomains ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "virtualDomains" a) =>
  Lens.Family2.LensLike' f s a
virtualDomains = Data.ProtoLens.Field.field @"virtualDomains"
weight ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "weight" a) =>
  Lens.Family2.LensLike' f s a
weight = Data.ProtoLens.Field.field @"weight"