{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module HttpUriProto.HttpUri.Http_upstream_type where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Http_upstream_type = Cluster{cluster :: (P'.Utf8)}
                          deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'cluster x
 = case x of
     Cluster cluster -> Prelude'.Just cluster
     _ -> Prelude'.Nothing

instance P'.Default Http_upstream_type where
  defaultValue = Cluster P'.defaultValue

instance P'.Mergeable Http_upstream_type