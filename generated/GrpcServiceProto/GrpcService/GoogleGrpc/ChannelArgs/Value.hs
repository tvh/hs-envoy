{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value (Value(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier
       as GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier
       (Value_specifier(..), get'string_value, get'int_value)

data Value = Value{value_specifier ::
                   P'.Maybe (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.Value_specifier)}
             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Value where
  mergeAppend (Value x'1) (Value y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in Value z'1

instance P'.Default Value where
  defaultValue = Value P'.defaultValue

instance P'.Wire Value where
  wireSize ft' self'@(Value x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9
             (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.get'string_value Prelude'.=<< x'1)
             +
             P'.wireSizeOpt 1 3
              (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.get'int_value Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(Value x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9
              (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.get'string_value Prelude'.=<< x'1),
             P'.wirePutOptWithSize 16 3
              (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.get'int_value Prelude'.=<< x'1)]
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
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{value_specifier =
                                Prelude'.Just
                                 (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.String_value
                                   new'Field)})
                    (P'.wireGet 9)
             16 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{value_specifier =
                                Prelude'.Just
                                 (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.Int_value new'Field)})
                    (P'.wireGet 3)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Value) Value where
  getVal m' f' = f' m'

instance P'.GPB Value

instance P'.ReflectDescriptor Value where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelArgs\"], baseName = MName \"Value\"}, descFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc\",\"ChannelArgs\",\"Value.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value.value_specifier\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelArgs\",MName \"Value\"], baseName = MName \"Value_specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value.value_specifier\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelArgs\",MName \"Value\"], baseName' = FName \"value_specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc\",\"ChannelArgs\",\"Value\",\"Value_specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value.value_specifier.string_value\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelArgs\",MName \"Value\",MName \"Value_specifier\"], baseName = MName \"String_value\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value.value_specifier.string_value\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelArgs\",MName \"Value\",MName \"Value_specifier\"], baseName' = FName \"string_value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value.value_specifier.int_value\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelArgs\",MName \"Value\",MName \"Value_specifier\"], baseName = MName \"Int_value\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value.value_specifier.int_value\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelArgs\",MName \"Value\",MName \"Value_specifier\"], baseName' = FName \"int_value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 16}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 3}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Value where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Value where
  textPut msg
   = do
       case (value_specifier msg) of
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.String_value string_value) -> P'.tellT
                                                                                                                    "string_value"
                                                                                                                    string_value
         Prelude'.Just (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.Int_value int_value) -> P'.tellT
                                                                                                                           "int_value"
                                                                                                                           int_value
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'value_specifier]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'value_specifier = P'.try (P'.choice [parse'string_value, parse'int_value])
          where
              parse'string_value
               = P'.try
                  (do
                     v <- P'.getT "string_value"
                     Prelude'.return
                      (\ s ->
                        s{value_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.String_value v)}))
              parse'int_value
               = P'.try
                  (do
                     v <- P'.getT "int_value"
                     Prelude'.return
                      (\ s ->
                        s{value_specifier =
                           Prelude'.Just (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier.Int_value v)}))