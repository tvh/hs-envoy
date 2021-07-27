{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module DiscoveryProto.Resource.CacheControl (CacheControl(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data CacheControl = CacheControl{do_not_cache :: !(P'.Maybe P'.Bool)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable CacheControl where
  mergeAppend (CacheControl x'1) (CacheControl y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in CacheControl z'1

instance P'.Default CacheControl where
  defaultValue = CacheControl P'.defaultValue

instance P'.Wire CacheControl where
  wireSize ft' self'@(CacheControl x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 8 x'1)
  wirePutWithSize ft' self'@(CacheControl x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 8 8 x'1]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{do_not_cache = Prelude'.Just new'Field}) (P'.wireGet 8)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CacheControl) CacheControl where
  getVal m' f' = f' m'

instance P'.GPB CacheControl

instance P'.ReflectDescriptor CacheControl where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.discovery.v3.Resource.CacheControl\", haskellPrefix = [], parentModule = [MName \"DiscoveryProto\",MName \"Resource\"], baseName = MName \"CacheControl\"}, descFilePath = [\"DiscoveryProto\",\"Resource\",\"CacheControl.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.discovery.v3.Resource.CacheControl.do_not_cache\", haskellPrefix' = [], parentModule' = [MName \"DiscoveryProto\",MName \"Resource\",MName \"CacheControl\"], baseName' = FName \"do_not_cache\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType CacheControl where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CacheControl where
  textPut msg
   = do
       P'.tellT "do_not_cache" (do_not_cache msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'do_not_cache]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'do_not_cache = Prelude'.fmap (\ v o -> o{do_not_cache = v}) (P'.try (P'.getT "do_not_cache"))