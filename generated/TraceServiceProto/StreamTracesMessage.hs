{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module TraceServiceProto.StreamTracesMessage (StreamTracesMessage(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified TraceProto.Span as TraceProto
import qualified TraceServiceProto.StreamTracesMessage.Identifier as TraceServiceProto.StreamTracesMessage

data StreamTracesMessage = StreamTracesMessage{identifier :: !(P'.Maybe TraceServiceProto.StreamTracesMessage.Identifier),
                                               spans :: !(P'.Seq TraceProto.Span)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable StreamTracesMessage where
  mergeAppend (StreamTracesMessage x'1 x'2) (StreamTracesMessage y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in StreamTracesMessage z'1 z'2

instance P'.Default StreamTracesMessage where
  defaultValue = StreamTracesMessage P'.defaultValue P'.defaultValue

instance P'.Wire StreamTracesMessage where
  wireSize ft' self'@(StreamTracesMessage x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePutWithSize ft' self'@(StreamTracesMessage x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutRepWithSize 18 11 x'2]
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
                    (\ !new'Field -> old'Self{identifier = P'.mergeAppend (identifier old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{spans = P'.append (spans old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> StreamTracesMessage) StreamTracesMessage where
  getVal m' f' = f' m'

instance P'.GPB StreamTracesMessage

instance P'.ReflectDescriptor StreamTracesMessage where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.trace.v3.StreamTracesMessage\", haskellPrefix = [], parentModule = [MName \"TraceServiceProto\"], baseName = MName \"StreamTracesMessage\"}, descFilePath = [\"TraceServiceProto\",\"StreamTracesMessage.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.trace.v3.StreamTracesMessage.identifier\", haskellPrefix' = [], parentModule' = [MName \"TraceServiceProto\",MName \"StreamTracesMessage\"], baseName' = FName \"identifier\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.trace.v3.StreamTracesMessage.Identifier\", haskellPrefix = [], parentModule = [MName \"TraceServiceProto\",MName \"StreamTracesMessage\"], baseName = MName \"Identifier\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.trace.v3.StreamTracesMessage.spans\", haskellPrefix' = [], parentModule' = [MName \"TraceServiceProto\",MName \"StreamTracesMessage\"], baseName' = FName \"spans\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".opencensus.proto.trace.v1.Span\", haskellPrefix = [], parentModule = [MName \"TraceProto\"], baseName = MName \"Span\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType StreamTracesMessage where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg StreamTracesMessage where
  textPut msg
   = do
       P'.tellT "identifier" (identifier msg)
       P'.tellT "spans" (spans msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'identifier, parse'spans]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'identifier = Prelude'.fmap (\ v o -> o{identifier = v}) (P'.try (P'.getT "identifier"))
        parse'spans = Prelude'.fmap (\ v o -> o{spans = P'.append (spans o) v}) (P'.try (P'.getT "spans"))