{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProxyProtocolProto.ProxyProtocolConfig (ProxyProtocolConfig(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ProxyProtocolProto.ProxyProtocolConfig.Version as ProxyProtocolProto.ProxyProtocolConfig

data ProxyProtocolConfig = ProxyProtocolConfig{version :: !(P'.Maybe ProxyProtocolProto.ProxyProtocolConfig.Version)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ProxyProtocolConfig where
  mergeAppend (ProxyProtocolConfig x'1) (ProxyProtocolConfig y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in ProxyProtocolConfig z'1

instance P'.Default ProxyProtocolConfig where
  defaultValue = ProxyProtocolConfig P'.defaultValue

instance P'.Wire ProxyProtocolConfig where
  wireSize ft' self'@(ProxyProtocolConfig x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 14 x'1)
  wirePutWithSize ft' self'@(ProxyProtocolConfig x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 8 14 x'1]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{version = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ProxyProtocolConfig) ProxyProtocolConfig where
  getVal m' f' = f' m'

instance P'.GPB ProxyProtocolConfig

instance P'.ReflectDescriptor ProxyProtocolConfig where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.ProxyProtocolConfig\", haskellPrefix = [], parentModule = [MName \"ProxyProtocolProto\"], baseName = MName \"ProxyProtocolConfig\"}, descFilePath = [\"ProxyProtocolProto\",\"ProxyProtocolConfig.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ProxyProtocolConfig.version\", haskellPrefix' = [], parentModule' = [MName \"ProxyProtocolProto\",MName \"ProxyProtocolConfig\"], baseName' = FName \"version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.ProxyProtocolConfig.Version\", haskellPrefix = [], parentModule = [MName \"ProxyProtocolProto\",MName \"ProxyProtocolConfig\"], baseName = MName \"Version\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ProxyProtocolConfig where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ProxyProtocolConfig where
  textPut msg
   = do
       P'.tellT "version" (version msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'version]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'version = Prelude'.fmap (\ v o -> o{version = v}) (P'.try (P'.getT "version"))