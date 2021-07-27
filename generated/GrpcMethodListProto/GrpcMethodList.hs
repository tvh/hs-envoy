{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcMethodListProto.GrpcMethodList (GrpcMethodList(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified GrpcMethodListProto.GrpcMethodList.Service as GrpcMethodListProto.GrpcMethodList

data GrpcMethodList = GrpcMethodList{services :: !(P'.Seq GrpcMethodListProto.GrpcMethodList.Service)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable GrpcMethodList where
  mergeAppend (GrpcMethodList x'1) (GrpcMethodList y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in GrpcMethodList z'1

instance P'.Default GrpcMethodList where
  defaultValue = GrpcMethodList P'.defaultValue

instance P'.Wire GrpcMethodList where
  wireSize ft' self'@(GrpcMethodList x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePutWithSize ft' self'@(GrpcMethodList x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutRepWithSize 10 11 x'1]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{services = P'.append (services old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> GrpcMethodList) GrpcMethodList where
  getVal m' f' = f' m'

instance P'.GPB GrpcMethodList

instance P'.ReflectDescriptor GrpcMethodList where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcMethodList\", haskellPrefix = [], parentModule = [MName \"GrpcMethodListProto\"], baseName = MName \"GrpcMethodList\"}, descFilePath = [\"GrpcMethodListProto\",\"GrpcMethodList.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcMethodList.services\", haskellPrefix' = [], parentModule' = [MName \"GrpcMethodListProto\",MName \"GrpcMethodList\"], baseName' = FName \"services\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcMethodList.Service\", haskellPrefix = [], parentModule = [MName \"GrpcMethodListProto\",MName \"GrpcMethodList\"], baseName = MName \"Service\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType GrpcMethodList where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg GrpcMethodList where
  textPut msg
   = do
       P'.tellT "services" (services msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'services]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'services = Prelude'.fmap (\ v o -> o{services = P'.append (services o) v}) (P'.try (P'.getT "services"))