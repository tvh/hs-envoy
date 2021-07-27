{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module CsdsProto.ClientStatusDiscoveryService
       (ClientStatusDiscoveryService, clientStatusDiscoveryService, StreamClientStatus, FetchClientStatus, streamClientStatus,
        fetchClientStatus)
       where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified CsdsProto.ClientStatusRequest as CsdsProto
import qualified CsdsProto.ClientStatusResponse as CsdsProto

type ClientStatusDiscoveryService =
     P'.Service "envoy.service.status.v3.ClientStatusDiscoveryService" '[StreamClientStatus, FetchClientStatus]

clientStatusDiscoveryService :: ClientStatusDiscoveryService
clientStatusDiscoveryService = P'.Service

type StreamClientStatus =
     P'.Method "StreamClientStatus" (P'.StreamOf CsdsProto.ClientStatusRequest) (P'.StreamOf CsdsProto.ClientStatusResponse)

type FetchClientStatus =
     P'.Method "FetchClientStatus" (P'.Single CsdsProto.ClientStatusRequest) (P'.Single CsdsProto.ClientStatusResponse)

streamClientStatus :: StreamClientStatus
streamClientStatus = P'.Method

fetchClientStatus :: FetchClientStatus
fetchClientStatus = P'.Method