{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.TLSProperties.TLSVersion (TLSVersion(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data TLSVersion = VERSION_UNSPECIFIED
                | TLSv1
                | TLSv1_1
                | TLSv1_2
                | TLSv1_3
                  deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                            Prelude'.Generic)

instance P'.Mergeable TLSVersion

instance Prelude'.Bounded TLSVersion where
  minBound = VERSION_UNSPECIFIED
  maxBound = TLSv1_3

instance P'.Default TLSVersion where
  defaultValue = VERSION_UNSPECIFIED

toMaybe'Enum :: Prelude'.Int -> P'.Maybe TLSVersion
toMaybe'Enum 0 = Prelude'.Just VERSION_UNSPECIFIED
toMaybe'Enum 1 = Prelude'.Just TLSv1
toMaybe'Enum 2 = Prelude'.Just TLSv1_1
toMaybe'Enum 3 = Prelude'.Just TLSv1_2
toMaybe'Enum 4 = Prelude'.Just TLSv1_3
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum TLSVersion where
  fromEnum VERSION_UNSPECIFIED = 0
  fromEnum TLSv1 = 1
  fromEnum TLSv1_1 = 2
  fromEnum TLSv1_2 = 3
  fromEnum TLSv1_3 = 4
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type AccesslogProto.TLSProperties.TLSVersion") .
      toMaybe'Enum
  succ VERSION_UNSPECIFIED = TLSv1
  succ TLSv1 = TLSv1_1
  succ TLSv1_1 = TLSv1_2
  succ TLSv1_2 = TLSv1_3
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type AccesslogProto.TLSProperties.TLSVersion"
  pred TLSv1 = VERSION_UNSPECIFIED
  pred TLSv1_1 = TLSv1
  pred TLSv1_2 = TLSv1_1
  pred TLSv1_3 = TLSv1_2
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type AccesslogProto.TLSProperties.TLSVersion"

instance P'.Wire TLSVersion where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB TLSVersion

instance P'.MessageAPI msg' (msg' -> TLSVersion) TLSVersion where
  getVal m' f' = f' m'

instance P'.ReflectEnum TLSVersion where
  reflectEnum
   = [(0, "VERSION_UNSPECIFIED", VERSION_UNSPECIFIED), (1, "TLSv1", TLSv1), (2, "TLSv1_1", TLSv1_1), (3, "TLSv1_2", TLSv1_2),
      (4, "TLSv1_3", TLSv1_3)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".envoy.data.accesslog.v3.TLSProperties.TLSVersion") [] ["AccesslogProto", "TLSProperties"] "TLSVersion")
      ["AccesslogProto", "TLSProperties", "TLSVersion.hs"]
      [(0, "VERSION_UNSPECIFIED"), (1, "TLSv1"), (2, "TLSv1_1"), (3, "TLSv1_2"), (4, "TLSv1_3")]
      Prelude'.False

instance P'.TextType TLSVersion where
  tellT = P'.tellShow
  getT = P'.getRead