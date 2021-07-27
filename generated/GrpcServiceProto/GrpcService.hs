{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService (GrpcService(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.HeaderValue as BaseProto
import qualified DurationProto.Duration as DurationProto
import qualified GrpcServiceProto.GrpcService.Target_specifier as GrpcServiceProto.GrpcService.Target_specifier
       (Target_specifier(..), get'envoy_grpc, get'google_grpc)

data GrpcService = GrpcService{timeout :: !(P'.Maybe DurationProto.Duration), initial_metadata :: !(P'.Seq BaseProto.HeaderValue),
                               target_specifier :: P'.Maybe (GrpcServiceProto.GrpcService.Target_specifier.Target_specifier)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable GrpcService where
  mergeAppend (GrpcService x'1 x'2 x'3) (GrpcService y'1 y'2 y'3)
   = let !z'1 = P'.mergeAppend x'1 y'1
         !z'2 = P'.mergeAppend x'2 y'2
         !z'3 = P'.mergeAppend x'3 y'3
      in GrpcService z'1 z'2 z'3

instance P'.Default GrpcService where
  defaultValue = GrpcService P'.defaultValue P'.defaultValue P'.defaultValue

instance P'.Wire GrpcService where
  wireSize ft' self'@(GrpcService x'1 x'2 x'3)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11 x'1 + P'.wireSizeRep 1 11 x'2 +
             P'.wireSizeOpt 1 11 (GrpcServiceProto.GrpcService.Target_specifier.get'envoy_grpc Prelude'.=<< x'3)
             + P'.wireSizeOpt 1 11 (GrpcServiceProto.GrpcService.Target_specifier.get'google_grpc Prelude'.=<< x'3))
  wirePutWithSize ft' self'@(GrpcService x'1 x'2 x'3)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11 (GrpcServiceProto.GrpcService.Target_specifier.get'envoy_grpc Prelude'.=<< x'3),
             P'.wirePutOptWithSize 18 11 (GrpcServiceProto.GrpcService.Target_specifier.get'google_grpc Prelude'.=<< x'3),
             P'.wirePutOptWithSize 26 11 x'1, P'.wirePutRepWithSize 42 11 x'2]
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
             26 -> Prelude'.fmap (\ !new'Field -> old'Self{timeout = P'.mergeAppend (timeout old'Self) (Prelude'.Just new'Field)})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap (\ !new'Field -> old'Self{initial_metadata = P'.append (initial_metadata old'Self) new'Field})
                    (P'.wireGet 11)
             10 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{target_specifier =
                                P'.mergeAppend (target_specifier old'Self)
                                 (Prelude'.Just (GrpcServiceProto.GrpcService.Target_specifier.Envoy_grpc new'Field))})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{target_specifier =
                                P'.mergeAppend (target_specifier old'Self)
                                 (Prelude'.Just (GrpcServiceProto.GrpcService.Target_specifier.Google_grpc new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> GrpcService) GrpcService where
  getVal m' f' = f' m'

instance P'.GPB GrpcService

instance P'.ReflectDescriptor GrpcService where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [26, 42])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\"], baseName = MName \"GrpcService\"}, descFilePath = [\"GrpcServiceProto\",\"GrpcService.hs\"], isGroup = False, fields = fromList [FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.timeout\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\"], baseName' = FName \"timeout\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Duration\", haskellPrefix = [], parentModule = [MName \"DurationProto\"], baseName = MName \"Duration\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.initial_metadata\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\"], baseName' = FName \"initial_metadata\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = True, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.HeaderValue\", haskellPrefix = [], parentModule = [MName \"BaseProto\"], baseName = MName \"HeaderValue\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.target_specifier\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\"], baseName = MName \"Target_specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.target_specifier\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\"], baseName' = FName \"target_specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"Target_specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.target_specifier.envoy_grpc\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"Target_specifier\"], baseName = MName \"Envoy_grpc\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.target_specifier.envoy_grpc\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"Target_specifier\"], baseName' = FName \"envoy_grpc\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.EnvoyGrpc\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\"], baseName = MName \"EnvoyGrpc\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.target_specifier.google_grpc\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"Target_specifier\"], baseName = MName \"Google_grpc\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.target_specifier.google_grpc\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"Target_specifier\"], baseName' = FName \"google_grpc\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\"], baseName = MName \"GoogleGrpc\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType GrpcService where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg GrpcService where
  textPut msg
   = do
       P'.tellT "timeout" (timeout msg)
       P'.tellT "initial_metadata" (initial_metadata msg)
       case (target_specifier msg) of
         Prelude'.Just (GrpcServiceProto.GrpcService.Target_specifier.Envoy_grpc envoy_grpc) -> P'.tellT "envoy_grpc" envoy_grpc
         Prelude'.Just (GrpcServiceProto.GrpcService.Target_specifier.Google_grpc google_grpc) -> P'.tellT "google_grpc" google_grpc
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'timeout, parse'initial_metadata, parse'target_specifier]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'timeout = Prelude'.fmap (\ v o -> o{timeout = v}) (P'.try (P'.getT "timeout"))
        parse'initial_metadata
         = Prelude'.fmap (\ v o -> o{initial_metadata = P'.append (initial_metadata o) v}) (P'.try (P'.getT "initial_metadata"))
        parse'target_specifier = P'.try (P'.choice [parse'envoy_grpc, parse'google_grpc])
          where
              parse'envoy_grpc
               = P'.try
                  (do
                     v <- P'.getT "envoy_grpc"
                     Prelude'.return
                      (\ s -> s{target_specifier = Prelude'.Just (GrpcServiceProto.GrpcService.Target_specifier.Envoy_grpc v)}))
              parse'google_grpc
               = P'.try
                  (do
                     v <- P'.getT "google_grpc"
                     Prelude'.return
                      (\ s -> s{target_specifier = Prelude'.Just (GrpcServiceProto.GrpcService.Target_specifier.Google_grpc v)}))