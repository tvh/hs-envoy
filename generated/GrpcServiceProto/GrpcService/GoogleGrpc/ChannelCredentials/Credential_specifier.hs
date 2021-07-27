{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.ChannelCredentials.Credential_specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified EmptyProto.Empty as EmptyProto
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.GoogleLocalCredentials as GrpcServiceProto.GrpcService.GoogleGrpc
import qualified GrpcServiceProto.GrpcService.GoogleGrpc.SslCredentials as GrpcServiceProto.GrpcService.GoogleGrpc

data Credential_specifier = Ssl_credentials{ssl_credentials :: (GrpcServiceProto.GrpcService.GoogleGrpc.SslCredentials)}
                          | Google_default{google_default :: (EmptyProto.Empty)}
                          | Local_credentials{local_credentials :: (GrpcServiceProto.GrpcService.GoogleGrpc.GoogleLocalCredentials)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'ssl_credentials x
 = case x of
     Ssl_credentials ssl_credentials -> Prelude'.Just ssl_credentials
     _ -> Prelude'.Nothing
get'google_default x
 = case x of
     Google_default google_default -> Prelude'.Just google_default
     _ -> Prelude'.Nothing
get'local_credentials x
 = case x of
     Local_credentials local_credentials -> Prelude'.Just local_credentials
     _ -> Prelude'.Nothing

instance P'.Default Credential_specifier where
  defaultValue = Ssl_credentials P'.defaultValue

instance P'.Mergeable Credential_specifier