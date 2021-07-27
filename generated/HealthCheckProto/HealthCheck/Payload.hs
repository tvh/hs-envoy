{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HealthCheckProto.HealthCheck.Payload (Payload(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified HealthCheckProto.HealthCheck.Payload.Payload as HealthCheckProto.HealthCheck.Payload.Payload
       (Payload(..), get'text, get'binary)

data Payload = Payload{payload :: P'.Maybe (HealthCheckProto.HealthCheck.Payload.Payload.Payload)}
               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Payload where
  mergeAppend (Payload x'1) (Payload y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in Payload z'1

instance P'.Default Payload where
  defaultValue = Payload P'.defaultValue

instance P'.Wire Payload where
  wireSize ft' self'@(Payload x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 (HealthCheckProto.HealthCheck.Payload.Payload.get'text Prelude'.=<< x'1) +
             P'.wireSizeOpt 1 12 (HealthCheckProto.HealthCheck.Payload.Payload.get'binary Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(Payload x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 (HealthCheckProto.HealthCheck.Payload.Payload.get'text Prelude'.=<< x'1),
             P'.wirePutOptWithSize 18 12 (HealthCheckProto.HealthCheck.Payload.Payload.get'binary Prelude'.=<< x'1)]
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
                      old'Self{payload = Prelude'.Just (HealthCheckProto.HealthCheck.Payload.Payload.Text new'Field)})
                    (P'.wireGet 9)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{payload = Prelude'.Just (HealthCheckProto.HealthCheck.Payload.Payload.Binary new'Field)})
                    (P'.wireGet 12)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Payload) Payload where
  getVal m' f' = f' m'

instance P'.GPB Payload

instance P'.ReflectDescriptor Payload where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.Payload\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"Payload\"}, descFilePath = [\"HealthCheckProto\",\"HealthCheck\",\"Payload.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.Payload.payload\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Payload\"], baseName = MName \"Payload\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.Payload.payload\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Payload\"], baseName' = FName \"payload\", baseNamePrefix' = \"\"}, oneofFilePath = [\"HealthCheckProto\",\"HealthCheck\",\"Payload\",\"Payload.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.Payload.payload.text\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Payload\",MName \"Payload\"], baseName = MName \"Text\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.Payload.payload.text\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Payload\",MName \"Payload\"], baseName' = FName \"text\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.Payload.payload.binary\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Payload\",MName \"Payload\"], baseName = MName \"Binary\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.Payload.payload.binary\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"Payload\",MName \"Payload\"], baseName' = FName \"binary\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Payload where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Payload where
  textPut msg
   = do
       case (payload msg) of
         Prelude'.Just (HealthCheckProto.HealthCheck.Payload.Payload.Text text) -> P'.tellT "text" text
         Prelude'.Just (HealthCheckProto.HealthCheck.Payload.Payload.Binary binary) -> P'.tellT "binary" binary
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'payload]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'payload = P'.try (P'.choice [parse'text, parse'binary])
          where
              parse'text
               = P'.try
                  (do
                     v <- P'.getT "text"
                     Prelude'.return (\ s -> s{payload = Prelude'.Just (HealthCheckProto.HealthCheck.Payload.Payload.Text v)}))
              parse'binary
               = P'.try
                  (do
                     v <- P'.getT "binary"
                     Prelude'.return (\ s -> s{payload = Prelude'.Just (HealthCheckProto.HealthCheck.Payload.Payload.Binary v)}))