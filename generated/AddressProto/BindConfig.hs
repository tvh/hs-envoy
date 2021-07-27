{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AddressProto.BindConfig (BindConfig(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AddressProto.SocketAddress as AddressProto
import qualified SocketOptionProto.SocketOption as SocketOptionProto
import qualified WrappersProto.BoolValue as WrappersProto

data BindConfig = BindConfig{source_address :: !(P'.Maybe AddressProto.SocketAddress),
                             freebind :: !(P'.Maybe WrappersProto.BoolValue),
                             socket_options :: !(P'.Seq SocketOptionProto.SocketOption)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable BindConfig where
  mergeAppend (BindConfig x'1 x'2 x'3) (BindConfig y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in BindConfig z'1 z'2 z'3

instance P'.Default BindConfig where
  defaultValue = BindConfig P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire BindConfig where
  wireSize ft' self'@(BindConfig x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeOpt 1 11 x'2 + P'.wireSizeRep 1 11 x'3)
  wirePutWithSize ft' self'@(BindConfig x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutOptWithSize 18 11 x'2, P'.wirePutRepWithSize 26 11 x'3]
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
                    (\ !new'Field -> old'Self{source_address = P'.mergeAppend (source_address old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{freebind = P'.mergeAppend (freebind old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{socket_options = P'.append (socket_options old'Self) new'Field})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> BindConfig) BindConfig where
  getVal m' f' = f' m'

instance P'.GPB BindConfig

instance P'.ReflectDescriptor BindConfig where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18, 26])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.BindConfig\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"BindConfig\"}, descFilePath = [\"AddressProto\",\"BindConfig.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.BindConfig.source_address\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"BindConfig\"], baseName' = FName \"source_address\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketAddress\", haskellPrefix = [], parentModule = [MName \"AddressProto\"], baseName = MName \"SocketAddress\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.BindConfig.freebind\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"BindConfig\"], baseName' = FName \"freebind\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.BoolValue\", haskellPrefix = [], parentModule = [MName \"WrappersProto\"], baseName = MName \"BoolValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.BindConfig.socket_options\", haskellPrefix' = [], parentModule' = [MName \"AddressProto\",MName \"BindConfig\"], baseName' = FName \"socket_options\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.SocketOption\", haskellPrefix = [], parentModule = [MName \"SocketOptionProto\"], baseName = MName \"SocketOption\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType BindConfig where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg BindConfig where
  textPut msg
   = do
       P'.tellT "source_address" (source_address msg)
       P'.tellT "freebind" (freebind msg)
       P'.tellT "socket_options" (socket_options msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'source_address, parse'freebind, parse'socket_options]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'source_address = Prelude'.fmap (\ v o -> o{source_address = v}) (P'.try (P'.getT "source_address"))
        parse'freebind = Prelude'.fmap (\ v o -> o{freebind = v}) (P'.try (P'.getT "freebind"))
        parse'socket_options
         = Prelude'.fmap (\ v o -> o{socket_options = P'.append (socket_options o) v}) (P'.try (P'.getT "socket_options"))