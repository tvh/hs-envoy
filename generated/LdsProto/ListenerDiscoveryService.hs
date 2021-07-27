{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module LdsProto.ListenerDiscoveryService
       (ListenerDiscoveryService, listenerDiscoveryService, DeltaListeners, StreamListeners, FetchListeners, deltaListeners,
        streamListeners, fetchListeners)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified DiscoveryProto.DeltaDiscoveryRequest as DiscoveryProto
import qualified DiscoveryProto.DiscoveryRequest as DiscoveryProto
import qualified DiscoveryProto.DeltaDiscoveryResponse as DiscoveryProto
import qualified DiscoveryProto.DiscoveryResponse as DiscoveryProto

type ListenerDiscoveryService =
     P'.Service "envoy.service.listener.v3.ListenerDiscoveryService" '[DeltaListeners, StreamListeners, FetchListeners]

listenerDiscoveryService :: ListenerDiscoveryService
listenerDiscoveryService = P'.Service

type DeltaListeners =
     P'.Method "DeltaListeners" (P'.StreamOf DiscoveryProto.DeltaDiscoveryRequest)
      (P'.StreamOf DiscoveryProto.DeltaDiscoveryResponse)

type StreamListeners =
     P'.Method "StreamListeners" (P'.StreamOf DiscoveryProto.DiscoveryRequest) (P'.StreamOf DiscoveryProto.DiscoveryResponse)

type FetchListeners =
     P'.Method "FetchListeners" (P'.Single DiscoveryProto.DiscoveryRequest) (P'.Single DiscoveryProto.DiscoveryResponse)

deltaListeners :: DeltaListeners
deltaListeners = P'.Method

streamListeners :: StreamListeners
streamListeners = P'.Method

fetchListeners :: FetchListeners
fetchListeners = P'.Method