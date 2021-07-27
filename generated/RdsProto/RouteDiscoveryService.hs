{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RdsProto.RouteDiscoveryService
       (RouteDiscoveryService, routeDiscoveryService, StreamRoutes, DeltaRoutes, FetchRoutes, streamRoutes, deltaRoutes,
        fetchRoutes)
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

type RouteDiscoveryService = P'.Service "envoy.service.route.v3.RouteDiscoveryService" '[StreamRoutes, DeltaRoutes, FetchRoutes]

routeDiscoveryService :: RouteDiscoveryService
routeDiscoveryService = P'.Service

type StreamRoutes =
     P'.Method "StreamRoutes" (P'.StreamOf DiscoveryProto.DiscoveryRequest) (P'.StreamOf DiscoveryProto.DiscoveryResponse)

type DeltaRoutes =
     P'.Method "DeltaRoutes" (P'.StreamOf DiscoveryProto.DeltaDiscoveryRequest) (P'.StreamOf DiscoveryProto.DeltaDiscoveryResponse)

type FetchRoutes = P'.Method "FetchRoutes" (P'.Single DiscoveryProto.DiscoveryRequest) (P'.Single DiscoveryProto.DiscoveryResponse)

streamRoutes :: StreamRoutes
streamRoutes = P'.Method

deltaRoutes :: DeltaRoutes
deltaRoutes = P'.Method

fetchRoutes :: FetchRoutes
fetchRoutes = P'.Method