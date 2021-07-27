{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HealthCheckProto.HealthCheck.GrpcHealthCheck (GrpcHealthCheck(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data GrpcHealthCheck = GrpcHealthCheck{service_name :: !(P'.Maybe P'.Utf8), authority :: !(P'.Maybe P'.Utf8)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable GrpcHealthCheck where
  mergeAppend (GrpcHealthCheck x'1 x'2) (GrpcHealthCheck y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in GrpcHealthCheck z'1 z'2

instance P'.Default GrpcHealthCheck where
  defaultValue = GrpcHealthCheck P'.defaultValue P'.defaultValue

instance P'.Wire GrpcHealthCheck where
  wireSize ft' self'@(GrpcHealthCheck x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePutWithSize ft' self'@(GrpcHealthCheck x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 9 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{service_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{authority = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> GrpcHealthCheck) GrpcHealthCheck where
  getVal m' f' = f' m'

instance P'.GPB GrpcHealthCheck

instance P'.ReflectDescriptor GrpcHealthCheck where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.GrpcHealthCheck\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"GrpcHealthCheck\"}, descFilePath = [\"HealthCheckProto\",\"HealthCheck\",\"GrpcHealthCheck.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.GrpcHealthCheck.service_name\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"GrpcHealthCheck\"], baseName' = FName \"service_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.GrpcHealthCheck.authority\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"GrpcHealthCheck\"], baseName' = FName \"authority\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType GrpcHealthCheck where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg GrpcHealthCheck where
  textPut msg
   = do
       P'.tellT "service_name" (service_name msg)
       P'.tellT "authority" (authority msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'service_name, parse'authority]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'service_name = Prelude'.fmap (\ v o -> o{service_name = v}) (P'.try (P'.getT "service_name"))
        parse'authority = Prelude'.fmap (\ v o -> o{authority = v}) (P'.try (P'.getT "authority"))