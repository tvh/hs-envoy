{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module DiscoveryProto.DeltaDiscoveryRequest (DeltaDiscoveryRequest(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.Node as BaseProto
import qualified DiscoveryProto.DeltaDiscoveryRequest.InitialResourceVersionsEntry as DiscoveryProto.DeltaDiscoveryRequest
import qualified StatusProto.Status as StatusProto

data DeltaDiscoveryRequest = DeltaDiscoveryRequest{node :: !(P'.Maybe BaseProto.Node), type_url :: !(P'.Maybe P'.Utf8),
                                                   resource_names_subscribe :: !(P'.Seq P'.Utf8),
                                                   resource_names_unsubscribe :: !(P'.Seq P'.Utf8),
                                                   response_nonce :: !(P'.Maybe P'.Utf8),
                                                   error_detail :: !(P'.Maybe StatusProto.Status),
                                                   initial_resource_versions :: P'.Map (P'.Utf8) (P'.Utf8)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable DeltaDiscoveryRequest where
  mergeAppend (DeltaDiscoveryRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7) (DeltaDiscoveryRequest y'1 y'2 y'3 y'4 y'5 y'6 y'7)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
         !z'7 = P'.mergeAppend x'7 y'7
      in DeltaDiscoveryRequest z'1 z'2 z'3 z'4 z'5 z'6 z'7

instance P'.Default DeltaDiscoveryRequest where
  defaultValue
   = DeltaDiscoveryRequest P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue

instance P'.Wire DeltaDiscoveryRequest where
  wireSize ft' self'@(DeltaDiscoveryRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeRep 1 9 x'3 + P'.wireSizeRep 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 11 x'6
             + P'.wireSizeRep 1 11 (DiscoveryProto.DeltaDiscoveryRequest.initialResourceVersionsEntryToSeq x'7))
  wirePutWithSize ft' self'@(DeltaDiscoveryRequest x'1 x'2 x'3 x'4 x'5 x'6 x'7)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 9 x'2, P'.wirePutRepWithSize 26 9 x'3,
             P'.wirePutRepWithSize 34 9 x'4,
             P'.wirePutRepWithSize 42 11 (DiscoveryProto.DeltaDiscoveryRequest.initialResourceVersionsEntryToSeq x'7),
             P'.wirePutOptWithSize 50 9 x'5, P'.wirePutOptWithSize 58 11 x'6]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{node = P'.mergeAppend (node old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{type_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{resource_names_subscribe = P'.append (resource_names_subscribe old'Self) new'Field})
                    (P'.wireGet 9)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{resource_names_unsubscribe = P'.append (resource_names_unsubscribe old'Self) new'Field})
                    (P'.wireGet 9)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{response_nonce = Prelude'.Just new'Field}) (P'.wireGet 9)
             58 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{error_detail = P'.mergeAppend (error_detail old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{initial_resource_versions =
                                P'.appendMap (initial_resource_versions old'Self)
                                 (DiscoveryProto.DeltaDiscoveryRequest.initialResourceVersionsEntryToPair new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DeltaDiscoveryRequest) DeltaDiscoveryRequest where
  getVal m' f' = f' m'

instance P'.GPB DeltaDiscoveryRequest

instance P'.ReflectDescriptor DeltaDiscoveryRequest where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42, 50, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.discovery.v3.DeltaDiscoveryRequest\", haskellPrefix = [], parentModule = [MName \"DiscoveryProto\"], baseName = MName \"DeltaDiscoveryRequest\"}, descFilePath = [\"DiscoveryProto\",\"DeltaDiscoveryRequest.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DeltaDiscoveryRequest.node\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DeltaDiscoveryRequest\"], baseName' = FName \"node\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Node\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Node\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DeltaDiscoveryRequest.type_url\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DeltaDiscoveryRequest\"], baseName' = FName \"type_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DeltaDiscoveryRequest.resource_names_subscribe\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DeltaDiscoveryRequest\"], baseName' = FName \"resource_names_subscribe\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DeltaDiscoveryRequest.resource_names_unsubscribe\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DeltaDiscoveryRequest\"], baseName' = FName \"resource_names_unsubscribe\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DeltaDiscoveryRequest.response_nonce\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DeltaDiscoveryRequest\"], baseName' = FName \"response_nonce\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DeltaDiscoveryRequest.error_detail\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DeltaDiscoveryRequest\"], baseName' = FName \"error_detail\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.rpc.Status\", haskellPrefix = [], parentModule = [MName \"StatusProto\"], baseName = MName \"Status\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DeltaDiscoveryRequest.initial_resource_versions\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DeltaDiscoveryRequest\"], baseName' = FName \"initial_resource_versions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.discovery.v3.DeltaDiscoveryRequest.InitialResourceVersionsEntry\", haskellPrefix = [], parentModule = [MName \"DiscoveryProto\",MName \"DeltaDiscoveryRequest\"], baseName = MName \"InitialResourceVersionsEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 9},Nothing))}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType DeltaDiscoveryRequest where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DeltaDiscoveryRequest where
  textPut msg
   = do
       P'.tellT "node" (node msg)
       P'.tellT "type_url" (type_url msg)
       P'.tellT "resource_names_subscribe" (resource_names_subscribe msg)
       P'.tellT "resource_names_unsubscribe" (resource_names_unsubscribe msg)
       P'.tellT "response_nonce" (response_nonce msg)
       P'.tellT "error_detail" (error_detail msg)
       P'.tellT "initial_resource_versions"
        (DiscoveryProto.DeltaDiscoveryRequest.initialResourceVersionsEntryToSeq (initial_resource_versions msg))
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'node, parse'type_url, parse'resource_names_subscribe, parse'resource_names_unsubscribe,
                   parse'response_nonce, parse'error_detail, parse'initial_resource_versions])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'node = Prelude'.fmap (\ v o -> o{node = v}) (P'.try (P'.getT "node"))
        parse'type_url = Prelude'.fmap (\ v o -> o{type_url = v}) (P'.try (P'.getT "type_url"))
        parse'resource_names_subscribe
         = Prelude'.fmap (\ v o -> o{resource_names_subscribe = P'.append (resource_names_subscribe o) v})
            (P'.try (P'.getT "resource_names_subscribe"))
        parse'resource_names_unsubscribe
         = Prelude'.fmap (\ v o -> o{resource_names_unsubscribe = P'.append (resource_names_unsubscribe o) v})
            (P'.try (P'.getT "resource_names_unsubscribe"))
        parse'response_nonce = Prelude'.fmap (\ v o -> o{response_nonce = v}) (P'.try (P'.getT "response_nonce"))
        parse'error_detail = Prelude'.fmap (\ v o -> o{error_detail = v}) (P'.try (P'.getT "error_detail"))
        parse'initial_resource_versions
         = Prelude'.fmap
            (\ v o ->
              o{initial_resource_versions =
                 P'.appendMap (initial_resource_versions o)
                  (DiscoveryProto.DeltaDiscoveryRequest.initialResourceVersionsEntryToPair v)})
            (P'.try (P'.getT "initial_resource_versions"))