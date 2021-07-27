{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module SrdsProto.ScopedRoutesDiscoveryService
       (ScopedRoutesDiscoveryService, scopedRoutesDiscoveryService, StreamScopedRoutes, DeltaScopedRoutes, FetchScopedRoutes,
        streamScopedRoutes, deltaScopedRoutes, fetchScopedRoutes)
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

type ScopedRoutesDiscoveryService =
     P'.Service "envoy.service.route.v3.ScopedRoutesDiscoveryService" '[StreamScopedRoutes, DeltaScopedRoutes, FetchScopedRoutes]

scopedRoutesDiscoveryService :: ScopedRoutesDiscoveryService
scopedRoutesDiscoveryService = P'.Service

type StreamScopedRoutes =
     P'.Method "StreamScopedRoutes" (P'.StreamOf DiscoveryProto.DiscoveryRequest) (P'.StreamOf DiscoveryProto.DiscoveryResponse)

type DeltaScopedRoutes =
     P'.Method "DeltaScopedRoutes" (P'.StreamOf DiscoveryProto.DeltaDiscoveryRequest)
      (P'.StreamOf DiscoveryProto.DeltaDiscoveryResponse)

type FetchScopedRoutes =
     P'.Method "FetchScopedRoutes" (P'.Single DiscoveryProto.DiscoveryRequest) (P'.Single DiscoveryProto.DiscoveryResponse)

streamScopedRoutes :: StreamScopedRoutes
streamScopedRoutes = P'.Method

deltaScopedRoutes :: DeltaScopedRoutes
deltaScopedRoutes = P'.Method

fetchScopedRoutes :: FetchScopedRoutes
fetchScopedRoutes = P'.Method