{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ConfigSourceProto.ConfigSource.Config_source_specifier where
import Prelude ((+), (/), (++), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ConfigSourceProto.AggregatedConfigSource as ConfigSourceProto
import qualified ConfigSourceProto.ApiConfigSource as ConfigSourceProto
import qualified ConfigSourceProto.SelfConfigSource as ConfigSourceProto

data Config_source_specifier = Path{path :: (P'.Utf8)}
                             | Api_config_source{api_config_source :: (ConfigSourceProto.ApiConfigSource)}
                             | Ads{ads :: (ConfigSourceProto.AggregatedConfigSource)}
                             | Self{self :: (ConfigSourceProto.SelfConfigSource)}
                               deriving (Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                                         Prelude'.Generic)
get'path x
 = case x of
     Path path -> Prelude'.Just path
     _ -> Prelude'.Nothing
get'api_config_source x
 = case x of
     Api_config_source api_config_source -> Prelude'.Just api_config_source
     _ -> Prelude'.Nothing
get'ads x
 = case x of
     Ads ads -> Prelude'.Just ads
     _ -> Prelude'.Nothing
get'self x
 = case x of
     Self self -> Prelude'.Just self
     _ -> Prelude'.Nothing

instance P'.Default Config_source_specifier where
  defaultValue = Path P'.defaultValue

instance P'.Mergeable Config_source_specifier