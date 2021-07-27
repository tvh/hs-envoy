{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AddressProto.EnvoyInternalAddress.Address_name_specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Address_name_specifier = Server_listener_name{server_listener_name :: (P'.Utf8)}
                              deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                        Prelude'.Generic)
get'server_listener_name x
 = case x of
     Server_listener_name server_listener_name -> Prelude'.Just server_listener_name
     _ -> Prelude'.Nothing

instance P'.Default Address_name_specifier where
  defaultValue = Server_listener_name P'.defaultValue

instance P'.Mergeable Address_name_specifier