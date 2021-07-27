{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AlsProto.StreamAccessLogsMessage.TCPAccessLogEntries (TCPAccessLogEntries(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AccesslogProto.TCPAccessLogEntry as AccesslogProto

data TCPAccessLogEntries = TCPAccessLogEntries{log_entry :: !(P'.Seq AccesslogProto.TCPAccessLogEntry)}
                           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable TCPAccessLogEntries where
  mergeAppend (TCPAccessLogEntries x'1) (TCPAccessLogEntries y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in TCPAccessLogEntries z'1

instance P'.Default TCPAccessLogEntries where
  defaultValue = TCPAccessLogEntries P'.defaultValue

instance P'.Wire TCPAccessLogEntries where
  wireSize ft' self'@(TCPAccessLogEntries x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size = (P'.wireSizeRep 1 11 x'1)
  wirePutWithSize ft' self'@(TCPAccessLogEntries x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields = P'.sequencePutWithSize [P'.wirePutRepWithSize 10 11 x'1]
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
             10 -> Prelude'.fmap (\ !new'Field -> old'Self{log_entry = P'.append (log_entry old'Self) new'Field}) (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> TCPAccessLogEntries) TCPAccessLogEntries where
  getVal m' f' = f' m'

instance P'.GPB TCPAccessLogEntries

instance P'.ReflectDescriptor TCPAccessLogEntries where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [10])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.TCPAccessLogEntries\", haskellPrefix = [], parentModule = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\"], baseName = MName \"TCPAccessLogEntries\"}, descFilePath = [\"AlsProto\",\"StreamAccessLogsMessage\",\"TCPAccessLogEntries.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.service.accesslog.v3.StreamAccessLogsMessage.TCPAccessLogEntries.log_entry\", haskellPrefix' = [], parentModule' = [MName \"AlsProto\",MName \"StreamAccessLogsMessage\",MName \"TCPAccessLogEntries\"], baseName' = FName \"log_entry\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.data.accesslog.v3.TCPAccessLogEntry\", haskellPrefix = [], parentModule = [MName \"AccesslogProto\"], baseName = MName \"TCPAccessLogEntry\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType TCPAccessLogEntries where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg TCPAccessLogEntries where
  textPut msg
   = do
       P'.tellT "log_entry" (log_entry msg)
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'log_entry]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'log_entry = Prelude'.fmap (\ v o -> o{log_entry = P'.append (log_entry o) v}) (P'.try (P'.getT "log_entry"))