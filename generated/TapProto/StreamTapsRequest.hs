{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module TapProto.StreamTapsRequest (StreamTapsRequest(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified TapProto.StreamTapsRequest.Identifier as TapProto.StreamTapsRequest
import qualified WrapperProto.TraceWrapper as WrapperProto

data StreamTapsRequest = StreamTapsRequest{identifier :: !(P'.Maybe TapProto.StreamTapsRequest.Identifier),
                                           trace_id :: !(P'.Maybe P'.Word64), trace :: !(P'.Maybe WrapperProto.TraceWrapper)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable StreamTapsRequest where
  mergeAppend (StreamTapsRequest x'1 x'2 x'3) (StreamTapsRequest y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in StreamTapsRequest z'1 z'2 z'3

instance P'.Default StreamTapsRequest where
  defaultValue = StreamTapsRequest P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire StreamTapsRequest where
  wireSize ft' self'@(StreamTapsRequest x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 4 x'2 + P'.wireSizeOpt 1 11 x'3)
  wirePutWithSize ft' self'@(StreamTapsRequest x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 16 4 x'2, P'.wirePutOptWithSize 26 11 x'3]
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
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{trace_id = Prelude'.Just new'Field}) (P'.wireGet 4)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{trace = P'.mergeAppend (trace old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> StreamTapsRequest) StreamTapsRequest where
  getVal m' f' = f' m'

instance P'.GPB StreamTapsRequest

instance P'.ReflectDescriptor StreamTapsRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.tap.v3.StreamTapsRequest\", haskellPrefix = [], parentModule = [MName \"TapProto\"], baseName = MName \"StreamTapsRequest\"}, descFilePath = [\"TapProto\",\"StreamTapsRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.tap.v3.StreamTapsRequest.identifier\", haskellPrefix' = [], parentModule' = [MName \"TapProto\",MName \"StreamTapsRequest\"], baseName' = FName \"identifier\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.tap.v3.StreamTapsRequest.Identifier\", haskellPrefix = [], parentModule = [MName \"TapProto\",MName \"StreamTapsRequest\"], baseName = MName \"Identifier\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.tap.v3.StreamTapsRequest.trace_id\", haskellPrefix' = [], parentModule' = [MName \"TapProto\",MName \"StreamTapsRequest\"], baseName' = FName \"trace_id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 4}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.tap.v3.StreamTapsRequest.trace\", haskellPrefix' = [], parentModule' = [MName \"TapProto\",MName \"StreamTapsRequest\"], baseName' = FName \"trace\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.tap.v3.TraceWrapper\", haskellPrefix = [], parentModule = [MName \"WrapperProto\"], baseName = MName \"TraceWrapper\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType StreamTapsRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg StreamTapsRequest where
  textPut msg
   = do
       P'.tellT "identifier" (identifier msg)
       P'.tellT "trace_id" (trace_id msg)
       P'.tellT "trace" (trace msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'identifier, parse'trace_id, parse'trace]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'identifier = Prelude'.fmap (\ v o -> o{identifier = v}) (P'.try (P'.getT "identifier"))
        parse'trace_id = Prelude'.fmap (\ v o -> o{trace_id = v}) (P'.try (P'.getT "trace_id"))
        parse'trace = Prelude'.fmap (\ v o -> o{trace = v}) (P'.try (P'.getT "trace"))