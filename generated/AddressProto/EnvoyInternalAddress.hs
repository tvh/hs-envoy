{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AddressProto.EnvoyInternalAddress (EnvoyInternalAddress(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AddressProto.EnvoyInternalAddress.Address_name_specifier
       as AddressProto.EnvoyInternalAddress.Address_name_specifier (Address_name_specifier(..), get'server_listener_name)

data EnvoyInternalAddress = EnvoyInternalAddress{address_name_specifier ::
                                                 P'.Maybe
                                                  (AddressProto.EnvoyInternalAddress.Address_name_specifier.Address_name_specifier)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable EnvoyInternalAddress where
  mergeAppend (EnvoyInternalAddress x'1) (EnvoyInternalAddress y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in EnvoyInternalAddress z'1

instance P'.Default EnvoyInternalAddress where
  defaultValue = EnvoyInternalAddress P'.defaultValue

instance P'.Wire EnvoyInternalAddress where
  wireSize ft' self'@(EnvoyInternalAddress x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 (AddressProto.EnvoyInternalAddress.Address_name_specifier.get'server_listener_name Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(EnvoyInternalAddress x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9
              (AddressProto.EnvoyInternalAddress.Address_name_specifier.get'server_listener_name Prelude'.=<< x'1)]
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
                      old'Self{address_name_specifier =
                                Prelude'.Just
                                 (AddressProto.EnvoyInternalAddress.Address_name_specifier.Server_listener_name new'Field)})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> EnvoyInternalAddress) EnvoyInternalAddress where
  getVal m' f' = f' m'

instance P'.GPB EnvoyInternalAddress

instance P'.ReflectDescriptor EnvoyInternalAddress where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.EnvoyInternalAddress\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"EnvoyInternalAddress\"}, descFilePath = [\"AddressProto\",\"EnvoyInternalAddress.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.EnvoyInternalAddress.address_name_specifier\", haskellPrefix = [], parentModule = [MName \"AddressProto\",MName \"EnvoyInternalAddress\"], baseName = MName \"Address_name_specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.EnvoyInternalAddress.address_name_specifier\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"EnvoyInternalAddress\"], baseName' = FName \"address_name_specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"AddressProto\",\"EnvoyInternalAddress\",\"Address_name_specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.EnvoyInternalAddress.address_name_specifier.server_listener_name\", haskellPrefix = [], parentModule = [MName \"AddressProto\",MName \"EnvoyInternalAddress\",MName \"Address_name_specifier\"], baseName = MName \"Server_listener_name\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.EnvoyInternalAddress.address_name_specifier.server_listener_name\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"EnvoyInternalAddress\",MName \"Address_name_specifier\"], baseName' = FName \"server_listener_name\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType EnvoyInternalAddress where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg EnvoyInternalAddress where
  textPut msg
   = do
       case (address_name_specifier msg) of
         Prelude'.Just
          (AddressProto.EnvoyInternalAddress.Address_name_specifier.Server_listener_name server_listener_name) -> P'.tellT
                                                                                                                   "server_listener_name"
                                                                                                                   server_listener_name
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'address_name_specifier]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'address_name_specifier = P'.try (P'.choice [parse'server_listener_name])
          where
              parse'server_listener_name
               = P'.try
                  (do
                     v <- P'.getT "server_listener_name"
                     Prelude'.return
                      (\ s ->
                        s{address_name_specifier =
                           Prelude'.Just (AddressProto.EnvoyInternalAddress.Address_name_specifier.Server_listener_name v)}))