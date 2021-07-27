{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HealthCheckProto.HealthCheck.CustomHealthCheck (CustomHealthCheck(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified HealthCheckProto.HealthCheck.CustomHealthCheck.Config_type
       as HealthCheckProto.HealthCheck.CustomHealthCheck.Config_type (Config_type(..), get'typed_config)

data CustomHealthCheck = CustomHealthCheck{name :: !(P'.Maybe P'.Utf8),
                                           config_type ::
                                           P'.Maybe (HealthCheckProto.HealthCheck.CustomHealthCheck.Config_type.Config_type)}
                         deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable CustomHealthCheck where
  mergeAppend (CustomHealthCheck x'1 x'2) (CustomHealthCheck y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in CustomHealthCheck z'1 z'2

instance P'.Default CustomHealthCheck where
  defaultValue = CustomHealthCheck P'.defaultValue P'.defaultValue

instance P'.Wire CustomHealthCheck where
  wireSize ft' self'@(CustomHealthCheck x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 +
             P'.wireSizeOpt 1 11 (HealthCheckProto.HealthCheck.CustomHealthCheck.Config_type.get'typed_config Prelude'.=<< x'2))
  wirePutWithSize ft' self'@(CustomHealthCheck x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1,
             P'.wirePutOptWithSize 26 11
              (HealthCheckProto.HealthCheck.CustomHealthCheck.Config_type.get'typed_config Prelude'.=<< x'2)]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{name = Prelude'.Just new'Field}) (P'.wireGet 9)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{config_type =
                                P'.mergeAppend (config_type old'Self)
                                 (Prelude'.Just
                                   (HealthCheckProto.HealthCheck.CustomHealthCheck.Config_type.Typed_config new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CustomHealthCheck) CustomHealthCheck where
  getVal m' f' = f' m'

instance P'.GPB CustomHealthCheck

instance P'.ReflectDescriptor CustomHealthCheck where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.CustomHealthCheck\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"CustomHealthCheck\"}, descFilePath = [\"HealthCheckProto\",\"HealthCheck\",\"CustomHealthCheck.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.CustomHealthCheck.name\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"CustomHealthCheck\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.CustomHealthCheck.config_type\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"CustomHealthCheck\"], baseName = MName \"Config_type\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.CustomHealthCheck.config_type\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"CustomHealthCheck\"], baseName' = FName \"config_type\", baseNamePrefix' = \"\"}, oneofFilePath = [\"HealthCheckProto\",\"HealthCheck\",\"CustomHealthCheck\",\"Config_type.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.CustomHealthCheck.config_type.typed_config\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"CustomHealthCheck\",MName \"Config_type\"], baseName = MName \"Typed_config\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.CustomHealthCheck.config_type.typed_config\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"CustomHealthCheck\",MName \"Config_type\"], baseName' = FName \"typed_config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Any\", haskellPrefix = [], parentModule = [MName \"AnyProto\"], baseName = MName \"Any\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType CustomHealthCheck where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CustomHealthCheck where
  textPut msg
   = do
       P'.tellT "name" (name msg)
       case (config_type msg) of
         Prelude'.Just (HealthCheckProto.HealthCheck.CustomHealthCheck.Config_type.Typed_config typed_config) -> P'.tellT
                                                                                                                  "typed_config"
                                                                                                                  typed_config
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'name, parse'config_type]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'name = Prelude'.fmap (\ v o -> o{name = v}) (P'.try (P'.getT "name"))
        parse'config_type = P'.try (P'.choice [parse'typed_config])
          where
              parse'typed_config
               = P'.try
                  (do
                     v <- P'.getT "typed_config"
                     Prelude'.return
                      (\ s ->
                        s{config_type = Prelude'.Just (HealthCheckProto.HealthCheck.CustomHealthCheck.Config_type.Typed_config v)}))