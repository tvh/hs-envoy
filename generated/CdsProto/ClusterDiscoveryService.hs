{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module CdsProto.ClusterDiscoveryService
       (ClusterDiscoveryService, clusterDiscoveryService, StreamClusters, DeltaClusters, FetchClusters, streamClusters,
        deltaClusters, fetchClusters)
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

type ClusterDiscoveryService =
     P'.Service "envoy.service.cluster.v3.ClusterDiscoveryService" '[StreamClusters, DeltaClusters, FetchClusters]

clusterDiscoveryService :: ClusterDiscoveryService
clusterDiscoveryService = P'.Service

type StreamClusters =
     P'.Method "StreamClusters" (P'.StreamOf DiscoveryProto.DiscoveryRequest) (P'.StreamOf DiscoveryProto.DiscoveryResponse)

type DeltaClusters =
     P'.Method "DeltaClusters" (P'.StreamOf DiscoveryProto.DeltaDiscoveryRequest)
      (P'.StreamOf DiscoveryProto.DeltaDiscoveryResponse)

type FetchClusters =
     P'.Method "FetchClusters" (P'.Single DiscoveryProto.DiscoveryRequest) (P'.Single DiscoveryProto.DiscoveryResponse)

streamClusters :: StreamClusters
streamClusters = P'.Method

deltaClusters :: DeltaClusters
deltaClusters = P'.Method

fetchClusters :: FetchClusters
fetchClusters = P'.Method