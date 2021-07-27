{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AttributeContextProto.AttributeContext.Request (Request(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AttributeContextProto.AttributeContext.HttpRequest as AttributeContextProto.AttributeContext
import qualified TimestampProto.Timestamp as TimestampProto

data Request = Request{time :: !(P'.Maybe TimestampProto.Timestamp),
                       http :: !(P'.Maybe AttributeContextProto.AttributeContext.HttpRequest)}
               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Request where
  mergeAppend (Request x'1 x'2) (Request y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in Request z'1 z'2

instance P'.Default Request where
  defaultValue = Request P'.defaultValue P'.defaultValue

instance P'.Wire Request where
  wireSize ft' self'@(Request x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(Request x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{time = P'.mergeAppend (time old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{http = P'.mergeAppend (http old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Request) Request where
  getVal m' f' = f' m'

instance P'.GPB Request

instance P'.ReflectDescriptor Request where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.Request\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName = MName \"Request\"}, descFilePath = [\"AttributeContextProto\",\"AttributeContext\",\"Request.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.Request.time\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Request\"], baseName' = FName \"time\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Timestamp\", haskellPrefix = [], parentModule = [MName \"TimestampProto\"], baseName = MName \"Timestamp\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.Request.http\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Request\"], baseName' = FName \"http\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.HttpRequest\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName = MName \"HttpRequest\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Request where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Request where
  textPut msg
   = do
       P'.tellT "time" (time msg)
       P'.tellT "http" (http msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'time, parse'http]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'time = Prelude'.fmap (\ v o -> o{time = v}) (P'.try (P'.getT "time"))
        parse'http = Prelude'.fmap (\ v o -> o{http = v}) (P'.try (P'.getT "http"))