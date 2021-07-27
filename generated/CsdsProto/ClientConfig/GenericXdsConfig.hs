{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module CsdsProto.ClientConfig.GenericXdsConfig (GenericXdsConfig(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AnyProto.Any as AnyProto
import qualified ConfigDumpProto.ClientResourceStatus as ConfigDumpProto
import qualified ConfigDumpProto.UpdateFailureState as ConfigDumpProto
import qualified CsdsProto.ConfigStatus as CsdsProto
import qualified TimestampProto.Timestamp as TimestampProto

data GenericXdsConfig = GenericXdsConfig{type_url :: !(P'.Maybe P'.Utf8), name :: !(P'.Maybe P'.Utf8),
                                         version_info :: !(P'.Maybe P'.Utf8), xds_config :: !(P'.Maybe AnyProto.Any),
                                         last_updated :: !(P'.Maybe TimestampProto.Timestamp),
                                         config_status :: !(P'.Maybe CsdsProto.ConfigStatus),
                                         client_status :: !(P'.Maybe ConfigDumpProto.ClientResourceStatus),
                                         error_state :: !(P'.Maybe ConfigDumpProto.UpdateFailureState),
                                         is_static_resource :: !(P'.Maybe P'.Bool)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable GenericXdsConfig where
  mergeAppend (GenericXdsConfig x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9) (GenericXdsConfig y'1 y'2 y'3 y'4 y'5 y'6 y'7 y'8 y'9)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
         !z'6 = P'.mergeAppend x'6 y'6
         !z'7 = P'.mergeAppend x'7 y'7
         !z'8 = P'.mergeAppend x'8 y'8
         !z'9 = P'.mergeAppend x'9 y'9
      in GenericXdsConfig z'1 z'2 z'3 z'4 z'5 z'6 z'7 z'8 z'9

instance P'.Default GenericXdsConfig where
  defaultValue
   = GenericXdsConfig P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue
      P'.defaultValue
      P'.defaultValue
      P'.defaultValue

instance P'.Wire GenericXdsConfig where
  wireSize ft' self'@(GenericXdsConfig x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 11 x'4 +
             P'.wireSizeOpt 1 11 x'5
             + P'.wireSizeOpt 1 14 x'6
             + P'.wireSizeOpt 1 14 x'7
             + P'.wireSizeOpt 1 11 x'8
             + P'.wireSizeOpt 1 8 x'9)
  wirePutWithSize ft' self'@(GenericXdsConfig x'1 x'2 x'3 x'4 x'5 x'6 x'7 x'8 x'9)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 9 x'2, P'.wirePutOptWithSize 26 9 x'3,
             P'.wirePutOptWithSize 34 11 x'4, P'.wirePutOptWithSize 42 11 x'5, P'.wirePutOptWithSize 48 14 x'6,
             P'.wirePutOptWithSize 56 14 x'7, P'.wirePutOptWithSize 66 11 x'8, P'.wirePutOptWithSize 72 8 x'9]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{type_url = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{name = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{version_info = Prelude'.Just new'Field}) (P'.wireGet 9)
             34 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{xds_config = P'.mergeAppend (xds_config old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{last_updated = P'.mergeAppend (last_updated old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{config_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             56 -> Prelude'.fmap (\ !new'Field -> old'Self{client_status = Prelude'.Just new'Field}) (P'.wireGet 14)
             66 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{error_state = P'.mergeAppend (error_state old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             72 -> Prelude'.fmap (\ !new'Field -> old'Self{is_static_resource = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> GenericXdsConfig) GenericXdsConfig where
  getVal m' f' = f' m'

instance P'.GPB GenericXdsConfig

instance P'.ReflectDescriptor GenericXdsConfig where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26, 34, 42, 48, 56, 66, 72])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig\", haskellPrefix = [], parentModule = [MName \"CsdsProto\",MName \"ClientConfig\"], baseName = MName \"GenericXdsConfig\"}, descFilePath = [\"CsdsProto\",\"ClientConfig\",\"GenericXdsConfig.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig.type_url\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\",MName \"GenericXdsConfig\"], baseName' = FName \"type_url\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig.name\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\",MName \"GenericXdsConfig\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig.version_info\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\",MName \"GenericXdsConfig\"], baseName' = FName \"version_info\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig.xds_config\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\",MName \"GenericXdsConfig\"], baseName' = FName \"xds_config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Any\", haskellPrefix = [], parentModule = [MName \"AnyProto\"], baseName = MName \"Any\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig.last_updated\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\",MName \"GenericXdsConfig\"], baseName' = FName \"last_updated\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Timestamp\", haskellPrefix = [], parentModule = [MName \"TimestampProto\"], baseName = MName \"Timestamp\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig.config_status\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\",MName \"GenericXdsConfig\"], baseName' = FName \"config_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.status.v3.ConfigStatus\", haskellPrefix = [], parentModule = [MName \"CsdsProto\"], baseName = MName \"ConfigStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig.client_status\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\",MName \"GenericXdsConfig\"], baseName' = FName \"client_status\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 56}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.admin.v3.ClientResourceStatus\", haskellPrefix = [], parentModule = [MName \"ConfigDumpProto\"], baseName = MName \"ClientResourceStatus\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig.error_state\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\",MName \"GenericXdsConfig\"], baseName' = FName \"error_state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 8}, wireTag = WireTag {getWireTag = 66}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.admin.v3.UpdateFailureState\", haskellPrefix = [], parentModule = [MName \"ConfigDumpProto\"], baseName = MName \"UpdateFailureState\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig.is_static_resource\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\",MName \"GenericXdsConfig\"], baseName' = FName \"is_static_resource\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 9}, wireTag = WireTag {getWireTag = 72}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType GenericXdsConfig where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg GenericXdsConfig where
  textPut msg
   = do
       P'.tellT "type_url" (type_url msg)
       P'.tellT "name" (name msg)
       P'.tellT "version_info" (version_info msg)
       P'.tellT "xds_config" (xds_config msg)
       P'.tellT "last_updated" (last_updated msg)
       P'.tellT "config_status" (config_status msg)
       P'.tellT "client_status" (client_status msg)
       P'.tellT "error_state" (error_state msg)
       P'.tellT "is_static_resource" (is_static_resource msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'type_url, parse'name, parse'version_info, parse'xds_config, parse'last_updated, parse'config_status,
                   parse'client_status, parse'error_state, parse'is_static_resource])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'type_url = Prelude'.fmap (\ v o -> o{type_url = v}) (P'.try (P'.getT "type_url"))
        parse'name = Prelude'.fmap (\ v o -> o{name = v}) (P'.try (P'.getT "name"))
        parse'version_info = Prelude'.fmap (\ v o -> o{version_info = v}) (P'.try (P'.getT "version_info"))
        parse'xds_config = Prelude'.fmap (\ v o -> o{xds_config = v}) (P'.try (P'.getT "xds_config"))
        parse'last_updated = Prelude'.fmap (\ v o -> o{last_updated = v}) (P'.try (P'.getT "last_updated"))
        parse'config_status = Prelude'.fmap (\ v o -> o{config_status = v}) (P'.try (P'.getT "config_status"))
        parse'client_status = Prelude'.fmap (\ v o -> o{client_status = v}) (P'.try (P'.getT "client_status"))
        parse'error_state = Prelude'.fmap (\ v o -> o{error_state = v}) (P'.try (P'.getT "error_state"))
        parse'is_static_resource = Prelude'.fmap (\ v o -> o{is_static_resource = v}) (P'.try (P'.getT "is_static_resource"))