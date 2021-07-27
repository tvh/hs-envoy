{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.ClusterEndpointsHealth (ClusterEndpointsHealth(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified HdsProto.LocalityEndpointsHealth as HdsProto

data ClusterEndpointsHealth = ClusterEndpointsHealth{cluster_name :: !(P'.Maybe P'.Utf8),
                                                     locality_endpoints_health :: !(P'.Seq HdsProto.LocalityEndpointsHealth)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                        Prelude'.Generic)

instance P'.Mergeable ClusterEndpointsHealth where
  mergeAppend (ClusterEndpointsHealth x'1 x'2) (ClusterEndpointsHealth y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in ClusterEndpointsHealth z'1 z'2

instance P'.Default ClusterEndpointsHealth where
  defaultValue = ClusterEndpointsHealth P'.defaultValue P'.defaultValue

instance P'.Wire ClusterEndpointsHealth where
  wireSize ft' self'@(ClusterEndpointsHealth x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePutWithSize ft' self'@(ClusterEndpointsHealth x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutRepWithSize 18 11 x'2]
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
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{locality_endpoints_health = P'.append (locality_endpoints_health old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ClusterEndpointsHealth) ClusterEndpointsHealth where
  getVal m' f' = f' m'

instance P'.GPB ClusterEndpointsHealth

instance P'.ReflectDescriptor ClusterEndpointsHealth where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.health.v3.ClusterEndpointsHealth\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"ClusterEndpointsHealth\"}, descFilePath = [\"HdsProto\",\"ClusterEndpointsHealth.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.ClusterEndpointsHealth.cluster_name\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"ClusterEndpointsHealth\"], baseName' = FName \"cluster_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.ClusterEndpointsHealth.locality_endpoints_health\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"ClusterEndpointsHealth\"], baseName' = FName \"locality_endpoints_health\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.health.v3.LocalityEndpointsHealth\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"LocalityEndpointsHealth\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ClusterEndpointsHealth where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ClusterEndpointsHealth where
  textPut msg
   = do
       P'.tellT "cluster_name" (cluster_name msg)
       P'.tellT "locality_endpoints_health" (locality_endpoints_health msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'cluster_name, parse'locality_endpoints_health]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'cluster_name = Prelude'.fmap (\ v o -> o{cluster_name = v}) (P'.try (P'.getT "cluster_name"))
        parse'locality_endpoints_health
         = Prelude'.fmap (\ v o -> o{locality_endpoints_health = P'.append (locality_endpoints_health o) v})
            (P'.try (P'.getT "locality_endpoints_health"))