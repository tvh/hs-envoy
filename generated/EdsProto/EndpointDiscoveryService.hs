{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module EdsProto.EndpointDiscoveryService
       (EndpointDiscoveryService, endpointDiscoveryService, StreamEndpoints, DeltaEndpoints, FetchEndpoints, streamEndpoints,
        deltaEndpoints, fetchEndpoints)
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

type EndpointDiscoveryService =
     P'.Service "envoy.service.endpoint.v3.EndpointDiscoveryService" '[StreamEndpoints, DeltaEndpoints, FetchEndpoints]

endpointDiscoveryService :: EndpointDiscoveryService
endpointDiscoveryService = P'.Service

type StreamEndpoints =
     P'.Method "StreamEndpoints" (P'.StreamOf DiscoveryProto.DiscoveryRequest) (P'.StreamOf DiscoveryProto.DiscoveryResponse)

type DeltaEndpoints =
     P'.Method "DeltaEndpoints" (P'.StreamOf DiscoveryProto.DeltaDiscoveryRequest)
      (P'.StreamOf DiscoveryProto.DeltaDiscoveryResponse)

type FetchEndpoints =
     P'.Method "FetchEndpoints" (P'.Single DiscoveryProto.DiscoveryRequest) (P'.Single DiscoveryProto.DiscoveryResponse)

streamEndpoints :: StreamEndpoints
streamEndpoints = P'.Method

deltaEndpoints :: DeltaEndpoints
deltaEndpoints = P'.Method

fetchEndpoints :: FetchEndpoints
fetchEndpoints = P'.Method