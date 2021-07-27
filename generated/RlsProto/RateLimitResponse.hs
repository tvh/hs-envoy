{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RlsProto.RateLimitResponse (RateLimitResponse(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.HeaderValue as BaseProto
import qualified RlsProto.RateLimitResponse.Code as RlsProto.RateLimitResponse
import qualified RlsProto.RateLimitResponse.DescriptorStatus as RlsProto.RateLimitResponse
import qualified StructProto.Struct as StructProto

data RateLimitResponse = RateLimitResponse{overall_code :: !(P'.Maybe RlsProto.RateLimitResponse.Code),
                                           statuses :: !(P'.Seq RlsProto.RateLimitResponse.DescriptorStatus),
                                           response_headers_to_add :: !(P'.Seq BaseProto.HeaderValue),
                                           request_headers_to_add :: !(P'.Seq BaseProto.HeaderValue),
                                           raw_body :: !(P'.Maybe P'.ByteString),
                                           dynamic_metadata :: !(P'.Maybe StructProto.Struct)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable RateLimitResponse where
  mergeAppend (RateLimitResponse x'1 x'2 x'3 x'4 x'5 x'6) (RateLimitResponse y'1 y'2 y'3 y'4 y'5 y'6)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
      in RateLimitResponse z'1 z'2 z'3 z'4 z'5 z'6

instance P'.Default RateLimitResponse where
  defaultValue = RateLimitResponse P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire RateLimitResponse where
  wireSize ft' self'@(RateLimitResponse x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeRep 1 11 x'3 + P'.wireSizeRep 1 11 x'4 +
             P'.wireSizeOpt 1 12 x'5
             + P'.wireSizeOpt 1 11 x'6)
  wirePutWithSize ft' self'@(RateLimitResponse x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 8 14 x'1, P'.wirePutRepWithSize 18 11 x'2, P'.wirePutRepWithSize 26 11 x'3,
             P'.wirePutRepWithSize 34 11 x'4, P'.wirePutOptWithSize 42 12 x'5, P'.wirePutOptWithSize 50 11 x'6]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{overall_code = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{statuses = P'.append (statuses old'Self) new'Field}) (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{response_headers_to_add = P'.append (response_headers_to_add old'Self) new'Field})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{request_headers_to_add = P'.append (request_headers_to_add old'Self) new'Field})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{raw_body = Prelude'.Just new'Field}) (P'.wireGet 12)
             50 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{dynamic_metadata = P'.mergeAppend (dynamic_metadata old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> RateLimitResponse) RateLimitResponse where
  getVal m' f' = f' m'

instance P'.GPB RateLimitResponse

instance P'.ReflectDescriptor RateLimitResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 26, 34, 42, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse\", haskellPrefix = [], parentModule = [MName \"RlsProto\"], baseName = MName \"RateLimitResponse\"}, descFilePath = [\"RlsProto\",\"RateLimitResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.overall_code\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName' = FName \"overall_code\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.Code\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName = MName \"Code\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.statuses\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName' = FName \"statuses\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.DescriptorStatus\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName = MName \"DescriptorStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.response_headers_to_add\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName' = FName \"response_headers_to_add\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HeaderValue\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"HeaderValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.request_headers_to_add\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName' = FName \"request_headers_to_add\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HeaderValue\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"HeaderValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.raw_body\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName' = FName \"raw_body\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.dynamic_metadata\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName' = FName \"dynamic_metadata\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Struct\", haskellPrefix = [], parentModule = [MName \"StructProto\"], baseName = MName \"Struct\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType RateLimitResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg RateLimitResponse where
  textPut msg
   = do
       P'.tellT "overall_code" (overall_code msg)
       P'.tellT "statuses" (statuses msg)
       P'.tellT "response_headers_to_add" (response_headers_to_add msg)
       P'.tellT "request_headers_to_add" (request_headers_to_add msg)
       P'.tellT "raw_body" (raw_body msg)
       P'.tellT "dynamic_metadata" (dynamic_metadata msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'overall_code, parse'statuses, parse'response_headers_to_add, parse'request_headers_to_add, parse'raw_body,
                   parse'dynamic_metadata])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'overall_code = Prelude'.fmap (\ v o -> o{overall_code = v}) (P'.try (P'.getT "overall_code"))
        parse'statuses = Prelude'.fmap (\ v o -> o{statuses = P'.append (statuses o) v}) (P'.try (P'.getT "statuses"))
        parse'response_headers_to_add
         = Prelude'.fmap (\ v o -> o{response_headers_to_add = P'.append (response_headers_to_add o) v})
            (P'.try (P'.getT "response_headers_to_add"))
        parse'request_headers_to_add
         = Prelude'.fmap (\ v o -> o{request_headers_to_add = P'.append (request_headers_to_add o) v})
            (P'.try (P'.getT "request_headers_to_add"))
        parse'raw_body = Prelude'.fmap (\ v o -> o{raw_body = v}) (P'.try (P'.getT "raw_body"))
        parse'dynamic_metadata = Prelude'.fmap (\ v o -> o{dynamic_metadata = v}) (P'.try (P'.getT "dynamic_metadata"))