{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HealthCheckProto.HealthCheck.TcpHealthCheck (TcpHealthCheck(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified HealthCheckProto.HealthCheck.Payload as HealthCheckProto.HealthCheck

data TcpHealthCheck = TcpHealthCheck{send :: !(P'.Maybe HealthCheckProto.HealthCheck.Payload),
                                     receive :: !(P'.Seq HealthCheckProto.HealthCheck.Payload)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable TcpHealthCheck where
  mergeAppend (TcpHealthCheck x'1 x'2) (TcpHealthCheck y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in TcpHealthCheck z'1 z'2

instance P'.Default TcpHealthCheck where
  defaultValue = TcpHealthCheck P'.defaultValue P'.defaultValue

instance P'.Wire TcpHealthCheck where
  wireSize ft' self'@(TcpHealthCheck x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 11 x'2)
  wirePutWithSize ft' self'@(TcpHealthCheck x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutOptWithSize 10 11 x'1, P'.wirePutRepWithSize 18 11 x'2]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{send = P'.mergeAppend (send old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap (\ !new'Field -> old'Self{receive = P'.append (receive old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> TcpHealthCheck) TcpHealthCheck where
  getVal m' f' = f' m'

instance P'.GPB TcpHealthCheck

instance P'.ReflectDescriptor TcpHealthCheck where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10, 18])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.TcpHealthCheck\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"TcpHealthCheck\"}, descFilePath = [\"HealthCheckProto\",\"HealthCheck\",\"TcpHealthCheck.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.TcpHealthCheck.send\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"TcpHealthCheck\"], baseName' = FName \"send\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.Payload\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"Payload\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.HealthCheck.TcpHealthCheck.receive\", haskellPrefix' = [], parentModule' = [MName \"HealthCheckProto\",MName \"HealthCheck\",MName \"TcpHealthCheck\"], baseName' = FName \"receive\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HealthCheck.Payload\", haskellPrefix = [], parentModule = [MName \"HealthCheckProto\",MName \"HealthCheck\"], baseName = MName \"Payload\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType TcpHealthCheck where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg TcpHealthCheck where
  textPut msg
   = do
       P'.tellT "send" (send msg)
       P'.tellT "receive" (receive msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'send, parse'receive]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'send = Prelude'.fmap (\ v o -> o{send = v}) (P'.try (P'.getT "send"))
        parse'receive = Prelude'.fmap (\ v o -> o{receive = P'.append (receive o) v}) (P'.try (P'.getT "receive"))