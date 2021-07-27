{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RdsProto.VirtualHostDiscoveryService
       (VirtualHostDiscoveryService, virtualHostDiscoveryService, DeltaVirtualHosts, deltaVirtualHosts) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified DiscoveryProto.DeltaDiscoveryRequest as DiscoveryProto
import qualified DiscoveryProto.DeltaDiscoveryResponse as DiscoveryProto

type VirtualHostDiscoveryService = P'.Service "envoy.service.route.v3.VirtualHostDiscoveryService" '[DeltaVirtualHosts]

virtualHostDiscoveryService :: VirtualHostDiscoveryService
virtualHostDiscoveryService = P'.Service

type DeltaVirtualHosts =
     P'.Method "DeltaVirtualHosts" (P'.StreamOf DiscoveryProto.DeltaDiscoveryRequest)
      (P'.StreamOf DiscoveryProto.DeltaDiscoveryResponse)

deltaVirtualHosts :: DeltaVirtualHosts
deltaVirtualHosts = P'.Method