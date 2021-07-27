{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.Target_specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified GrpcServiceProto.GrpcService.EnvoyGrpc as GrpcServiceProto.GrpcService
import qualified GrpcServiceProto.GrpcService.GoogleGrpc as GrpcServiceProto.GrpcService

data Target_specifier = Envoy_grpc{envoy_grpc :: (GrpcServiceProto.GrpcService.EnvoyGrpc)}
                      | Google_grpc{google_grpc :: (GrpcServiceProto.GrpcService.GoogleGrpc)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'envoy_grpc x
 = case x of
     Envoy_grpc envoy_grpc -> Prelude'.Just envoy_grpc
     _ -> Prelude'.Nothing
get'google_grpc x
 = case x of
     Google_grpc google_grpc -> Prelude'.Just google_grpc
     _ -> Prelude'.Nothing

instance P'.Default Target_specifier where
  defaultValue = Envoy_grpc P'.defaultValue

instance P'.Mergeable Target_specifier