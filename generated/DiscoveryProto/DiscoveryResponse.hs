{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module DiscoveryProto.DiscoveryResponse (DiscoveryResponse(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AnyProto.Any as AnyProto
import qualified BaseProto.ControlPlane as BaseProto

data DiscoveryResponse = DiscoveryResponse{version_info :: !(P'.Maybe P'.Utf8), resources :: !(P'.Seq AnyProto.Any),
                                           canary :: !(P'.Maybe P'.Bool), type_url :: !(P'.Maybe P'.Utf8),
                                           nonce :: !(P'.Maybe P'.Utf8), control_plane :: !(P'.Maybe BaseProto.ControlPlane)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable DiscoveryResponse where
  mergeAppend (DiscoveryResponse x'1 x'2 x'3 x'4 x'5 x'6) (DiscoveryResponse y'1 y'2 y'3 y'4 y'5 y'6)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
      in DiscoveryResponse z'1 z'2 z'3 z'4 z'5 z'6

instance P'.Default DiscoveryResponse where
  defaultValue = DiscoveryResponse P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire DiscoveryResponse where
  wireSize ft' self'@(DiscoveryResponse x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeOpt 1 8 x'3 + P'.wireSizeOpt 1 9 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeOpt 1 11 x'6)
  wirePutWithSize ft' self'@(DiscoveryResponse x'1 x'2 x'3 x'4 x'5 x'6)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutRepWithSize 18 11 x'2, P'.wirePutOptWithSize 24 8 x'3,
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
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{resources = P'.append (resources old'Self) new'Field}) (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{canary = Prelude'.Just new'Field}) (P'.wireGet 8)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{type_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{nonce = Prelude'.Just new'Field}) (P'.wireGet 9)
             50 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{control_plane = P'.mergeAppend (control_plane old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DiscoveryResponse) DiscoveryResponse where
  getVal m' f' = f' m'

instance P'.GPB DiscoveryResponse

instance P'.ReflectDescriptor DiscoveryResponse where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 24, 34, 42, 50])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.discovery.v3.DiscoveryResponse\", haskellPrefix = [], parentModule = [MName \"DiscoveryProto\"], baseName = MName \"DiscoveryResponse\"}, descFilePath = [\"DiscoveryProto\",\"DiscoveryResponse.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryResponse.version_info\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryResponse\"], baseName' = FName \"version_info\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryResponse.resources\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryResponse\"], baseName' = FName \"resources\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Any\", haskellPrefix = [], parentModule = [MName \"AnyProto\"], baseName = MName \"Any\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryResponse.canary\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryResponse\"], baseName' = FName \"canary\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryResponse.type_url\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryResponse\"], baseName' = FName \"type_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryResponse.nonce\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryResponse\"], baseName' = FName \"nonce\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.DiscoveryResponse.control_plane\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"DiscoveryResponse\"], baseName' = FName \"control_plane\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.ControlPlane\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"ControlPlane\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType DiscoveryResponse where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DiscoveryResponse where
  textPut msg
   = do
       P'.tellT "version_info" (version_info msg)
       P'.tellT "resources" (resources msg)
       P'.tellT "canary" (canary msg)
       P'.tellT "type_url" (type_url msg)
       P'.tellT "nonce" (nonce msg)
       P'.tellT "control_plane" (control_plane msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'version_info, parse'resources, parse'canary, parse'type_url, parse'nonce, parse'control_plane])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'version_info = Prelude'.fmap (\ v o -> o{version_info = v}) (P'.try (P'.getT "version_info"))
        parse'resources = Prelude'.fmap (\ v o -> o{resources = P'.append (resources o) v}) (P'.try (P'.getT "resources"))
        parse'canary = Prelude'.fmap (\ v o -> o{canary = v}) (P'.try (P'.getT "canary"))
        parse'type_url = Prelude'.fmap (\ v o -> o{type_url = v}) (P'.try (P'.getT "type_url"))
        parse'nonce = Prelude'.fmap (\ v o -> o{nonce = v}) (P'.try (P'.getT "nonce"))
        parse'control_plane = Prelude'.fmap (\ v o -> o{control_plane = v}) (P'.try (P'.getT "control_plane"))