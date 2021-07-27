{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.TLSProperties.CertificateProperties.SubjectAltName.San where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data San = Uri{uri :: (P'.Utf8)}
         | Dns{dns :: (P'.Utf8)}
           deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'uri x
 = case x of
     Uri uri -> Prelude'.Just uri
     _ -> Prelude'.Nothing
get'dns x
 = case x of
     Dns dns -> Prelude'.Just dns
     _ -> Prelude'.Nothing

instance P'.Default San where
  defaultValue = Uri P'.defaultValue

instance P'.Mergeable San