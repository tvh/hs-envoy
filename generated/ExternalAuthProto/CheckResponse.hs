{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ExternalAuthProto.CheckResponse (CheckResponse(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ExternalAuthProto.CheckResponse.Http_response as ExternalAuthProto.CheckResponse.Http_response
       (Http_response(..), get'denied_response, get'ok_response)
import qualified StatusProto.Status as StatusProto
import qualified StructProto.Struct as StructProto

data CheckResponse = CheckResponse{status :: !(P'.Maybe StatusProto.Status), dynamic_metadata :: !(P'.Maybe StructProto.Struct),
                                   http_response :: P'.Maybe (ExternalAuthProto.CheckResponse.Http_response.Http_response)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable CheckResponse where
  mergeAppend (CheckResponse x'1 x'2 x'3) (CheckResponse y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in CheckResponse z'1 z'2 z'3

instance P'.Default CheckResponse where
  defaultValue = CheckResponse P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire CheckResponse where
  wireSize ft' self'@(CheckResponse x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 +
             P'.wireSizeOpt 1 11 (ExternalAuthProto.CheckResponse.Http_response.get'denied_response Prelude'.=<< x'3)
             + P'.wireSizeOpt 1 11 (ExternalAuthProto.CheckResponse.Http_response.get'ok_response Prelude'.=<< x'3))
  wirePutWithSize ft' self'@(CheckResponse x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1,
             P'.wirePutOptWithSize 18 11 (ExternalAuthProto.CheckResponse.Http_response.get'denied_response Prelude'.=<< x'3),
             P'.wirePutOptWithSize 26 11 (ExternalAuthProto.CheckResponse.Http_response.get'ok_response Prelude'.=<< x'3),
             P'.wirePutOptWithSize 34 11 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{status = P'.mergeAppend (status old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{dynamic_metadata = P'.mergeAppend (dynamic_metadata old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{http_response =
                                P'.mergeAppend (http_response old'Self)
                                 (Prelude'.Just (ExternalAuthProto.CheckResponse.Http_response.Denied_response new'Field))})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{http_response =
                                P'.mergeAppend (http_response old'Self)
                                 (Prelude'.Just (ExternalAuthProto.CheckResponse.Http_response.Ok_response new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CheckResponse) CheckResponse where
  getVal m' f' = f' m'

instance P'.GPB CheckResponse

instance P'.ReflectDescriptor CheckResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.auth.v3.CheckResponse\", haskellPrefix = [], parentModule = [MName \"ExternalAuthProto\"], baseName = MName \"CheckResponse\"}, descFilePath = [\"ExternalAuthProto\",\"CheckResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.CheckResponse.status\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"CheckResponse\"], baseName' = FName \"status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.rpc.Status\", haskellPrefix = [], parentModule = [MName \"StatusProto\"], baseName = MName \"Status\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.CheckResponse.dynamic_metadata\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"CheckResponse\"], baseName' = FName \"dynamic_metadata\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Struct\", haskellPrefix = [], parentModule = [MName \"StructProto\"], baseName = MName \"Struct\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.service.auth.v3.CheckResponse.http_response\", haskellPrefix = [], parentModule = [MName \"ExternalAuthProto\",MName \"CheckResponse\"], baseName = MName \"Http_response\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.CheckResponse.http_response\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"CheckResponse\"], baseName' = FName \"http_response\", baseNamePrefix' = \"\"}, oneofFilePath = [\"ExternalAuthProto\",\"CheckResponse\",\"Http_response.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.service.auth.v3.CheckResponse.http_response.denied_response\", haskellPrefix = [], parentModule = [MName \"ExternalAuthProto\",MName \"CheckResponse\",MName \"Http_response\"], baseName = MName \"Denied_response\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.CheckResponse.http_response.denied_response\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"CheckResponse\",MName \"Http_response\"], baseName' = FName \"denied_response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.auth.v3.DeniedHttpResponse\", haskellPrefix = [], parentModule = [MName \"ExternalAuthProto\"], baseName = MName \"DeniedHttpResponse\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.service.auth.v3.CheckResponse.http_response.ok_response\", haskellPrefix = [], parentModule = [MName \"ExternalAuthProto\",MName \"CheckResponse\",MName \"Http_response\"], baseName = MName \"Ok_response\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.CheckResponse.http_response.ok_response\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"CheckResponse\",MName \"Http_response\"], baseName' = FName \"ok_response\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.auth.v3.OkHttpResponse\", haskellPrefix = [], parentModule = [MName \"ExternalAuthProto\"], baseName = MName \"OkHttpResponse\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType CheckResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CheckResponse where
  textPut msg
   = do
       P'.tellT "status" (status msg)
       P'.tellT "dynamic_metadata" (dynamic_metadata msg)
       case (http_response msg) of
         Prelude'.Just (ExternalAuthProto.CheckResponse.Http_response.Denied_response denied_response) -> P'.tellT "denied_response"
                                                                                                           denied_response
         Prelude'.Just (ExternalAuthProto.CheckResponse.Http_response.Ok_response ok_response) -> P'.tellT "ok_response" ok_response
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'status, parse'dynamic_metadata, parse'http_response]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'status = Prelude'.fmap (\ v o -> o{status = v}) (P'.try (P'.getT "status"))
        parse'dynamic_metadata = Prelude'.fmap (\ v o -> o{dynamic_metadata = v}) (P'.try (P'.getT "dynamic_metadata"))
        parse'http_response = P'.try (P'.choice [parse'denied_response, parse'ok_response])
          where
              parse'denied_response
               = P'.try
                  (do
                     v <- P'.getT "denied_response"
                     Prelude'.return
                      (\ s -> s{http_response = Prelude'.Just (ExternalAuthProto.CheckResponse.Http_response.Denied_response v)}))
              parse'ok_response
               = P'.try
                  (do
                     v <- P'.getT "ok_response"
                     Prelude'.return
                      (\ s -> s{http_response = Prelude'.Just (ExternalAuthProto.CheckResponse.Http_response.Ok_response v)}))