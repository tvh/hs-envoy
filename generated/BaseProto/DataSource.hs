{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.DataSource (DataSource(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.DataSource.Specifier as BaseProto.DataSource.Specifier
       (Specifier(..), get'filename, get'inline_bytes, get'inline_string)

data DataSource = DataSource{specifier :: P'.Maybe (BaseProto.DataSource.Specifier.Specifier)}
                  deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable DataSource where
  mergeAppend (DataSource x'1) (DataSource y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in DataSource z'1

instance P'.Default DataSource where
  defaultValue = DataSource P'.defaultValue

instance P'.Wire DataSource where
  wireSize ft' self'@(DataSource x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9 (BaseProto.DataSource.Specifier.get'filename Prelude'.=<< x'1) +
             P'.wireSizeOpt 1 12 (BaseProto.DataSource.Specifier.get'inline_bytes Prelude'.=<< x'1)
             + P'.wireSizeOpt 1 9 (BaseProto.DataSource.Specifier.get'inline_string Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(DataSource x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9 (BaseProto.DataSource.Specifier.get'filename Prelude'.=<< x'1),
             P'.wirePutOptWithSize 18 12 (BaseProto.DataSource.Specifier.get'inline_bytes Prelude'.=<< x'1),
             P'.wirePutOptWithSize 26 9 (BaseProto.DataSource.Specifier.get'inline_string Prelude'.=<< x'1)]
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
                    (\ !new'Field -> old'Self{specifier = Prelude'.Just (BaseProto.DataSource.Specifier.Filename new'Field)})
                    (P'.wireGet 9)
             18 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{specifier = Prelude'.Just (BaseProto.DataSource.Specifier.Inline_bytes new'Field)})
                    (P'.wireGet 12)
             26 -> Prelude'.fmap
                    (\ !new'Field -> old'Self{specifier = Prelude'.Just (BaseProto.DataSource.Specifier.Inline_string new'Field)})
                    (P'.wireGet 9)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> DataSource) DataSource where
  getVal m' f' = f' m'

instance P'.GPB DataSource

instance P'.ReflectDescriptor DataSource where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.DataSource\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"DataSource\"}, descFilePath = [\"BaseProto\",\"DataSource.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.DataSource.specifier\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"DataSource\"], baseName = MName \"Specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.DataSource.specifier\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"DataSource\"], baseName' = FName \"specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"BaseProto\",\"DataSource\",\"Specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.DataSource.specifier.filename\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"DataSource\",MName \"Specifier\"], baseName = MName \"Filename\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.DataSource.specifier.filename\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"DataSource\",MName \"Specifier\"], baseName' = FName \"filename\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.DataSource.specifier.inline_bytes\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"DataSource\",MName \"Specifier\"], baseName = MName \"Inline_bytes\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.DataSource.specifier.inline_bytes\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"DataSource\",MName \"Specifier\"], baseName' = FName \"inline_bytes\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 12}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.DataSource.specifier.inline_string\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"DataSource\",MName \"Specifier\"], baseName = MName \"Inline_string\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.DataSource.specifier.inline_string\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"DataSource\",MName \"Specifier\"], baseName' = FName \"inline_string\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType DataSource where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg DataSource where
  textPut msg
   = do
       case (specifier msg) of
         Prelude'.Just (BaseProto.DataSource.Specifier.Filename filename) -> P'.tellT "filename" filename
         Prelude'.Just (BaseProto.DataSource.Specifier.Inline_bytes inline_bytes) -> P'.tellT "inline_bytes" inline_bytes
         Prelude'.Just (BaseProto.DataSource.Specifier.Inline_string inline_string) -> P'.tellT "inline_string" inline_string
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'specifier]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'specifier = P'.try (P'.choice [parse'filename, parse'inline_bytes, parse'inline_string])
          where
              parse'filename
               = P'.try
                  (do
                     v <- P'.getT "filename"
                     Prelude'.return (\ s -> s{specifier = Prelude'.Just (BaseProto.DataSource.Specifier.Filename v)}))
              parse'inline_bytes
               = P'.try
                  (do
                     v <- P'.getT "inline_bytes"
                     Prelude'.return (\ s -> s{specifier = Prelude'.Just (BaseProto.DataSource.Specifier.Inline_bytes v)}))
              parse'inline_string
               = P'.try
                  (do
                     v <- P'.getT "inline_string"
                     Prelude'.return (\ s -> s{specifier = Prelude'.Just (BaseProto.DataSource.Specifier.Inline_string v)}))