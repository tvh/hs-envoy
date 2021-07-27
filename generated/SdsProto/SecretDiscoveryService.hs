{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module SdsProto.SecretDiscoveryService
       (SecretDiscoveryService, secretDiscoveryService, DeltaSecrets, StreamSecrets, FetchSecrets, deltaSecrets, streamSecrets,
        fetchSecrets)
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

type SecretDiscoveryService =
     P'.Service "envoy.service.secret.v3.SecretDiscoveryService" '[DeltaSecrets, StreamSecrets, FetchSecrets]

secretDiscoveryService :: SecretDiscoveryService
secretDiscoveryService = P'.Service

type DeltaSecrets =
     P'.Method "DeltaSecrets" (P'.StreamOf DiscoveryProto.DeltaDiscoveryRequest) (P'.StreamOf DiscoveryProto.DeltaDiscoveryResponse)

type StreamSecrets =
     P'.Method "StreamSecrets" (P'.StreamOf DiscoveryProto.DiscoveryRequest) (P'.StreamOf DiscoveryProto.DiscoveryResponse)

type FetchSecrets =
     P'.Method "FetchSecrets" (P'.Single DiscoveryProto.DiscoveryRequest) (P'.Single DiscoveryProto.DiscoveryResponse)

deltaSecrets :: DeltaSecrets
deltaSecrets = P'.Method

streamSecrets :: StreamSecrets
streamSecrets = P'.Method

fetchSecrets :: FetchSecrets
fetchSecrets = P'.Method