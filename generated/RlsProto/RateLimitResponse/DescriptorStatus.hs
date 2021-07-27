{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RlsProto.RateLimitResponse.DescriptorStatus (DescriptorStatus(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified DurationProto.Duration as DurationProto
import qualified RlsProto.RateLimitResponse.Code as RlsProto.RateLimitResponse
import qualified RlsProto.RateLimitResponse.Quota as RlsProto.RateLimitResponse
import qualified RlsProto.RateLimitResponse.RateLimit as RlsProto.RateLimitResponse

data DescriptorStatus = DescriptorStatus{code :: !(P'.Maybe RlsProto.RateLimitResponse.Code),
                                         current_limit :: !(P'.Maybe RlsProto.RateLimitResponse.RateLimit),
                                         limit_remaining :: !(P'.Maybe P'.Word32),
                                         duration_until_reset :: !(P'.Maybe DurationProto.Duration),
                                         quota :: !(P'.Maybe RlsProto.RateLimitResponse.Quota)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable DescriptorStatus where
  mergeAppend (DescriptorStatus x'1 x'2 x'3 x'4 x'5) (DescriptorStatus y'1 y'2 y'3 y'4 y'5)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
      in DescriptorStatus z'1 z'2 z'3 z'4 z'5

instance P'.Default DescriptorStatus where
  defaultValue = DescriptorStatus P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire DescriptorStatus where
  wireSize ft' self'@(DescriptorStatus x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 13 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5)
  wirePutWithSize ft' self'@(DescriptorStatus x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 8 14 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 24 13 x'3,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutOptWithSize 42 11 x'5]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{code = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{current_limit = P'.mergeAppend (current_limit old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{limit_remaining = Prelude'.Just new'Field}) (P'.wireGet 13)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{duration_until_reset = P'.mergeAppend (duration_until_reset old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{quota = P'.mergeAppend (quota old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DescriptorStatus) DescriptorStatus where
  getVal m' f' = f' m'

instance P'.GPB DescriptorStatus

instance P'.ReflectDescriptor DescriptorStatus where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 24, 34, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.DescriptorStatus\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName = MName \"DescriptorStatus\"}, descFilePath = [\"RlsProto\",\"RateLimitResponse\",\"DescriptorStatus.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.DescriptorStatus.code\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"DescriptorStatus\"], baseName' = FName \"code\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.Code\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName = MName \"Code\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.DescriptorStatus.current_limit\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"DescriptorStatus\"], baseName' = FName \"current_limit\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.RateLimit\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName = MName \"RateLimit\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.DescriptorStatus.limit_remaining\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"DescriptorStatus\"], baseName' = FName \"limit_remaining\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.DescriptorStatus.duration_until_reset\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"DescriptorStatus\"], baseName' = FName \"duration_until_reset\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.DescriptorStatus.quota\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"DescriptorStatus\"], baseName' = FName \"quota\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.Quota\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName = MName \"Quota\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType DescriptorStatus where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DescriptorStatus where
  textPut msg
   = do
       P'.tellT "code" (code msg)
       P'.tellT "current_limit" (current_limit msg)
       P'.tellT "limit_remaining" (limit_remaining msg)
       P'.tellT "duration_until_reset" (duration_until_reset msg)
       P'.tellT "quota" (quota msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'code, parse'current_limit, parse'limit_remaining, parse'duration_until_reset, parse'quota])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'code = Prelude'.fmap (\ v o -> o{code = v}) (P'.try (P'.getT "code"))
        parse'current_limit = Prelude'.fmap (\ v o -> o{current_limit = v}) (P'.try (P'.getT "current_limit"))
        parse'limit_remaining = Prelude'.fmap (\ v o -> o{limit_remaining = v}) (P'.try (P'.getT "limit_remaining"))
        parse'duration_until_reset = Prelude'.fmap (\ v o -> o{duration_until_reset = v}) (P'.try (P'.getT "duration_until_reset"))
        parse'quota = Prelude'.fmap (\ v o -> o{quota = v}) (P'.try (P'.getT "quota"))