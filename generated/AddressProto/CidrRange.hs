{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AddressProto.CidrRange (CidrRange(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified WrappersProto.UInt32Value as WrappersProto

data CidrRange = CidrRange{address_prefix :: !(P'.Maybe P'.Utf8), prefix_len :: !(P'.Maybe WrappersProto.UInt32Value)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable CidrRange where
  mergeAppend (CidrRange x'1 x'2) (CidrRange y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in CidrRange z'1 z'2

instance P'.Default CidrRange where
  defaultValue = CidrRange P'.defaultValue P'.defaultValue

instance P'.Wire CidrRange where
  wireSize ft' self'@(CidrRange x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(CidrRange x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 18 11 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{address_prefix = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{prefix_len = P'.mergeAppend (prefix_len old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CidrRange) CidrRange where
  getVal m' f' = f' m'

instance P'.GPB CidrRange

instance P'.ReflectDescriptor CidrRange where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.CidrRange\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"CidrRange\"}, descFilePath = [\"AddressProto\",\"CidrRange.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.CidrRange.address_prefix\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"CidrRange\"], baseName' = FName \"address_prefix\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.CidrRange.prefix_len\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"CidrRange\"], baseName' = FName \"prefix_len\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType CidrRange where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CidrRange where
  textPut msg
   = do
       P'.tellT "address_prefix" (address_prefix msg)
       P'.tellT "prefix_len" (prefix_len msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'address_prefix, parse'prefix_len]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'address_prefix = Prelude'.fmap (\ v o -> o{address_prefix = v}) (P'.try (P'.getT "address_prefix"))
        parse'prefix_len = Prelude'.fmap (\ v o -> o{prefix_len = v}) (P'.try (P'.getT "prefix_len"))