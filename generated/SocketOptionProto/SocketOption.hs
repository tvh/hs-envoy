{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module SocketOptionProto.SocketOption (SocketOption(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified SocketOptionProto.SocketOption.SocketState as SocketOptionProto.SocketOption
import qualified SocketOptionProto.SocketOption.Value as SocketOptionProto.SocketOption.Value
       (Value(..), get'int_value, get'buf_value)

data SocketOption = SocketOption{description :: !(P'.Maybe P'.Utf8), level :: !(P'.Maybe P'.Int64), name :: !(P'.Maybe P'.Int64),
                                 state :: !(P'.Maybe SocketOptionProto.SocketOption.SocketState),
                                 value :: P'.Maybe (SocketOptionProto.SocketOption.Value.Value)}
                    deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable SocketOption where
  mergeAppend (SocketOption x'1 x'2 x'3 x'4 x'5) (SocketOption y'1 y'2 y'3 y'4 y'5)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
      in SocketOption z'1 z'2 z'3 z'4 z'5

instance P'.Default SocketOption where
  defaultValue = SocketOption P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire SocketOption where
  wireSize ft' self'@(SocketOption x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 x'1 + P'.wireSizeOpt 1 3 x'2 + P'.wireSizeOpt 1 3 x'3 + P'.wireSizeOpt 1 14 x'4 +
             P'.wireSizeOpt 1 3 (SocketOptionProto.SocketOption.Value.get'int_value Prelude'.=<< x'5)
             + P'.wireSizeOpt 1 12 (SocketOptionProto.SocketOption.Value.get'buf_value Prelude'.=<< x'5))
  wirePutWithSize ft' self'@(SocketOption x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 x'1, P'.wirePutOptWithSize 16 3 x'2, P'.wirePutOptWithSize 24 3 x'3,
             P'.wirePutOptWithSize 32 3 (SocketOptionProto.SocketOption.Value.get'int_value Prelude'.=<< x'5),
             P'.wirePutOptWithSize 42 12 (SocketOptionProto.SocketOption.Value.get'buf_value Prelude'.=<< x'5),
             P'.wirePutOptWithSize 48 14 x'4]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{description = Prelude'.Just new'Field}) (P'.wireGet 9)
             16 -> Prelude'.fmap (\ !new'Field -> old'Self{level = Prelude'.Just new'Field}) (P'.wireGet 3)
             24 -> Prelude'.fmap (\ !new'Field -> old'Self{name = Prelude'.Just new'Field}) (P'.wireGet 3)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{state = Prelude'.Just new'Field}) (P'.wireGet 14)
             32 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{value = Prelude'.Just (SocketOptionProto.SocketOption.Value.Int_value new'Field)})
                    (P'.wireGet 3)
             42 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{value = Prelude'.Just (SocketOptionProto.SocketOption.Value.Buf_value new'Field)})
                    (P'.wireGet 12)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> SocketOption) SocketOption where
  getVal m' f' = f' m'

instance P'.GPB SocketOption

instance P'.ReflectDescriptor SocketOption where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 16, 24, 48])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketOption\", haskellPrefix = [], parentModule = [MName \"SocketOptionProto\"], baseName = MName \"SocketOption\"}, descFilePath = [\"SocketOptionProto\",\"SocketOption.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketOption.description\", haskellPrefix' = [], parentModule' = [MName \"SocketOptionProto\",MName \"SocketOption\"], baseName' = FName \"description\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketOption.level\", haskellPrefix' = [], parentModule' = [MName \"SocketOptionProto\",MName \"SocketOption\"], baseName' = FName \"level\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketOption.name\", haskellPrefix' = [], parentModule' = [MName \"SocketOptionProto\",MName \"SocketOption\"], baseName' = FName \"name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketOption.state\", haskellPrefix' = [], parentModule' = [MName \"SocketOptionProto\",MName \"SocketOption\"], baseName' = FName \"state\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketOption.SocketState\", haskellPrefix = [], parentModule = [MName \"SocketOptionProto\",MName \"SocketOption\"], baseName = MName \"SocketState\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketOption.value\", haskellPrefix = [], parentModule = [MName \"SocketOptionProto\",MName \"SocketOption\"], baseName = MName \"Value\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketOption.value\", haskellPrefix' = [], parentModule' = [MName \"SocketOptionProto\",MName \"SocketOption\"], baseName' = FName \"value\", baseNamePrefix' = \"\"}, oneofFilePath = [\"SocketOptionProto\",\"SocketOption\",\"Value.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketOption.value.int_value\", haskellPrefix = [], parentModule = [MName \"SocketOptionProto\",MName \"SocketOption\",MName \"Value\"], baseName = MName \"Int_value\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketOption.value.int_value\", haskellPrefix' = [], parentModule' = [MName \"SocketOptionProto\",MName \"SocketOption\",MName \"Value\"], baseName' = FName \"int_value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 32}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketOption.value.buf_value\", haskellPrefix = [], parentModule = [MName \"SocketOptionProto\",MName \"SocketOption\",MName \"Value\"], baseName = MName \"Buf_value\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketOption.value.buf_value\", haskellPrefix' = [], parentModule' = [MName \"SocketOptionProto\",MName \"SocketOption\",MName \"Value\"], baseName' = FName \"buf_value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType SocketOption where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg SocketOption where
  textPut msg
   = do
       P'.tellT "description" (description msg)
       P'.tellT "level" (level msg)
       P'.tellT "name" (name msg)
       P'.tellT "state" (state msg)
       case (value msg) of
         Prelude'.Just (SocketOptionProto.SocketOption.Value.Int_value int_value) -> P'.tellT "int_value" int_value
         Prelude'.Just (SocketOptionProto.SocketOption.Value.Buf_value buf_value) -> P'.tellT "buf_value" buf_value
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'description, parse'level, parse'name, parse'state, parse'value]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'description = Prelude'.fmap (\ v o -> o{description = v}) (P'.try (P'.getT "description"))
        parse'level = Prelude'.fmap (\ v o -> o{level = v}) (P'.try (P'.getT "level"))
        parse'name = Prelude'.fmap (\ v o -> o{name = v}) (P'.try (P'.getT "name"))
        parse'state = Prelude'.fmap (\ v o -> o{state = v}) (P'.try (P'.getT "state"))
        parse'value = P'.try (P'.choice [parse'int_value, parse'buf_value])
          where
              parse'int_value
               = P'.try
                  (do
                     v <- P'.getT "int_value"
                     Prelude'.return (\ s -> s{value = Prelude'.Just (SocketOptionProto.SocketOption.Value.Int_value v)}))
              parse'buf_value
               = P'.try
                  (do
                     v <- P'.getT "buf_value"
                     Prelude'.return (\ s -> s{value = Prelude'.Just (SocketOptionProto.SocketOption.Value.Buf_value v)}))