{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.ClusterHealthCheck (ClusterHealthCheck(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ClusterProto.Cluster.TransportSocketMatch as ClusterProto.Cluster
import qualified HdsProto.LocalityEndpoints as HdsProto
import qualified HealthCheckProto.HealthCheck as HealthCheckProto

data ClusterHealthCheck = ClusterHealthCheck{cluster_name :: !(P'.Maybe P'.Utf8),
                                             health_checks :: !(P'.Seq HealthCheckProto.HealthCheck),
                                             locality_endpoints :: !(P'.Seq HdsProto.LocalityEndpoints),
                                             transport_socket_matches :: !(P'.Seq ClusterProto.Cluster.TransportSocketMatch)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ClusterHealthCheck where
  mergeAppend (ClusterHealthCheck x'1 x'2 x'3 x'4) (ClusterHealthCheck y'1 y'2 y'3 y'4)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
      in ClusterHealthCheck z'1 z'2 z'3 z'4

instance P'.Default ClusterHealthCheck where
  defaultValue = ClusterHealthCheck P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire ClusterHealthCheck where
  wireSize ft' self'@(ClusterHealthCheck x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeRep 1 11 x'4)
  wirePutWithSize ft' self'@(ClusterHealthCheck x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutRepWithSize 18 11 x'2, P'.wirePutRepWithSize 26 11 x'3,
             P'.wirePutRepWithSize 34 11 x'4]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{cluster_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{health_checks = P'.append (health_checks old'Self) new'Field})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{locality_endpoints = P'.append (locality_endpoints old'Self) new'Field})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{transport_socket_matches = P'.append (transport_socket_matches old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ClusterHealthCheck) ClusterHealthCheck where
  getVal m' f' = f' m'

instance P'.GPB ClusterHealthCheck

instance P'.ReflectDescriptor ClusterHealthCheck where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.health.v3.ClusterHealthCheck\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"ClusterHealthCheck\"}, descFilePath = [\"HdsProto\",\"ClusterHealthCheck.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.ClusterHealthCheck.cluster_name\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"ClusterHealthCheck\"], baseName' = FName \"cluster_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.ClusterHealthCheck.health_checks\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"ClusterHealthCheck\"], baseName' = FName \"health_checks\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\"], baseName = MName \"HealthCheck\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.ClusterHealthCheck.locality_endpoints\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"ClusterHealthCheck\"], baseName' = FName \"locality_endpoints\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.health.v3.LocalityEndpoints\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"LocalityEndpoints\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.ClusterHealthCheck.transport_socket_matches\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"ClusterHealthCheck\"], baseName' = FName \"transport_socket_matches\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.cluster.v3.Cluster.TransportSocketMatch\", haskellPrefix = [], parentModule = [MName \"ClusterProto\",MName \"Cluster\"], baseName = MName \"TransportSocketMatch\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ClusterHealthCheck where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ClusterHealthCheck where
  textPut msg
   = do
       P'.tellT "cluster_name" (cluster_name msg)
       P'.tellT "health_checks" (health_checks msg)
       P'.tellT "locality_endpoints" (locality_endpoints msg)
       P'.tellT "transport_socket_matches" (transport_socket_matches msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'cluster_name, parse'health_checks, parse'locality_endpoints, parse'transport_socket_matches])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'cluster_name = Prelude'.fmap (\ v o -> o{cluster_name = v}) (P'.try (P'.getT "cluster_name"))
        parse'health_checks
         = Prelude'.fmap (\ v o -> o{health_checks = P'.append (health_checks o) v}) (P'.try (P'.getT "health_checks"))
        parse'locality_endpoints
         = Prelude'.fmap (\ v o -> o{locality_endpoints = P'.append (locality_endpoints o) v})
            (P'.try (P'.getT "locality_endpoints"))
        parse'transport_socket_matches
         = Prelude'.fmap (\ v o -> o{transport_socket_matches = P'.append (transport_socket_matches o) v})
            (P'.try (P'.getT "transport_socket_matches"))