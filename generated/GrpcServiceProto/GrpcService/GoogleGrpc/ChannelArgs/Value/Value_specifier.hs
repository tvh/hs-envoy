{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module GrpcServiceProto.GrpcService.GoogleGrpc.ChannelArgs.Value.Value_specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Value_specifier = String_value{string_value :: (P'.Utf8)}
                     | Int_value{int_value :: (P'.Int64)}
                       deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'string_value x
 = case x of
     String_value string_value -> Prelude'.Just string_value
     _ -> Prelude'.Nothing
get'int_value x
 = case x of
     Int_value int_value -> Prelude'.Just int_value
     _ -> Prelude'.Nothing

instance P'.Default Value_specifier where
  defaultValue = String_value P'.defaultValue

instance P'.Mergeable Value_specifier