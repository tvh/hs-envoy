{- This file was auto-generated from envoy/config/listener/v3/listener.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Listener.V3.Listener (
        Listener(), Listener'ListenerSpecifier(..),
        _Listener'InternalListener, Listener'ConnectionBalanceConfig(),
        Listener'ConnectionBalanceConfig'BalanceType(..),
        _Listener'ConnectionBalanceConfig'ExactBalance',
        Listener'ConnectionBalanceConfig'ExactBalance(),
        Listener'DeprecatedV1(), Listener'DrainType(..),
        Listener'DrainType(), Listener'DrainType'UnrecognizedValue,
        Listener'InternalListenerConfig(), ListenerCollection()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
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
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.name' @:: Lens' Listener Data.Text.Text@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.address' @:: Lens' Listener Proto.Envoy.Config.Core.V3.Address.Address@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'address' @:: Lens' Listener (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.statPrefix' @:: Lens' Listener Data.Text.Text@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.filterChains' @:: Lens' Listener [Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain]@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.vec'filterChains' @:: Lens' Listener (Data.Vector.Vector Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.useOriginalDst' @:: Lens' Listener Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'useOriginalDst' @:: Lens' Listener (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.defaultFilterChain' @:: Lens' Listener Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'defaultFilterChain' @:: Lens' Listener (Prelude.Maybe Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.perConnectionBufferLimitBytes' @:: Lens' Listener Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'perConnectionBufferLimitBytes' @:: Lens' Listener (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.metadata' @:: Lens' Listener Proto.Envoy.Config.Core.V3.Base.Metadata@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'metadata' @:: Lens' Listener (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.deprecatedV1' @:: Lens' Listener Listener'DeprecatedV1@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'deprecatedV1' @:: Lens' Listener (Prelude.Maybe Listener'DeprecatedV1)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.drainType' @:: Lens' Listener Listener'DrainType@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.listenerFilters' @:: Lens' Listener [Proto.Envoy.Config.Listener.V3.ListenerComponents.ListenerFilter]@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.vec'listenerFilters' @:: Lens' Listener (Data.Vector.Vector Proto.Envoy.Config.Listener.V3.ListenerComponents.ListenerFilter)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.listenerFiltersTimeout' @:: Lens' Listener Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'listenerFiltersTimeout' @:: Lens' Listener (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.continueOnListenerFiltersTimeout' @:: Lens' Listener Prelude.Bool@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.transparent' @:: Lens' Listener Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'transparent' @:: Lens' Listener (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.freebind' @:: Lens' Listener Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'freebind' @:: Lens' Listener (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.socketOptions' @:: Lens' Listener [Proto.Envoy.Config.Core.V3.SocketOption.SocketOption]@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.vec'socketOptions' @:: Lens' Listener (Data.Vector.Vector Proto.Envoy.Config.Core.V3.SocketOption.SocketOption)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.tcpFastOpenQueueLength' @:: Lens' Listener Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'tcpFastOpenQueueLength' @:: Lens' Listener (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.trafficDirection' @:: Lens' Listener Proto.Envoy.Config.Core.V3.Base.TrafficDirection@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.udpListenerConfig' @:: Lens' Listener Proto.Envoy.Config.Listener.V3.UdpListenerConfig.UdpListenerConfig@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'udpListenerConfig' @:: Lens' Listener (Prelude.Maybe Proto.Envoy.Config.Listener.V3.UdpListenerConfig.UdpListenerConfig)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.apiListener' @:: Lens' Listener Proto.Envoy.Config.Listener.V3.ApiListener.ApiListener@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'apiListener' @:: Lens' Listener (Prelude.Maybe Proto.Envoy.Config.Listener.V3.ApiListener.ApiListener)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.connectionBalanceConfig' @:: Lens' Listener Listener'ConnectionBalanceConfig@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'connectionBalanceConfig' @:: Lens' Listener (Prelude.Maybe Listener'ConnectionBalanceConfig)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.reusePort' @:: Lens' Listener Prelude.Bool@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.accessLog' @:: Lens' Listener [Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog]@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.vec'accessLog' @:: Lens' Listener (Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.tcpBacklogSize' @:: Lens' Listener Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'tcpBacklogSize' @:: Lens' Listener (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.bindToPort' @:: Lens' Listener Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'bindToPort' @:: Lens' Listener (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'listenerSpecifier' @:: Lens' Listener (Prelude.Maybe Listener'ListenerSpecifier)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'internalListener' @:: Lens' Listener (Prelude.Maybe Listener'InternalListenerConfig)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.internalListener' @:: Lens' Listener Listener'InternalListenerConfig@ -}
data Listener
  = Listener'_constructor {_Listener'name :: !Data.Text.Text,
                           _Listener'address :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address),
                           _Listener'statPrefix :: !Data.Text.Text,
                           _Listener'filterChains :: !(Data.Vector.Vector Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain),
                           _Listener'useOriginalDst :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                           _Listener'defaultFilterChain :: !(Prelude.Maybe Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain),
                           _Listener'perConnectionBufferLimitBytes :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                           _Listener'metadata :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata),
                           _Listener'deprecatedV1 :: !(Prelude.Maybe Listener'DeprecatedV1),
                           _Listener'drainType :: !Listener'DrainType,
                           _Listener'listenerFilters :: !(Data.Vector.Vector Proto.Envoy.Config.Listener.V3.ListenerComponents.ListenerFilter),
                           _Listener'listenerFiltersTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                           _Listener'continueOnListenerFiltersTimeout :: !Prelude.Bool,
                           _Listener'transparent :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                           _Listener'freebind :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                           _Listener'socketOptions :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.SocketOption.SocketOption),
                           _Listener'tcpFastOpenQueueLength :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                           _Listener'trafficDirection :: !Proto.Envoy.Config.Core.V3.Base.TrafficDirection,
                           _Listener'udpListenerConfig :: !(Prelude.Maybe Proto.Envoy.Config.Listener.V3.UdpListenerConfig.UdpListenerConfig),
                           _Listener'apiListener :: !(Prelude.Maybe Proto.Envoy.Config.Listener.V3.ApiListener.ApiListener),
                           _Listener'connectionBalanceConfig :: !(Prelude.Maybe Listener'ConnectionBalanceConfig),
                           _Listener'reusePort :: !Prelude.Bool,
                           _Listener'accessLog :: !(Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog),
                           _Listener'tcpBacklogSize :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                           _Listener'bindToPort :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                           _Listener'listenerSpecifier :: !(Prelude.Maybe Listener'ListenerSpecifier),
                           _Listener'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Listener where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Listener'ListenerSpecifier
  = Listener'InternalListener !Listener'InternalListenerConfig
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Listener "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'name (\ x__ y__ -> x__ {_Listener'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "address" Proto.Envoy.Config.Core.V3.Address.Address where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'address (\ x__ y__ -> x__ {_Listener'address = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'address" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.Address) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'address (\ x__ y__ -> x__ {_Listener'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'statPrefix
           (\ x__ y__ -> x__ {_Listener'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "filterChains" [Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'filterChains
           (\ x__ y__ -> x__ {_Listener'filterChains = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Listener "vec'filterChains" (Data.Vector.Vector Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'filterChains
           (\ x__ y__ -> x__ {_Listener'filterChains = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "useOriginalDst" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'useOriginalDst
           (\ x__ y__ -> x__ {_Listener'useOriginalDst = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'useOriginalDst" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'useOriginalDst
           (\ x__ y__ -> x__ {_Listener'useOriginalDst = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "defaultFilterChain" Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'defaultFilterChain
           (\ x__ y__ -> x__ {_Listener'defaultFilterChain = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'defaultFilterChain" (Prelude.Maybe Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'defaultFilterChain
           (\ x__ y__ -> x__ {_Listener'defaultFilterChain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "perConnectionBufferLimitBytes" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'perConnectionBufferLimitBytes
           (\ x__ y__ -> x__ {_Listener'perConnectionBufferLimitBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'perConnectionBufferLimitBytes" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'perConnectionBufferLimitBytes
           (\ x__ y__ -> x__ {_Listener'perConnectionBufferLimitBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "metadata" Proto.Envoy.Config.Core.V3.Base.Metadata where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'metadata (\ x__ y__ -> x__ {_Listener'metadata = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'metadata" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Metadata) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'metadata (\ x__ y__ -> x__ {_Listener'metadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "deprecatedV1" Listener'DeprecatedV1 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'deprecatedV1
           (\ x__ y__ -> x__ {_Listener'deprecatedV1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'deprecatedV1" (Prelude.Maybe Listener'DeprecatedV1) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'deprecatedV1
           (\ x__ y__ -> x__ {_Listener'deprecatedV1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "drainType" Listener'DrainType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'drainType (\ x__ y__ -> x__ {_Listener'drainType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "listenerFilters" [Proto.Envoy.Config.Listener.V3.ListenerComponents.ListenerFilter] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'listenerFilters
           (\ x__ y__ -> x__ {_Listener'listenerFilters = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Listener "vec'listenerFilters" (Data.Vector.Vector Proto.Envoy.Config.Listener.V3.ListenerComponents.ListenerFilter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'listenerFilters
           (\ x__ y__ -> x__ {_Listener'listenerFilters = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "listenerFiltersTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'listenerFiltersTimeout
           (\ x__ y__ -> x__ {_Listener'listenerFiltersTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'listenerFiltersTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'listenerFiltersTimeout
           (\ x__ y__ -> x__ {_Listener'listenerFiltersTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "continueOnListenerFiltersTimeout" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'continueOnListenerFiltersTimeout
           (\ x__ y__
              -> x__ {_Listener'continueOnListenerFiltersTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "transparent" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'transparent
           (\ x__ y__ -> x__ {_Listener'transparent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'transparent" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'transparent
           (\ x__ y__ -> x__ {_Listener'transparent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "freebind" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'freebind (\ x__ y__ -> x__ {_Listener'freebind = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'freebind" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'freebind (\ x__ y__ -> x__ {_Listener'freebind = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "socketOptions" [Proto.Envoy.Config.Core.V3.SocketOption.SocketOption] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'socketOptions
           (\ x__ y__ -> x__ {_Listener'socketOptions = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Listener "vec'socketOptions" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.SocketOption.SocketOption) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'socketOptions
           (\ x__ y__ -> x__ {_Listener'socketOptions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "tcpFastOpenQueueLength" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'tcpFastOpenQueueLength
           (\ x__ y__ -> x__ {_Listener'tcpFastOpenQueueLength = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'tcpFastOpenQueueLength" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'tcpFastOpenQueueLength
           (\ x__ y__ -> x__ {_Listener'tcpFastOpenQueueLength = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "trafficDirection" Proto.Envoy.Config.Core.V3.Base.TrafficDirection where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'trafficDirection
           (\ x__ y__ -> x__ {_Listener'trafficDirection = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "udpListenerConfig" Proto.Envoy.Config.Listener.V3.UdpListenerConfig.UdpListenerConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'udpListenerConfig
           (\ x__ y__ -> x__ {_Listener'udpListenerConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'udpListenerConfig" (Prelude.Maybe Proto.Envoy.Config.Listener.V3.UdpListenerConfig.UdpListenerConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'udpListenerConfig
           (\ x__ y__ -> x__ {_Listener'udpListenerConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "apiListener" Proto.Envoy.Config.Listener.V3.ApiListener.ApiListener where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'apiListener
           (\ x__ y__ -> x__ {_Listener'apiListener = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'apiListener" (Prelude.Maybe Proto.Envoy.Config.Listener.V3.ApiListener.ApiListener) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'apiListener
           (\ x__ y__ -> x__ {_Listener'apiListener = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "connectionBalanceConfig" Listener'ConnectionBalanceConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'connectionBalanceConfig
           (\ x__ y__ -> x__ {_Listener'connectionBalanceConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'connectionBalanceConfig" (Prelude.Maybe Listener'ConnectionBalanceConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'connectionBalanceConfig
           (\ x__ y__ -> x__ {_Listener'connectionBalanceConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "reusePort" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'reusePort (\ x__ y__ -> x__ {_Listener'reusePort = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "accessLog" [Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'accessLog (\ x__ y__ -> x__ {_Listener'accessLog = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Listener "vec'accessLog" (Data.Vector.Vector Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'accessLog (\ x__ y__ -> x__ {_Listener'accessLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "tcpBacklogSize" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'tcpBacklogSize
           (\ x__ y__ -> x__ {_Listener'tcpBacklogSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'tcpBacklogSize" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'tcpBacklogSize
           (\ x__ y__ -> x__ {_Listener'tcpBacklogSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "bindToPort" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'bindToPort
           (\ x__ y__ -> x__ {_Listener'bindToPort = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener "maybe'bindToPort" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'bindToPort
           (\ x__ y__ -> x__ {_Listener'bindToPort = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "maybe'listenerSpecifier" (Prelude.Maybe Listener'ListenerSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'listenerSpecifier
           (\ x__ y__ -> x__ {_Listener'listenerSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener "maybe'internalListener" (Prelude.Maybe Listener'InternalListenerConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'listenerSpecifier
           (\ x__ y__ -> x__ {_Listener'listenerSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Listener'InternalListener x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Listener'InternalListener y__))
instance Data.ProtoLens.Field.HasField Listener "internalListener" Listener'InternalListenerConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'listenerSpecifier
           (\ x__ y__ -> x__ {_Listener'listenerSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Listener'InternalListener x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Listener'InternalListener y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Listener where
  messageName _ = Data.Text.pack "envoy.config.listener.v3.Listener"
  packedMessageDescriptor _
    = "\n\
      \\bListener\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2A\n\
      \\aaddress\CAN\STX \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddressB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\US\n\
      \\vstat_prefix\CAN\FS \SOH(\tR\n\
      \statPrefix\DC2J\n\
      \\rfilter_chains\CAN\ETX \ETX(\v2%.envoy.config.listener.v3.FilterChainR\ffilterChains\DC2D\n\
      \\DLEuse_original_dst\CAN\EOT \SOH(\v2\SUB.google.protobuf.BoolValueR\SOuseOriginalDst\DC2W\n\
      \\DC4default_filter_chain\CAN\EM \SOH(\v2%.envoy.config.listener.v3.FilterChainR\DC2defaultFilterChain\DC2o\n\
      \!per_connection_buffer_limit_bytes\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSperConnectionBufferLimitBytesB\a\138\147\183*\STX\b\SOH\DC2:\n\
      \\bmetadata\CAN\ACK \SOH(\v2\RS.envoy.config.core.v3.MetadataR\bmetadata\DC2a\n\
      \\rdeprecated_v1\CAN\a \SOH(\v2/.envoy.config.listener.v3.Listener.DeprecatedV1R\fdeprecatedV1B\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2K\n\
      \\n\
      \drain_type\CAN\b \SOH(\SO2,.envoy.config.listener.v3.Listener.DrainTypeR\tdrainType\DC2S\n\
      \\DLElistener_filters\CAN\t \ETX(\v2(.envoy.config.listener.v3.ListenerFilterR\SIlistenerFilters\DC2S\n\
      \\CANlistener_filters_timeout\CAN\SI \SOH(\v2\EM.google.protobuf.DurationR\SYNlistenerFiltersTimeout\DC2N\n\
      \$continue_on_listener_filters_timeout\CAN\DC1 \SOH(\bR continueOnListenerFiltersTimeout\DC2<\n\
      \\vtransparent\CAN\n\
      \ \SOH(\v2\SUB.google.protobuf.BoolValueR\vtransparent\DC26\n\
      \\bfreebind\CAN\v \SOH(\v2\SUB.google.protobuf.BoolValueR\bfreebind\DC2I\n\
      \\SOsocket_options\CAN\r \ETX(\v2\".envoy.config.core.v3.SocketOptionR\rsocketOptions\DC2X\n\
      \\SUBtcp_fast_open_queue_length\CAN\f \SOH(\v2\FS.google.protobuf.UInt32ValueR\SYNtcpFastOpenQueueLength\DC2S\n\
      \\DC1traffic_direction\CAN\DLE \SOH(\SO2&.envoy.config.core.v3.TrafficDirectionR\DLEtrafficDirection\DC2[\n\
      \\DC3udp_listener_config\CAN\DC2 \SOH(\v2+.envoy.config.listener.v3.UdpListenerConfigR\DC1udpListenerConfig\DC2H\n\
      \\fapi_listener\CAN\DC3 \SOH(\v2%.envoy.config.listener.v3.ApiListenerR\vapiListener\DC2v\n\
      \\EMconnection_balance_config\CAN\DC4 \SOH(\v2:.envoy.config.listener.v3.Listener.ConnectionBalanceConfigR\ETBconnectionBalanceConfig\DC2\GS\n\
      \\n\
      \reuse_port\CAN\NAK \SOH(\bR\treusePort\DC2C\n\
      \\n\
      \access_log\CAN\SYN \ETX(\v2$.envoy.config.accesslog.v3.AccessLogR\taccessLog\DC2F\n\
      \\DLEtcp_backlog_size\CAN\CAN \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOtcpBacklogSize\DC2<\n\
      \\fbind_to_port\CAN\SUB \SOH(\v2\SUB.google.protobuf.BoolValueR\n\
      \bindToPort\DC2h\n\
      \\DC1internal_listener\CAN\ESC \SOH(\v29.envoy.config.listener.v3.Listener.InternalListenerConfigH\NULR\DLEinternalListener\SUBw\n\
      \\fDeprecatedV1\DC2<\n\
      \\fbind_to_port\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\n\
      \bindToPort:)\154\197\136\RS$\n\
      \\"envoy.api.v2.Listener.DeprecatedV1\SUB\167\STX\n\
      \\ETBConnectionBalanceConfig\DC2n\n\
      \\rexact_balance\CAN\SOH \SOH(\v2G.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalanceH\NULR\fexactBalance\SUBQ\n\
      \\fExactBalance:A\154\197\136\RS<\n\
      \:envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalanceB\DC3\n\
      \\fbalance_type\DC2\ETX\248B\SOH:4\154\197\136\RS/\n\
      \-envoy.api.v2.Listener.ConnectionBalanceConfig\SUB\CAN\n\
      \\SYNInternalListenerConfig\")\n\
      \\tDrainType\DC2\v\n\
      \\aDEFAULT\DLE\NUL\DC2\SI\n\
      \\vMODIFY_ONLY\DLE\SOHB\DC4\n\
      \\DC2listener_specifier:\FS\154\197\136\RS\ETB\n\
      \\NAKenvoy.api.v2.ListenerJ\EOT\b\SO\DLE\SIJ\EOT\b\ETB\DLE\CAN"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Listener
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.Address)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'address")) ::
              Data.ProtoLens.FieldDescriptor Listener
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor Listener
        filterChains__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_chains"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"filterChains")) ::
              Data.ProtoLens.FieldDescriptor Listener
        useOriginalDst__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_original_dst"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'useOriginalDst")) ::
              Data.ProtoLens.FieldDescriptor Listener
        defaultFilterChain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "default_filter_chain"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'defaultFilterChain")) ::
              Data.ProtoLens.FieldDescriptor Listener
        perConnectionBufferLimitBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "per_connection_buffer_limit_bytes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'perConnectionBufferLimitBytes")) ::
              Data.ProtoLens.FieldDescriptor Listener
        metadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Metadata)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'metadata")) ::
              Data.ProtoLens.FieldDescriptor Listener
        deprecatedV1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "deprecated_v1"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Listener'DeprecatedV1)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deprecatedV1")) ::
              Data.ProtoLens.FieldDescriptor Listener
        drainType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "drain_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Listener'DrainType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"drainType")) ::
              Data.ProtoLens.FieldDescriptor Listener
        listenerFilters__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "listener_filters"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Listener.V3.ListenerComponents.ListenerFilter)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"listenerFilters")) ::
              Data.ProtoLens.FieldDescriptor Listener
        listenerFiltersTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "listener_filters_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'listenerFiltersTimeout")) ::
              Data.ProtoLens.FieldDescriptor Listener
        continueOnListenerFiltersTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "continue_on_listener_filters_timeout"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field
                    @"continueOnListenerFiltersTimeout")) ::
              Data.ProtoLens.FieldDescriptor Listener
        transparent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transparent"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'transparent")) ::
              Data.ProtoLens.FieldDescriptor Listener
        freebind__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "freebind"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'freebind")) ::
              Data.ProtoLens.FieldDescriptor Listener
        socketOptions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "socket_options"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.SocketOption.SocketOption)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"socketOptions")) ::
              Data.ProtoLens.FieldDescriptor Listener
        tcpFastOpenQueueLength__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tcp_fast_open_queue_length"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tcpFastOpenQueueLength")) ::
              Data.ProtoLens.FieldDescriptor Listener
        trafficDirection__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "traffic_direction"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.TrafficDirection)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"trafficDirection")) ::
              Data.ProtoLens.FieldDescriptor Listener
        udpListenerConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "udp_listener_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Listener.V3.UdpListenerConfig.UdpListenerConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'udpListenerConfig")) ::
              Data.ProtoLens.FieldDescriptor Listener
        apiListener__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "api_listener"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Listener.V3.ApiListener.ApiListener)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'apiListener")) ::
              Data.ProtoLens.FieldDescriptor Listener
        connectionBalanceConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "connection_balance_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Listener'ConnectionBalanceConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'connectionBalanceConfig")) ::
              Data.ProtoLens.FieldDescriptor Listener
        reusePort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reuse_port"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"reusePort")) ::
              Data.ProtoLens.FieldDescriptor Listener
        accessLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "access_log"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"accessLog")) ::
              Data.ProtoLens.FieldDescriptor Listener
        tcpBacklogSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tcp_backlog_size"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tcpBacklogSize")) ::
              Data.ProtoLens.FieldDescriptor Listener
        bindToPort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bind_to_port"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bindToPort")) ::
              Data.ProtoLens.FieldDescriptor Listener
        internalListener__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "internal_listener"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Listener'InternalListenerConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'internalListener")) ::
              Data.ProtoLens.FieldDescriptor Listener
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, address__field_descriptor),
           (Data.ProtoLens.Tag 28, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 3, filterChains__field_descriptor),
           (Data.ProtoLens.Tag 4, useOriginalDst__field_descriptor),
           (Data.ProtoLens.Tag 25, defaultFilterChain__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            perConnectionBufferLimitBytes__field_descriptor),
           (Data.ProtoLens.Tag 6, metadata__field_descriptor),
           (Data.ProtoLens.Tag 7, deprecatedV1__field_descriptor),
           (Data.ProtoLens.Tag 8, drainType__field_descriptor),
           (Data.ProtoLens.Tag 9, listenerFilters__field_descriptor),
           (Data.ProtoLens.Tag 15, listenerFiltersTimeout__field_descriptor),
           (Data.ProtoLens.Tag 17, 
            continueOnListenerFiltersTimeout__field_descriptor),
           (Data.ProtoLens.Tag 10, transparent__field_descriptor),
           (Data.ProtoLens.Tag 11, freebind__field_descriptor),
           (Data.ProtoLens.Tag 13, socketOptions__field_descriptor),
           (Data.ProtoLens.Tag 12, tcpFastOpenQueueLength__field_descriptor),
           (Data.ProtoLens.Tag 16, trafficDirection__field_descriptor),
           (Data.ProtoLens.Tag 18, udpListenerConfig__field_descriptor),
           (Data.ProtoLens.Tag 19, apiListener__field_descriptor),
           (Data.ProtoLens.Tag 20, connectionBalanceConfig__field_descriptor),
           (Data.ProtoLens.Tag 21, reusePort__field_descriptor),
           (Data.ProtoLens.Tag 22, accessLog__field_descriptor),
           (Data.ProtoLens.Tag 24, tcpBacklogSize__field_descriptor),
           (Data.ProtoLens.Tag 26, bindToPort__field_descriptor),
           (Data.ProtoLens.Tag 27, internalListener__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Listener'_unknownFields
        (\ x__ y__ -> x__ {_Listener'_unknownFields = y__})
  defMessage
    = Listener'_constructor
        {_Listener'name = Data.ProtoLens.fieldDefault,
         _Listener'address = Prelude.Nothing,
         _Listener'statPrefix = Data.ProtoLens.fieldDefault,
         _Listener'filterChains = Data.Vector.Generic.empty,
         _Listener'useOriginalDst = Prelude.Nothing,
         _Listener'defaultFilterChain = Prelude.Nothing,
         _Listener'perConnectionBufferLimitBytes = Prelude.Nothing,
         _Listener'metadata = Prelude.Nothing,
         _Listener'deprecatedV1 = Prelude.Nothing,
         _Listener'drainType = Data.ProtoLens.fieldDefault,
         _Listener'listenerFilters = Data.Vector.Generic.empty,
         _Listener'listenerFiltersTimeout = Prelude.Nothing,
         _Listener'continueOnListenerFiltersTimeout = Data.ProtoLens.fieldDefault,
         _Listener'transparent = Prelude.Nothing,
         _Listener'freebind = Prelude.Nothing,
         _Listener'socketOptions = Data.Vector.Generic.empty,
         _Listener'tcpFastOpenQueueLength = Prelude.Nothing,
         _Listener'trafficDirection = Data.ProtoLens.fieldDefault,
         _Listener'udpListenerConfig = Prelude.Nothing,
         _Listener'apiListener = Prelude.Nothing,
         _Listener'connectionBalanceConfig = Prelude.Nothing,
         _Listener'reusePort = Data.ProtoLens.fieldDefault,
         _Listener'accessLog = Data.Vector.Generic.empty,
         _Listener'tcpBacklogSize = Prelude.Nothing,
         _Listener'bindToPort = Prelude.Nothing,
         _Listener'listenerSpecifier = Prelude.Nothing,
         _Listener'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Listener
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Accesslog.V3.Accesslog.AccessLog
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Listener.V3.ListenerComponents.FilterChain
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Listener.V3.ListenerComponents.ListenerFilter
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.SocketOption.SocketOption
                      -> Data.ProtoLens.Encoding.Bytes.Parser Listener
        loop
          x
          mutable'accessLog
          mutable'filterChains
          mutable'listenerFilters
          mutable'socketOptions
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'accessLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'accessLog)
                      frozen'filterChains <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'filterChains)
                      frozen'listenerFilters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'listenerFilters)
                      frozen'socketOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'socketOptions)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'accessLog")
                              frozen'accessLog
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'filterChains")
                                 frozen'filterChains
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'listenerFilters")
                                    frozen'listenerFilters
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'socketOptions")
                                       frozen'socketOptions
                                       x)))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "address"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"address") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        226
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "filter_chains"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'filterChains y)
                                loop
                                  x
                                  mutable'accessLog
                                  v
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "use_original_dst"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"useOriginalDst") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        202
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "default_filter_chain"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"defaultFilterChain") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "per_connection_buffer_limit_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"perConnectionBufferLimitBytes")
                                     y
                                     x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "metadata"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"metadata") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "deprecated_v1"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"deprecatedV1") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "drain_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"drainType") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "listener_filters"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'listenerFilters y)
                                loop
                                  x mutable'accessLog mutable'filterChains v mutable'socketOptions
                        122
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "listener_filters_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"listenerFiltersTimeout") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "continue_on_listener_filters_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"continueOnListenerFiltersTimeout")
                                     y
                                     x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "transparent"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"transparent") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "freebind"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"freebind") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        106
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "socket_options"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'socketOptions y)
                                loop
                                  x mutable'accessLog mutable'filterChains mutable'listenerFilters v
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tcp_fast_open_queue_length"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tcpFastOpenQueueLength") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "traffic_direction"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"trafficDirection") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        146
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "udp_listener_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"udpListenerConfig") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "api_listener"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"apiListener") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        162
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "connection_balance_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"connectionBalanceConfig") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        168
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reuse_port"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"reusePort") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        178
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "access_log"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'accessLog y)
                                loop
                                  x
                                  v
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        194
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tcp_backlog_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tcpBacklogSize") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        210
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "bind_to_port"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bindToPort") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        218
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "internal_listener"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"internalListener") y x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'accessLog
                                  mutable'filterChains
                                  mutable'listenerFilters
                                  mutable'socketOptions
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'accessLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'filterChains <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'listenerFilters <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'socketOptions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'accessLog
                mutable'filterChains
                mutable'listenerFilters
                mutable'socketOptions)
          "Listener"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'address") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 226)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8
                               _v))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'filterChains") _x))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'useOriginalDst") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'defaultFilterChain") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 202)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field
                                         @"maybe'perConnectionBufferLimitBytes")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'metadata") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'deprecatedV1") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                               ((Prelude..)
                                                  (\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                  Data.ProtoLens.encodeMessage
                                                  _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"drainType") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                                 ((Prelude..)
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       Prelude.fromIntegral)
                                                    Prelude.fromEnum
                                                    _v))
                                        ((Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                              (\ _v
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                                      ((Prelude..)
                                                         (\ bs
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    (Prelude.fromIntegral
                                                                       (Data.ByteString.length bs)))
                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                    bs))
                                                         Data.ProtoLens.encodeMessage
                                                         _v))
                                              (Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"vec'listenerFilters")
                                                 _x))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'listenerFiltersTimeout")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           122)
                                                        ((Prelude..)
                                                           (\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                           Data.ProtoLens.encodeMessage
                                                           _v))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    _v
                                                      = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"continueOnListenerFiltersTimeout")
                                                          _x
                                                  in
                                                    if (Prelude.==)
                                                         _v Data.ProtoLens.fieldDefault then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             136)
                                                          ((Prelude..)
                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (\ b -> if b then 1 else 0)
                                                             _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'transparent")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 82)
                                                              ((Prelude..)
                                                                 (\ bs
                                                                    -> (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            (Prelude.fromIntegral
                                                                               (Data.ByteString.length
                                                                                  bs)))
                                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                            bs))
                                                                 Data.ProtoLens.encodeMessage
                                                                 _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'freebind")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    90)
                                                                 ((Prelude..)
                                                                    (\ bs
                                                                       -> (Data.Monoid.<>)
                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               (Prelude.fromIntegral
                                                                                  (Data.ByteString.length
                                                                                     bs)))
                                                                            (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                               bs))
                                                                    Data.ProtoLens.encodeMessage
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                             (\ _v
                                                                -> (Data.Monoid.<>)
                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                        106)
                                                                     ((Prelude..)
                                                                        (\ bs
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   (Prelude.fromIntegral
                                                                                      (Data.ByteString.length
                                                                                         bs)))
                                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                   bs))
                                                                        Data.ProtoLens.encodeMessage
                                                                        _v))
                                                             (Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"vec'socketOptions")
                                                                _x))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'tcpFastOpenQueueLength")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          98)
                                                                       ((Prelude..)
                                                                          (\ bs
                                                                             -> (Data.Monoid.<>)
                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                     (Prelude.fromIntegral
                                                                                        (Data.ByteString.length
                                                                                           bs)))
                                                                                  (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                     bs))
                                                                          Data.ProtoLens.encodeMessage
                                                                          _v))
                                                             ((Data.Monoid.<>)
                                                                (let
                                                                   _v
                                                                     = Lens.Family2.view
                                                                         (Data.ProtoLens.Field.field
                                                                            @"trafficDirection")
                                                                         _x
                                                                 in
                                                                   if (Prelude.==)
                                                                        _v
                                                                        Data.ProtoLens.fieldDefault then
                                                                       Data.Monoid.mempty
                                                                   else
                                                                       (Data.Monoid.<>)
                                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                            128)
                                                                         ((Prelude..)
                                                                            ((Prelude..)
                                                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                               Prelude.fromIntegral)
                                                                            Prelude.fromEnum
                                                                            _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'udpListenerConfig")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                146)
                                                                             ((Prelude..)
                                                                                (\ bs
                                                                                   -> (Data.Monoid.<>)
                                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                           (Prelude.fromIntegral
                                                                                              (Data.ByteString.length
                                                                                                 bs)))
                                                                                        (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                           bs))
                                                                                Data.ProtoLens.encodeMessage
                                                                                _v))
                                                                   ((Data.Monoid.<>)
                                                                      (case
                                                                           Lens.Family2.view
                                                                             (Data.ProtoLens.Field.field
                                                                                @"maybe'apiListener")
                                                                             _x
                                                                       of
                                                                         Prelude.Nothing
                                                                           -> Data.Monoid.mempty
                                                                         (Prelude.Just _v)
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   154)
                                                                                ((Prelude..)
                                                                                   (\ bs
                                                                                      -> (Data.Monoid.<>)
                                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                              (Prelude.fromIntegral
                                                                                                 (Data.ByteString.length
                                                                                                    bs)))
                                                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                              bs))
                                                                                   Data.ProtoLens.encodeMessage
                                                                                   _v))
                                                                      ((Data.Monoid.<>)
                                                                         (case
                                                                              Lens.Family2.view
                                                                                (Data.ProtoLens.Field.field
                                                                                   @"maybe'connectionBalanceConfig")
                                                                                _x
                                                                          of
                                                                            Prelude.Nothing
                                                                              -> Data.Monoid.mempty
                                                                            (Prelude.Just _v)
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      162)
                                                                                   ((Prelude..)
                                                                                      (\ bs
                                                                                         -> (Data.Monoid.<>)
                                                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                 (Prelude.fromIntegral
                                                                                                    (Data.ByteString.length
                                                                                                       bs)))
                                                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                 bs))
                                                                                      Data.ProtoLens.encodeMessage
                                                                                      _v))
                                                                         ((Data.Monoid.<>)
                                                                            (let
                                                                               _v
                                                                                 = Lens.Family2.view
                                                                                     (Data.ProtoLens.Field.field
                                                                                        @"reusePort")
                                                                                     _x
                                                                             in
                                                                               if (Prelude.==)
                                                                                    _v
                                                                                    Data.ProtoLens.fieldDefault then
                                                                                   Data.Monoid.mempty
                                                                               else
                                                                                   (Data.Monoid.<>)
                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        168)
                                                                                     ((Prelude..)
                                                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                        (\ b
                                                                                           -> if b then
                                                                                                  1
                                                                                              else
                                                                                                  0)
                                                                                        _v))
                                                                            ((Data.Monoid.<>)
                                                                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                                  (\ _v
                                                                                     -> (Data.Monoid.<>)
                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                             178)
                                                                                          ((Prelude..)
                                                                                             (\ bs
                                                                                                -> (Data.Monoid.<>)
                                                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                        (Prelude.fromIntegral
                                                                                                           (Data.ByteString.length
                                                                                                              bs)))
                                                                                                     (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                        bs))
                                                                                             Data.ProtoLens.encodeMessage
                                                                                             _v))
                                                                                  (Lens.Family2.view
                                                                                     (Data.ProtoLens.Field.field
                                                                                        @"vec'accessLog")
                                                                                     _x))
                                                                               ((Data.Monoid.<>)
                                                                                  (case
                                                                                       Lens.Family2.view
                                                                                         (Data.ProtoLens.Field.field
                                                                                            @"maybe'tcpBacklogSize")
                                                                                         _x
                                                                                   of
                                                                                     Prelude.Nothing
                                                                                       -> Data.Monoid.mempty
                                                                                     (Prelude.Just _v)
                                                                                       -> (Data.Monoid.<>)
                                                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                               194)
                                                                                            ((Prelude..)
                                                                                               (\ bs
                                                                                                  -> (Data.Monoid.<>)
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                          (Prelude.fromIntegral
                                                                                                             (Data.ByteString.length
                                                                                                                bs)))
                                                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                          bs))
                                                                                               Data.ProtoLens.encodeMessage
                                                                                               _v))
                                                                                  ((Data.Monoid.<>)
                                                                                     (case
                                                                                          Lens.Family2.view
                                                                                            (Data.ProtoLens.Field.field
                                                                                               @"maybe'bindToPort")
                                                                                            _x
                                                                                      of
                                                                                        Prelude.Nothing
                                                                                          -> Data.Monoid.mempty
                                                                                        (Prelude.Just _v)
                                                                                          -> (Data.Monoid.<>)
                                                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                  210)
                                                                                               ((Prelude..)
                                                                                                  (\ bs
                                                                                                     -> (Data.Monoid.<>)
                                                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                             (Prelude.fromIntegral
                                                                                                                (Data.ByteString.length
                                                                                                                   bs)))
                                                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                             bs))
                                                                                                  Data.ProtoLens.encodeMessage
                                                                                                  _v))
                                                                                     ((Data.Monoid.<>)
                                                                                        (case
                                                                                             Lens.Family2.view
                                                                                               (Data.ProtoLens.Field.field
                                                                                                  @"maybe'listenerSpecifier")
                                                                                               _x
                                                                                         of
                                                                                           Prelude.Nothing
                                                                                             -> Data.Monoid.mempty
                                                                                           (Prelude.Just (Listener'InternalListener v))
                                                                                             -> (Data.Monoid.<>)
                                                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                     218)
                                                                                                  ((Prelude..)
                                                                                                     (\ bs
                                                                                                        -> (Data.Monoid.<>)
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                                                (Prelude.fromIntegral
                                                                                                                   (Data.ByteString.length
                                                                                                                      bs)))
                                                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                                                bs))
                                                                                                     Data.ProtoLens.encodeMessage
                                                                                                     v))
                                                                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                                           (Lens.Family2.view
                                                                                              Data.ProtoLens.unknownFields
                                                                                              _x)))))))))))))))))))))))))))
instance Control.DeepSeq.NFData Listener where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Listener'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Listener'name x__)
                (Control.DeepSeq.deepseq
                   (_Listener'address x__)
                   (Control.DeepSeq.deepseq
                      (_Listener'statPrefix x__)
                      (Control.DeepSeq.deepseq
                         (_Listener'filterChains x__)
                         (Control.DeepSeq.deepseq
                            (_Listener'useOriginalDst x__)
                            (Control.DeepSeq.deepseq
                               (_Listener'defaultFilterChain x__)
                               (Control.DeepSeq.deepseq
                                  (_Listener'perConnectionBufferLimitBytes x__)
                                  (Control.DeepSeq.deepseq
                                     (_Listener'metadata x__)
                                     (Control.DeepSeq.deepseq
                                        (_Listener'deprecatedV1 x__)
                                        (Control.DeepSeq.deepseq
                                           (_Listener'drainType x__)
                                           (Control.DeepSeq.deepseq
                                              (_Listener'listenerFilters x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Listener'listenerFiltersTimeout x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Listener'continueOnListenerFiltersTimeout x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Listener'transparent x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Listener'freebind x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_Listener'socketOptions x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_Listener'tcpFastOpenQueueLength
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_Listener'trafficDirection x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_Listener'udpListenerConfig
                                                                         x__)
                                                                      (Control.DeepSeq.deepseq
                                                                         (_Listener'apiListener x__)
                                                                         (Control.DeepSeq.deepseq
                                                                            (_Listener'connectionBalanceConfig
                                                                               x__)
                                                                            (Control.DeepSeq.deepseq
                                                                               (_Listener'reusePort
                                                                                  x__)
                                                                               (Control.DeepSeq.deepseq
                                                                                  (_Listener'accessLog
                                                                                     x__)
                                                                                  (Control.DeepSeq.deepseq
                                                                                     (_Listener'tcpBacklogSize
                                                                                        x__)
                                                                                     (Control.DeepSeq.deepseq
                                                                                        (_Listener'bindToPort
                                                                                           x__)
                                                                                        (Control.DeepSeq.deepseq
                                                                                           (_Listener'listenerSpecifier
                                                                                              x__)
                                                                                           ()))))))))))))))))))))))))))
instance Control.DeepSeq.NFData Listener'ListenerSpecifier where
  rnf (Listener'InternalListener x__) = Control.DeepSeq.rnf x__
_Listener'InternalListener ::
  Data.ProtoLens.Prism.Prism' Listener'ListenerSpecifier Listener'InternalListenerConfig
_Listener'InternalListener
  = Data.ProtoLens.Prism.prism'
      Listener'InternalListener
      (\ p__
         -> case p__ of {
              (Listener'InternalListener p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'balanceType' @:: Lens' Listener'ConnectionBalanceConfig (Prelude.Maybe Listener'ConnectionBalanceConfig'BalanceType)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'exactBalance' @:: Lens' Listener'ConnectionBalanceConfig (Prelude.Maybe Listener'ConnectionBalanceConfig'ExactBalance)@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.exactBalance' @:: Lens' Listener'ConnectionBalanceConfig Listener'ConnectionBalanceConfig'ExactBalance@ -}
data Listener'ConnectionBalanceConfig
  = Listener'ConnectionBalanceConfig'_constructor {_Listener'ConnectionBalanceConfig'balanceType :: !(Prelude.Maybe Listener'ConnectionBalanceConfig'BalanceType),
                                                   _Listener'ConnectionBalanceConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Listener'ConnectionBalanceConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Listener'ConnectionBalanceConfig'BalanceType
  = Listener'ConnectionBalanceConfig'ExactBalance' !Listener'ConnectionBalanceConfig'ExactBalance
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Listener'ConnectionBalanceConfig "maybe'balanceType" (Prelude.Maybe Listener'ConnectionBalanceConfig'BalanceType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'ConnectionBalanceConfig'balanceType
           (\ x__ y__
              -> x__ {_Listener'ConnectionBalanceConfig'balanceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Listener'ConnectionBalanceConfig "maybe'exactBalance" (Prelude.Maybe Listener'ConnectionBalanceConfig'ExactBalance) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'ConnectionBalanceConfig'balanceType
           (\ x__ y__
              -> x__ {_Listener'ConnectionBalanceConfig'balanceType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Listener'ConnectionBalanceConfig'ExactBalance' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   Listener'ConnectionBalanceConfig'ExactBalance' y__))
instance Data.ProtoLens.Field.HasField Listener'ConnectionBalanceConfig "exactBalance" Listener'ConnectionBalanceConfig'ExactBalance where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'ConnectionBalanceConfig'balanceType
           (\ x__ y__
              -> x__ {_Listener'ConnectionBalanceConfig'balanceType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Listener'ConnectionBalanceConfig'ExactBalance' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      Listener'ConnectionBalanceConfig'ExactBalance' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message Listener'ConnectionBalanceConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.listener.v3.Listener.ConnectionBalanceConfig"
  packedMessageDescriptor _
    = "\n\
      \\ETBConnectionBalanceConfig\DC2n\n\
      \\rexact_balance\CAN\SOH \SOH(\v2G.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalanceH\NULR\fexactBalance\SUBQ\n\
      \\fExactBalance:A\154\197\136\RS<\n\
      \:envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalanceB\DC3\n\
      \\fbalance_type\DC2\ETX\248B\SOH:4\154\197\136\RS/\n\
      \-envoy.api.v2.Listener.ConnectionBalanceConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        exactBalance__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "exact_balance"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Listener'ConnectionBalanceConfig'ExactBalance)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'exactBalance")) ::
              Data.ProtoLens.FieldDescriptor Listener'ConnectionBalanceConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, exactBalance__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Listener'ConnectionBalanceConfig'_unknownFields
        (\ x__ y__
           -> x__ {_Listener'ConnectionBalanceConfig'_unknownFields = y__})
  defMessage
    = Listener'ConnectionBalanceConfig'_constructor
        {_Listener'ConnectionBalanceConfig'balanceType = Prelude.Nothing,
         _Listener'ConnectionBalanceConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Listener'ConnectionBalanceConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Listener'ConnectionBalanceConfig
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "exact_balance"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"exactBalance") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ConnectionBalanceConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'balanceType") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (Listener'ConnectionBalanceConfig'ExactBalance' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Listener'ConnectionBalanceConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Listener'ConnectionBalanceConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Listener'ConnectionBalanceConfig'balanceType x__) ())
instance Control.DeepSeq.NFData Listener'ConnectionBalanceConfig'BalanceType where
  rnf (Listener'ConnectionBalanceConfig'ExactBalance' x__)
    = Control.DeepSeq.rnf x__
_Listener'ConnectionBalanceConfig'ExactBalance' ::
  Data.ProtoLens.Prism.Prism' Listener'ConnectionBalanceConfig'BalanceType Listener'ConnectionBalanceConfig'ExactBalance
_Listener'ConnectionBalanceConfig'ExactBalance'
  = Data.ProtoLens.Prism.prism'
      Listener'ConnectionBalanceConfig'ExactBalance'
      (\ p__
         -> case p__ of {
              (Listener'ConnectionBalanceConfig'ExactBalance' p__val)
                -> Prelude.Just p__val })
{- | Fields :
      -}
data Listener'ConnectionBalanceConfig'ExactBalance
  = Listener'ConnectionBalanceConfig'ExactBalance'_constructor {_Listener'ConnectionBalanceConfig'ExactBalance'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Listener'ConnectionBalanceConfig'ExactBalance where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Listener'ConnectionBalanceConfig'ExactBalance where
  messageName _
    = Data.Text.pack
        "envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalance"
  packedMessageDescriptor _
    = "\n\
      \\fExactBalance:A\154\197\136\RS<\n\
      \:envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalance"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Listener'ConnectionBalanceConfig'ExactBalance'_unknownFields
        (\ x__ y__
           -> x__
                {_Listener'ConnectionBalanceConfig'ExactBalance'_unknownFields = y__})
  defMessage
    = Listener'ConnectionBalanceConfig'ExactBalance'_constructor
        {_Listener'ConnectionBalanceConfig'ExactBalance'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Listener'ConnectionBalanceConfig'ExactBalance
          -> Data.ProtoLens.Encoding.Bytes.Parser Listener'ConnectionBalanceConfig'ExactBalance
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ExactBalance"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData Listener'ConnectionBalanceConfig'ExactBalance where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Listener'ConnectionBalanceConfig'ExactBalance'_unknownFields x__)
             ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.bindToPort' @:: Lens' Listener'DeprecatedV1 Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.maybe'bindToPort' @:: Lens' Listener'DeprecatedV1 (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@ -}
data Listener'DeprecatedV1
  = Listener'DeprecatedV1'_constructor {_Listener'DeprecatedV1'bindToPort :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                        _Listener'DeprecatedV1'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Listener'DeprecatedV1 where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Listener'DeprecatedV1 "bindToPort" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'DeprecatedV1'bindToPort
           (\ x__ y__ -> x__ {_Listener'DeprecatedV1'bindToPort = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Listener'DeprecatedV1 "maybe'bindToPort" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Listener'DeprecatedV1'bindToPort
           (\ x__ y__ -> x__ {_Listener'DeprecatedV1'bindToPort = y__}))
        Prelude.id
instance Data.ProtoLens.Message Listener'DeprecatedV1 where
  messageName _
    = Data.Text.pack "envoy.config.listener.v3.Listener.DeprecatedV1"
  packedMessageDescriptor _
    = "\n\
      \\fDeprecatedV1\DC2<\n\
      \\fbind_to_port\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\n\
      \bindToPort:)\154\197\136\RS$\n\
      \\"envoy.api.v2.Listener.DeprecatedV1"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bindToPort__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bind_to_port"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bindToPort")) ::
              Data.ProtoLens.FieldDescriptor Listener'DeprecatedV1
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bindToPort__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Listener'DeprecatedV1'_unknownFields
        (\ x__ y__ -> x__ {_Listener'DeprecatedV1'_unknownFields = y__})
  defMessage
    = Listener'DeprecatedV1'_constructor
        {_Listener'DeprecatedV1'bindToPort = Prelude.Nothing,
         _Listener'DeprecatedV1'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Listener'DeprecatedV1
          -> Data.ProtoLens.Encoding.Bytes.Parser Listener'DeprecatedV1
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "bind_to_port"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bindToPort") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DeprecatedV1"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bindToPort") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Listener'DeprecatedV1 where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Listener'DeprecatedV1'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Listener'DeprecatedV1'bindToPort x__) ())
newtype Listener'DrainType'UnrecognizedValue
  = Listener'DrainType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Listener'DrainType
  = Listener'DEFAULT |
    Listener'MODIFY_ONLY |
    Listener'DrainType'Unrecognized !Listener'DrainType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Listener'DrainType where
  maybeToEnum 0 = Prelude.Just Listener'DEFAULT
  maybeToEnum 1 = Prelude.Just Listener'MODIFY_ONLY
  maybeToEnum k
    = Prelude.Just
        (Listener'DrainType'Unrecognized
           (Listener'DrainType'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Listener'DEFAULT = "DEFAULT"
  showEnum Listener'MODIFY_ONLY = "MODIFY_ONLY"
  showEnum
    (Listener'DrainType'Unrecognized (Listener'DrainType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEFAULT" = Prelude.Just Listener'DEFAULT
    | (Prelude.==) k "MODIFY_ONLY" = Prelude.Just Listener'MODIFY_ONLY
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Listener'DrainType where
  minBound = Listener'DEFAULT
  maxBound = Listener'MODIFY_ONLY
instance Prelude.Enum Listener'DrainType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum DrainType: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum Listener'DEFAULT = 0
  fromEnum Listener'MODIFY_ONLY = 1
  fromEnum
    (Listener'DrainType'Unrecognized (Listener'DrainType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Listener'MODIFY_ONLY
    = Prelude.error
        "Listener'DrainType.succ: bad argument Listener'MODIFY_ONLY. This value would be out of bounds."
  succ Listener'DEFAULT = Listener'MODIFY_ONLY
  succ (Listener'DrainType'Unrecognized _)
    = Prelude.error
        "Listener'DrainType.succ: bad argument: unrecognized value"
  pred Listener'DEFAULT
    = Prelude.error
        "Listener'DrainType.pred: bad argument Listener'DEFAULT. This value would be out of bounds."
  pred Listener'MODIFY_ONLY = Listener'DEFAULT
  pred (Listener'DrainType'Unrecognized _)
    = Prelude.error
        "Listener'DrainType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Listener'DrainType where
  fieldDefault = Listener'DEFAULT
instance Control.DeepSeq.NFData Listener'DrainType where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
      -}
data Listener'InternalListenerConfig
  = Listener'InternalListenerConfig'_constructor {_Listener'InternalListenerConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Listener'InternalListenerConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Listener'InternalListenerConfig where
  messageName _
    = Data.Text.pack
        "envoy.config.listener.v3.Listener.InternalListenerConfig"
  packedMessageDescriptor _
    = "\n\
      \\SYNInternalListenerConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Listener'InternalListenerConfig'_unknownFields
        (\ x__ y__
           -> x__ {_Listener'InternalListenerConfig'_unknownFields = y__})
  defMessage
    = Listener'InternalListenerConfig'_constructor
        {_Listener'InternalListenerConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Listener'InternalListenerConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser Listener'InternalListenerConfig
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "InternalListenerConfig"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData Listener'InternalListenerConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Listener'InternalListenerConfig'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.entries' @:: Lens' ListenerCollection [Proto.Xds.Core.V3.CollectionEntry.CollectionEntry]@
         * 'Proto.Envoy.Config.Listener.V3.Listener_Fields.vec'entries' @:: Lens' ListenerCollection (Data.Vector.Vector Proto.Xds.Core.V3.CollectionEntry.CollectionEntry)@ -}
data ListenerCollection
  = ListenerCollection'_constructor {_ListenerCollection'entries :: !(Data.Vector.Vector Proto.Xds.Core.V3.CollectionEntry.CollectionEntry),
                                     _ListenerCollection'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ListenerCollection where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ListenerCollection "entries" [Proto.Xds.Core.V3.CollectionEntry.CollectionEntry] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerCollection'entries
           (\ x__ y__ -> x__ {_ListenerCollection'entries = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ListenerCollection "vec'entries" (Data.Vector.Vector Proto.Xds.Core.V3.CollectionEntry.CollectionEntry) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ListenerCollection'entries
           (\ x__ y__ -> x__ {_ListenerCollection'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Message ListenerCollection where
  messageName _
    = Data.Text.pack "envoy.config.listener.v3.ListenerCollection"
  packedMessageDescriptor _
    = "\n\
      \\DC2ListenerCollection\DC26\n\
      \\aentries\CAN\SOH \ETX(\v2\FS.xds.core.v3.CollectionEntryR\aentries"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Xds.Core.V3.CollectionEntry.CollectionEntry)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"entries")) ::
              Data.ProtoLens.FieldDescriptor ListenerCollection
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, entries__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ListenerCollection'_unknownFields
        (\ x__ y__ -> x__ {_ListenerCollection'_unknownFields = y__})
  defMessage
    = ListenerCollection'_constructor
        {_ListenerCollection'entries = Data.Vector.Generic.empty,
         _ListenerCollection'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ListenerCollection
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Xds.Core.V3.CollectionEntry.CollectionEntry
             -> Data.ProtoLens.Encoding.Bytes.Parser ListenerCollection
        loop x mutable'entries
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'entries)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'entries") frozen'entries x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "entries"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'entries y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'entries
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'entries <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'entries)
          "ListenerCollection"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage
                           _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'entries") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ListenerCollection where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ListenerCollection'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ListenerCollection'entries x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'envoy/config/listener/v3/listener.proto\DC2\CANenvoy.config.listener.v3\SUB)envoy/config/accesslog/v3/accesslog.proto\SUB\"envoy/config/core/v3/address.proto\SUB\USenvoy/config/core/v3/base.proto\SUB(envoy/config/core/v3/socket_option.proto\SUB+envoy/config/listener/v3/api_listener.proto\SUB2envoy/config/listener/v3/listener_components.proto\SUB2envoy/config/listener/v3/udp_listener_config.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\"xds/core/v3/collection_entry.proto\SUB#envoy/annotations/deprecation.proto\SUB\USudpa/annotations/security.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"L\n\
    \\DC2ListenerCollection\DC26\n\
    \\aentries\CAN\SOH \ETX(\v2\FS.xds.core.v3.CollectionEntryR\aentries\"\207\DC3\n\
    \\bListener\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2A\n\
    \\aaddress\CAN\STX \SOH(\v2\GS.envoy.config.core.v3.AddressR\aaddressB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2\US\n\
    \\vstat_prefix\CAN\FS \SOH(\tR\n\
    \statPrefix\DC2J\n\
    \\rfilter_chains\CAN\ETX \ETX(\v2%.envoy.config.listener.v3.FilterChainR\ffilterChains\DC2D\n\
    \\DLEuse_original_dst\CAN\EOT \SOH(\v2\SUB.google.protobuf.BoolValueR\SOuseOriginalDst\DC2W\n\
    \\DC4default_filter_chain\CAN\EM \SOH(\v2%.envoy.config.listener.v3.FilterChainR\DC2defaultFilterChain\DC2o\n\
    \!per_connection_buffer_limit_bytes\CAN\ENQ \SOH(\v2\FS.google.protobuf.UInt32ValueR\GSperConnectionBufferLimitBytesB\a\138\147\183*\STX\b\SOH\DC2:\n\
    \\bmetadata\CAN\ACK \SOH(\v2\RS.envoy.config.core.v3.MetadataR\bmetadata\DC2a\n\
    \\rdeprecated_v1\CAN\a \SOH(\v2/.envoy.config.listener.v3.Listener.DeprecatedV1R\fdeprecatedV1B\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2K\n\
    \\n\
    \drain_type\CAN\b \SOH(\SO2,.envoy.config.listener.v3.Listener.DrainTypeR\tdrainType\DC2S\n\
    \\DLElistener_filters\CAN\t \ETX(\v2(.envoy.config.listener.v3.ListenerFilterR\SIlistenerFilters\DC2S\n\
    \\CANlistener_filters_timeout\CAN\SI \SOH(\v2\EM.google.protobuf.DurationR\SYNlistenerFiltersTimeout\DC2N\n\
    \$continue_on_listener_filters_timeout\CAN\DC1 \SOH(\bR continueOnListenerFiltersTimeout\DC2<\n\
    \\vtransparent\CAN\n\
    \ \SOH(\v2\SUB.google.protobuf.BoolValueR\vtransparent\DC26\n\
    \\bfreebind\CAN\v \SOH(\v2\SUB.google.protobuf.BoolValueR\bfreebind\DC2I\n\
    \\SOsocket_options\CAN\r \ETX(\v2\".envoy.config.core.v3.SocketOptionR\rsocketOptions\DC2X\n\
    \\SUBtcp_fast_open_queue_length\CAN\f \SOH(\v2\FS.google.protobuf.UInt32ValueR\SYNtcpFastOpenQueueLength\DC2S\n\
    \\DC1traffic_direction\CAN\DLE \SOH(\SO2&.envoy.config.core.v3.TrafficDirectionR\DLEtrafficDirection\DC2[\n\
    \\DC3udp_listener_config\CAN\DC2 \SOH(\v2+.envoy.config.listener.v3.UdpListenerConfigR\DC1udpListenerConfig\DC2H\n\
    \\fapi_listener\CAN\DC3 \SOH(\v2%.envoy.config.listener.v3.ApiListenerR\vapiListener\DC2v\n\
    \\EMconnection_balance_config\CAN\DC4 \SOH(\v2:.envoy.config.listener.v3.Listener.ConnectionBalanceConfigR\ETBconnectionBalanceConfig\DC2\GS\n\
    \\n\
    \reuse_port\CAN\NAK \SOH(\bR\treusePort\DC2C\n\
    \\n\
    \access_log\CAN\SYN \ETX(\v2$.envoy.config.accesslog.v3.AccessLogR\taccessLog\DC2F\n\
    \\DLEtcp_backlog_size\CAN\CAN \SOH(\v2\FS.google.protobuf.UInt32ValueR\SOtcpBacklogSize\DC2<\n\
    \\fbind_to_port\CAN\SUB \SOH(\v2\SUB.google.protobuf.BoolValueR\n\
    \bindToPort\DC2h\n\
    \\DC1internal_listener\CAN\ESC \SOH(\v29.envoy.config.listener.v3.Listener.InternalListenerConfigH\NULR\DLEinternalListener\SUBw\n\
    \\fDeprecatedV1\DC2<\n\
    \\fbind_to_port\CAN\SOH \SOH(\v2\SUB.google.protobuf.BoolValueR\n\
    \bindToPort:)\154\197\136\RS$\n\
    \\"envoy.api.v2.Listener.DeprecatedV1\SUB\167\STX\n\
    \\ETBConnectionBalanceConfig\DC2n\n\
    \\rexact_balance\CAN\SOH \SOH(\v2G.envoy.config.listener.v3.Listener.ConnectionBalanceConfig.ExactBalanceH\NULR\fexactBalance\SUBQ\n\
    \\fExactBalance:A\154\197\136\RS<\n\
    \:envoy.api.v2.Listener.ConnectionBalanceConfig.ExactBalanceB\DC3\n\
    \\fbalance_type\DC2\ETX\248B\SOH:4\154\197\136\RS/\n\
    \-envoy.api.v2.Listener.ConnectionBalanceConfig\SUB\CAN\n\
    \\SYNInternalListenerConfig\")\n\
    \\tDrainType\DC2\v\n\
    \\aDEFAULT\DLE\NUL\DC2\SI\n\
    \\vMODIFY_ONLY\DLE\SOHB\DC4\n\
    \\DC2listener_specifier:\FS\154\197\136\RS\ETB\n\
    \\NAKenvoy.api.v2.ListenerJ\EOT\b\SO\DLE\SIJ\EOT\b\ETB\DLE\CANBA\n\
    \&io.envoyproxy.envoy.config.listener.v3B\rListenerProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\232u\n\
    \\a\DC2\ENQ\NUL\NUL\176\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL3\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL,\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL)\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL2\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\b\NUL5\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\t\NUL<\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\n\
    \\NUL<\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\f\NUL(\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\r\NUL(\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\SI\NUL,\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX\DC1\NUL-\n\
    \\t\n\
    \\STX\ETX\v\DC2\ETX\DC2\NUL)\n\
    \\t\n\
    \\STX\ETX\f\DC2\ETX\DC3\NUL'\n\
    \\t\n\
    \\STX\ETX\r\DC2\ETX\DC4\NUL+\n\
    \\t\n\
    \\STX\ETX\SO\DC2\ETX\NAK\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ETB\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\ETB\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\CAN\NUL.\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\CAN\NUL.\n\
    \\b\n\
    \\SOH\b\DC2\ETX\EM\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\EM\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SUB\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SUB\NULF\n\
    \\218\SOH\n\
    \\STX\EOT\NUL\DC2\EOT!\NUL#\SOH\SUBf Listener list collections. Entries are *Listener* resources or references.\n\
    \ [#not-implemented-hide:]\n\
    \2f [#protodoc-title: Listener configuration]\n\
    \ Listener :ref:`configuration overview <config_listeners>`\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX!\b\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\"\STX3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\"\v&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\"'.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\"12\n\
    \%\n\
    \\STX\EOT\SOH\DC2\ENQ&\NUL\176\STX\SOH\SUB\CAN [#next-free-field: 29]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX&\b\DLE\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\a\DC2\ETX'\STXW\n\
    \\SI\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ETX'\STXW\n\
    \\f\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\EOT)\STX2\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETX)\a\DLE\n\
    \\166\SOH\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETX,\EOT\DLE\SUB\150\SOH Drain in response to calling /healthcheck/fail admin endpoint (along with the health check\n\
    \ filter), listener removal/modification, and hot restart.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETX,\EOT\v\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETX,\SO\SI\n\
    \\221\SOH\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETX1\EOT\DC4\SUB\205\SOH Drain in response to listener removal/modification and hot restart. This setting does not\n\
    \ include /healthcheck/fail. This setting may be desirable if Envoy is hosting both ingress\n\
    \ and egress listeners.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETX1\EOT\SI\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETX1\DC2\DC3\n\
    \(\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOT5\STX@\ETX\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETX5\n\
    \\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\a\DC2\EOT6\EOT7-\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT6\EOT7-\n\
    \\207\STX\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETX?\EOT/\SUB\191\STX Whether the listener should bind to the port. A listener that doesn't\n\
    \ bind can only receive connections redirected from other listeners that\n\
    \ set use_original_dst parameter to true. Default is true.\n\
    \\n\
    \ This is deprecated. Use :ref:`Listener.bind_to_port\n\
    \ <envoy_v3_api_field_config.listener.v3.Listener.bind_to_port>`\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ACK\DC2\ETX?\EOT\GS\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETX?\RS*\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETX?-.\n\
    \@\n\
    \\EOT\EOT\SOH\ETX\SOH\DC2\EOTC\STXX\ETX\SUB2 Configuration for listener connection balancing.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\SOH\SOH\DC2\ETXC\n\
    \!\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\SOH\a\DC2\EOTD\EOTE8\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOTD\EOTE8\n\
    \\162\EOT\n\
    \\ACK\EOT\SOH\ETX\SOH\ETX\NUL\DC2\EOTM\EOTP\ENQ\SUB\145\EOT A connection balancer implementation that does exact balancing. This means that a lock is\n\
    \ held during balancing so that connection counts are nearly exactly balanced between worker\n\
    \ threads. This is \"nearly\" exact in the sense that a connection might close in parallel thus\n\
    \ making the counts incorrect, but this should be rectified on the next accept. This balancer\n\
    \ sacrifices accept throughput for accuracy and should be used when there are a small number of\n\
    \ connections that rarely cycle (e.g., service mesh gRPC egress).\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\ETX\NUL\SOH\DC2\ETXM\f\CAN\n\
    \\SI\n\
    \\a\EOT\SOH\ETX\SOH\ETX\NUL\a\DC2\EOTN\ACKOG\n\
    \\DC4\n\
    \\f\EOT\SOH\ETX\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTN\ACKOG\n\
    \\SO\n\
    \\ACK\EOT\SOH\ETX\SOH\b\NUL\DC2\EOTR\EOTW\ENQ\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\b\NUL\SOH\DC2\ETXR\n\
    \\SYN\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\b\NUL\STX\DC2\ETXS\ACK(\n\
    \\DLE\n\
    \\t\EOT\SOH\ETX\SOH\b\NUL\STX\175\b\DC2\ETXS\ACK(\n\
    \S\n\
    \\ACK\EOT\SOH\ETX\SOH\STX\NUL\DC2\ETXV\ACK%\SUBD If specified, the listener will use the exact connection balancer.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ACK\DC2\ETXV\ACK\DC2\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\SOH\DC2\ETXV\DC3 \n\
    \\SO\n\
    \\a\EOT\SOH\ETX\SOH\STX\NUL\ETX\DC2\ETXV#$\n\
    \\149\SOH\n\
    \\EOT\EOT\SOH\ETX\STX\DC2\EOT\\\STX]\ETX\SUB\134\SOH Configuration for envoy internal listener. All the future internal listener features should be added here.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\STX\SOH\DC2\ETX\\\n\
    \ \n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\t\DC2\ETX_\STX\DC2\n\
    \\v\n\
    \\EOT\EOT\SOH\t\NUL\DC2\ETX_\v\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\SOH\DC2\ETX_\v\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\NUL\STX\DC2\ETX_\v\r\n\
    \\v\n\
    \\EOT\EOT\SOH\t\SOH\DC2\ETX_\SI\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\SOH\SOH\DC2\ETX_\SI\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\t\SOH\STX\DC2\ETX_\SI\DC1\n\
    \\143\STX\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXd\STX\DC2\SUB\129\STX The unique name by which this listener is known. If no name is provided,\n\
    \ Envoy will allocate an internal UUID for the listener. If the listener is to be dynamically\n\
    \ updated or removed via :ref:`LDS <config_listeners_lds>` a unique name must be provided.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETXd\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXd\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXd\DLE\DC1\n\
    \\133\STX\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXi\STXL\SUB\247\SOH The address that the listener should listen on. In general, the address must be unique, though\n\
    \ that is governed by the bind rules of the OS. E.g., multiple listeners can listen on port 0 on\n\
    \ Linux as the actual port will be allocated by the OS.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXi\STX\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXi\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXi\FS\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\ETXi\RSK\n\
    \\SI\n\
    \\b\EOT\SOH\STX\SOH\b\175\b\DC1\DC2\ETXi\USJ\n\
    \\195\SOH\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXn\STX\SUB\SUB\181\SOH Optional prefix to use on listener stats. If empty, the stats will be rooted at\n\
    \ `listener.<address as string>.`. If non-empty, stats will be rooted at\n\
    \ `listener.<stat_prefix>.`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXn\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXn\t\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXn\ETB\EM\n\
    \\135\ETX\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXw\STX)\SUB\249\STX A list of filter chains to consider for this listener. The\n\
    \ :ref:`FilterChain <envoy_v3_api_msg_config.listener.v3.FilterChain>` with the most specific\n\
    \ :ref:`FilterChainMatch <envoy_v3_api_msg_config.listener.v3.FilterChainMatch>` criteria is used on a\n\
    \ connection.\n\
    \\n\
    \ Example using SNI for filter chain selection can be found in the\n\
    \ :ref:`FAQ entry <faq_how_to_setup_sni>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETXw\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ACK\DC2\ETXw\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXw\ETB$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXw'(\n\
    \\205\ETX\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX~\STX1\SUB\191\ETX If a connection is redirected using *iptables*, the port on which the proxy\n\
    \ receives it might be different from the original destination address. When this flag is set to\n\
    \ true, the listener hands off redirected connections to the listener associated with the\n\
    \ original destination address. If there is no listener associated with the original destination\n\
    \ address, the connection is handled by the listener that receives it. Defaults to false.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ACK\DC2\ETX~\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX~\FS,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX~/0\n\
    \\199\SOH\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\130\SOH\STX(\SUB\184\SOH The default filter chain if none of the filter chain matches. If no default filter chain is supplied,\n\
    \ the connection will be closed. The filter chain match is ignored in this field.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ACK\DC2\EOT\130\SOH\STX\r\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\130\SOH\SO\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\130\SOH%'\n\
    \\166\SOH\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ACK\134\SOH\STX\135\SOHN\SUB\149\SOH Soft limit on size of the listener\226\128\153s new connection read and write buffers.\n\
    \ If unspecified, an implementation defined default is applied (1MiB).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ACK\DC2\EOT\134\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\EOT\134\SOH\RS?\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\EOT\134\SOHBC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ACK\b\DC2\EOT\135\SOH\ACKM\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\STX\ACK\b\177\242\166\ENQ\SOH\DC2\EOT\135\SOH\aL\n\
    \\"\n\
    \\EOT\EOT\SOH\STX\a\DC2\EOT\138\SOH\STX \SUB\DC4 Listener metadata.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ACK\DC2\EOT\138\SOH\STX\DC2\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\EOT\138\SOH\DC3\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\EOT\138\SOH\RS\US\n\
    \*\n\
    \\EOT\EOT\SOH\STX\b\DC2\ACK\141\SOH\STX\142\SOHS\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ACK\DC2\EOT\141\SOH\STX\SO\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\EOT\141\SOH\SI\FS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\EOT\141\SOH\US \n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\b\b\DC2\EOT\142\SOH\ACKR\n\
    \\SO\n\
    \\ACK\EOT\SOH\STX\b\b\ETX\DC2\EOT\142\SOH\a\CAN\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\b\b\242\232\128K\DC2\EOT\142\SOH\SUBQ\n\
    \I\n\
    \\EOT\EOT\SOH\STX\t\DC2\EOT\145\SOH\STX\ESC\SUB; The type of draining to perform at a listener-wide level.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ACK\DC2\EOT\145\SOH\STX\v\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\EOT\145\SOH\f\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\EOT\145\SOH\EM\SUB\n\
    \\229\ENQ\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\EOT\156\SOH\STX/\SUB\214\ENQ Listener filters have the opportunity to manipulate and augment the connection metadata that\n\
    \ is used in connection filter chain matching, for example. These filters are run before any in\n\
    \ :ref:`filter_chains <envoy_v3_api_field_config.listener.v3.Listener.filter_chains>`. Order matters as the\n\
    \ filters are processed sequentially right after a socket has been accepted by the listener, and\n\
    \ before a connection is created.\n\
    \ UDP Listener filters can be specified when the protocol in the listener socket address in\n\
    \ :ref:`protocol <envoy_v3_api_field_config.core.v3.SocketAddress.protocol>` is :ref:`UDP\n\
    \ <envoy_v3_api_enum_value_config.core.v3.SocketAddress.Protocol.UDP>`.\n\
    \ UDP listeners currently support a single filter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\EOT\DC2\EOT\156\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ACK\DC2\EOT\156\SOH\v\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\EOT\156\SOH\SUB*\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\EOT\156\SOH-.\n\
    \\199\STX\n\
    \\EOT\EOT\SOH\STX\v\DC2\EOT\162\SOH\STX9\SUB\184\STX The timeout to wait for all listener filters to complete operation. If the timeout is reached,\n\
    \ the accepted socket is closed without a connection being created unless\n\
    \ `continue_on_listener_filters_timeout` is set to true. Specify 0 to disable the\n\
    \ timeout. If not specified, a default timeout of 15s is used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\ACK\DC2\EOT\162\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\EOT\162\SOH\ESC3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\EOT\162\SOH68\n\
    \\206\STX\n\
    \\EOT\EOT\SOH\STX\f\DC2\EOT\171\SOH\STX1\SUB\191\STX Whether a connection should be created when listener filters timeout. Default is false.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   Some listener filters, such as :ref:`Proxy Protocol filter\n\
    \   <config_listener_filters_proxy_protocol>`, should not be used with this option. It will cause\n\
    \   unexpected behavior when a connection is created.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ENQ\DC2\EOT\171\SOH\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\SOH\DC2\EOT\171\SOH\a+\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\f\ETX\DC2\EOT\171\SOH.0\n\
    \\137\t\n\
    \\EOT\EOT\SOH\STX\r\DC2\EOT\187\SOH\STX-\SUB\250\b Whether the listener should be set as a transparent socket.\n\
    \ When this flag is set to true, connections can be redirected to the listener using an\n\
    \ *iptables* *TPROXY* target, in which case the original source and destination addresses and\n\
    \ ports are preserved on accepted connections. This flag should be used in combination with\n\
    \ :ref:`an original_dst <config_listener_filters_original_dst>` :ref:`listener filter\n\
    \ <envoy_v3_api_field_config.listener.v3.Listener.listener_filters>` to mark the connections' local addresses as\n\
    \ \"restored.\" This can be used to hand off each redirected connection to another listener\n\
    \ associated with the connection's destination address. Direct connections to the socket without\n\
    \ using *TPROXY* cannot be distinguished from connections redirected using *TPROXY* and are\n\
    \ therefore treated as if they were redirected.\n\
    \ When this flag is set to false, the listener's socket is explicitly reset as non-transparent.\n\
    \ Setting this flag requires Envoy to run with the *CAP_NET_ADMIN* capability.\n\
    \ When this flag is not set (default), the socket is not modified, i.e. the transparent option\n\
    \ is neither set nor reset.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\ACK\DC2\EOT\187\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\SOH\DC2\EOT\187\SOH\FS'\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\r\ETX\DC2\EOT\187\SOH*,\n\
    \\151\ETX\n\
    \\EOT\EOT\SOH\STX\SO\DC2\EOT\195\SOH\STX*\SUB\136\ETX Whether the listener should set the *IP_FREEBIND* socket option. When this\n\
    \ flag is set to true, listeners can be bound to an IP address that is not\n\
    \ configured on the system running Envoy. When this flag is set to false, the\n\
    \ option *IP_FREEBIND* is disabled on the socket. When this flag is not set\n\
    \ (default), the socket is not modified, i.e. the option is neither enabled\n\
    \ nor disabled.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\ACK\DC2\EOT\195\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\SOH\DC2\EOT\195\SOH\FS$\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SO\ETX\DC2\EOT\195\SOH')\n\
    \p\n\
    \\EOT\EOT\SOH\STX\SI\DC2\EOT\199\SOH\STX4\SUBb Additional socket options that may not be present in Envoy source code or\n\
    \ precompiled binaries.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\EOT\DC2\EOT\199\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\ACK\DC2\EOT\199\SOH\v\US\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\SOH\DC2\EOT\199\SOH .\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SI\ETX\DC2\EOT\199\SOH13\n\
    \\238\ACK\n\
    \\EOT\EOT\SOH\STX\DLE\DC2\EOT\215\SOH\STX>\SUB\223\ACK Whether the listener should accept TCP Fast Open (TFO) connections.\n\
    \ When this flag is set to a value greater than 0, the option TCP_FASTOPEN is enabled on\n\
    \ the socket, with a queue length of the specified size\n\
    \ (see `details in RFC7413 <https://tools.ietf.org/html/rfc7413#section-5.1>`_).\n\
    \ When this flag is set to 0, the option TCP_FASTOPEN is disabled on the socket.\n\
    \ When this flag is not set (default), the socket is not modified,\n\
    \ i.e. the option is neither enabled nor disabled.\n\
    \\n\
    \ On Linux, the net.ipv4.tcp_fastopen kernel parameter must include flag 0x2 to enable\n\
    \ TCP_FASTOPEN.\n\
    \ See `ip-sysctl.txt <https://www.kernel.org/doc/Documentation/networking/ip-sysctl.txt>`_.\n\
    \\n\
    \ On macOS, only values of 0, 1, and unset are valid; other values may result in an error.\n\
    \ To set the queue length on macOS, set the net.inet.tcp.fastopen_backlog kernel parameter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DLE\ACK\DC2\EOT\215\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DLE\SOH\DC2\EOT\215\SOH\RS8\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DLE\ETX\DC2\EOT\215\SOH;=\n\
    \\129\STX\n\
    \\EOT\EOT\SOH\STX\DC1\DC2\EOT\220\SOH\STX2\SUB\242\SOH Specifies the intended direction of the traffic relative to the local Envoy.\n\
    \ This property is required on Windows for listeners using the original destination filter,\n\
    \ see :ref:`Original Destination <config_listener_filters_original_dst>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC1\ACK\DC2\EOT\220\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC1\SOH\DC2\EOT\220\SOH\ESC,\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC1\ETX\DC2\EOT\220\SOH/1\n\
    \\157\STX\n\
    \\EOT\EOT\SOH\STX\DC2\DC2\EOT\226\SOH\STX-\SUB\142\STX If the protocol in the listener socket address in :ref:`protocol\n\
    \ <envoy_v3_api_field_config.core.v3.SocketAddress.protocol>` is :ref:`UDP\n\
    \ <envoy_v3_api_enum_value_config.core.v3.SocketAddress.Protocol.UDP>`, this field specifies UDP\n\
    \ listener specific configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC2\ACK\DC2\EOT\226\SOH\STX\DC3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC2\SOH\DC2\EOT\226\SOH\DC4'\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC2\ETX\DC2\EOT\226\SOH*,\n\
    \\174\a\n\
    \\EOT\EOT\SOH\STX\DC3\DC2\EOT\244\SOH\STX \SUB\159\a Used to represent an API listener, which is used in non-proxy clients. The type of API\n\
    \ exposed to the non-proxy application depends on the type of API listener.\n\
    \ When this field is set, no other field except for :ref:`name<envoy_v3_api_field_config.listener.v3.Listener.name>`\n\
    \ should be set.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \  Currently only one ApiListener can be installed; and it can only be done via bootstrap config,\n\
    \  not LDS.\n\
    \\n\
    \ [#next-major-version: In the v3 API, instead of this messy approach where the socket\n\
    \ listener fields are directly in the top-level Listener message and the API listener types\n\
    \ are in the ApiListener message, the socket listener messages should be in their own message,\n\
    \ and the top-level Listener should essentially be a oneof that selects between the\n\
    \ socket listener and the various types of API listener. That way, a given Listener message\n\
    \ can structurally only contain the fields of the relevant type.]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC3\ACK\DC2\EOT\244\SOH\STX\r\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC3\SOH\DC2\EOT\244\SOH\SO\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC3\ETX\DC2\EOT\244\SOH\GS\US\n\
    \\208\ENQ\n\
    \\EOT\EOT\SOH\STX\DC4\DC2\EOT\255\SOH\STX9\SUB\193\ENQ The listener's connection balancer configuration, currently only applicable to TCP listeners.\n\
    \ If no configuration is specified, Envoy will not attempt to balance active connections between\n\
    \ worker threads.\n\
    \\n\
    \ In the scenario that the listener X redirects all the connections to the listeners Y1 and Y2\n\
    \ by setting :ref:`use_original_dst <envoy_v3_api_field_config.listener.v3.Listener.use_original_dst>` in X\n\
    \ and :ref:`bind_to_port <envoy_v3_api_field_config.listener.v3.Listener.bind_to_port>` to false in Y1 and Y2,\n\
    \ it is recommended to disable the balance config in listener X to avoid the cost of balancing, and\n\
    \ enable the balance config in Y1 and Y2 to balance the connections among the workers.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC4\ACK\DC2\EOT\255\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC4\SOH\DC2\EOT\255\SOH\SUB3\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\DC4\ETX\DC2\EOT\255\SOH68\n\
    \\213\ENQ\n\
    \\EOT\EOT\SOH\STX\NAK\DC2\EOT\139\STX\STX\ETB\SUB\198\ENQ When this flag is set to true, listeners set the *SO_REUSEPORT* socket option and\n\
    \ create one socket for each worker thread. This makes inbound connections\n\
    \ distribute among worker threads roughly evenly in cases where there are a high number\n\
    \ of connections. When this flag is set to false, all worker threads share one socket.\n\
    \\n\
    \ Before Linux v4.19-rc1, new TCP connections may be rejected during hot restart\n\
    \ (see `3rd paragraph in 'soreuseport' commit message\n\
    \ <https://github.com/torvalds/linux/commit/c617f398edd4db2b8567a28e89>`_).\n\
    \ This issue was fixed by `tcp: Avoid TCP syncookie rejected by SO_REUSEPORT socket\n\
    \ <https://github.com/torvalds/linux/commit/40a1227ea845a37ab197dd1caffb60b047fa36b1>`_.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NAK\ENQ\DC2\EOT\139\STX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NAK\SOH\DC2\EOT\139\STX\a\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NAK\ETX\DC2\EOT\139\STX\DC4\SYN\n\
    \k\n\
    \\EOT\EOT\SOH\STX\SYN\DC2\EOT\143\STX\STX2\SUB] Configuration for :ref:`access logs <arch_overview_access_logs>`\n\
    \ emitted by this listener.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\EOT\DC2\EOT\143\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\ACK\DC2\EOT\143\STX\v!\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\SOH\DC2\EOT\143\STX\",\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SYN\ETX\DC2\EOT\143\STX/1\n\
    \\176\SOH\n\
    \\EOT\EOT\SOH\STX\ETB\DC2\EOT\147\STX\STX4\SUB\161\SOH The maximum length a tcp listener's pending connections queue can grow to. If no value is\n\
    \ provided net.core.somaxconn will be used on Linux and 128 otherwise.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETB\ACK\DC2\EOT\147\STX\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETB\SOH\DC2\EOT\147\STX\RS.\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETB\ETX\DC2\EOT\147\STX13\n\
    \\152\STX\n\
    \\EOT\EOT\SOH\STX\CAN\DC2\EOT\153\STX\STX.\SUB\137\STX Whether the listener should bind to the port. A listener that doesn't\n\
    \ bind can only receive connections redirected from other listeners that set\n\
    \ :ref:`use_original_dst <envoy_v3_api_field_config.listener.v3.Listener.use_original_dst>`\n\
    \ to true. Default is true.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\CAN\ACK\DC2\EOT\153\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\CAN\SOH\DC2\EOT\153\STX\FS(\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\CAN\ETX\DC2\EOT\153\STX+-\n\
    \\251\SOH\n\
    \\EOT\EOT\SOH\b\NUL\DC2\ACK\159\STX\STX\175\STX\ETX\SUB\234\SOH The exclusive listener type and the corresponding config.\n\
    \ TODO(lambdai): https://github.com/envoyproxy/envoy/issues/15372\n\
    \ Will create and add TcpListenerConfig. Will add UdpListenerConfig and ApiListener.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\EOT\159\STX\b\SUB\n\
    \\163\b\n\
    \\EOT\EOT\SOH\STX\EM\DC2\EOT\174\STX\EOT2\SUB\148\b Used to represent an internal listener which does not listen on OSI L4 address but can be used by the\n\
    \ :ref:`envoy cluster <envoy_v3_api_msg_config.cluster.v3.Cluster>` to create a user space connection to.\n\
    \ The internal listener acts as a tcp listener. It supports listener filters and network filter chains.\n\
    \ The internal listener require :ref:`address <envoy_v3_api_field_config.listener.v3.Listener.address>` has\n\
    \ field `envoy_internal_address`.\n\
    \\n\
    \ There are some limitations are derived from the implementation. The known limitations include\n\
    \\n\
    \ * :ref:`ConnectionBalanceConfig <envoy_v3_api_msg_config.listener.v3.Listener.ConnectionBalanceConfig>` is not\n\
    \   allowed because both cluster connection and listener connection must be owned by the same dispatcher.\n\
    \ * :ref:`tcp_backlog_size <envoy_v3_api_field_config.listener.v3.Listener.tcp_backlog_size>`\n\
    \ * :ref:`freebind <envoy_v3_api_field_config.listener.v3.Listener.freebind>`\n\
    \ * :ref:`transparent <envoy_v3_api_field_config.listener.v3.Listener.transparent>`\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EM\ACK\DC2\EOT\174\STX\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EM\SOH\DC2\EOT\174\STX\ESC,\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EM\ETX\DC2\EOT\174\STX/1b\ACKproto3"