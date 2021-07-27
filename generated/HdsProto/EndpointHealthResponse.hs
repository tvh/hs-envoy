{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.EndpointHealthResponse (EndpointHealthResponse(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified HdsProto.ClusterEndpointsHealth as HdsProto
import qualified HdsProto.EndpointHealth as HdsProto

data EndpointHealthResponse = EndpointHealthResponse{endpoints_health :: !(P'.Seq HdsProto.EndpointHealth),
                                                     cluster_endpoints_health :: !(P'.Seq HdsProto.ClusterEndpointsHealth)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                        Prelude'.Generic)

instance P'.Mergeable EndpointHealthResponse where
  mergeAppend (EndpointHealthResponse x'1 x'2) (EndpointHealthResponse y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in EndpointHealthResponse z'1 z'2

instance P'.Default EndpointHealthResponse where
  defaultValue = EndpointHealthResponse P'.defaultValue P'.defaultValue

instance P'.Wire EndpointHealthResponse where
  wireSize ft' self'@(EndpointHealthResponse x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePutWithSize ft' self'@(EndpointHealthResponse x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutRepWithSize 10 11 x'1, P'.wirePutRepWithSize 18 11 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{endpoints_health = P'.append (endpoints_health old'Self) new'Field})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{cluster_endpoints_health = P'.append (cluster_endpoints_health old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> EndpointHealthResponse) EndpointHealthResponse where
  getVal m' f' = f' m'

instance P'.GPB EndpointHealthResponse

instance P'.ReflectDescriptor EndpointHealthResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.health.v3.EndpointHealthResponse\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"EndpointHealthResponse\"}, descFilePath = [\"HdsProto\",\"EndpointHealthResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.EndpointHealthResponse.endpoints_health\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"EndpointHealthResponse\"], baseName' = FName \"endpoints_health\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.health.v3.EndpointHealth\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"EndpointHealth\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.EndpointHealthResponse.cluster_endpoints_health\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"EndpointHealthResponse\"], baseName' = FName \"cluster_endpoints_health\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.health.v3.ClusterEndpointsHealth\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"ClusterEndpointsHealth\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType EndpointHealthResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg EndpointHealthResponse where
  textPut msg
   = do
       P'.tellT "endpoints_health" (endpoints_health msg)
       P'.tellT "cluster_endpoints_health" (cluster_endpoints_health msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'endpoints_health, parse'cluster_endpoints_health]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'endpoints_health
         = Prelude'.fmap (\ v o -> o{endpoints_health = P'.append (endpoints_health o) v}) (P'.try (P'.getT "endpoints_health"))
        parse'cluster_endpoints_health
         = Prelude'.fmap (\ v o -> o{cluster_endpoints_health = P'.append (cluster_endpoints_health o) v})
            (P'.try (P'.getT "cluster_endpoints_health"))