{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AdsProto.AggregatedDiscoveryService
       (AggregatedDiscoveryService, aggregatedDiscoveryService, StreamAggregatedResources, DeltaAggregatedResources,
        streamAggregatedResources, deltaAggregatedResources)
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

type AggregatedDiscoveryService =
     P'.Service "envoy.service.discovery.v3.AggregatedDiscoveryService" '[StreamAggregatedResources, DeltaAggregatedResources]

aggregatedDiscoveryService :: AggregatedDiscoveryService
aggregatedDiscoveryService = P'.Service

type StreamAggregatedResources =
     P'.Method "StreamAggregatedResources" (P'.StreamOf DiscoveryProto.DiscoveryRequest)
      (P'.StreamOf DiscoveryProto.DiscoveryResponse)

type DeltaAggregatedResources =
     P'.Method "DeltaAggregatedResources" (P'.StreamOf DiscoveryProto.DeltaDiscoveryRequest)
      (P'.StreamOf DiscoveryProto.DeltaDiscoveryResponse)

streamAggregatedResources :: StreamAggregatedResources
streamAggregatedResources = P'.Method

deltaAggregatedResources :: DeltaAggregatedResources
deltaAggregatedResources = P'.Method