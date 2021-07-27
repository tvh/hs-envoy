{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module RlsProto.RateLimitResponse.Quota.Expiration_specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified TimestampProto.Timestamp as TimestampProto

data Expiration_specifier = Valid_until{valid_until :: (TimestampProto.Timestamp)}
                            deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'valid_until x
 = case x of
     Valid_until valid_until -> Prelude'.Just valid_until
     _ -> Prelude'.Nothing

instance P'.Default Expiration_specifier where
  defaultValue = Valid_until P'.defaultValue

instance P'.Mergeable Expiration_specifier