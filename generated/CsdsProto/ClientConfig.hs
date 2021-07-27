{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module CsdsProto.ClientConfig (ClientConfig(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.Node as BaseProto
import qualified CsdsProto.ClientConfig.GenericXdsConfig as CsdsProto.ClientConfig
import qualified CsdsProto.PerXdsConfig as CsdsProto

data ClientConfig = ClientConfig{node :: !(P'.Maybe BaseProto.Node), xds_config :: !(P'.Seq CsdsProto.PerXdsConfig),
                                 generic_xds_configs :: !(P'.Seq CsdsProto.ClientConfig.GenericXdsConfig)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ClientConfig where
  mergeAppend (ClientConfig x'1 x'2 x'3) (ClientConfig y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in ClientConfig z'1 z'2 z'3

instance P'.Default ClientConfig where
  defaultValue = ClientConfig P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire ClientConfig where
  wireSize ft' self'@(ClientConfig x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 11 x'2 + P'.wireSizeRep 1 11 x'3)
  wirePutWithSize ft' self'@(ClientConfig x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutRepWithSize 18 11 x'2, P'.wirePutRepWithSize 26 11 x'3]
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
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{xds_config = P'.append (xds_config old'Self) new'Field}) (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{generic_xds_configs = P'.append (generic_xds_configs old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ClientConfig) ClientConfig where
  getVal m' f' = f' m'

instance P'.GPB ClientConfig

instance P'.ReflectDescriptor ClientConfig where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.status.v3.ClientConfig\", haskellPrefix = [], parentModule = [MName \"CsdsProto\"], baseName = MName \"ClientConfig\"}, descFilePath = [\"CsdsProto\",\"ClientConfig.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.node\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\"], baseName' = FName \"node\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Node\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"Node\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.xds_config\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\"], baseName' = FName \"xds_config\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.status.v3.PerXdsConfig\", haskellPrefix = [], parentModule = [MName \"CsdsProto\"], baseName = MName \"PerXdsConfig\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.status.v3.ClientConfig.generic_xds_configs\", haskellPrefix' = [], parentModule' = [MName \"CsdsProto\",MName \"ClientConfig\"], baseName' = FName \"generic_xds_configs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.status.v3.ClientConfig.GenericXdsConfig\", haskellPrefix = [], parentModule = [MName \"CsdsProto\",MName \"ClientConfig\"], baseName = MName \"GenericXdsConfig\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ClientConfig where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ClientConfig where
  textPut msg
   = do
       P'.tellT "node" (node msg)
       P'.tellT "xds_config" (xds_config msg)
       P'.tellT "generic_xds_configs" (generic_xds_configs msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'node, parse'xds_config, parse'generic_xds_configs]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'node = Prelude'.fmap (\ v o -> o{node = v}) (P'.try (P'.getT "node"))
        parse'xds_config = Prelude'.fmap (\ v o -> o{xds_config = P'.append (xds_config o) v}) (P'.try (P'.getT "xds_config"))
        parse'generic_xds_configs
         = Prelude'.fmap (\ v o -> o{generic_xds_configs = P'.append (generic_xds_configs o) v})
            (P'.try (P'.getT "generic_xds_configs"))