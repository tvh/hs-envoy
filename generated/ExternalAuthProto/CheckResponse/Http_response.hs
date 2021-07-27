{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ExternalAuthProto.CheckResponse.Http_response where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ExternalAuthProto.DeniedHttpResponse as ExternalAuthProto
import qualified ExternalAuthProto.OkHttpResponse as ExternalAuthProto

data Http_response = Denied_response{denied_response :: (ExternalAuthProto.DeniedHttpResponse)}
                   | Ok_response{ok_response :: (ExternalAuthProto.OkHttpResponse)}
                     deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'denied_response x
 = case x of
     Denied_response denied_response -> Prelude'.Just denied_response
     _ -> Prelude'.Nothing
get'ok_response x
 = case x of
     Ok_response ok_response -> Prelude'.Just ok_response
     _ -> Prelude'.Nothing

instance P'.Default Http_response where
  defaultValue = Denied_response P'.defaultValue

instance P'.Mergeable Http_response