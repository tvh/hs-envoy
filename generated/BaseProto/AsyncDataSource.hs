{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.AsyncDataSource (AsyncDataSource(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.AsyncDataSource.Specifier as BaseProto.AsyncDataSource.Specifier (Specifier(..), get'local, get'remote)

data AsyncDataSource = AsyncDataSource{specifier :: P'.Maybe (BaseProto.AsyncDataSource.Specifier.Specifier)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable AsyncDataSource where
  mergeAppend (AsyncDataSource x'1) (AsyncDataSource y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in AsyncDataSource z'1

instance P'.Default AsyncDataSource where
  defaultValue = AsyncDataSource P'.defaultValue

instance P'.Wire AsyncDataSource where
  wireSize ft' self'@(AsyncDataSource x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 (BaseProto.AsyncDataSource.Specifier.get'local Prelude'.=<< x'1) +
             P'.wireSizeOpt 1 11 (BaseProto.AsyncDataSource.Specifier.get'remote Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(AsyncDataSource x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 (BaseProto.AsyncDataSource.Specifier.get'local Prelude'.=<< x'1),
             P'.wirePutOptWithSize 18 11 (BaseProto.AsyncDataSource.Specifier.get'remote Prelude'.=<< x'1)]
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
                      old'Self{specifier =
                                P'.mergeAppend (specifier old'Self)
                                 (Prelude'.Just (BaseProto.AsyncDataSource.Specifier.Local new'Field))})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{specifier =
                                P'.mergeAppend (specifier old'Self)
                                 (Prelude'.Just (BaseProto.AsyncDataSource.Specifier.Remote new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> AsyncDataSource) AsyncDataSource where
  getVal m' f' = f' m'

instance P'.GPB AsyncDataSource

instance P'.ReflectDescriptor AsyncDataSource where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.AsyncDataSource\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"AsyncDataSource\"}, descFilePath = [\"BaseProto\",\"AsyncDataSource.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.AsyncDataSource.specifier\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"AsyncDataSource\"], baseName = MName \"Specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.AsyncDataSource.specifier\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"AsyncDataSource\"], baseName' = FName \"specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"BaseProto\",\"AsyncDataSource\",\"Specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.AsyncDataSource.specifier.local\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"AsyncDataSource\",MName \"Specifier\"], baseName = MName \"Local\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.AsyncDataSource.specifier.local\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"AsyncDataSource\",MName \"Specifier\"], baseName' = FName \"local\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.DataSource\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"DataSource\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.AsyncDataSource.specifier.remote\", haskellPrefix = [], parentModule = [MName \"BaseProto\",MName \"AsyncDataSource\",MName \"Specifier\"], baseName = MName \"Remote\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.AsyncDataSource.specifier.remote\", haskellPrefix' = [], parentModule' = [MName \"BaseProto\",MName \"AsyncDataSource\",MName \"Specifier\"], baseName' = FName \"remote\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.RemoteDataSource\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"RemoteDataSource\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType AsyncDataSource where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg AsyncDataSource where
  textPut msg
   = do
       case (specifier msg) of
         Prelude'.Just (BaseProto.AsyncDataSource.Specifier.Local local) -> P'.tellT "local" local
         Prelude'.Just (BaseProto.AsyncDataSource.Specifier.Remote remote) -> P'.tellT "remote" remote
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'specifier]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'specifier = P'.try (P'.choice [parse'local, parse'remote])
          where
              parse'local
               = P'.try
                  (do
                     v <- P'.getT "local"
                     Prelude'.return (\ s -> s{specifier = Prelude'.Just (BaseProto.AsyncDataSource.Specifier.Local v)}))
              parse'remote
               = P'.try
                  (do
                     v <- P'.getT "remote"
                     Prelude'.return (\ s -> s{specifier = Prelude'.Just (BaseProto.AsyncDataSource.Specifier.Remote v)}))