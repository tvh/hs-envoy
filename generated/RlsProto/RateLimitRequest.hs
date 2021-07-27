{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RlsProto.RateLimitRequest (RateLimitRequest(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified RatelimitProto.RateLimitDescriptor as RatelimitProto

data RateLimitRequest = RateLimitRequest{domain :: !(P'.Maybe P'.Utf8), descriptors :: !(P'.Seq RatelimitProto.RateLimitDescriptor),
                                         hits_addend :: !(P'.Maybe P'.Word32)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable RateLimitRequest where
  mergeAppend (RateLimitRequest x'1 x'2 x'3) (RateLimitRequest y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in RateLimitRequest z'1 z'2 z'3

instance P'.Default RateLimitRequest where
  defaultValue = RateLimitRequest P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire RateLimitRequest where
  wireSize ft' self'@(RateLimitRequest x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeOpt 1 13 x'3)
  wirePutWithSize ft' self'@(RateLimitRequest x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutRepWithSize 18 11 x'2, P'.wirePutOptWithSize 24 13 x'3]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{domain = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{descriptors = P'.append (descriptors old'Self) new'Field})
                    (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{hits_addend = Prelude'.Just new'Field}) (P'.wireGet 13)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> RateLimitRequest) RateLimitRequest where
  getVal m' f' = f' m'

instance P'.GPB RateLimitRequest

instance P'.ReflectDescriptor RateLimitRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 24])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitRequest\", haskellPrefix = [], parentModule = [MName \"RlsProto\"], baseName = MName \"RateLimitRequest\"}, descFilePath = [\"RlsProto\",\"RateLimitRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitRequest.domain\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitRequest\"], baseName' = FName \"domain\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitRequest.descriptors\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitRequest\"], baseName' = FName \"descriptors\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.extensions.common.ratelimit.v3.RateLimitDescriptor\", haskellPrefix = [], parentModule = [MName \"RatelimitProto\"], baseName = MName \"RateLimitDescriptor\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitRequest.hits_addend\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitRequest\"], baseName' = FName \"hits_addend\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType RateLimitRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg RateLimitRequest where
  textPut msg
   = do
       P'.tellT "domain" (domain msg)
       P'.tellT "descriptors" (descriptors msg)
       P'.tellT "hits_addend" (hits_addend msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'domain, parse'descriptors, parse'hits_addend]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'domain = Prelude'.fmap (\ v o -> o{domain = v}) (P'.try (P'.getT "domain"))
        parse'descriptors = Prelude'.fmap (\ v o -> o{descriptors = P'.append (descriptors o) v}) (P'.try (P'.getT "descriptors"))
        parse'hits_addend = Prelude'.fmap (\ v o -> o{hits_addend = v}) (P'.try (P'.getT "hits_addend"))