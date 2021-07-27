{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module EventServiceConfigProto.EventServiceConfig (EventServiceConfig(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified EventServiceConfigProto.EventServiceConfig.Config_source_specifier
       as EventServiceConfigProto.EventServiceConfig.Config_source_specifier (Config_source_specifier(..), get'grpc_service)

data EventServiceConfig = EventServiceConfig{config_source_specifier ::
                                             P'.Maybe
                                              (EventServiceConfigProto.EventServiceConfig.Config_source_specifier.Config_source_specifier)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable EventServiceConfig where
  mergeAppend (EventServiceConfig x'1) (EventServiceConfig y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in EventServiceConfig z'1

instance P'.Default EventServiceConfig where
  defaultValue = EventServiceConfig P'.defaultValue

instance P'.Wire EventServiceConfig where
  wireSize ft' self'@(EventServiceConfig x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11
             (EventServiceConfigProto.EventServiceConfig.Config_source_specifier.get'grpc_service Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(EventServiceConfig x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11
              (EventServiceConfigProto.EventServiceConfig.Config_source_specifier.get'grpc_service Prelude'.=<< x'1)]
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
                    (\ !new'Field ->
                      old'Self{config_source_specifier =
                                P'.mergeAppend (config_source_specifier old'Self)
                                 (Prelude'.Just
                                   (EventServiceConfigProto.EventServiceConfig.Config_source_specifier.Grpc_service new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> EventServiceConfig) EventServiceConfig where
  getVal m' f' = f' m'

instance P'.GPB EventServiceConfig

instance P'.ReflectDescriptor EventServiceConfig where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.EventServiceConfig\", haskellPrefix = [], parentModule = [MName \"EventServiceConfigProto\"], baseName = MName \"EventServiceConfig\"}, descFilePath = [\"EventServiceConfigProto\",\"EventServiceConfig.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.EventServiceConfig.config_source_specifier\", haskellPrefix = [], parentModule = [MName \"EventServiceConfigProto\",MName \"EventServiceConfig\"], baseName = MName \"Config_source_specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.EventServiceConfig.config_source_specifier\", haskellPrefix' = [], parentModule' = [MName \"EventServiceConfigProto\",MName \"EventServiceConfig\"], baseName' = FName \"config_source_specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"EventServiceConfigProto\",\"EventServiceConfig\",\"Config_source_specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.EventServiceConfig.config_source_specifier.grpc_service\", haskellPrefix = [], parentModule = [MName \"EventServiceConfigProto\",MName \"EventServiceConfig\",MName \"Config_source_specifier\"], baseName = MName \"Grpc_service\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.EventServiceConfig.config_source_specifier.grpc_service\", haskellPrefix' = [], parentModule' = [MName \"EventServiceConfigProto\",MName \"EventServiceConfig\",MName \"Config_source_specifier\"], baseName' = FName \"grpc_service\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\"], baseName = MName \"GrpcService\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType EventServiceConfig where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg EventServiceConfig where
  textPut msg
   = do
       case (config_source_specifier msg) of
         Prelude'.Just (EventServiceConfigProto.EventServiceConfig.Config_source_specifier.Grpc_service grpc_service) -> P'.tellT
                                                                                                                          "grpc_service"
                                                                                                                          grpc_service
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'config_source_specifier]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'config_source_specifier = P'.try (P'.choice [parse'grpc_service])
          where
              parse'grpc_service
               = P'.try
                  (do
                     v <- P'.getT "grpc_service"
                     Prelude'.return
                      (\ s ->
                        s{config_source_specifier =
                           Prelude'.Just (EventServiceConfigProto.EventServiceConfig.Config_source_specifier.Grpc_service v)}))