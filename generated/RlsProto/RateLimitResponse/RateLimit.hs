{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RlsProto.RateLimitResponse.RateLimit (RateLimit(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified RlsProto.RateLimitResponse.RateLimit.Unit as RlsProto.RateLimitResponse.RateLimit

data RateLimit = RateLimit{name :: !(P'.Maybe P'.Utf8), requests_per_unit :: !(P'.Maybe P'.Word32),
                           unit :: !(P'.Maybe RlsProto.RateLimitResponse.RateLimit.Unit)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable RateLimit where
  mergeAppend (RateLimit x'1 x'2 x'3) (RateLimit y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in RateLimit z'1 z'2 z'3

instance P'.Default RateLimit where
  defaultValue = RateLimit P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire RateLimit where
  wireSize ft' self'@(RateLimit x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 13 x'2 + P'.wireSizeOpt 1 14 x'3)
  wirePutWithSize ft' self'@(RateLimit x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize [P'.wirePutOptWithSize 8 13 x'2, P'.wirePutOptWithSize 16 14 x'3, P'.wirePutOptWithSize 26 9 x'1]
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
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{name = Prelude'.Just new'Field}) (P'.wireGet 9)
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{requests_per_unit = Prelude'.Just new'Field}) (P'.wireGet 13)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{unit = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> RateLimit) RateLimit where
  getVal m' f' = f' m'

instance P'.GPB RateLimit

instance P'.ReflectDescriptor RateLimit where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.RateLimit\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName = MName \"RateLimit\"}, descFilePath = [\"RlsProto\",\"RateLimitResponse\",\"RateLimit.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.RateLimit.name\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"RateLimit\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.RateLimit.requests_per_unit\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"RateLimit\"], baseName' = FName \"requests_per_unit\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.RateLimit.unit\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"RateLimit\"], baseName' = FName \"unit\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.RateLimit.Unit\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"RateLimit\"], baseName = MName \"Unit\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType RateLimit where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg RateLimit where
  textPut msg
   = do
       P'.tellT "name" (name msg)
       P'.tellT "requests_per_unit" (requests_per_unit msg)
       P'.tellT "unit" (unit msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'name, parse'requests_per_unit, parse'unit]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'name = Prelude'.fmap (\ v o -> o{name = v}) (P'.try (P'.getT "name"))
        parse'requests_per_unit = Prelude'.fmap (\ v o -> o{requests_per_unit = v}) (P'.try (P'.getT "requests_per_unit"))
        parse'unit = Prelude'.fmap (\ v o -> o{unit = v}) (P'.try (P'.getT "unit"))