{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.SchemeHeaderTransformation.Transformation where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Transformation = Scheme_to_overwrite{scheme_to_overwrite :: (P'.Utf8)}
                      deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data, Prelude'.Generic)
get'scheme_to_overwrite x
 = case x of
     Scheme_to_overwrite scheme_to_overwrite -> Prelude'.Just scheme_to_overwrite
     _ -> Prelude'.Nothing

instance P'.Default Transformation where
  defaultValue = Scheme_to_overwrite P'.defaultValue

instance P'.Mergeable Transformation