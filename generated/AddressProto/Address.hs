{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AddressProto.Address (Address(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AddressProto.Address.Address as AddressProto.Address.Address
       (Address(..), get'socket_address, get'pipe, get'envoy_internal_address)

data Address = Address{address :: P'.Maybe (AddressProto.Address.Address.Address)}
               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable Address where
  mergeAppend (Address x'1) (Address y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in Address z'1

instance P'.Default Address where
  defaultValue = Address P'.defaultValue

instance P'.Wire Address where
  wireSize ft' self'@(Address x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 (AddressProto.Address.Address.get'socket_address Prelude'.=<< x'1) +
             P'.wireSizeOpt 1 11 (AddressProto.Address.Address.get'pipe Prelude'.=<< x'1)
             + P'.wireSizeOpt 1 11 (AddressProto.Address.Address.get'envoy_internal_address Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(Address x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 (AddressProto.Address.Address.get'socket_address Prelude'.=<< x'1),
             P'.wirePutOptWithSize 18 11 (AddressProto.Address.Address.get'pipe Prelude'.=<< x'1),
             P'.wirePutOptWithSize 26 11 (AddressProto.Address.Address.get'envoy_internal_address Prelude'.=<< x'1)]
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
                      old'Self{address =
                                P'.mergeAppend (address old'Self)
                                 (Prelude'.Just (AddressProto.Address.Address.Socket_address new'Field))})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{address =
                                P'.mergeAppend (address old'Self) (Prelude'.Just (AddressProto.Address.Address.Pipe new'Field))})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{address =
                                P'.mergeAppend (address old'Self)
                                 (Prelude'.Just (AddressProto.Address.Address.Envoy_internal_address new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> Address) Address where
  getVal m' f' = f' m'

instance P'.GPB Address

instance P'.ReflectDescriptor Address where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Address\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"Address\"}, descFilePath = [\"AddressProto\",\"Address.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.Address.address\", haskellPrefix = [], parentModule = [MName \"AddressProto\",MName \"Address\"], baseName = MName \"Address\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Address.address\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"Address\"], baseName' = FName \"address\", baseNamePrefix' = \"\"}, oneofFilePath = [\"AddressProto\",\"Address\",\"Address.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.Address.address.socket_address\", haskellPrefix = [], parentModule = [MName \"AddressProto\",MName \"Address\",MName \"Address\"], baseName = MName \"Socket_address\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Address.address.socket_address\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"Address\",MName \"Address\"], baseName' = FName \"socket_address\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketAddress\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"SocketAddress\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.Address.address.pipe\", haskellPrefix = [], parentModule = [MName \"AddressProto\",MName \"Address\",MName \"Address\"], baseName = MName \"Pipe\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Address.address.pipe\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"Address\",MName \"Address\"], baseName' = FName \"pipe\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.Pipe\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"Pipe\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.Address.address.envoy_internal_address\", haskellPrefix = [], parentModule = [MName \"AddressProto\",MName \"Address\",MName \"Address\"], baseName = MName \"Envoy_internal_address\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.Address.address.envoy_internal_address\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"Address\",MName \"Address\"], baseName' = FName \"envoy_internal_address\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.EnvoyInternalAddress\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"EnvoyInternalAddress\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType Address where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg Address where
  textPut msg
   = do
       case (address msg) of
         Prelude'.Just (AddressProto.Address.Address.Socket_address socket_address) -> P'.tellT "socket_address" socket_address
         Prelude'.Just (AddressProto.Address.Address.Pipe pipe) -> P'.tellT "pipe" pipe
         Prelude'.Just (AddressProto.Address.Address.Envoy_internal_address envoy_internal_address) -> P'.tellT
                                                                                                        "envoy_internal_address"
                                                                                                        envoy_internal_address
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'address]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'address = P'.try (P'.choice [parse'socket_address, parse'pipe, parse'envoy_internal_address])
          where
              parse'socket_address
               = P'.try
                  (do
                     v <- P'.getT "socket_address"
                     Prelude'.return (\ s -> s{address = Prelude'.Just (AddressProto.Address.Address.Socket_address v)}))
              parse'pipe
               = P'.try
                  (do
                     v <- P'.getT "pipe"
                     Prelude'.return (\ s -> s{address = Prelude'.Just (AddressProto.Address.Address.Pipe v)}))
              parse'envoy_internal_address
               = P'.try
                  (do
                     v <- P'.getT "envoy_internal_address"
                     Prelude'.return (\ s -> s{address = Prelude'.Just (AddressProto.Address.Address.Envoy_internal_address v)}))