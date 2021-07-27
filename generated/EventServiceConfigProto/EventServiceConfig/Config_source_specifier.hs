{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module EventServiceConfigProto.EventServiceConfig.Config_source_specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified GrpcServiceProto.GrpcService as GrpcServiceProto

data Config_source_specifier = Grpc_service{grpc_service :: (GrpcServiceProto.GrpcService)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                         Prelude'.Generic)
get'grpc_service x
 = case x of
     Grpc_service grpc_service -> Prelude'.Just grpc_service
     _ -> Prelude'.Nothing

instance P'.Default Config_source_specifier where
  defaultValue = Grpc_service P'.defaultValue

instance P'.Mergeable Config_source_specifier