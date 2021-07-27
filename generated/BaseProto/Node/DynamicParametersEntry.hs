{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.Node.DynamicParametersEntry (DynamicParametersEntry(..), dynamicParametersEntryToPair, dynamicParametersEntryToSeq)
       where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ContextParamsProto.ContextParams as ContextParamsProto

data DynamicParametersEntry = DynamicParametersEntry{key :: !(P'.Maybe P'.Utf8),
                                                     value :: !(P'.Maybe ContextParamsProto.ContextParams)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                        Prelude'.Generic)

instance P'.Mergeable DynamicParametersEntry where
  mergeAppend (DynamicParametersEntry x'1 x'2) (DynamicParametersEntry y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in DynamicParametersEntry z'1 z'2

instance P'.Default DynamicParametersEntry where
  defaultValue = DynamicParametersEntry P'.defaultValue P'.defaultValue

instance P'.Wire DynamicParametersEntry where
  wireSize ft' self'@(DynamicParametersEntry x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(DynamicParametersEntry x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 11 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{key = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{value = P'.mergeAppend (value old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DynamicParametersEntry) DynamicParametersEntry where
  getVal m' f' = f' m'

instance P'.GPB DynamicParametersEntry

instance P'.ReflectDescriptor DynamicParametersEntry where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Node.DynamicParametersEntry\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"Node\"], baseName = MName \"DynamicParametersEntry\"}, descFilePath = [\"BaseProto\",\"Node\",\"DynamicParametersEntry.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.DynamicParametersEntry.key\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\",MName \"DynamicParametersEntry\"], baseName' = FName \"key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.DynamicParametersEntry.value\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\",MName \"DynamicParametersEntry\"], baseName' = FName \"value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".xds.core.v3.ContextParams\", haskellPrefix = [], parentModule = [MName \"ContextParamsProto\"], baseName = MName \"ContextParams\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = True}"

instance P'.TextType DynamicParametersEntry where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DynamicParametersEntry where
  textPut msg
   = do
       P'.tellT "key" (key msg)
       P'.tellT "value" (value msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'key, parse'value]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'key = Prelude'.fmap (\ v o -> o{key = v}) (P'.try (P'.getT "key"))
        parse'value = Prelude'.fmap (\ v o -> o{value = v}) (P'.try (P'.getT "value"))
dynamicParametersEntryToPair entry = (key entry, value entry)
dynamicParametersEntryToSeq x = P'.seqFromList (Prelude'.map (\ (k, v) -> P'.defaultValue{key = k, value = v}) (P'.mapToList x))