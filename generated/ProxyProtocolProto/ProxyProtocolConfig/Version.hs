{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProxyProtocolProto.ProxyProtocolConfig.Version (Version(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data Version = V1
             | V2
               deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                         Prelude'.Generic)

instance P'.Mergeable Version

instance Prelude'.Bounded Version where
  minBound = V1
  maxBound = V2

instance P'.Default Version where
  defaultValue = V1

toMaybe'Enum :: Prelude'.Int -> P'.Maybe Version
toMaybe'Enum 0 = Prelude'.Just V1
toMaybe'Enum 1 = Prelude'.Just V2
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum Version where
  fromEnum V1 = 0
  fromEnum V2 = 1
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type ProxyProtocolProto.ProxyProtocolConfig.Version")
      . toMaybe'Enum
  succ V1 = V2
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type ProxyProtocolProto.ProxyProtocolConfig.Version"
  pred V2 = V1
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type ProxyProtocolProto.ProxyProtocolConfig.Version"

instance P'.Wire Version where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB Version

instance P'.MessageAPI msg' (msg' -> Version) Version where
  getVal m' f' = f' m'

instance P'.ReflectEnum Version where
  reflectEnum = [(0, "V1", V1), (1, "V2", V2)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".envoy.config.core.v3.ProxyProtocolConfig.Version") [] ["ProxyProtocolProto", "ProxyProtocolConfig"]
        "Version")
      ["ProxyProtocolProto", "ProxyProtocolConfig", "Version.hs"]
      [(0, "V1"), (1, "V2")]
      Prelude'.False

instance P'.TextType Version where
  tellT = P'.tellShow
  getT = P'.getRead