{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin.Config_type where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified AnyProto.Any as AnyProto

data Config_type = Typed_config{typed_config :: (AnyProto.Any)}
                   deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'typed_config x
 = case x of
     Typed_config typed_config -> Prelude'.Just typed_config
     _ -> Prelude'.Nothing

instance P'.Default Config_type where
  defaultValue = Typed_config P'.defaultValue

instance P'.Mergeable Config_type