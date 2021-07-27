{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AddressProto.SocketAddress (SocketAddress(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AddressProto.SocketAddress.Port_specifier as AddressProto.SocketAddress.Port_specifier
       (Port_specifier(..), get'port_value, get'named_port)
import qualified AddressProto.SocketAddress.Protocol as AddressProto.SocketAddress

data SocketAddress = SocketAddress{protocol :: !(P'.Maybe AddressProto.SocketAddress.Protocol), address :: !(P'.Maybe P'.Utf8),
                                   resolver_name :: !(P'.Maybe P'.Utf8), ipv4_compat :: !(P'.Maybe P'.Bool),
                                   port_specifier :: P'.Maybe (AddressProto.SocketAddress.Port_specifier.Port_specifier)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable SocketAddress where
  mergeAppend (SocketAddress x'1 x'2 x'3 x'4 x'5) (SocketAddress y'1 y'2 y'3 y'4 y'5)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
         !z'4 = P'.mergeAppend x'4 y'4
         !z'5 = P'.mergeAppend x'5 y'5
      in SocketAddress z'1 z'2 z'3 z'4 z'5

instance P'.Default SocketAddress where
  defaultValue = SocketAddress P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire SocketAddress where
  wireSize ft' self'@(SocketAddress x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 14 x'1 + P'.wireSizeOpt 1 9 x'2 + P'.wireSizeOpt 1 9 x'3 + P'.wireSizeOpt 1 8 x'4 +
             P'.wireSizeOpt 1 13 (AddressProto.SocketAddress.Port_specifier.get'port_value Prelude'.=<< x'5)
             + P'.wireSizeOpt 1 9 (AddressProto.SocketAddress.Port_specifier.get'named_port Prelude'.=<< x'5))
  wirePutWithSize ft' self'@(SocketAddress x'1 x'2 x'3 x'4 x'5)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 8 14 x'1, P'.wirePutOptWithSize 18 9 x'2,
             P'.wirePutOptWithSize 24 13 (AddressProto.SocketAddress.Port_specifier.get'port_value Prelude'.=<< x'5),
             P'.wirePutOptWithSize 34 9 (AddressProto.SocketAddress.Port_specifier.get'named_port Prelude'.=<< x'5),
             P'.wirePutOptWithSize 42 9 x'3, P'.wirePutOptWithSize 48 8 x'4]
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
             8 -> Prelude'.fmap (\ !new'Field -> old'Self{protocol = Prelude'.Just new'Field}) (P'.wireGet 14)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{address = Prelude'.Just new'Field}) (P'.wireGet 9)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{resolver_name = Prelude'.Just new'Field}) (P'.wireGet 9)
             48 -> Prelude'.fmap (\ !new'Field -> old'Self{ipv4_compat = Prelude'.Just new'Field}) (P'.wireGet 8)
             24 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{port_specifier = Prelude'.Just (AddressProto.SocketAddress.Port_specifier.Port_value new'Field)})
                    (P'.wireGet 13)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{port_specifier = Prelude'.Just (AddressProto.SocketAddress.Port_specifier.Named_port new'Field)})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> SocketAddress) SocketAddress where
  getVal m' f' = f' m'

instance P'.GPB SocketAddress

instance P'.ReflectDescriptor SocketAddress where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [8, 18, 42, 48])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketAddress\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"SocketAddress\"}, descFilePath = [\"AddressProto\",\"SocketAddress.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketAddress.protocol\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"SocketAddress\"], baseName' = FName \"protocol\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 8}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 14}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketAddress.Protocol\", haskellPrefix = [], parentModule = [MName \"AddressProto\",MName \"SocketAddress\"], baseName = MName \"Protocol\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketAddress.address\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"SocketAddress\"], baseName' = FName \"address\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketAddress.resolver_name\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"SocketAddress\"], baseName' = FName \"resolver_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketAddress.ipv4_compat\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"SocketAddress\"], baseName' = FName \"ipv4_compat\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 48}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 8}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketAddress.port_specifier\", haskellPrefix = [], parentModule = [MName \"AddressProto\",MName \"SocketAddress\"], baseName = MName \"Port_specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketAddress.port_specifier\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"SocketAddress\"], baseName' = FName \"port_specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"AddressProto\",\"SocketAddress\",\"Port_specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketAddress.port_specifier.port_value\", haskellPrefix = [], parentModule = [MName \"AddressProto\",MName \"SocketAddress\",MName \"Port_specifier\"], baseName = MName \"Port_value\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketAddress.port_specifier.port_value\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"SocketAddress\",MName \"Port_specifier\"], baseName' = FName \"port_value\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 24}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 13}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketAddress.port_specifier.named_port\", haskellPrefix = [], parentModule = [MName \"AddressProto\",MName \"SocketAddress\",MName \"Port_specifier\"], baseName = MName \"Named_port\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.SocketAddress.port_specifier.named_port\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"SocketAddress\",MName \"Port_specifier\"], baseName' = FName \"named_port\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType SocketAddress where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg SocketAddress where
  textPut msg
   = do
       P'.tellT "protocol" (protocol msg)
       P'.tellT "address" (address msg)
       P'.tellT "resolver_name" (resolver_name msg)
       P'.tellT "ipv4_compat" (ipv4_compat msg)
       case (port_specifier msg) of
         Prelude'.Just (AddressProto.SocketAddress.Port_specifier.Port_value port_value) -> P'.tellT "port_value" port_value
         Prelude'.Just (AddressProto.SocketAddress.Port_specifier.Named_port named_port) -> P'.tellT "named_port" named_port
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'protocol, parse'address, parse'resolver_name, parse'ipv4_compat, parse'port_specifier])
                P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'protocol = Prelude'.fmap (\ v o -> o{protocol = v}) (P'.try (P'.getT "protocol"))
        parse'address = Prelude'.fmap (\ v o -> o{address = v}) (P'.try (P'.getT "address"))
        parse'resolver_name = Prelude'.fmap (\ v o -> o{resolver_name = v}) (P'.try (P'.getT "resolver_name"))
        parse'ipv4_compat = Prelude'.fmap (\ v o -> o{ipv4_compat = v}) (P'.try (P'.getT "ipv4_compat"))
        parse'port_specifier = P'.try (P'.choice [parse'port_value, parse'named_port])
          where
              parse'port_value
               = P'.try
                  (do
                     v <- P'.getT "port_value"
                     Prelude'.return
                      (\ s -> s{port_specifier = Prelude'.Just (AddressProto.SocketAddress.Port_specifier.Port_value v)}))
              parse'named_port
               = P'.try
                  (do
                     v <- P'.getT "named_port"
                     Prelude'.return
                      (\ s -> s{port_specifier = Prelude'.Just (AddressProto.SocketAddress.Port_specifier.Named_port v)}))