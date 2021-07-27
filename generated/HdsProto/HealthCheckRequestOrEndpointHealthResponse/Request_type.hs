{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified HdsProto.EndpointHealthResponse as HdsProto
import qualified HdsProto.HealthCheckRequest as HdsProto

data Request_type = Health_check_request{health_check_request :: (HdsProto.HealthCheckRequest)}
                  | Endpoint_health_response{endpoint_health_response :: (HdsProto.EndpointHealthResponse)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'health_check_request x
 = case x of
     Health_check_request health_check_request -> Prelude'.Just health_check_request
     _ -> Prelude'.Nothing
get'endpoint_health_response x
 = case x of
     Endpoint_health_response endpoint_health_response -> Prelude'.Just endpoint_health_response
     _ -> Prelude'.Nothing

instance P'.Default Request_type where
  defaultValue = Health_check_request P'.defaultValue

instance P'.Mergeable Request_type