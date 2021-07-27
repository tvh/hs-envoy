{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.Node (Node(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AddressProto.Address as AddressProto
import qualified BaseProto.Extension as BaseProto
import qualified BaseProto.Locality as BaseProto
import qualified BaseProto.Node.DynamicParametersEntry as BaseProto.Node
import qualified BaseProto.Node.User_agent_version_type as BaseProto.Node.User_agent_version_type
       (User_agent_version_type(..), get'user_agent_version, get'user_agent_build_version)
import qualified ContextParamsProto.ContextParams as ContextParamsProto
import qualified StructProto.Struct as StructProto

data Node = Node{id :: !(P'.Maybe P'.Utf8), cluster :: !(P'.Maybe P'.Utf8), metadata :: !(P'.Maybe StructProto.Struct),
                 locality :: !(P'.Maybe BaseProto.Locality), user_agent_name :: !(P'.Maybe P'.Utf8),
                 extensions :: !(P'.Seq BaseProto.Extension), client_features :: !(P'.Seq P'.Utf8),
                 listening_addresses :: !(P'.Seq AddressProto.Address),
                 user_agent_version_type :: P'.Maybe (BaseProto.Node.User_agent_version_type.User_agent_version_type),
                 dynamic_parameters :: P'.Map (P'.Utf8) (ContextParamsProto.ContextParams)}
            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Node where
  mergeAppend (Node x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10) (Node y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9 y'10)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
         !z'7 = P'.mergeAppend x'7 y'7
         !z'8 = P'.mergeAppend x'8 y'8
         !z'9 = P'.mergeAppend x'9 y'9
         !z'10 = P'.mergeAppend x'10 y'10
      in Node z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8 z'9 z'10

instance P'.Default Node where
  defaultValue
   = Node P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire Node where
  wireSize ft' self'@(Node x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 11 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 9 x'5
             + P'.wireSizeRep 1 11 x'6
             + P'.wireSizeRep 1 9 x'7
             + P'.wireSizeRep 1 11 x'8
             + P'.wireSizeRep 1 11 (BaseProto.Node.dynamicParametersEntryToSeq x'9)
             + P'.wireSizeOpt 1 9 (BaseProto.Node.User_agent_version_type.get'user_agent_version Prelude'.=<< x'10)
             + P'.wireSizeOpt 1 11 (BaseProto.Node.User_agent_version_type.get'user_agent_build_version Prelude'.=<< x'10))
  wirePutWithSize ft' self'@(Node x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9 x'10)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 9 x'2, P'.wirePutOptWithSize 26 11 x'3,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutOptWithSize 50 9 x'5,
             P'.wirePutOptWithSize 58 9 (BaseProto.Node.User_agent_version_type.get'user_agent_version Prelude'.=<< x'10),
             P'.wirePutOptWithSize 66 11 (BaseProto.Node.User_agent_version_type.get'user_agent_build_version Prelude'.=<< x'10),
             P'.wirePutRepWithSize 74 11 x'6, P'.wirePutRepWithSize 82 9 x'7, P'.wirePutRepWithSize 90 11 x'8,
             P'.wirePutRepWithSize 98 11 (BaseProto.Node.dynamicParametersEntryToSeq x'9)]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{id = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{cluster = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{metadata = P'.mergeAppend (metadata old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{locality = P'.mergeAppend (locality old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap (\ !new'Field -> old'Self{user_agent_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             74 -> Prelude'.fmap (\ !new'Field -> old'Self{extensions = P'.append (extensions old'Self) new'Field}) (P'.wireGet 11)
             82 -> Prelude'.fmap (\ !new'Field -> old'Self{client_features = P'.append (client_features old'Self) new'Field})
                    (P'.wireGet 9)
             90 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{listening_addresses = P'.append (listening_addresses old'Self) new'Field})
                    (P'.wireGet 11)
             98 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{dynamic_parameters =
                                P'.appendMap (dynamic_parameters old'Self) (BaseProto.Node.dynamicParametersEntryToPair new'Field)})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{user_agent_version_type =
                                Prelude'.Just (BaseProto.Node.User_agent_version_type.User_agent_version new'Field)})
                    (P'.wireGet 9)
             66 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{user_agent_version_type =
                                P'.mergeAppend (user_agent_version_type old'Self)
                                 (Prelude'.Just (BaseProto.Node.User_agent_version_type.User_agent_build_version new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Node) Node where
  getVal m' f' = f' m'

instance P'.GPB Node

instance P'.ReflectDescriptor Node where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 50, 74, 82, 90, 98])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Node\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Node\"}, descFilePath = [\"BaseProto\",\"Node.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.id\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\"], baseName' = FName \"id\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.cluster\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\"], baseName' = FName \"cluster\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.metadata\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\"], baseName' = FName \"metadata\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Struct\", haskellPrefix = [], parentModule = [MName \"StructProto\"], baseName = MName \"Struct\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.locality\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\"], baseName' = FName \"locality\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Locality\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Locality\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.user_agent_name\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\"], baseName' = FName \"user_agent_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.extensions\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\"], baseName' = FName \"extensions\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 74}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Extension\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Extension\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.client_features\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\"], baseName' = FName \"client_features\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 10}, wireTag = WireTag {getWireTag = 82}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.listening_addresses\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\"], baseName' = FName \"listening_addresses\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 11}, wireTag = WireTag {getWireTag = 90}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Address\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"Address\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.dynamic_parameters\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\"], baseName' = FName \"dynamic_parameters\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 12}, wireTag = WireTag {getWireTag = 98}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Node.DynamicParametersEntry\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"Node\"], baseName = MName \"DynamicParametersEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = True, mapKeyVal = Just ((FieldType {getFieldType = 9},Nothing),(FieldType {getFieldType = 11},Just (ProtoName {protobufName = FIName \".xds.core.v3.ContextParams\", haskellPrefix = [], parentModule = [MName \"ContextParamsProto\"], baseName = MName \"ContextParams\"})))}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Node.user_agent_version_type\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"Node\"], baseName = MName \"User_agent_version_type\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.user_agent_version_type\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\"], baseName' = FName \"user_agent_version_type\", baseNamePrefix' = \"\"}, oneofFilePath = [\"BaseProto\",\"Node\",\"User_agent_version_type.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.Node.user_agent_version_type.user_agent_version\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"Node\",MName \"User_agent_version_type\"], baseName = MName \"User_agent_version\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.user_agent_version_type.user_agent_version\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\",MName \"User_agent_version_type\"], baseName' = FName \"user_agent_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.Node.user_agent_version_type.user_agent_build_version\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"Node\",MName \"User_agent_version_type\"], baseName = MName \"User_agent_build_version\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Node.user_agent_version_type.user_agent_build_version\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"Node\",MName \"User_agent_version_type\"], baseName' = FName \"user_agent_build_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.BuildVersion\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"BuildVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Node where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Node where
  textPut msg
   = do
       P'.tellT "id" (id msg)
       P'.tellT "cluster" (cluster msg)
       P'.tellT "metadata" (metadata msg)
       P'.tellT "locality" (locality msg)
       P'.tellT "user_agent_name" (user_agent_name msg)
       P'.tellT "extensions" (extensions msg)
       P'.tellT "client_features" (client_features msg)
       P'.tellT "listening_addresses" (listening_addresses msg)
       P'.tellT "dynamic_parameters" (BaseProto.Node.dynamicParametersEntryToSeq (dynamic_parameters msg))
       case (user_agent_version_type msg) of
         Prelude'.Just (BaseProto.Node.User_agent_version_type.User_agent_version user_agent_version) -> P'.tellT
                                                                                                          "user_agent_version"
                                                                                                          user_agent_version
         Prelude'.Just (BaseProto.Node.User_agent_version_type.User_agent_build_version user_agent_build_version) -> P'.tellT
                                                                                                                      "user_agent_build_version"
                                                                                                                      user_agent_build_version
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'id, parse'cluster, parse'metadata, parse'locality, parse'user_agent_name, parse'extensions,
                   parse'client_features, parse'listening_addresses, parse'dynamic_parameters, parse'user_agent_version_type])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'id = Prelude'.fmap (\ v o -> o{id = v}) (P'.try (P'.getT "id"))
        parse'cluster = Prelude'.fmap (\ v o -> o{cluster = v}) (P'.try (P'.getT "cluster"))
        parse'metadata = Prelude'.fmap (\ v o -> o{metadata = v}) (P'.try (P'.getT "metadata"))
        parse'locality = Prelude'.fmap (\ v o -> o{locality = v}) (P'.try (P'.getT "locality"))
        parse'user_agent_name = Prelude'.fmap (\ v o -> o{user_agent_name = v}) (P'.try (P'.getT "user_agent_name"))
        parse'extensions = Prelude'.fmap (\ v o -> o{extensions = P'.append (extensions o) v}) (P'.try (P'.getT "extensions"))
        parse'client_features
         = Prelude'.fmap (\ v o -> o{client_features = P'.append (client_features o) v}) (P'.try (P'.getT "client_features"))
        parse'listening_addresses
         = Prelude'.fmap (\ v o -> o{listening_addresses = P'.append (listening_addresses o) v})
            (P'.try (P'.getT "listening_addresses"))
        parse'dynamic_parameters
         = Prelude'.fmap
            (\ v o -> o{dynamic_parameters = P'.appendMap (dynamic_parameters o) (BaseProto.Node.dynamicParametersEntryToPair v)})
            (P'.try (P'.getT "dynamic_parameters"))
        parse'user_agent_version_type = P'.try (P'.choice [parse'user_agent_version, parse'user_agent_build_version])
          where
              parse'user_agent_version
               = P'.try
                  (do
                     v <- P'.getT "user_agent_version"
                     Prelude'.return
                      (\ s ->
                        s{user_agent_version_type = Prelude'.Just (BaseProto.Node.User_agent_version_type.User_agent_version v)}))
              parse'user_agent_build_version
               = P'.try
                  (do
                     v <- P'.getT "user_agent_build_version"
                     Prelude'.return
                      (\ s ->
                        s{user_agent_version_type =
                           Prelude'.Just (BaseProto.Node.User_agent_version_type.User_agent_build_version v)}))