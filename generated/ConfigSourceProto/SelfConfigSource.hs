{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ConfigSourceProto.SelfConfigSource (SelfConfigSource(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ConfigSourceProto.ApiVersion as ConfigSourceProto

data SelfConfigSource = SelfConfigSource{transport_api_version :: !(P'.Maybe ConfigSourceProto.ApiVersion)}
                        deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable SelfConfigSource where
  mergeAppend (SelfConfigSource x'1) (SelfConfigSource y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in SelfConfigSource z'1

instance P'.Default SelfConfigSource where
  defaultValue = SelfConfigSource P'.defaultValue

instance P'.Wire SelfConfigSource where
  wireSize ft' self'@(SelfConfigSource x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 14 x'1)
  wirePutWithSize ft' self'@(SelfConfigSource x'1)
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{transport_api_version = Prelude'.Just new'Field}) (P'.wireGet 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> SelfConfigSource) SelfConfigSource where
  getVal m' f' = f' m'

instance P'.GPB SelfConfigSource

instance P'.ReflectDescriptor SelfConfigSource where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.SelfConfigSource\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"SelfConfigSource\"}, descFilePath = [\"ConfigSourceProto\",\"SelfConfigSource.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SelfConfigSource.transport_api_version\", haskellPrefix' = [], parentModule' = [MName \"ConfigSourceProto\",MName \"SelfConfigSource\"], baseName' = FName \"transport_api_version\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.ApiVersion\", haskellPrefix = [], parentModule = [MName \"ConfigSourceProto\"], baseName = MName \"ApiVersion\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType SelfConfigSource where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg SelfConfigSource where
  textPut msg
   = do
       P'.tellT "transport_api_version" (transport_api_version msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'transport_api_version]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'transport_api_version
         = Prelude'.fmap (\ v o -> o{transport_api_version = v}) (P'.try (P'.getT "transport_api_version"))