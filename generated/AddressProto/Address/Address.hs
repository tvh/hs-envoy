{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AddressProto.Address.Address where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AddressProto.EnvoyInternalAddress as AddressProto
import qualified AddressProto.Pipe as AddressProto
import qualified AddressProto.SocketAddress as AddressProto

data Address = Socket_address{socket_address :: (AddressProto.SocketAddress)}
             | Pipe{pipe :: (AddressProto.Pipe)}
             | Envoy_internal_address{envoy_internal_address :: (AddressProto.EnvoyInternalAddress)}
               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'socket_address x
 = case x of
     Socket_address socket_address -> Prelude'.Just socket_address
     _ -> Prelude'.Nothing
get'pipe x
 = case x of
     Pipe pipe -> Prelude'.Just pipe
     _ -> Prelude'.Nothing
get'envoy_internal_address x
 = case x of
     Envoy_internal_address envoy_internal_address -> Prelude'.Just envoy_internal_address
     _ -> Prelude'.Nothing

instance P'.Default Address where
  defaultValue = Socket_address P'.defaultValue

instance P'.Mergeable Address