{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ConfigSourceProto.ConfigSource (ConfigSource(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AuthorityProto.Authority as AuthorityProto
import qualified ConfigSourceProto.ApiVersion as ConfigSourceProto
import qualified ConfigSourceProto.ConfigSource.Config_source_specifier as ConfigSourceProto.ConfigSource.Config_source_specifier
       (Config_source_specifier(..), get'path, get'api_config_source, get'ads, get'self)
import qualified DurationProto.Duration as DurationProto

data ConfigSource = ConfigSource{authorities :: !(P'.Seq AuthorityProto.Authority),
                                 initial_fetch_timeout :: !(P'.Maybe DurationProto.Duration),
                                 resource_api_version :: !(P'.Maybe ConfigSourceProto.ApiVersion),
                                 config_source_specifier ::
                                 P'.Maybe (ConfigSourceProto.ConfigSource.Config_source_specifier.Config_source_specifier)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ConfigSource where
  mergeAppend (ConfigSource x'1 x'2 x'3 x'4) (ConfigSource y'1 y'2 y'3 y'4)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
      in ConfigSource z'1 z'2 z'3 z'4

instance P'.Default ConfigSource where
  defaultValue = ConfigSource P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire ConfigSource where
  wireSize ft' self'@(ConfigSource x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeRep 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeOpt 1 14 x'3 +
             P'.wireSizeOpt 1 9 (ConfigSourceProto.ConfigSource.Config_source_specifier.get'path Prelude'.=<< x'4)
             + P'.wireSizeOpt 1 11 (ConfigSourceProto.ConfigSource.Config_source_specifier.get'api_config_source Prelude'.=<< x'4)
             + P'.wireSizeOpt 1 11 (ConfigSourceProto.ConfigSource.Config_source_specifier.get'ads Prelude'.=<< x'4)
             + P'.wireSizeOpt 1 11 (ConfigSourceProto.ConfigSource.Config_source_specifier.get'self Prelude'.=<< x'4))
  wirePutWithSize ft' self'@(ConfigSource x'1 x'2 x'3 x'4)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 (ConfigSourceProto.ConfigSource.Config_source_specifier.get'path Prelude'.=<< x'4),
             P'.wirePutOptWithSize 18 11
              (ConfigSourceProto.ConfigSource.Config_source_specifier.get'api_config_source Prelude'.=<< x'4),
             P'.wirePutOptWithSize 26 11 (ConfigSourceProto.ConfigSource.Config_source_specifier.get'ads Prelude'.=<< x'4),
             P'.wirePutOptWithSize 34 11 x'2,
             P'.wirePutOptWithSize 42 11 (ConfigSourceProto.ConfigSource.Config_source_specifier.get'self Prelude'.=<< x'4),
             P'.wirePutOptWithSize 48 14 x'3, P'.wirePutRepWithSize 58 11 x'1]
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
             58 -> Prelude'.fmap (\ !new'Field -> old'Self{authorities = P'.append (authorities old'Self) new'Field})
                    (P'.wireGet 11)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{initial_fetch_timeout = P'.mergeAppend (initial_fetch_timeout old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{resource_api_version = Prelude'.Just new'Field}) (P'.wireGet 14)
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{config_source_specifier =
                                Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Path new'Field)})
                    (P'.wireGet 9)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{config_source_specifier =
                                P'.mergeAppend (config_source_specifier old'Self)
                                 (Prelude'.Just
                                   (ConfigSourceProto.ConfigSource.Config_source_specifier.Api_config_source new'Field))})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{config_source_specifier =
                                P'.mergeAppend (config_source_specifier old'Self)
                                 (Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Ads new'Field))})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{config_source_specifier =
                                P'.mergeAppend (config_source_specifier old'Self)
                                 (Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Self new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ConfigSource) ConfigSource where
  getVal m' f' = f' m'

instance P'.GPB ConfigSource

instance P'.ReflectDescriptor ConfigSource where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [34, 48, 58])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.ConfigSource\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"ConfigSource\"}, descFilePath = [\"ConfigSourceProto\",\"ConfigSource.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ConfigSource.authorities\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ConfigSource\"], baseName' = FName \"authorities\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".xds.core.v3.Authority\", haskellPrefix = [], parentModule = [MName \"AuthorityProto\"], baseName = MName \"Authority\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ConfigSource.initial_fetch_timeout\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ConfigSource\"], baseName' = FName \"initial_fetch_timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ConfigSource.resource_api_version\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ConfigSource\"], baseName' = FName \"resource_api_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.ApiVersion\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"ApiVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.ConfigSource.config_source_specifier\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\",MName \"ConfigSource\"], baseName = MName \"Config_source_specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ConfigSource.config_source_specifier\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ConfigSource\"], baseName' = FName \"config_source_specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"ConfigSourceProto\",\"ConfigSource\",\"Config_source_specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.ConfigSource.config_source_specifier.path\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\",MName \"ConfigSource\",MName \"Config_source_specifier\"], baseName = MName \"Path\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ConfigSource.config_source_specifier.path\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ConfigSource\",MName \"Config_source_specifier\"], baseName' = FName \"path\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.ConfigSource.config_source_specifier.api_config_source\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\",MName \"ConfigSource\",MName \"Config_source_specifier\"], baseName = MName \"Api_config_source\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ConfigSource.config_source_specifier.api_config_source\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ConfigSource\",MName \"Config_source_specifier\"], baseName' = FName \"api_config_source\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.ApiConfigSource\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"ApiConfigSource\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.ConfigSource.config_source_specifier.ads\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\",MName \"ConfigSource\",MName \"Config_source_specifier\"], baseName = MName \"Ads\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ConfigSource.config_source_specifier.ads\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ConfigSource\",MName \"Config_source_specifier\"], baseName' = FName \"ads\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.AggregatedConfigSource\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"AggregatedConfigSource\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.ConfigSource.config_source_specifier.self\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\",MName \"ConfigSource\",MName \"Config_source_specifier\"], baseName = MName \"Self\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ConfigSource.config_source_specifier.self\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"ConfigSource\",MName \"Config_source_specifier\"], baseName' = FName \"self\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.SelfConfigSource\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"SelfConfigSource\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ConfigSource where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ConfigSource where
  textPut msg
   = do
       P'.tellT "authorities" (authorities msg)
       P'.tellT "initial_fetch_timeout" (initial_fetch_timeout msg)
       P'.tellT "resource_api_version" (resource_api_version msg)
       case (config_source_specifier msg) of
         Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Path path) -> P'.tellT "path" path
         Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Api_config_source api_config_source) -> P'.tellT
                                                                                                                        "api_config_source"
                                                                                                                        api_config_source
         Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Ads ads) -> P'.tellT "ads" ads
         Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Self self) -> P'.tellT "self" self
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy
                (P'.choice
                  [parse'authorities, parse'initial_fetch_timeout, parse'resource_api_version, parse'config_source_specifier])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'authorities = Prelude'.fmap (\ v o -> o{authorities = P'.append (authorities o) v}) (P'.try (P'.getT "authorities"))
        parse'initial_fetch_timeout
         = Prelude'.fmap (\ v o -> o{initial_fetch_timeout = v}) (P'.try (P'.getT "initial_fetch_timeout"))
        parse'resource_api_version = Prelude'.fmap (\ v o -> o{resource_api_version = v}) (P'.try (P'.getT "resource_api_version"))
        parse'config_source_specifier = P'.try (P'.choice [parse'path, parse'api_config_source, parse'ads, parse'self])
          where
              parse'path
               = P'.try
                  (do
                     v <- P'.getT "path"
                     Prelude'.return
                      (\ s ->
                        s{config_source_specifier = Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Path v)}))
              parse'api_config_source
               = P'.try
                  (do
                     v <- P'.getT "api_config_source"
                     Prelude'.return
                      (\ s ->
                        s{config_source_specifier =
                           Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Api_config_source v)}))
              parse'ads
               = P'.try
                  (do
                     v <- P'.getT "ads"
                     Prelude'.return
                      (\ s ->
                        s{config_source_specifier = Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Ads v)}))
              parse'self
               = P'.try
                  (do
                     v <- P'.getT "self"
                     Prelude'.return
                      (\ s ->
                        s{config_source_specifier = Prelude'.Just (ConfigSourceProto.ConfigSource.Config_source_specifier.Self v)}))