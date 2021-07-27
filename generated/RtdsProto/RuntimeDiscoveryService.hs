{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RtdsProto.RuntimeDiscoveryService
       (RuntimeDiscoveryService, runtimeDiscoveryService, StreamRuntime, DeltaRuntime, FetchRuntime, streamRuntime, deltaRuntime,
        fetchRuntime)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified DiscoveryProto.DiscoveryRequest as DiscoveryProto
import qualified DiscoveryProto.DeltaDiscoveryRequest as DiscoveryProto
import qualified DiscoveryProto.DiscoveryResponse as DiscoveryProto
import qualified DiscoveryProto.DeltaDiscoveryResponse as DiscoveryProto

type RuntimeDiscoveryService =
     P'.Service "envoy.service.runtime.v3.RuntimeDiscoveryService" '[StreamRuntime, DeltaRuntime, FetchRuntime]

runtimeDiscoveryService :: RuntimeDiscoveryService
runtimeDiscoveryService = P'.Service

type StreamRuntime =
     P'.Method "StreamRuntime" (P'.StreamOf DiscoveryProto.DiscoveryRequest) (P'.StreamOf DiscoveryProto.DiscoveryResponse)

type DeltaRuntime =
     P'.Method "DeltaRuntime" (P'.StreamOf DiscoveryProto.DeltaDiscoveryRequest) (P'.StreamOf DiscoveryProto.DeltaDiscoveryResponse)

type FetchRuntime =
     P'.Method "FetchRuntime" (P'.Single DiscoveryProto.DiscoveryRequest) (P'.Single DiscoveryProto.DiscoveryResponse)

streamRuntime :: StreamRuntime
streamRuntime = P'.Method

deltaRuntime :: DeltaRuntime
deltaRuntime = P'.Method

fetchRuntime :: FetchRuntime
fetchRuntime = P'.Method