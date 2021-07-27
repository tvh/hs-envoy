{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ExtensionProto.ExtensionConfigSource (ExtensionConfigSource(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AnyProto.Any as AnyProto
import qualified ConfigSourceProto.ConfigSource as ConfigSourceProto

data ExtensionConfigSource = ExtensionConfigSource{config_source :: !(P'.Maybe ConfigSourceProto.ConfigSource),
                                                   default_config :: !(P'.Maybe AnyProto.Any),
                                                   apply_default_config_without_warming :: !(P'.Maybe P'.Bool),
                                                   type_urls :: !(P'.Seq P'.Utf8)}
                             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ExtensionConfigSource where
  mergeAppend (ExtensionConfigSource x'1 x'2 x'3 x'4) (ExtensionConfigSource y'1 y'2 y'3 y'4)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
      in ExtensionConfigSource z'1 z'2 z'3 z'4

instance P'.Default ExtensionConfigSource where
  defaultValue = ExtensionConfigSource P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire ExtensionConfigSource where
  wireSize ft' self'@(ExtensionConfigSource x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 8 x'3 + P'.wireSizeRep 1 9 x'4)
  wirePutWithSize ft' self'@(ExtensionConfigSource x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutOptWithSize 24 8 x'3,
             P'.wirePutRepWithSize 34 9 x'4]
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
                    (\ !new'Field -> old'Self{config_source = P'.mergeAppend (config_source old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{default_config = P'.mergeAppend (default_config old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{apply_default_config_without_warming = Prelude'.Just new'Field})
                    (P'.wireGet 8)
             34 -> Prelude'.fmap (\ !new'Field -> old'Self{type_urls = P'.append (type_urls old'Self) new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ExtensionConfigSource) ExtensionConfigSource where
  getVal m' f' = f' m'

instance P'.GPB ExtensionConfigSource

instance P'.ReflectDescriptor ExtensionConfigSource where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 24, 34])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.ExtensionConfigSource\", haskellPrefix = [], parentModule = [MName \"ExtensionProto\"], baseName = MName \"ExtensionConfigSource\"}, descFilePath = [\"ExtensionProto\",\"ExtensionConfigSource.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ExtensionConfigSource.config_source\", haskellPrefix' = [], parentModule' = [MName \"ExtensionProto\",MName \"ExtensionConfigSource\"], baseName' = FName \"config_source\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.ConfigSource\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"ConfigSource\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ExtensionConfigSource.default_config\", haskellPrefix' = [], parentModule' = [MName \"ExtensionProto\",MName \"ExtensionConfigSource\"], baseName' = FName \"default_config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Any\", haskellPrefix = [], parentModule = [MName \"AnyProto\"], baseName = MName \"Any\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ExtensionConfigSource.apply_default_config_without_warming\", haskellPrefix' = [], parentModule' = [MName \"ExtensionProto\",MName \"ExtensionConfigSource\"], baseName' = FName \"apply_default_config_without_warming\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ExtensionConfigSource.type_urls\", haskellPrefix' = [], parentModule' = [MName \"ExtensionProto\",MName \"ExtensionConfigSource\"], baseName' = FName \"type_urls\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ExtensionConfigSource where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ExtensionConfigSource where
  textPut msg
   = do
       P'.tellT "config_source" (config_source msg)
       P'.tellT "default_config" (default_config msg)
       P'.tellT "apply_default_config_without_warming" (apply_default_config_without_warming msg)
       P'.tellT "type_urls" (type_urls msg)
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice [parse'config_source, parse'default_config, parse'apply_default_config_without_warming, parse'type_urls])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'config_source = Prelude'.fmap (\ v o -> o{config_source = v}) (P'.try (P'.getT "config_source"))
        parse'default_config = Prelude'.fmap (\ v o -> o{default_config = v}) (P'.try (P'.getT "default_config"))
        parse'apply_default_config_without_warming
         = Prelude'.fmap (\ v o -> o{apply_default_config_without_warming = v})
            (P'.try (P'.getT "apply_default_config_without_warming"))
        parse'type_urls = Prelude'.fmap (\ v o -> o{type_urls = P'.append (type_urls o) v}) (P'.try (P'.getT "type_urls"))