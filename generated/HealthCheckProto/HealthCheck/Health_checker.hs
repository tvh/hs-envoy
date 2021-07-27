{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HealthCheckProto.HealthCheck.Health_checker where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified HealthCheckProto.HealthCheck.CustomHealthCheck as HealthCheckProto.HealthCheck
import qualified HealthCheckProto.HealthCheck.GrpcHealthCheck as HealthCheckProto.HealthCheck
import qualified HealthCheckProto.HealthCheck.HttpHealthCheck as HealthCheckProto.HealthCheck
import qualified HealthCheckProto.HealthCheck.TcpHealthCheck as HealthCheckProto.HealthCheck

data Health_checker = Http_health_check{http_health_check :: (HealthCheckProto.HealthCheck.HttpHealthCheck)}
                    | Tcp_health_check{tcp_health_check :: (HealthCheckProto.HealthCheck.TcpHealthCheck)}
                    | Grpc_health_check{grpc_health_check :: (HealthCheckProto.HealthCheck.GrpcHealthCheck)}
                    | Custom_health_check{custom_health_check :: (HealthCheckProto.HealthCheck.CustomHealthCheck)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'http_health_check x
 = case x of
     Http_health_check http_health_check -> Prelude'.Just http_health_check
     _ -> Prelude'.Nothing
get'tcp_health_check x
 = case x of
     Tcp_health_check tcp_health_check -> Prelude'.Just tcp_health_check
     _ -> Prelude'.Nothing
get'grpc_health_check x
 = case x of
     Grpc_health_check grpc_health_check -> Prelude'.Just grpc_health_check
     _ -> Prelude'.Nothing
get'custom_health_check x
 = case x of
     Custom_health_check custom_health_check -> Prelude'.Just custom_health_check
     _ -> Prelude'.Nothing

instance P'.Default Health_checker where
  defaultValue = Http_health_check P'.defaultValue

instance P'.Mergeable Health_checker