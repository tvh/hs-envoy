{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module DiscoveryProto.DiscoveryRequest (DiscoveryRequest(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.Node as BaseProto
import qualified StatusProto.Status as StatusProto

data DiscoveryRequest = DiscoveryRequest{version_info :: !(P'.Maybe P'.Utf8), node :: !(P'.Maybe BaseProto.Node),
                                         resource_names :: !(P'.Seq P'.Utf8), type_url :: !(P'.Maybe P'.Utf8),
                                         response_nonce :: !(P'.Maybe P'.Utf8), error_detail :: !(P'.Maybe StatusProto.Status)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable DiscoveryRequest where
  mergeAppend (DiscoveryRequest x'1 x'2 x'3 x'4 x'5 x'6) (DiscoveryRequest y'1 y'2 y'3 y'4 y'5 y'6)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
      in DiscoveryRequest z'1 z'2 z'3 z'4 z'5 z'6

instance P'.Default DiscoveryRequest where
  defaultValue = DiscoveryRequest P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire DiscoveryRequest where
  wireSize ft' self'@(DiscoveryRequest x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeRep 1 9 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 11 x'6)
  wirePutWithSize ft' self'@(DiscoveryRequest x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutRepWithSize 26 9 x'3,
             P'.wirePutOptWithSize 34 9 x'4, P'.wirePutOptWithSize 42 9 x'5, P'.wirePutOptWithSize 50 11 x'6]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{version_info = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{node = P'.mergeAppend (node old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{resource_names = P'.append (resource_names old'Self) new'Field})
                    (P'.wireGet 9)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{type_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{response_nonce = Prelude'.Just new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{error_detail = P'.mergeAppend (error_detail old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DiscoveryRequest) DiscoveryRequest where
  getVal m' f' = f' m'

instance P'.GPB DiscoveryRequest

instance P'.ReflectDescriptor DiscoveryRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.discovery.v3.DiscoveryRequest\", haskellPrefix = [], parentModule = [MName \"DiscoveryProto\"], baseName = MName \"DiscoveryRequest\"}, descFilePath = [\"DiscoveryProto\",\"DiscoveryRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryRequest.version_info\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryRequest\"], baseName' = FName \"version_info\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryRequest.node\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryRequest\"], baseName' = FName \"node\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Node\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Node\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryRequest.resource_names\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryRequest\"], baseName' = FName \"resource_names\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryRequest.type_url\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryRequest\"], baseName' = FName \"type_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryRequest.response_nonce\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryRequest\"], baseName' = FName \"response_nonce\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryRequest.error_detail\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryRequest\"], baseName' = FName \"error_detail\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.rpc.Status\", haskellPrefix = [], parentModule = [MName \"StatusProto\"], baseName = MName \"Status\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType DiscoveryRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DiscoveryRequest where
  textPut msg
   = do
       P'.tellT "version_info" (version_info msg)
       P'.tellT "node" (node msg)
       P'.tellT "resource_names" (resource_names msg)
       P'.tellT "type_url" (type_url msg)
       P'.tellT "response_nonce" (response_nonce msg)
       P'.tellT "error_detail" (error_detail msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'version_info, parse'node, parse'resource_names, parse'type_url, parse'response_nonce, parse'error_detail])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'version_info = Prelude'.fmap (\ v o -> o{version_info = v}) (P'.try (P'.getT "version_info"))
        parse'node = Prelude'.fmap (\ v o -> o{node = v}) (P'.try (P'.getT "node"))
        parse'resource_names
         = Prelude'.fmap (\ v o -> o{resource_names = P'.append (resource_names o) v}) (P'.try (P'.getT "resource_names"))
        parse'type_url = Prelude'.fmap (\ v o -> o{type_url = v}) (P'.try (P'.getT "type_url"))
        parse'response_nonce = Prelude'.fmap (\ v o -> o{response_nonce = v}) (P'.try (P'.getT "response_nonce"))
        parse'error_detail = Prelude'.fmap (\ v o -> o{error_detail = v}) (P'.try (P'.getT "error_detail"))