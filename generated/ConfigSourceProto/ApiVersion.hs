{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ConfigSourceProto.ApiVersion (ApiVersion(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data ApiVersion = AUTO
                | V2
                | V3
                  deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                            Prelude'.Generic)

instance P'.Mergeable ApiVersion

instance Prelude'.Bounded ApiVersion where
  minBound = AUTO
  maxBound = V3

instance P'.Default ApiVersion where
  defaultValue = AUTO

toMaybe'Enum :: Prelude'.Int -> P'.Maybe ApiVersion
toMaybe'Enum 0 = Prelude'.Just AUTO
toMaybe'Enum 1 = Prelude'.Just V2
toMaybe'Enum 2 = Prelude'.Just V3
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum ApiVersion where
  fromEnum AUTO = 0
  fromEnum V2 = 1
  fromEnum V3 = 2
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type ConfigSourceProto.ApiVersion") . toMaybe'Enum
  succ AUTO = V2
  succ V2 = V3
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type ConfigSourceProto.ApiVersion"
  pred V2 = AUTO
  pred V3 = V2
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type ConfigSourceProto.ApiVersion"

instance P'.Wire ApiVersion where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB ApiVersion

instance P'.MessageAPI msg' (msg' -> ApiVersion) ApiVersion where
  getVal m' f' = f' m'

instance P'.ReflectEnum ApiVersion where
  reflectEnum = [(0, "AUTO", AUTO), (1, "V2", V2), (2, "V3", V3)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".envoy.config.core.v3.ApiVersion") [] ["ConfigSourceProto"] "ApiVersion")
      ["ConfigSourceProto", "ApiVersion.hs"]
      [(0, "AUTO"), (1, "V2"), (2, "V3")]
      Prelude'.False

instance P'.TextType ApiVersion where
  tellT = P'.tellShow
  getT = P'.getRead