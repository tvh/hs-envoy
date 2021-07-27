{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.Node.User_agent_version_type where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified BaseProto.BuildVersion as BaseProto

data User_agent_version_type = User_agent_version{user_agent_version :: (P'.Utf8)}
                             | User_agent_build_version{user_agent_build_version :: (BaseProto.BuildVersion)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                         Prelude'.Generic)
get'user_agent_version x
 = case x of
     User_agent_version user_agent_version -> Prelude'.Just user_agent_version
     _ -> Prelude'.Nothing
get'user_agent_build_version x
 = case x of
     User_agent_build_version user_agent_build_version -> Prelude'.Just user_agent_build_version
     _ -> Prelude'.Nothing

instance P'.Default User_agent_version_type where
  defaultValue = User_agent_version P'.defaultValue

instance P'.Mergeable User_agent_version_type