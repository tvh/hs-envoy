{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ConfigDiscoveryProto.ExtensionConfigDiscoveryService
       (ExtensionConfigDiscoveryService, extensionConfigDiscoveryService, StreamExtensionConfigs, DeltaExtensionConfigs,
        FetchExtensionConfigs, streamExtensionConfigs, deltaExtensionConfigs, fetchExtensionConfigs)
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

type ExtensionConfigDiscoveryService =
     P'.Service "envoy.service.extension.v3.ExtensionConfigDiscoveryService"
      '[StreamExtensionConfigs, DeltaExtensionConfigs, FetchExtensionConfigs]

extensionConfigDiscoveryService :: ExtensionConfigDiscoveryService
extensionConfigDiscoveryService = P'.Service

type StreamExtensionConfigs =
     P'.Method "StreamExtensionConfigs" (P'.StreamOf DiscoveryProto.DiscoveryRequest) (P'.StreamOf DiscoveryProto.DiscoveryResponse)

type DeltaExtensionConfigs =
     P'.Method "DeltaExtensionConfigs" (P'.StreamOf DiscoveryProto.DeltaDiscoveryRequest)
      (P'.StreamOf DiscoveryProto.DeltaDiscoveryResponse)

type FetchExtensionConfigs =
     P'.Method "FetchExtensionConfigs" (P'.Single DiscoveryProto.DiscoveryRequest) (P'.Single DiscoveryProto.DiscoveryResponse)

streamExtensionConfigs :: StreamExtensionConfigs
streamExtensionConfigs = P'.Method

deltaExtensionConfigs :: DeltaExtensionConfigs
deltaExtensionConfigs = P'.Method

fetchExtensionConfigs :: FetchExtensionConfigs
fetchExtensionConfigs = P'.Method