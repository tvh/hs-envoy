{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AttributeContextProto.AttributeContext.Peer.LabelsEntry (LabelsEntry(..), labelsEntryToPair, labelsEntryToSeq) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data LabelsEntry = LabelsEntry{key :: !(P'.Maybe P'.Utf8), value :: !(P'.Maybe P'.Utf8)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable LabelsEntry where
  mergeAppend (LabelsEntry x'1 x'2) (LabelsEntry y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in LabelsEntry z'1 z'2

instance P'.Default LabelsEntry where
  defaultValue = LabelsEntry P'.defaultValue P'.defaultValue

instance P'.Wire LabelsEntry where
  wireSize ft' self'@(LabelsEntry x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2)
  wirePutWithSize ft' self'@(LabelsEntry x'1 x'2)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{key = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{value = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> LabelsEntry) LabelsEntry where
  getVal m' f' = f' m'

instance P'.GPB LabelsEntry

instance P'.ReflectDescriptor LabelsEntry where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.Peer.LabelsEntry\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Peer\"], baseName = MName \"LabelsEntry\"}, descFilePath = [\"AttributeContextProto\",\"AttributeContext\",\"Peer\",\"LabelsEntry.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.Peer.LabelsEntry.key\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Peer\",MName \"LabelsEntry\"], baseName' = FName \"key\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.Peer.LabelsEntry.value\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Peer\",MName \"LabelsEntry\"], baseName' = FName \"value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = True}"

instance P'.TextType LabelsEntry where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg LabelsEntry where
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
labelsEntryToPair entry = (key entry, value entry)
labelsEntryToSeq x = P'.seqFromList (Prelude'.map (\ (k, v) -> P'.defaultValue{key = k, value = v}) (P'.mapToList x))