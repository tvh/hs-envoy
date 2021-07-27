{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.AlternateProtocolsCacheOptions (AlternateProtocolsCacheOptions(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified WrappersProto.UInt32Value as WrappersProto

data AlternateProtocolsCacheOptions = AlternateProtocolsCacheOptions{name :: !(P'.Maybe P'.Utf8),
                                                                     max_entries :: !(P'.Maybe WrappersProto.UInt32Value)}
                                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                                Prelude'.Generic)

instance P'.Mergeable AlternateProtocolsCacheOptions where
  mergeAppend (AlternateProtocolsCacheOptions x'1 x'2) (AlternateProtocolsCacheOptions y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in AlternateProtocolsCacheOptions z'1 z'2

instance P'.Default AlternateProtocolsCacheOptions where
  defaultValue = AlternateProtocolsCacheOptions P'.defaultValue P'.defaultValue

instance P'.Wire AlternateProtocolsCacheOptions where
  wireSize ft' self'@(AlternateProtocolsCacheOptions x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 11 x'2)
  wirePutWithSize ft' self'@(AlternateProtocolsCacheOptions x'1 x'2)
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{name = Prelude'.Just new'Field}) (P'.wireGet 9)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{max_entries = P'.mergeAppend (max_entries old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> AlternateProtocolsCacheOptions) AlternateProtocolsCacheOptions where
  getVal m' f' = f' m'

instance P'.GPB AlternateProtocolsCacheOptions

instance P'.ReflectDescriptor AlternateProtocolsCacheOptions where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.AlternateProtocolsCacheOptions\", haskellPrefix = [], parentModule = [MName \"ProtocolProto\"], baseName = MName \"AlternateProtocolsCacheOptions\"}, descFilePath = [\"ProtocolProto\",\"AlternateProtocolsCacheOptions.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.AlternateProtocolsCacheOptions.name\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"AlternateProtocolsCacheOptions\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.AlternateProtocolsCacheOptions.max_entries\", haskellPrefix' = [], parentModule' = [MName \"ProtocolProto\",MName \"AlternateProtocolsCacheOptions\"], baseName' = FName \"max_entries\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.UInt32Value\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"UInt32Value\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType AlternateProtocolsCacheOptions where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg AlternateProtocolsCacheOptions where
  textPut msg
   = do
       P'.tellT "name" (name msg)
       P'.tellT "max_entries" (max_entries msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'name, parse'max_entries]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'name = Prelude'.fmap (\ v o -> o{name = v}) (P'.try (P'.getT "name"))
        parse'max_entries = Prelude'.fmap (\ v o -> o{max_entries = v}) (P'.try (P'.getT "max_entries"))