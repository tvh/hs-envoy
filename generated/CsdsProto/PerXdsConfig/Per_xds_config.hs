{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module CsdsProto.PerXdsConfig.Per_xds_config where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ConfigDumpProto.ClustersConfigDump as ConfigDumpProto
import qualified ConfigDumpProto.EndpointsConfigDump as ConfigDumpProto
import qualified ConfigDumpProto.ListenersConfigDump as ConfigDumpProto
import qualified ConfigDumpProto.RoutesConfigDump as ConfigDumpProto
import qualified ConfigDumpProto.ScopedRoutesConfigDump as ConfigDumpProto

data Per_xds_config = Listener_config{listener_config :: (ConfigDumpProto.ListenersConfigDump)}
                    | Cluster_config{cluster_config :: (ConfigDumpProto.ClustersConfigDump)}
                    | Route_config{route_config :: (ConfigDumpProto.RoutesConfigDump)}
                    | Scoped_route_config{scoped_route_config :: (ConfigDumpProto.ScopedRoutesConfigDump)}
                    | Endpoint_config{endpoint_config :: (ConfigDumpProto.EndpointsConfigDump)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'listener_config x
 = case x of
     Listener_config listener_config -> Prelude'.Just listener_config
     _ -> Prelude'.Nothing
get'cluster_config x
 = case x of
     Cluster_config cluster_config -> Prelude'.Just cluster_config
     _ -> Prelude'.Nothing
get'route_config x
 = case x of
     Route_config route_config -> Prelude'.Just route_config
     _ -> Prelude'.Nothing
get'scoped_route_config x
 = case x of
     Scoped_route_config scoped_route_config -> Prelude'.Just scoped_route_config
     _ -> Prelude'.Nothing
get'endpoint_config x
 = case x of
     Endpoint_config endpoint_config -> Prelude'.Just endpoint_config
     _ -> Prelude'.Nothing

instance P'.Default Per_xds_config where
  defaultValue = Listener_config P'.defaultValue

instance P'.Mergeable Per_xds_config