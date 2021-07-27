{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ExternalAuthProto.OkHttpResponse (OkHttpResponse(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.HeaderValueOption as BaseProto
import qualified StructProto.Struct as StructProto

data OkHttpResponse = OkHttpResponse{headers :: !(P'.Seq BaseProto.HeaderValueOption), headers_to_remove :: !(P'.Seq P'.Utf8),
                                     dynamic_metadata :: !(P'.Maybe StructProto.Struct),
                                     response_headers_to_add :: !(P'.Seq BaseProto.HeaderValueOption)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable OkHttpResponse where
  mergeAppend (OkHttpResponse x'1 x'2 x'3 x'4) (OkHttpResponse y'1 y'2 y'3 y'4)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
      in OkHttpResponse z'1 z'2 z'3 z'4

instance P'.Default OkHttpResponse where
  defaultValue = OkHttpResponse P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire OkHttpResponse where
  wireSize ft' self'@(OkHttpResponse x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeRep 1 9 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeRep 1 11 x'4)
  wirePutWithSize ft' self'@(OkHttpResponse x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutRepWithSize 18 11 x'1, P'.wirePutOptWithSize 26 11 x'3, P'.wirePutRepWithSize 42 9 x'2,
             P'.wirePutRepWithSize 50 11 x'4]
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
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{headers = P'.append (headers old'Self) new'Field}) (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{headers_to_remove = P'.append (headers_to_remove old'Self) new'Field})
                    (P'.wireGet 9)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{dynamic_metadata = P'.mergeAppend (dynamic_metadata old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{response_headers_to_add = P'.append (response_headers_to_add old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> OkHttpResponse) OkHttpResponse where
  getVal m' f' = f' m'

instance P'.GPB OkHttpResponse

instance P'.ReflectDescriptor OkHttpResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [18, 26, 42, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.auth.v3.OkHttpResponse\", haskellPrefix = [], parentModule = [MName \"ExternalAuthProto\"], baseName = MName \"OkHttpResponse\"}, descFilePath = [\"ExternalAuthProto\",\"OkHttpResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.OkHttpResponse.headers\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"OkHttpResponse\"], baseName' = FName \"headers\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HeaderValueOption\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"HeaderValueOption\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.OkHttpResponse.headers_to_remove\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"OkHttpResponse\"], baseName' = FName \"headers_to_remove\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.OkHttpResponse.dynamic_metadata\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"OkHttpResponse\"], baseName' = FName \"dynamic_metadata\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Struct\", haskellPrefix = [], parentModule = [MName \"StructProto\"], baseName = MName \"Struct\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.auth.v3.OkHttpResponse.response_headers_to_add\", haskellPrefix' = [], parentModule' = [MName \"ExternalAuthProto\",MName \"OkHttpResponse\"], baseName' = FName \"response_headers_to_add\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HeaderValueOption\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"HeaderValueOption\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType OkHttpResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg OkHttpResponse where
  textPut msg
   = do
       P'.tellT "headers" (headers msg)
       P'.tellT "headers_to_remove" (headers_to_remove msg)
       P'.tellT "dynamic_metadata" (dynamic_metadata msg)
       P'.tellT "response_headers_to_add" (response_headers_to_add msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'headers, parse'headers_to_remove, parse'dynamic_metadata, parse'response_headers_to_add])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'headers = Prelude'.fmap (\ v o -> o{headers = P'.append (headers o) v}) (P'.try (P'.getT "headers"))
        parse'headers_to_remove
         = Prelude'.fmap (\ v o -> o{headers_to_remove = P'.append (headers_to_remove o) v}) (P'.try (P'.getT "headers_to_remove"))
        parse'dynamic_metadata = Prelude'.fmap (\ v o -> o{dynamic_metadata = v}) (P'.try (P'.getT "dynamic_metadata"))
        parse'response_headers_to_add
         = Prelude'.fmap (\ v o -> o{response_headers_to_add = P'.append (response_headers_to_add o) v})
            (P'.try (P'.getT "response_headers_to_add"))