{- This file was auto-generated from envoy/config/listener/v3/listener_components.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Listener.V3.ListenerComponents_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Type.V3.Range
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
addressSuffix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "addressSuffix" a) =>
  Lens.Family2.LensLike' f s a
addressSuffix = Data.ProtoLens.Field.field @"addressSuffix"
andMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "andMatch" a) =>
  Lens.Family2.LensLike' f s a
andMatch = Data.ProtoLens.Field.field @"andMatch"
anyMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "anyMatch" a) =>
  Lens.Family2.LensLike' f s a
anyMatch = Data.ProtoLens.Field.field @"anyMatch"
applicationProtocols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "applicationProtocols" a) =>
  Lens.Family2.LensLike' f s a
applicationProtocols
  = Data.ProtoLens.Field.field @"applicationProtocols"
configDiscovery ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "configDiscovery" a) =>
  Lens.Family2.LensLike' f s a
configDiscovery = Data.ProtoLens.Field.field @"configDiscovery"
destinationPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "destinationPort" a) =>
  Lens.Family2.LensLike' f s a
destinationPort = Data.ProtoLens.Field.field @"destinationPort"
destinationPortRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "destinationPortRange" a) =>
  Lens.Family2.LensLike' f s a
destinationPortRange
  = Data.ProtoLens.Field.field @"destinationPortRange"
directSourcePrefixRanges ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "directSourcePrefixRanges" a) =>
  Lens.Family2.LensLike' f s a
directSourcePrefixRanges
  = Data.ProtoLens.Field.field @"directSourcePrefixRanges"
filterChainMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterChainMatch" a) =>
  Lens.Family2.LensLike' f s a
filterChainMatch = Data.ProtoLens.Field.field @"filterChainMatch"
filterDisabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterDisabled" a) =>
  Lens.Family2.LensLike' f s a
filterDisabled = Data.ProtoLens.Field.field @"filterDisabled"
filters ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "filters" a) =>
  Lens.Family2.LensLike' f s a
filters = Data.ProtoLens.Field.field @"filters"
maybe'andMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'andMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'andMatch = Data.ProtoLens.Field.field @"maybe'andMatch"
maybe'anyMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'anyMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'anyMatch = Data.ProtoLens.Field.field @"maybe'anyMatch"
maybe'configDiscovery ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configDiscovery" a) =>
  Lens.Family2.LensLike' f s a
maybe'configDiscovery
  = Data.ProtoLens.Field.field @"maybe'configDiscovery"
maybe'configType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configType" a) =>
  Lens.Family2.LensLike' f s a
maybe'configType = Data.ProtoLens.Field.field @"maybe'configType"
maybe'destinationPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'destinationPort" a) =>
  Lens.Family2.LensLike' f s a
maybe'destinationPort
  = Data.ProtoLens.Field.field @"maybe'destinationPort"
maybe'destinationPortRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'destinationPortRange" a) =>
  Lens.Family2.LensLike' f s a
maybe'destinationPortRange
  = Data.ProtoLens.Field.field @"maybe'destinationPortRange"
maybe'filterChainMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterChainMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterChainMatch
  = Data.ProtoLens.Field.field @"maybe'filterChainMatch"
maybe'filterDisabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterDisabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterDisabled
  = Data.ProtoLens.Field.field @"maybe'filterDisabled"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
maybe'notMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'notMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'notMatch = Data.ProtoLens.Field.field @"maybe'notMatch"
maybe'onDemandConfiguration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'onDemandConfiguration" a) =>
  Lens.Family2.LensLike' f s a
maybe'onDemandConfiguration
  = Data.ProtoLens.Field.field @"maybe'onDemandConfiguration"
maybe'orMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'orMatch" a) =>
  Lens.Family2.LensLike' f s a
maybe'orMatch = Data.ProtoLens.Field.field @"maybe'orMatch"
maybe'rebuildTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rebuildTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'rebuildTimeout
  = Data.ProtoLens.Field.field @"maybe'rebuildTimeout"
maybe'rule ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rule" a) =>
  Lens.Family2.LensLike' f s a
maybe'rule = Data.ProtoLens.Field.field @"maybe'rule"
maybe'suffixLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'suffixLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'suffixLen = Data.ProtoLens.Field.field @"maybe'suffixLen"
maybe'transportSocket ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'transportSocket" a) =>
  Lens.Family2.LensLike' f s a
maybe'transportSocket
  = Data.ProtoLens.Field.field @"maybe'transportSocket"
maybe'transportSocketConnectTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'transportSocketConnectTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'transportSocketConnectTimeout
  = Data.ProtoLens.Field.field @"maybe'transportSocketConnectTimeout"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
maybe'useProxyProto ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'useProxyProto" a) =>
  Lens.Family2.LensLike' f s a
maybe'useProxyProto
  = Data.ProtoLens.Field.field @"maybe'useProxyProto"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
notMatch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "notMatch" a) =>
  Lens.Family2.LensLike' f s a
notMatch = Data.ProtoLens.Field.field @"notMatch"
onDemandConfiguration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "onDemandConfiguration" a) =>
  Lens.Family2.LensLike' f s a
onDemandConfiguration
  = Data.ProtoLens.Field.field @"onDemandConfiguration"
orMatch ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "orMatch" a) =>
  Lens.Family2.LensLike' f s a
orMatch = Data.ProtoLens.Field.field @"orMatch"
prefixRanges ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prefixRanges" a) =>
  Lens.Family2.LensLike' f s a
prefixRanges = Data.ProtoLens.Field.field @"prefixRanges"
rebuildTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rebuildTimeout" a) =>
  Lens.Family2.LensLike' f s a
rebuildTimeout = Data.ProtoLens.Field.field @"rebuildTimeout"
rules ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rules" a) =>
  Lens.Family2.LensLike' f s a
rules = Data.ProtoLens.Field.field @"rules"
serverNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "serverNames" a) =>
  Lens.Family2.LensLike' f s a
serverNames = Data.ProtoLens.Field.field @"serverNames"
sourcePorts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourcePorts" a) =>
  Lens.Family2.LensLike' f s a
sourcePorts = Data.ProtoLens.Field.field @"sourcePorts"
sourcePrefixRanges ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourcePrefixRanges" a) =>
  Lens.Family2.LensLike' f s a
sourcePrefixRanges
  = Data.ProtoLens.Field.field @"sourcePrefixRanges"
sourceType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceType" a) =>
  Lens.Family2.LensLike' f s a
sourceType = Data.ProtoLens.Field.field @"sourceType"
suffixLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "suffixLen" a) =>
  Lens.Family2.LensLike' f s a
suffixLen = Data.ProtoLens.Field.field @"suffixLen"
transportProtocol ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transportProtocol" a) =>
  Lens.Family2.LensLike' f s a
transportProtocol = Data.ProtoLens.Field.field @"transportProtocol"
transportSocket ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transportSocket" a) =>
  Lens.Family2.LensLike' f s a
transportSocket = Data.ProtoLens.Field.field @"transportSocket"
transportSocketConnectTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transportSocketConnectTimeout" a) =>
  Lens.Family2.LensLike' f s a
transportSocketConnectTimeout
  = Data.ProtoLens.Field.field @"transportSocketConnectTimeout"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
useProxyProto ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useProxyProto" a) =>
  Lens.Family2.LensLike' f s a
useProxyProto = Data.ProtoLens.Field.field @"useProxyProto"
vec'applicationProtocols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'applicationProtocols" a) =>
  Lens.Family2.LensLike' f s a
vec'applicationProtocols
  = Data.ProtoLens.Field.field @"vec'applicationProtocols"
vec'directSourcePrefixRanges ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'directSourcePrefixRanges" a) =>
  Lens.Family2.LensLike' f s a
vec'directSourcePrefixRanges
  = Data.ProtoLens.Field.field @"vec'directSourcePrefixRanges"
vec'filters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'filters" a) =>
  Lens.Family2.LensLike' f s a
vec'filters = Data.ProtoLens.Field.field @"vec'filters"
vec'prefixRanges ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'prefixRanges" a) =>
  Lens.Family2.LensLike' f s a
vec'prefixRanges = Data.ProtoLens.Field.field @"vec'prefixRanges"
vec'rules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'rules" a) =>
  Lens.Family2.LensLike' f s a
vec'rules = Data.ProtoLens.Field.field @"vec'rules"
vec'serverNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'serverNames" a) =>
  Lens.Family2.LensLike' f s a
vec'serverNames = Data.ProtoLens.Field.field @"vec'serverNames"
vec'sourcePorts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'sourcePorts" a) =>
  Lens.Family2.LensLike' f s a
vec'sourcePorts = Data.ProtoLens.Field.field @"vec'sourcePorts"
vec'sourcePrefixRanges ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'sourcePrefixRanges" a) =>
  Lens.Family2.LensLike' f s a
vec'sourcePrefixRanges
  = Data.ProtoLens.Field.field @"vec'sourcePrefixRanges"