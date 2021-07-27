{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials (CallCredentials(..)) where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier
       as GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier
       (Credential_specifier(..), get'access_token, get'google_compute_engine, get'google_refresh_token,
        get'service_account_jwt_access, get'google_iam, get'from_plugin, get'sts_service)

data CallCredentials = CallCredentials{credential_specifier ::
                                       P'.Maybe
                                        (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Credential_specifier)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable CallCredentials where
  mergeAppend (CallCredentials x'1) (CallCredentials y'1) = let !z'1 = P'.mergeAppend x'1 y'1 in CallCredentials z'1

instance P'.Default CallCredentials where
  defaultValue = CallCredentials P'.defaultValue

instance P'.Wire CallCredentials where
  wireSize ft' self'@(CallCredentials x'1)
   = case ft' of
       10 -> calc'Size
       11 -> P'.prependMessageSize calc'Size
       _ -> P'.wireSizeErr ft' self'
    where
        calc'Size
         = (P'.wireSizeOpt 1 9
             (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'access_token Prelude'.=<< x'1)
             +
             P'.wireSizeOpt 1 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'google_compute_engine Prelude'.=<<
                x'1)
             +
             P'.wireSizeOpt 1 9
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'google_refresh_token Prelude'.=<<
                x'1)
             +
             P'.wireSizeOpt 1 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'service_account_jwt_access
                Prelude'.=<< x'1)
             +
             P'.wireSizeOpt 1 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'google_iam Prelude'.=<< x'1)
             +
             P'.wireSizeOpt 1 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'from_plugin Prelude'.=<< x'1)
             +
             P'.wireSizeOpt 1 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'sts_service Prelude'.=<< x'1))
  wirePutWithSize ft' self'@(CallCredentials x'1)
   = case ft' of
       10 -> put'Fields
       11 -> put'FieldsSized
       _ -> P'.wirePutErr ft' self'
    where
        put'Fields
         = P'.sequencePutWithSize
            [P'.wirePutOptWithSize 10 9
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'access_token Prelude'.=<< x'1),
             P'.wirePutOptWithSize 18 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'google_compute_engine Prelude'.=<<
                x'1),
             P'.wirePutOptWithSize 26 9
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'google_refresh_token Prelude'.=<<
                x'1),
             P'.wirePutOptWithSize 34 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'service_account_jwt_access
                Prelude'.=<< x'1),
             P'.wirePutOptWithSize 42 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'google_iam Prelude'.=<< x'1),
             P'.wirePutOptWithSize 50 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'from_plugin Prelude'.=<< x'1),
             P'.wirePutOptWithSize 58 11
              (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.get'sts_service Prelude'.=<< x'1)]
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
                                Prelude'.Just
                                 (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Access_token
                                   new'Field)})
                    (P'.wireGet 9)
             18 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{credential_specifier =
                                P'.mergeAppend (credential_specifier old'Self)
                                 (Prelude'.Just
                                   (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Google_compute_engine
                                     new'Field))})
                    (P'.wireGet 11)
             26 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{credential_specifier =
                                Prelude'.Just
                                 (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Google_refresh_token
                                   new'Field)})
                    (P'.wireGet 9)
             34 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{credential_specifier =
                                P'.mergeAppend (credential_specifier old'Self)
                                 (Prelude'.Just
                                   (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Service_account_jwt_access
                                     new'Field))})
                    (P'.wireGet 11)
             42 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{credential_specifier =
                                P'.mergeAppend (credential_specifier old'Self)
                                 (Prelude'.Just
                                   (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Google_iam
                                     new'Field))})
                    (P'.wireGet 11)
             50 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{credential_specifier =
                                P'.mergeAppend (credential_specifier old'Self)
                                 (Prelude'.Just
                                   (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.From_plugin
                                     new'Field))})
                    (P'.wireGet 11)
             58 -> Prelude'.fmap
                    (\ !new'Field ->
                      old'Self{credential_specifier =
                                P'.mergeAppend (credential_specifier old'Self)
                                 (Prelude'.Just
                                   (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Sts_service
                                     new'Field))})
                    (P'.wireGet 11)
             _ -> let (field'Number, wire'Type) = P'.splitWireTag wire'Tag in P'.unknown field'Number wire'Type old'Self

instance P'.MessageAPI msg' (msg' -> CallCredentials) CallCredentials where
  getVal m' f' = f' m'

instance P'.GPB CallCredentials

instance P'.ReflectDescriptor CallCredentials where
  getMessageInfo _ = P'.GetMessageInfo (P'.fromDistinctAscList []) (P'.fromDistinctAscList [])
  reflectDescriptorInfo _
   = Prelude'.read
      "DescriptorInfo {descName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\"], baseName = MName \"CallCredentials\"}, descFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc\",\"CallCredentials.hs\"], isGroup = False, fields = fromList [], descOneofs = fromList [OneofInfo {oneofName = ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\"], baseName = MName \"Credential_specifier\"}, oneofFName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\"], baseName' = FName \"credential_specifier\", baseNamePrefix' = \"\"}, oneofFilePath = [\"GrpcServiceProto\",\"GrpcService\",\"GoogleGrpc\",\"CallCredentials\",\"Credential_specifier.hs\"], oneofFields = fromList [(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.access_token\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName = MName \"Access_token\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.access_token\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName' = FName \"access_token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 1}, wireTag = WireTag {getWireTag = 10}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.google_compute_engine\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName = MName \"Google_compute_engine\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.google_compute_engine\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName' = FName \"google_compute_engine\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 2}, wireTag = WireTag {getWireTag = 18}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".google.protobuf.Empty\", haskellPrefix = [], parentModule = [MName \"EmptyProto\"], baseName = MName \"Empty\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.google_refresh_token\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName = MName \"Google_refresh_token\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.google_refresh_token\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName' = FName \"google_refresh_token\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 3}, wireTag = WireTag {getWireTag = 26}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 9}, typeName = Nothing, hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.service_account_jwt_access\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName = MName \"Service_account_jwt_access\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.service_account_jwt_access\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName' = FName \"service_account_jwt_access\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 4}, wireTag = WireTag {getWireTag = 34}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\"], baseName = MName \"ServiceAccountJWTAccessCredentials\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.google_iam\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName = MName \"Google_iam\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.google_iam\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName' = FName \"google_iam\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 5}, wireTag = WireTag {getWireTag = 42}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\"], baseName = MName \"GoogleIAMCredentials\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.from_plugin\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName = MName \"From_plugin\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.from_plugin\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName' = FName \"from_plugin\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 6}, wireTag = WireTag {getWireTag = 50}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\"], baseName = MName \"MetadataCredentialsFromPlugin\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing}),(ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.sts_service\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName = MName \"Sts_service\"},FieldInfo {fieldName = ProtoFName {protobufName' = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.credential_specifier.sts_service\", haskellPrefix' = [], parentModule' = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\",MName \"Credential_specifier\"], baseName' = FName \"sts_service\", baseNamePrefix' = \"\"}, fieldNumber = FieldId {getFieldId = 7}, wireTag = WireTag {getWireTag = 58}, packedTag = Nothing, wireTagLength = 1, isPacked = False, isRequired = False, canRepeat = False, mightPack = False, typeCode = FieldType {getFieldType = 11}, typeName = Just (ProtoName {protobufName = FIName \".envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsService\", haskellPrefix = [], parentModule = [MName \"GrpcServiceProto\",MName \"GrpcService\",MName \"GoogleGrpc\",MName \"CallCredentials\"], baseName = MName \"StsService\"}), hsRawDefault = Nothing, hsDefault = Nothing, isMapField = False, mapKeyVal = Nothing})], oneofMakeLenses = False}], keys = fromList [], extRanges = [], knownKeys = fromList [], storeUnknown = False, lazyFields = False, makeLenses = False, jsonInstances = False, mapEntry = False}"

instance P'.TextType CallCredentials where
  tellT = P'.tellSubMessage
  getT = P'.getSubMessage

instance P'.TextMsg CallCredentials where
  textPut msg
   = do
       case (credential_specifier msg) of
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Access_token access_token) -> P'.tellT
                                                                                                                       "access_token"
                                                                                                                       access_token
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Google_compute_engine
            google_compute_engine) -> P'.tellT "google_compute_engine" google_compute_engine
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Google_refresh_token
            google_refresh_token) -> P'.tellT "google_refresh_token" google_refresh_token
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Service_account_jwt_access
            service_account_jwt_access) -> P'.tellT "service_account_jwt_access" service_account_jwt_access
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Google_iam google_iam) -> P'.tellT
                                                                                                                   "google_iam"
                                                                                                                   google_iam
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.From_plugin from_plugin) -> P'.tellT
                                                                                                                     "from_plugin"
                                                                                                                     from_plugin
         Prelude'.Just
          (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Sts_service sts_service) -> P'.tellT
                                                                                                                     "sts_service"
                                                                                                                     sts_service
         Prelude'.Nothing -> Prelude'.return ()
  textGet
   = do
       mods <- P'.sepEndBy (P'.choice [parse'credential_specifier]) P'.spaces
       Prelude'.return (Prelude'.foldl' (\ v f -> f v) P'.defaultValue mods)
    where
        parse'credential_specifier
         = P'.try
            (P'.choice
              [parse'access_token, parse'google_compute_engine, parse'google_refresh_token, parse'service_account_jwt_access,
               parse'google_iam, parse'from_plugin, parse'sts_service])
          where
              parse'access_token
               = P'.try
                  (do
                     v <- P'.getT "access_token"
                     Prelude'.return
                      (\ s ->
                        s{credential_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Access_token v)}))
              parse'google_compute_engine
               = P'.try
                  (do
                     v <- P'.getT "google_compute_engine"
                     Prelude'.return
                      (\ s ->
                        s{credential_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Google_compute_engine
                              v)}))
              parse'google_refresh_token
               = P'.try
                  (do
                     v <- P'.getT "google_refresh_token"
                     Prelude'.return
                      (\ s ->
                        s{credential_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Google_refresh_token v)}))
              parse'service_account_jwt_access
               = P'.try
                  (do
                     v <- P'.getT "service_account_jwt_access"
                     Prelude'.return
                      (\ s ->
                        s{credential_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Service_account_jwt_access
                              v)}))
              parse'google_iam
               = P'.try
                  (do
                     v <- P'.getT "google_iam"
                     Prelude'.return
                      (\ s ->
                        s{credential_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Google_iam v)}))
              parse'from_plugin
               = P'.try
                  (do
                     v <- P'.getT "from_plugin"
                     Prelude'.return
                      (\ s ->
                        s{credential_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.From_plugin v)}))
              parse'sts_service
               = P'.try
                  (do
                     v <- P'.getT "sts_service"
                     Prelude'.return
                      (\ s ->
                        s{credential_specifier =
                           Prelude'.Just
                            (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier.Sts_service v)}))