{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials (ChannelCredentials(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier
       as GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier
       (Credential_specifier(..), get'ssl_credentials, get'google_default, get'local_credentials)

data ChannelCredentials = ChannelCredentials{credential_specifier ::
                                             P'.Maybe
                                              (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.Credential_specifier)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable ChannelCredentials where
  mergeAppend (ChannelCredentials x'1) (ChannelCredentials y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in ChannelCredentials z'1

instance P'.Default ChannelCredentials where
  defaultValue = ChannelCredentials P'.defaultValue

instance P'.Wire ChannelCredentials where
  wireSize ft' self'@(ChannelCredentials x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 11
             (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.get'ssl_credentials Prelude'.=<< x'1)
             +
             P'.wireSizeOpt 1 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.get'google_default Prelude'.=<< x'1)
             +
             P'.wireSizeOpt 1 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.get'local_credentials Prelude'.=<<
                x'1))
  wirePutWithSize ft' self'@(ChannelCredentials x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.get'ssl_credentials Prelude'.=<<
                x'1),
             P'.wirePutOptWithSize 18 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.get'google_default Prelude'.=<< x'1),
             P'.wirePutOptWithSize 26 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.get'local_credentials Prelude'.=<<
                x'1)]
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
                      old'Self{credential_specifier =
                                P'.mergeAppend (credential_specifier old'Self)
                                 (Prelude'.Just
                                   (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.Ssl_credentials
                                     new'Field))})
                    (P'.wireGet 11)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{credential_specifier =
                                P'.mergeAppend (credential_specifier old'Self)
                                 (Prelude'.Just
                                   (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.Google_default
                                     new'Field))})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{credential_specifier =
                                P'.mergeAppend (credential_specifier old'Self)
                                 (Prelude'.Just
                                   (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.Local_credentials
                                     new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> ChannelCredentials) ChannelCredentials where
  getVal m' f' = f' m'

instance P'.GPB ChannelCredentials

instance P'.ReflectDescriptor ChannelCredentials where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName = MName \"ChannelCredentials\"}, descFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc\",\"ChannelCredentials.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.credential_specifier\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelCredentials\"], baseName = MName \"Credential_specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.credential_specifier\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelCredentials\"], baseName' = FName \"credential_specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc\",\"ChannelCredentials\",\"Credential_specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.credential_specifier.ssl_credentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelCredentials\",MName \"Credential_specifier\"], baseName = MName \"Ssl_credentials\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.credential_specifier.ssl_credentials\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelCredentials\",MName \"Credential_specifier\"], baseName' = FName \"ssl_credentials\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName = MName \"SslCredentials\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.credential_specifier.google_default\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelCredentials\",MName \"Credential_specifier\"], baseName = MName \"Google_default\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.credential_specifier.google_default\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelCredentials\",MName \"Credential_specifier\"], baseName' = FName \"google_default\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Empty\", haskellPrefix = [], parentModule = [MName \"EmptyProto\"], baseName = MName \"Empty\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.credential_specifier.local_credentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelCredentials\",MName \"Credential_specifier\"], baseName = MName \"Local_credentials\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials.credential_specifier.local_credentials\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"ChannelCredentials\",MName \"Credential_specifier\"], baseName' = FName \"local_credentials\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName = MName \"GoogleLocalCredentials\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType ChannelCredentials where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg ChannelCredentials where
  textPut msg
   = do
       case (credential_specifier msg) of
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.Ssl_credentials
            ssl_credentials) -> P'.tellT "ssl_credentials" ssl_credentials
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.Google_default
            google_default) -> P'.tellT "google_default" google_default
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.Local_credentials
            local_credentials) -> P'.tellT "local_credentials" local_credentials
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'credential_specifier]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'credential_specifier = P'.try (P'.choice [parse'ssl_credentials, parse'google_default, parse'local_credentials])
          where
              parse'ssl_credentials
               = P'.try
                  (do
                     v <- P'.getT "ssl_credentials"
                     Prelude'.return
                      (\ s ->
                        s{credential_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.Ssl_credentials v)}))
              parse'google_default
               = P'.try
                  (do
                     v <- P'.getT "google_default"
                     Prelude'.return
                      (\ s ->
                        s{credential_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.Google_default v)}))
              parse'local_credentials
               = P'.try
                  (do
                     v <- P'.getT "local_credentials"
                     Prelude'.return
                      (\ s ->
                        s{credential_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier.Local_credentials v)}))