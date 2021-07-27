{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AddressProto.SocketAddress.Port_specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Port_specifier = Port_value{port_value :: (P'.Word32)}
                    | Named_port{named_port :: (P'.Utf8)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'port_value x
 = case x of
     Port_value port_value -> Prelude'.Just port_value
     _ -> Prelude'.Nothing
get'named_port x
 = case x of
     Named_port named_port -> Prelude'.Just named_port
     _ -> Prelude'.Nothing

instance P'.Default Port_specifier where
  defaultValue = Port_value P'.defaultValue

instance P'.Mergeable Port_specifier