{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AlsProto.StreamAccessLogsMessage (StreamAccessLogsMessage(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AlsProto.StreamAccessLogsMessage.Identifier as AlsProto.StreamAccessLogsMessage
import qualified AlsProto.StreamAccessLogsMessage.Log_entries as AlsProto.StreamAccessLogsMessage.Log_entries
       (Log_entries(..), get'http_logs, get'tcp_logs)

data StreamAccessLogsMessage = StreamAccessLogsMessage{identifier :: !(P'.Maybe AlsProto.StreamAccessLogsMessage.Identifier),
                                                       log_entries ::
                                                       P'.Maybe (AlsProto.StreamAccessLogsMessage.Log_entries.Log_entries)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                         Prelude'.Generic)

instance P'.Mergeable StreamAccessLogsMessage where
  mergeAppend (StreamAccessLogsMessage x'1 x'2) (StreamAccessLogsMessage y'1 y'2)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
      in StreamAccessLogsMessage z'1 z'2

instance P'.Default StreamAccessLogsMessage where
  defaultValue = StreamAccessLogsMessage P'.defaultValue P'.defaultValue

instance P'.Wire StreamAccessLogsMessage where
  wireSize ft' self'@(StreamAccessLogsMessage x'1 x'2)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 +
             P'.wireSizeOpt 1 11 (AlsProto.StreamAccessLogsMessage.Log_entries.get'http_logs Prelude'.=<< x'2)
             + P'.wireSizeOpt 1 11 (AlsProto.StreamAccessLogsMessage.Log_entries.get'tcp_logs Prelude'.=<< x'2))
  wirePutWithSize ft' self'@(StreamAccessLogsMessage x'1 x'2)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 x'1,
             P'.wirePutOptWithSize 18 11 (AlsProto.StreamAccessLogsMessage.Log_entries.get'http_logs Prelude'.=<< x'2),
             P'.wirePutOptWithSize 26 11 (AlsProto.StreamAccessLogsMessage.Log_entries.get'tcp_logs Prelude'.=<< x'2)]
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
                    (\ !new'Field -> old'Self{identifier = P'.mergeAppend (identifier old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{log_entries =
                                P'.mergeAppend (log_entries old'Self)
                                 (Prelude'.Just (AlsProto.StreamAccessLogsMessage.Log_entries.Http_logs new'Field))})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{log_entries =
                                P'.mergeAppend (log_entries old'Self)
                                 (Prelude'.Just (AlsProto.StreamAccessLogsMessage.Log_entries.Tcp_logs new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> StreamAccessLogsMessage) StreamAccessLogsMessage where
  getVal m' f' = f' m'

instance P'.GPB StreamAccessLogsMessage

instance P'.ReflectDescriptor StreamAccessLogsMessage where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage\", haskellPrefix = [], parentModule = [MName \"AlsProto\"], baseName = MName \"StreamAccessLogsMessage\"}, descFilePath = [\"AlsProto\",\"StreamAccessLogsMessage.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.identifier\", haskellPrefix' = [], parentModule' = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\"], baseName' = FName \"identifier\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.Identifier\", haskellPrefix = [], parentModule = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\"], baseName = MName \"Identifier\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.log_entries\", haskellPrefix = [], parentModule = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\"], baseName = MName \"Log_entries\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.log_entries\", haskellPrefix' = [], parentModule' = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\"], baseName' = FName \"log_entries\", baseNamePrefix' = \"\"}, oneofFilePath = [\"AlsProto\",\"StreamAccessLogsMessage\",\"Log_entries.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.log_entries.http_logs\", haskellPrefix = [], parentModule = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\",MName \"Log_entries\"], baseName = MName \"Http_logs\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.log_entries.http_logs\", haskellPrefix' = [], parentModule' = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\",MName \"Log_entries\"], baseName' = FName \"http_logs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.HTTPAccessLogEntries\", haskellPrefix = [], parentModule = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\"], baseName = MName \"HTTPAccessLogEntries\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.log_entries.tcp_logs\", haskellPrefix = [], parentModule = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\",MName \"Log_entries\"], baseName = MName \"Tcp_logs\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.log_entries.tcp_logs\", haskellPrefix' = [], parentModule' = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\",MName \"Log_entries\"], baseName' = FName \"tcp_logs\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.TCPAccessLogEntries\", haskellPrefix = [], parentModule = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\"], baseName = MName \"TCPAccessLogEntries\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType StreamAccessLogsMessage where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg StreamAccessLogsMessage where
  textPut msg
   = do
       P'.tellT "identifier" (identifier msg)
       case (log_entries msg) of
         Prelude'.Just (AlsProto.StreamAccessLogsMessage.Log_entries.Http_logs http_logs) -> P'.tellT "http_logs" http_logs
         Prelude'.Just (AlsProto.StreamAccessLogsMessage.Log_entries.Tcp_logs tcp_logs) -> P'.tellT "tcp_logs" tcp_logs
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'identifier, parse'log_entries]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'identifier = Prelude'.fmap (\ v o -> o{identifier = v}) (P'.try (P'.getT "identifier"))
        parse'log_entries = P'.try (P'.choice [parse'http_logs, parse'tcp_logs])
          where
              parse'http_logs
               = P'.try
                  (do
                     v <- P'.getT "http_logs"
                     Prelude'.return
                      (\ s -> s{log_entries = Prelude'.Just (AlsProto.StreamAccessLogsMessage.Log_entries.Http_logs v)}))
              parse'tcp_logs
               = P'.try
                  (do
                     v <- P'.getT "tcp_logs"
                     Prelude'.return
                      (\ s -> s{log_entries = Prelude'.Just (AlsProto.StreamAccessLogsMessage.Log_entries.Tcp_logs v)}))