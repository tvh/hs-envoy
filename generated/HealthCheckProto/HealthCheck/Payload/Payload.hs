{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HealthCheckProto.HealthCheck.Payload.Payload where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Payload = Text{text :: (P'.Utf8)}
             | Binary{binary :: (P'.ByteString)}
               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'text x
 = case x of
     Text text -> Prelude'.Just text
     _ -> Prelude'.Nothing
get'binary x
 = case x of
     Binary binary -> Prelude'.Just binary
     _ -> Prelude'.Nothing

instance P'.Default Payload where
  defaultValue = Text P'.defaultValue

instance P'.Mergeable Payload