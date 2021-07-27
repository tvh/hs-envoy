{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.ConnectionProperties (ConnectionProperties(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ConnectionProperties = ConnectionProperties{received_bytes :: !(P'.Maybe P'.Word64), sent_bytes :: !(P'.Maybe P'.Word64)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ConnectionProperties where
  mergeAppend (ConnectionProperties x'1 x'2) (ConnectionProperties y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in ConnectionProperties z'1 z'2

instance P'.Default ConnectionProperties where
  defaultValue = ConnectionProperties P'.defaultValue P'.defaultValue

instance P'.Wire ConnectionProperties where
  wireSize ft' self'@(ConnectionProperties x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 4 x'1 + P'.wireSizeOpt 1 4 x'2)
  wirePutWithSize ft' self'@(ConnectionProperties x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 8 4 x'1, P'.wirePutOptWithSize 16 4 x'2]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{received_bytes = Prelude'.Just new'Field}) (P'.wireGet 4)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{sent_bytes = Prelude'.Just new'Field}) (P'.wireGet 4)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ConnectionProperties) ConnectionProperties where
  getVal m' f' = f' m'

instance P'.GPB ConnectionProperties

instance P'.ReflectDescriptor ConnectionProperties where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 16])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.ConnectionProperties\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"ConnectionProperties\"}, descFilePath = [\"AccesslogProto\",\"ConnectionProperties.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ConnectionProperties.received_bytes\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ConnectionProperties\"], baseName' = FName \"received_bytes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.data.accesslog.v3.ConnectionProperties.sent_bytes\", haskellPrefix' = [], parentModule' = [MName \"AccesslogProto\",MName \"ConnectionProperties\"], baseName' = FName \"sent_bytes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ConnectionProperties where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ConnectionProperties where
  textPut msg
   = do
       P'.tellT "received_bytes" (received_bytes msg)
       P'.tellT "sent_bytes" (sent_bytes msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'received_bytes, parse'sent_bytes]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'received_bytes = Prelude'.fmap (\ v o -> o{received_bytes = v}) (P'.try (P'.getT "received_bytes"))
        parse'sent_bytes = Prelude'.fmap (\ v o -> o{sent_bytes = v}) (P'.try (P'.getT "sent_bytes"))