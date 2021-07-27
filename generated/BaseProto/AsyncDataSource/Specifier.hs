{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.AsyncDataSource.Specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.DataSource as BaseProto
import qualified BaseProto.RemoteDataSource as BaseProto

data Specifier = Local{local :: (BaseProto.DataSource)}
               | Remote{remote :: (BaseProto.RemoteDataSource)}
                 deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'local x
 = case x of
     Local local -> Prelude'.Just local
     _ -> Prelude'.Nothing
get'remote x
 = case x of
     Remote remote -> Prelude'.Just remote
     _ -> Prelude'.Nothing

instance P'.Default Specifier where
  defaultValue = Local P'.defaultValue

instance P'.Mergeable Specifier