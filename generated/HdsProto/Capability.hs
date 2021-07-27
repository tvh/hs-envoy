{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HdsProto.Capability (Capability(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified HdsProto.Capability.Protocol as HdsProto.Capability

data Capability = Capability{health_check_protocols :: !(P'.Seq HdsProto.Capability.Protocol)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Capability where
  mergeAppend (Capability x'1) (Capability y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in Capability z'1

instance P'.Default Capability where
  defaultValue = Capability P'.defaultValue

instance P'.Wire Capability where
  wireSize ft' self'@(Capability x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 14 x'1)
  wirePutWithSize ft' self'@(Capability x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutRepWithSize 8 14 x'1]
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
             8 -> Prelude'.fmap
                   (\ !new'Field -> old'Self{health_check_protocols = P'.append (health_check_protocols old'Self) new'Field})
                   (P'.wireGet 14)
             10 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{health_check_protocols = P'.mergeAppend (health_check_protocols old'Self) new'Field})
                    (P'.wireGetPacked 14)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Capability) Capability where
  getVal m' f' = f' m'

instance P'.GPB Capability

instance P'.ReflectDescriptor Capability where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.health.v3.Capability\", haskellPrefix = [], parentModule = [MName \"HdsProto\"], baseName = MName \"Capability\"}, descFilePath = [\"HdsProto\",\"Capability.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.health.v3.Capability.health_check_protocols\", haskellPrefix' = [], parentModule' = [MName \"HdsProto\",MName \"Capability\"], baseName' = FName \"health_check_protocols\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Just (WireTag {getWireTag = 8},WireTag {getWireTag = 10}), wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = True, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.health.v3.Capability.Protocol\", haskellPrefix = [], parentModule = [MName \"HdsProto\",MName \"Capability\"], baseName = MName \"Protocol\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Capability where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Capability where
  textPut msg
   = do
       P'.tellT "health_check_protocols" (health_check_protocols msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'health_check_protocols]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'health_check_protocols
         = Prelude'.fmap (\ v o -> o{health_check_protocols = P'.append (health_check_protocols o) v})
            (P'.try (P'.getT "health_check_protocols"))