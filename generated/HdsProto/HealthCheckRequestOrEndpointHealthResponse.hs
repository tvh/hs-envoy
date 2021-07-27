{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.HealthCheckRequestOrEndpointHealthResponse (HealthCheckRequestOrEndpointHealthResponse(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type
       as HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type
       (Request_type(..), get'health_check_request, get'endpoint_health_response)

data HealthCheckRequestOrEndpointHealthResponse = HealthCheckRequestOrEndpointHealthResponse{request_type ::
                                                                                             P'.Maybe
                                                                                              (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.Request_type)}
                                                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable,
                                                            Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HealthCheckRequestOrEndpointHealthResponse where
  mergeAppend (HealthCheckRequestOrEndpointHealthResponse x'1) (HealthCheckRequestOrEndpointHealthResponse y'1)
   = let !z'1 = P'.mergeAppend x'1 y'1 in HealthCheckRequestOrEndpointHealthResponse z'1

instance P'.Default HealthCheckRequestOrEndpointHealthResponse where
  defaultValue = HealthCheckRequestOrEndpointHealthResponse P'.defaultValue

instance P'.Wire HealthCheckRequestOrEndpointHealthResponse where
  wireSize ft' self'@(HealthCheckRequestOrEndpointHealthResponse x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11
             (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.get'health_check_request Prelude'.=<< x'1)
             +
             P'.wireSizeOpt 1 11
              (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.get'endpoint_health_response Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(HealthCheckRequestOrEndpointHealthResponse x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11
              (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.get'health_check_request Prelude'.=<< x'1),
             P'.wirePutOptWithSize 18 11
              (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.get'endpoint_health_response Prelude'.=<< x'1)]
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
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{request_type =
                                P'.mergeAppend (request_type old'Self)
                                 (Prelude'.Just
                                   (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.Health_check_request
                                     new'Field))})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{request_type =
                                P'.mergeAppend (request_type old'Self)
                                 (Prelude'.Just
                                   (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.Endpoint_health_response
                                     new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> HealthCheckRequestOrEndpointHealthResponse) HealthCheckRequestOrEndpointHealthResponse where
  getVal m' f' = f' m'

instance P'.GPB HealthCheckRequestOrEndpointHealthResponse

instance P'.ReflectDescriptor HealthCheckRequestOrEndpointHealthResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.health.v3.HealthCheckRequestOrEndpointHealthResponse\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"HealthCheckRequestOrEndpointHealthResponse\"}, descFilePath = [\"HdsProto\",\"HealthCheckRequestOrEndpointHealthResponse.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.service.health.v3.HealthCheckRequestOrEndpointHealthResponse.request_type\", haskellPrefix = [], parentModule = [MName \"HdsProto\",MName \"HealthCheckRequestOrEndpointHealthResponse\"], baseName = MName \"Request_type\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.HealthCheckRequestOrEndpointHealthResponse.request_type\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"HealthCheckRequestOrEndpointHealthResponse\"], baseName' = FName \"request_type\", baseNamePrefix' = \"\"}, oneofFilePath = [\"HdsProto\",\"HealthCheckRequestOrEndpointHealthResponse\",\"Request_type.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.service.health.v3.HealthCheckRequestOrEndpointHealthResponse.request_type.health_check_request\", haskellPrefix = [], parentModule = [MName \"HdsProto\",MName \"HealthCheckRequestOrEndpointHealthResponse\",MName \"Request_type\"], baseName = MName \"Health_check_request\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.HealthCheckRequestOrEndpointHealthResponse.request_type.health_check_request\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"HealthCheckRequestOrEndpointHealthResponse\",MName \"Request_type\"], baseName' = FName \"health_check_request\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.health.v3.HealthCheckRequest\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"HealthCheckRequest\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.service.health.v3.HealthCheckRequestOrEndpointHealthResponse.request_type.endpoint_health_response\", haskellPrefix = [], parentModule = [MName \"HdsProto\",MName \"HealthCheckRequestOrEndpointHealthResponse\",MName \"Request_type\"], baseName = MName \"Endpoint_health_response\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.HealthCheckRequestOrEndpointHealthResponse.request_type.endpoint_health_response\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"HealthCheckRequestOrEndpointHealthResponse\",MName \"Request_type\"], baseName' = FName \"endpoint_health_response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.health.v3.EndpointHealthResponse\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"EndpointHealthResponse\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType HealthCheckRequestOrEndpointHealthResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg HealthCheckRequestOrEndpointHealthResponse where
  textPut msg
   = do
       case (request_type msg) of
         Prelude'.Just
          (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.Health_check_request health_check_request) -> P'.tellT
                                                                                                                           "health_check_request"
                                                                                                                           health_check_request
         Prelude'.Just
          (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.Endpoint_health_response
            endpoint_health_response) -> P'.tellT "endpoint_health_response" endpoint_health_response
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'request_type]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'request_type = P'.try (P'.choice [parse'health_check_request, parse'endpoint_health_response])
          where
              parse'health_check_request
               = P'.try
                  (do
                     v <- P'.getT "health_check_request"
                     Prelude'.return
                      (\ s ->
                        s{request_type =
                           Prelude'.Just
                            (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.Health_check_request v)}))
              parse'endpoint_health_response
               = P'.try
                  (do
                     v <- P'.getT "endpoint_health_response"
                     Prelude'.return
                      (\ s ->
                        s{request_type =
                           Prelude'.Just
                            (HdsProto.HealthCheckRequestOrEndpointHealthResponse.Request_type.Endpoint_health_response v)}))