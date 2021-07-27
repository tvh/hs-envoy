{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RlsProto.RateLimitResponse.Quota (Quota(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified RlsProto.RateLimitResponse.Quota.Expiration_specifier as RlsProto.RateLimitResponse.Quota.Expiration_specifier
       (Expiration_specifier(..), get'valid_until)

data Quota = Quota{requests :: !(P'.Maybe P'.Word32),
                   expiration_specifier :: P'.Maybe (RlsProto.RateLimitResponse.Quota.Expiration_specifier.Expiration_specifier)}
             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Quota where
  mergeAppend (Quota x'1 x'2) (Quota y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in Quota z'1 z'2

instance P'.Default Quota where
  defaultValue = Quota P'.defaultValue P'.defaultValue

instance P'.Wire Quota where
  wireSize ft' self'@(Quota x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 13 x'1 +
             P'.wireSizeOpt 1 11 (RlsProto.RateLimitResponse.Quota.Expiration_specifier.get'valid_until Prelude'.=<< x'2))
  wirePutWithSize ft' self'@(Quota x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 8 13 x'1,
             P'.wirePutOptWithSize 18 11 (RlsProto.RateLimitResponse.Quota.Expiration_specifier.get'valid_until Prelude'.=<< x'2)]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{requests = Prelude'.Just new'Field}) (P'.wireGet 13)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{expiration_specifier =
                                P'.mergeAppend (expiration_specifier old'Self)
                                 (Prelude'.Just (RlsProto.RateLimitResponse.Quota.Expiration_specifier.Valid_until new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Quota) Quota where
  getVal m' f' = f' m'

instance P'.GPB Quota

instance P'.ReflectDescriptor Quota where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.Quota\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\"], baseName = MName \"Quota\"}, descFilePath = [\"RlsProto\",\"RateLimitResponse\",\"Quota.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.Quota.requests\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"Quota\"], baseName' = FName \"requests\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.Quota.expiration_specifier\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"Quota\"], baseName = MName \"Expiration_specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.Quota.expiration_specifier\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"Quota\"], baseName' = FName \"expiration_specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"RlsProto\",\"RateLimitResponse\",\"Quota\",\"Expiration_specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.Quota.expiration_specifier.valid_until\", haskellPrefix = [], parentModule = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"Quota\",MName \"Expiration_specifier\"], baseName = MName \"Valid_until\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.ratelimit.v3.RateLimitResponse.Quota.expiration_specifier.valid_until\", haskellPrefix' = [], parentModule' = [MName \"RlsProto\",MName \"RateLimitResponse\",MName \"Quota\",MName \"Expiration_specifier\"], baseName' = FName \"valid_until\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Timestamp\", haskellPrefix = [], parentModule = [MName \"TimestampProto\"], baseName = MName \"Timestamp\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Quota where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Quota where
  textPut msg
   = do
       P'.tellT "requests" (requests msg)
       case (expiration_specifier msg) of
         Prelude'.Just (RlsProto.RateLimitResponse.Quota.Expiration_specifier.Valid_until valid_until) -> P'.tellT "valid_until"
                                                                                                           valid_until
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'requests, parse'expiration_specifier]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'requests = Prelude'.fmap (\ v o -> o{requests = v}) (P'.try (P'.getT "requests"))
        parse'expiration_specifier = P'.try (P'.choice [parse'valid_until])
          where
              parse'valid_until
               = P'.try
                  (do
                     v <- P'.getT "valid_until"
                     Prelude'.return
                      (\ s ->
                        s{expiration_specifier =
                           Prelude'.Just (RlsProto.RateLimitResponse.Quota.Expiration_specifier.Valid_until v)}))