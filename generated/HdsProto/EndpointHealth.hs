{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.EndpointHealth (EndpointHealth(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified EndpointComponentsProto.Endpoint as EndpointComponentsProto
import qualified HealthCheckProto.HealthStatus as HealthCheckProto

data EndpointHealth = EndpointHealth{endpoint :: !(P'.Maybe EndpointComponentsProto.Endpoint),
                                     health_status :: !(P'.Maybe HealthCheckProto.HealthStatus)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable EndpointHealth where
  mergeAppend (EndpointHealth x'1 x'2) (EndpointHealth y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in EndpointHealth z'1 z'2

instance P'.Default EndpointHealth where
  defaultValue = EndpointHealth P'.defaultValue P'.defaultValue

instance P'.Wire EndpointHealth where
  wireSize ft' self'@(EndpointHealth x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 14 x'2)
  wirePutWithSize ft' self'@(EndpointHealth x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 16 14 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{endpoint = P'.mergeAppend (endpoint old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{health_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> EndpointHealth) EndpointHealth where
  getVal m' f' = f' m'

instance P'.GPB EndpointHealth

instance P'.ReflectDescriptor EndpointHealth where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.health.v3.EndpointHealth\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"EndpointHealth\"}, descFilePath = [\"HdsProto\",\"EndpointHealth.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.EndpointHealth.endpoint\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"EndpointHealth\"], baseName' = FName \"endpoint\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.endpoint.v3.Endpoint\", haskellPrefix = [], parentModule = [MName \"EndpointComponentsProto\"], baseName = MName \"Endpoint\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.EndpointHealth.health_status\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"EndpointHealth\"], baseName' = FName \"health_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthStatus\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\"], baseName = MName \"HealthStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType EndpointHealth where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg EndpointHealth where
  textPut msg
   = do
       P'.tellT "endpoint" (endpoint msg)
       P'.tellT "health_status" (health_status msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'endpoint, parse'health_status]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'endpoint = Prelude'.fmap (\ v o -> o{endpoint = v}) (P'.try (P'.getT "endpoint"))
        parse'health_status = Prelude'.fmap (\ v o -> o{health_status = v}) (P'.try (P'.getT "health_status"))