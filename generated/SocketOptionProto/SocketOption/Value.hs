{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module SocketOptionProto.SocketOption.Value where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Value = Int_value{int_value :: (P'.Int64)}
           | Buf_value{buf_value :: (P'.ByteString)}
             deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'int_value x
 = case x of
     Int_value int_value -> Prelude'.Just int_value
     _ -> Prelude'.Nothing
get'buf_value x
 = case x of
     Buf_value buf_value -> Prelude'.Just buf_value
     _ -> Prelude'.Nothing

instance P'.Default Value where
  defaultValue = Int_value P'.defaultValue

instance P'.Mergeable Value