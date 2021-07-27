{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.ControlPlane (ControlPlane(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ControlPlane = ControlPlane{identifier :: !(P'.Maybe P'.Utf8)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ControlPlane where
  mergeAppend (ControlPlane x'1) (ControlPlane y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in ControlPlane z'1

instance P'.Default ControlPlane where
  defaultValue = ControlPlane P'.defaultValue

instance P'.Wire ControlPlane where
  wireSize ft' self'@(ControlPlane x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1)
  wirePutWithSize ft' self'@(ControlPlane x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 9 x'1]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{identifier = Prelude'.Just new'Field}) (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ControlPlane) ControlPlane where
  getVal m' f' = f' m'

instance P'.GPB ControlPlane

instance P'.ReflectDescriptor ControlPlane where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.ControlPlane\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"ControlPlane\"}, descFilePath = [\"BaseProto\",\"ControlPlane.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.ControlPlane.identifier\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"ControlPlane\"], baseName' = FName \"identifier\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ControlPlane where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ControlPlane where
  textPut msg
   = do
       P'.tellT "identifier" (identifier msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'identifier]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'identifier = Prelude'.fmap (\ v o -> o{identifier = v}) (P'.try (P'.getT "identifier"))