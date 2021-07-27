{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module CsdsProto.PerXdsConfig (PerXdsConfig(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified CsdsProto.ClientConfigStatus as CsdsProto
import qualified CsdsProto.ConfigStatus as CsdsProto
import qualified CsdsProto.PerXdsConfig.Per_xds_config as CsdsProto.PerXdsConfig.Per_xds_config
       (Per_xds_config(..), get'listener_config, get'cluster_config, get'route_config, get'scoped_route_config, get'endpoint_config)

data PerXdsConfig = PerXdsConfig{status :: !(P'.Maybe CsdsProto.ConfigStatus),
                                 client_status :: !(P'.Maybe CsdsProto.ClientConfigStatus),
                                 per_xds_config :: P'.Maybe (CsdsProto.PerXdsConfig.Per_xds_config.Per_xds_config)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable PerXdsConfig where
  mergeAppend (PerXdsConfig x'1 x'2 x'3) (PerXdsConfig y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in PerXdsConfig z'1 z'2 z'3

instance P'.Default PerXdsConfig where
  defaultValue = PerXdsConfig P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire PerXdsConfig where
  wireSize ft' self'@(PerXdsConfig x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 14 x'2 +
             P'.wireSizeOpt 1 11 (CsdsProto.PerXdsConfig.Per_xds_config.get'listener_config Prelude'.=<< x'3)
             + P'.wireSizeOpt 1 11 (CsdsProto.PerXdsConfig.Per_xds_config.get'cluster_config Prelude'.=<< x'3)
             + P'.wireSizeOpt 1 11 (CsdsProto.PerXdsConfig.Per_xds_config.get'route_config Prelude'.=<< x'3)
             + P'.wireSizeOpt 1 11 (CsdsProto.PerXdsConfig.Per_xds_config.get'scoped_route_config Prelude'.=<< x'3)
             + P'.wireSizeOpt 1 11 (CsdsProto.PerXdsConfig.Per_xds_config.get'endpoint_config Prelude'.=<< x'3))
  wirePutWithSize ft' self'@(PerXdsConfig x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 8 14 x'1,
             P'.wirePutOptWithSize 18 11 (CsdsProto.PerXdsConfig.Per_xds_config.get'listener_config Prelude'.=<< x'3),
             P'.wirePutOptWithSize 26 11 (CsdsProto.PerXdsConfig.Per_xds_config.get'cluster_config Prelude'.=<< x'3),
             P'.wirePutOptWithSize 34 11 (CsdsProto.PerXdsConfig.Per_xds_config.get'route_config Prelude'.=<< x'3),
             P'.wirePutOptWithSize 42 11 (CsdsProto.PerXdsConfig.Per_xds_config.get'scoped_route_config Prelude'.=<< x'3),
             P'.wirePutOptWithSize 50 11 (CsdsProto.PerXdsConfig.Per_xds_config.get'endpoint_config Prelude'.=<< x'3),
             P'.wirePutOptWithSize 56 14 x'2]
        put'FieldsSized
         = let size' = Prelude'.fst (P'.runPutM put'Fields)
               put'Size
                = do
                    P'.putSize size'
                    Prelude'.return (P'.size'WireSize size')
            in P'.sequencePutWithSize [put'Size, put'Fields]
  wireGet ft'
   = case ft' of
       10 -> P'.getBareMessageWith (P'.catch'Unknown' P'.discardUnknown update'Self)
       11 -> P'.getMessageWith (P'.catch'Unknown' P'.discardUnknown update'Self)
       _ -> P'.wireGetErr ft'
    where
        update'Self wire'Tag old'Self
         = case wire'Tag of
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{status = Prelude'.Just new'Field}) (P'.wireGet 14)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{client_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{per_xds_config =
                                P'.mergeAppend (per_xds_config old'Self)
                                 (Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Listener_config new'Field))})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{per_xds_config =
                                P'.mergeAppend (per_xds_config old'Self)
                                 (Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Cluster_config new'Field))})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{per_xds_config =
                                P'.mergeAppend (per_xds_config old'Self)
                                 (Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Route_config new'Field))})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{per_xds_config =
                                P'.mergeAppend (per_xds_config old'Self)
                                 (Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Scoped_route_config new'Field))})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{per_xds_config =
                                P'.mergeAppend (per_xds_config old'Self)
                                 (Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Endpoint_config new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> PerXdsConfig) PerXdsConfig where
  getVal m' f' = f' m'

instance P'.GPB PerXdsConfig

instance P'.ReflectDescriptor PerXdsConfig where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 56])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.status.v3.PerXdsConfig\", haskellPrefix = [], parentModule = [MName \"CsdsProto\"], baseName = MName \"PerXdsConfig\"}, descFilePath = [\"CsdsProto\",\"PerXdsConfig.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.PerXdsConfig.status\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"PerXdsConfig\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.status.v3.ConfigStatus\", haskellPrefix = [], parentModule = [MName \"CsdsProto\"], baseName = MName \"ConfigStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.PerXdsConfig.client_status\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"PerXdsConfig\"], baseName' = FName \"client_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.status.v3.ClientConfigStatus\", haskellPrefix = [], parentModule = [MName \"CsdsProto\"], baseName = MName \"ClientConfigStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config\", haskellPrefix = [], parentModule = [MName \"CsdsProto\",MName \"PerXdsConfig\"], baseName = MName \"Per_xds_config\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"PerXdsConfig\"], baseName' = FName \"per_xds_config\", baseNamePrefix' = \"\"}, oneofFilePath = [\"CsdsProto\",\"PerXdsConfig\",\"Per_xds_config.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config.listener_config\", haskellPrefix = [], parentModule = [MName \"CsdsProto\",MName \"PerXdsConfig\",MName \"Per_xds_config\"], baseName = MName \"Listener_config\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config.listener_config\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"PerXdsConfig\",MName \"Per_xds_config\"], baseName' = FName \"listener_config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.admin.v3.ListenersConfigDump\", haskellPrefix = [], parentModule = [MName \"ConfigDumpProto\"], baseName = MName \"ListenersConfigDump\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config.cluster_config\", haskellPrefix = [], parentModule = [MName \"CsdsProto\",MName \"PerXdsConfig\",MName \"Per_xds_config\"], baseName = MName \"Cluster_config\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config.cluster_config\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"PerXdsConfig\",MName \"Per_xds_config\"], baseName' = FName \"cluster_config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.admin.v3.ClustersConfigDump\", haskellPrefix = [], parentModule = [MName \"ConfigDumpProto\"], baseName = MName \"ClustersConfigDump\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config.route_config\", haskellPrefix = [], parentModule = [MName \"CsdsProto\",MName \"PerXdsConfig\",MName \"Per_xds_config\"], baseName = MName \"Route_config\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config.route_config\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"PerXdsConfig\",MName \"Per_xds_config\"], baseName' = FName \"route_config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.admin.v3.RoutesConfigDump\", haskellPrefix = [], parentModule = [MName \"ConfigDumpProto\"], baseName = MName \"RoutesConfigDump\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config.scoped_route_config\", haskellPrefix = [], parentModule = [MName \"CsdsProto\",MName \"PerXdsConfig\",MName \"Per_xds_config\"], baseName = MName \"Scoped_route_config\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config.scoped_route_config\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"PerXdsConfig\",MName \"Per_xds_config\"], baseName' = FName \"scoped_route_config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.admin.v3.ScopedRoutesConfigDump\", haskellPrefix = [], parentModule = [MName \"ConfigDumpProto\"], baseName = MName \"ScopedRoutesConfigDump\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config.endpoint_config\", haskellPrefix = [], parentModule = [MName \"CsdsProto\",MName \"PerXdsConfig\",MName \"Per_xds_config\"], baseName = MName \"Endpoint_config\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.PerXdsConfig.per_xds_config.endpoint_config\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"PerXdsConfig\",MName \"Per_xds_config\"], baseName' = FName \"endpoint_config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.admin.v3.EndpointsConfigDump\", haskellPrefix = [], parentModule = [MName \"ConfigDumpProto\"], baseName = MName \"EndpointsConfigDump\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType PerXdsConfig where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg PerXdsConfig where
  textPut msg
   = do
       P'.tellT "status" (status msg)
       P'.tellT "client_status" (client_status msg)
       case (per_xds_config msg) of
         Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Listener_config listener_config) -> P'.tellT "listener_config"
                                                                                                   listener_config
         Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Cluster_config cluster_config) -> P'.tellT "cluster_config"
                                                                                                 cluster_config
         Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Route_config route_config) -> P'.tellT "route_config" route_config
         Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Scoped_route_config scoped_route_config) -> P'.tellT
                                                                                                           "scoped_route_config"
                                                                                                           scoped_route_config
         Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Endpoint_config endpoint_config) -> P'.tellT "endpoint_config"
                                                                                                   endpoint_config
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'status, parse'client_status, parse'per_xds_config]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'status = Prelude'.fmap (\ v o -> o{status = v}) (P'.try (P'.getT "status"))
        parse'client_status = Prelude'.fmap (\ v o -> o{client_status = v}) (P'.try (P'.getT "client_status"))
        parse'per_xds_config
         = P'.try
            (P'.choice
              [parse'listener_config, parse'cluster_config, parse'route_config, parse'scoped_route_config, parse'endpoint_config])
          where
              parse'listener_config
               = P'.try
                  (do
                     v <- P'.getT "listener_config"
                     Prelude'.return
                      (\ s -> s{per_xds_config = Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Listener_config v)}))
              parse'cluster_config
               = P'.try
                  (do
                     v <- P'.getT "cluster_config"
                     Prelude'.return
                      (\ s -> s{per_xds_config = Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Cluster_config v)}))
              parse'route_config
               = P'.try
                  (do
                     v <- P'.getT "route_config"
                     Prelude'.return
                      (\ s -> s{per_xds_config = Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Route_config v)}))
              parse'scoped_route_config
               = P'.try
                  (do
                     v <- P'.getT "scoped_route_config"
                     Prelude'.return
                      (\ s -> s{per_xds_config = Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Scoped_route_config v)}))
              parse'endpoint_config
               = P'.try
                  (do
                     v <- P'.getT "endpoint_config"
                     Prelude'.return
                      (\ s -> s{per_xds_config = Prelude'.Just (CsdsProto.PerXdsConfig.Per_xds_config.Endpoint_config v)}))