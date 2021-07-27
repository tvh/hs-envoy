{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AttributeContextProto.AttributeContext.Peer (Peer(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AddressProto.Address as AddressProto
import qualified AttributeContextProto.AttributeContext.Peer.LabelsEntry as AttributeContextProto.AttributeContext.Peer

data Peer = Peer{address :: !(P'.Maybe AddressProto.Address), service :: !(P'.Maybe P'.Utf8), principal :: !(P'.Maybe P'.Utf8),
                 certificate :: !(P'.Maybe P'.Utf8), labels :: P'.Map (P'.Utf8) (P'.Utf8)}
            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Peer where
  mergeAppend (Peer x'1 x'2 x'3 x'4 x'5) (Peer y'1 y'2 y'3 y'4 y'5)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
      in Peer z'1 z'2 z'3 z'4 z'5

instance P'.Default Peer where
  defaultValue = Peer P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire Peer where
  wireSize ft' self'@(Peer x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeRep 1 11 (AttributeContextProto.AttributeContext.Peer.labelsEntryToSeq x'5))
  wirePutWithSize ft' self'@(Peer x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 9 x'2,
             P'.wirePutRepWithSize 26 11 (AttributeContextProto.AttributeContext.Peer.labelsEntryToSeq x'5),
             P'.wirePutOptWithSize 34 9 x'3, P'.wirePutOptWithSize 42 9 x'4]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{address = P'.mergeAppend (address old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{service = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{principal = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{certificate = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{labels =
                                P'.appendMap (labels old'Self)
                                 (AttributeContextProto.AttributeContext.Peer.labelsEntryToPair new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Peer) Peer where
  getVal m' f' = f' m'

instance P'.GPB Peer

instance P'.ReflectDescriptor Peer where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.Peer\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\"], baseName = MName \"Peer\"}, descFilePath = [\"AttributeContextProto\",\"AttributeContext\",\"Peer.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.Peer.address\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Peer\"], baseName' = FName \"address\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Address\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"Address\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.Peer.service\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Peer\"], baseName' = FName \"service\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.Peer.principal\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Peer\"], baseName' = FName \"principal\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.Peer.certificate\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Peer\"], baseName' = FName \"certificate\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.AttributeContext.Peer.labels\", haskellPrefix' = [], parentModule' = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Peer\"], baseName' = FName \"labels\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.auth.v3.AttributeContext.Peer.LabelsEntry\", haskellPrefix = [], parentModule = [MName \"AttributeContextProto\",MName \"AttributeContext\",MName \"Peer\"], baseName = MName \"LabelsEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 9},Nothing))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Peer where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Peer where
  textPut msg
   = do
       P'.tellT "address" (address msg)
       P'.tellT "service" (service msg)
       P'.tellT "principal" (principal msg)
       P'.tellT "certificate" (certificate msg)
       P'.tellT "labels" (AttributeContextProto.AttributeContext.Peer.labelsEntryToSeq (labels msg))
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'address, parse'service, parse'principal, parse'certificate, parse'labels]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'address = Prelude'.fmap (\ v o -> o{address = v}) (P'.try (P'.getT "address"))
        parse'service = Prelude'.fmap (\ v o -> o{service = v}) (P'.try (P'.getT "service"))
        parse'principal = Prelude'.fmap (\ v o -> o{principal = v}) (P'.try (P'.getT "principal"))
        parse'certificate = Prelude'.fmap (\ v o -> o{certificate = v}) (P'.try (P'.getT "certificate"))
        parse'labels
         = Prelude'.fmap
            (\ v o -> o{labels = P'.appendMap (labels o) (AttributeContextProto.AttributeContext.Peer.labelsEntryToPair v)})
            (P'.try (P'.getT "labels"))