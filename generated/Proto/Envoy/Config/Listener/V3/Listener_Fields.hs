{- This file was auto-generated from envoy/config/listener/v3/listener.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Listener.V3.Listener_Fields where
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
import qualified Proto.Envoy.Config.Accesslog.V3.Accesslog
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.SocketOption
import qualified Proto.Envoy.Config.Listener.V3.ApiListener
import qualified Proto.Envoy.Config.Listener.V3.ListenerComponents
import qualified Proto.Envoy.Config.Listener.V3.UdpListenerConfig
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Security
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
import qualified Proto.Xds.Core.V3.CollectionEntry
accessLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "accessLog" a) =>
  Lens.Family2.LensLike' f s a
accessLog = Data.ProtoLens.Field.field @"accessLog"
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
apiListener ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "apiListener" a) =>
  Lens.Family2.LensLike' f s a
apiListener = Data.ProtoLens.Field.field @"apiListener"
bindToPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bindToPort" a) =>
  Lens.Family2.LensLike' f s a
bindToPort = Data.ProtoLens.Field.field @"bindToPort"
connectionBalanceConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "connectionBalanceConfig" a) =>
  Lens.Family2.LensLike' f s a
connectionBalanceConfig
  = Data.ProtoLens.Field.field @"connectionBalanceConfig"
continueOnListenerFiltersTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "continueOnListenerFiltersTimeout" a) =>
  Lens.Family2.LensLike' f s a
continueOnListenerFiltersTimeout
  = Data.ProtoLens.Field.field @"continueOnListenerFiltersTimeout"
defaultFilterChain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "defaultFilterChain" a) =>
  Lens.Family2.LensLike' f s a
defaultFilterChain
  = Data.ProtoLens.Field.field @"defaultFilterChain"
deprecatedV1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deprecatedV1" a) =>
  Lens.Family2.LensLike' f s a
deprecatedV1 = Data.ProtoLens.Field.field @"deprecatedV1"
drainType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drainType" a) =>
  Lens.Family2.LensLike' f s a
drainType = Data.ProtoLens.Field.field @"drainType"
entries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "entries" a) =>
  Lens.Family2.LensLike' f s a
entries = Data.ProtoLens.Field.field @"entries"
exactBalance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exactBalance" a) =>
  Lens.Family2.LensLike' f s a
exactBalance = Data.ProtoLens.Field.field @"exactBalance"
filterChains ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterChains" a) =>
  Lens.Family2.LensLike' f s a
filterChains = Data.ProtoLens.Field.field @"filterChains"
freebind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "freebind" a) =>
  Lens.Family2.LensLike' f s a
freebind = Data.ProtoLens.Field.field @"freebind"
internalListener ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "internalListener" a) =>
  Lens.Family2.LensLike' f s a
internalListener = Data.ProtoLens.Field.field @"internalListener"
listenerFilters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listenerFilters" a) =>
  Lens.Family2.LensLike' f s a
listenerFilters = Data.ProtoLens.Field.field @"listenerFilters"
listenerFiltersTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "listenerFiltersTimeout" a) =>
  Lens.Family2.LensLike' f s a
listenerFiltersTimeout
  = Data.ProtoLens.Field.field @"listenerFiltersTimeout"
maybe'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'address" a) =>
  Lens.Family2.LensLike' f s a
maybe'address = Data.ProtoLens.Field.field @"maybe'address"
maybe'apiListener ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'apiListener" a) =>
  Lens.Family2.LensLike' f s a
maybe'apiListener = Data.ProtoLens.Field.field @"maybe'apiListener"
maybe'balanceType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'balanceType" a) =>
  Lens.Family2.LensLike' f s a
maybe'balanceType = Data.ProtoLens.Field.field @"maybe'balanceType"
maybe'bindToPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bindToPort" a) =>
  Lens.Family2.LensLike' f s a
maybe'bindToPort = Data.ProtoLens.Field.field @"maybe'bindToPort"
maybe'connectionBalanceConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'connectionBalanceConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'connectionBalanceConfig
  = Data.ProtoLens.Field.field @"maybe'connectionBalanceConfig"
maybe'defaultFilterChain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'defaultFilterChain" a) =>
  Lens.Family2.LensLike' f s a
maybe'defaultFilterChain
  = Data.ProtoLens.Field.field @"maybe'defaultFilterChain"
maybe'deprecatedV1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'deprecatedV1" a) =>
  Lens.Family2.LensLike' f s a
maybe'deprecatedV1
  = Data.ProtoLens.Field.field @"maybe'deprecatedV1"
maybe'exactBalance ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'exactBalance" a) =>
  Lens.Family2.LensLike' f s a
maybe'exactBalance
  = Data.ProtoLens.Field.field @"maybe'exactBalance"
maybe'freebind ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'freebind" a) =>
  Lens.Family2.LensLike' f s a
maybe'freebind = Data.ProtoLens.Field.field @"maybe'freebind"
maybe'internalListener ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'internalListener" a) =>
  Lens.Family2.LensLike' f s a
maybe'internalListener
  = Data.ProtoLens.Field.field @"maybe'internalListener"
maybe'listenerFiltersTimeout ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listenerFiltersTimeout" a) =>
  Lens.Family2.LensLike' f s a
maybe'listenerFiltersTimeout
  = Data.ProtoLens.Field.field @"maybe'listenerFiltersTimeout"
maybe'listenerSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'listenerSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'listenerSpecifier
  = Data.ProtoLens.Field.field @"maybe'listenerSpecifier"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
maybe'perConnectionBufferLimitBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'perConnectionBufferLimitBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'perConnectionBufferLimitBytes
  = Data.ProtoLens.Field.field @"maybe'perConnectionBufferLimitBytes"
maybe'tcpBacklogSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tcpBacklogSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'tcpBacklogSize
  = Data.ProtoLens.Field.field @"maybe'tcpBacklogSize"
maybe'tcpFastOpenQueueLength ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tcpFastOpenQueueLength" a) =>
  Lens.Family2.LensLike' f s a
maybe'tcpFastOpenQueueLength
  = Data.ProtoLens.Field.field @"maybe'tcpFastOpenQueueLength"
maybe'transparent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'transparent" a) =>
  Lens.Family2.LensLike' f s a
maybe'transparent = Data.ProtoLens.Field.field @"maybe'transparent"
maybe'udpListenerConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'udpListenerConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'udpListenerConfig
  = Data.ProtoLens.Field.field @"maybe'udpListenerConfig"
maybe'useOriginalDst ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'useOriginalDst" a) =>
  Lens.Family2.LensLike' f s a
maybe'useOriginalDst
  = Data.ProtoLens.Field.field @"maybe'useOriginalDst"
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
perConnectionBufferLimitBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "perConnectionBufferLimitBytes" a) =>
  Lens.Family2.LensLike' f s a
perConnectionBufferLimitBytes
  = Data.ProtoLens.Field.field @"perConnectionBufferLimitBytes"
reusePort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "reusePort" a) =>
  Lens.Family2.LensLike' f s a
reusePort = Data.ProtoLens.Field.field @"reusePort"
socketOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "socketOptions" a) =>
  Lens.Family2.LensLike' f s a
socketOptions = Data.ProtoLens.Field.field @"socketOptions"
statPrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "statPrefix" a) =>
  Lens.Family2.LensLike' f s a
statPrefix = Data.ProtoLens.Field.field @"statPrefix"
tcpBacklogSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tcpBacklogSize" a) =>
  Lens.Family2.LensLike' f s a
tcpBacklogSize = Data.ProtoLens.Field.field @"tcpBacklogSize"
tcpFastOpenQueueLength ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tcpFastOpenQueueLength" a) =>
  Lens.Family2.LensLike' f s a
tcpFastOpenQueueLength
  = Data.ProtoLens.Field.field @"tcpFastOpenQueueLength"
trafficDirection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trafficDirection" a) =>
  Lens.Family2.LensLike' f s a
trafficDirection = Data.ProtoLens.Field.field @"trafficDirection"
transparent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transparent" a) =>
  Lens.Family2.LensLike' f s a
transparent = Data.ProtoLens.Field.field @"transparent"
udpListenerConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "udpListenerConfig" a) =>
  Lens.Family2.LensLike' f s a
udpListenerConfig = Data.ProtoLens.Field.field @"udpListenerConfig"
useOriginalDst ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useOriginalDst" a) =>
  Lens.Family2.LensLike' f s a
useOriginalDst = Data.ProtoLens.Field.field @"useOriginalDst"
vec'accessLog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'accessLog" a) =>
  Lens.Family2.LensLike' f s a
vec'accessLog = Data.ProtoLens.Field.field @"vec'accessLog"
vec'entries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'entries" a) =>
  Lens.Family2.LensLike' f s a
vec'entries = Data.ProtoLens.Field.field @"vec'entries"
vec'filterChains ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'filterChains" a) =>
  Lens.Family2.LensLike' f s a
vec'filterChains = Data.ProtoLens.Field.field @"vec'filterChains"
vec'listenerFilters ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'listenerFilters" a) =>
  Lens.Family2.LensLike' f s a
vec'listenerFilters
  = Data.ProtoLens.Field.field @"vec'listenerFilters"
vec'socketOptions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'socketOptions" a) =>
  Lens.Family2.LensLike' f s a
vec'socketOptions = Data.ProtoLens.Field.field @"vec'socketOptions"