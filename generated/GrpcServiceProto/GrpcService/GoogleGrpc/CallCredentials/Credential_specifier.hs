{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.Credential_specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified EmptyProto.Empty as EmptyProto
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials
       as GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin
       as GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials
       as GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.StsService
       as GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials

data Credential_specifier = Access_token{access_token :: (P'.Utf8)}
                          | Google_compute_engine{google_compute_engine :: (EmptyProto.Empty)}
                          | Google_refresh_token{google_refresh_token :: (P'.Utf8)}
                          | Service_account_jwt_access{service_account_jwt_access ::
                                                       (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials)}
                          | Google_iam{google_iam :: (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials)}
                          | From_plugin{from_plugin ::
                                        (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin)}
                          | Sts_service{sts_service :: (GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.StsService)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'access_token x
 = case x of
     Access_token access_token -> Prelude'.Just access_token
     _ -> Prelude'.Nothing
get'google_compute_engine x
 = case x of
     Google_compute_engine google_compute_engine -> Prelude'.Just google_compute_engine
     _ -> Prelude'.Nothing
get'google_refresh_token x
 = case x of
     Google_refresh_token google_refresh_token -> Prelude'.Just google_refresh_token
     _ -> Prelude'.Nothing
get'service_account_jwt_access x
 = case x of
     Service_account_jwt_access service_account_jwt_access -> Prelude'.Just service_account_jwt_access
     _ -> Prelude'.Nothing
get'google_iam x
 = case x of
     Google_iam google_iam -> Prelude'.Just google_iam
     _ -> Prelude'.Nothing
get'from_plugin x
 = case x of
     From_plugin from_plugin -> Prelude'.Just from_plugin
     _ -> Prelude'.Nothing
get'sts_service x
 = case x of
     Sts_service sts_service -> Prelude'.Just sts_service
     _ -> Prelude'.Nothing

instance P'.Default Credential_specifier where
  defaultValue = Access_token P'.defaultValue

instance P'.Mergeable Credential_specifier