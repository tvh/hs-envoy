{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.HealthDiscoveryService
       (HealthDiscoveryService, healthDiscoveryService, StreamHealthCheck, FetchHealthCheck, streamHealthCheck, fetchHealthCheck)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified HdsProto.HealthCheckRequestOrEndpointHealthResponse as HdsProto
import qualified HdsProto.HealthCheckSpecifier as HdsProto

type HealthDiscoveryService = P'.Service "envoy.service.health.v3.HealthDiscoveryService" '[StreamHealthCheck, FetchHealthCheck]

healthDiscoveryService :: HealthDiscoveryService
healthDiscoveryService = P'.Service

type StreamHealthCheck =
     P'.Method "StreamHealthCheck" (P'.StreamOf HdsProto.HealthCheckRequestOrEndpointHealthResponse)
      (P'.StreamOf HdsProto.HealthCheckSpecifier)

type FetchHealthCheck =
     P'.Method "FetchHealthCheck" (P'.Single HdsProto.HealthCheckRequestOrEndpointHealthResponse)
      (P'.Single HdsProto.HealthCheckSpecifier)

streamHealthCheck :: StreamHealthCheck
streamHealthCheck = P'.Method

fetchHealthCheck :: FetchHealthCheck
fetchHealthCheck = P'.Method