{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ProtocolProto.HttpProtocolOptions.HeadersWithUnderscoresAction (HeadersWithUnderscoresAction(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data HeadersWithUnderscoresAction = ALLOW
                                  | REJECT_REQUEST
                                  | DROP_HEADER
                                    deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable,
                                              Prelude'.Data, Prelude'.Generic)

instance P'.Mergeable HeadersWithUnderscoresAction

instance Prelude'.Bounded HeadersWithUnderscoresAction where
  minBound = ALLOW
  maxBound = DROP_HEADER

instance P'.Default HeadersWithUnderscoresAction where
  defaultValue = ALLOW

toMaybe'Enum :: Prelude'.Int -> P'.Maybe HeadersWithUnderscoresAction
toMaybe'Enum 0 = Prelude'.Just ALLOW
toMaybe'Enum 1 = Prelude'.Just REJECT_REQUEST
toMaybe'Enum 2 = Prelude'.Just DROP_HEADER
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum HeadersWithUnderscoresAction where
  fromEnum ALLOW = 0
  fromEnum REJECT_REQUEST = 1
  fromEnum DROP_HEADER = 2
  toEnum
   = P'.fromMaybe
      (Prelude'.error
        "hprotoc generated code: toEnum failure for type ProtocolProto.HttpProtocolOptions.HeadersWithUnderscoresAction")
      . toMaybe'Enum
  succ ALLOW = REJECT_REQUEST
  succ REJECT_REQUEST = DROP_HEADER
  succ _
   = Prelude'.error "hprotoc generated code: succ failure for type ProtocolProto.HttpProtocolOptions.HeadersWithUnderscoresAction"
  pred REJECT_REQUEST = ALLOW
  pred DROP_HEADER = REJECT_REQUEST
  pred _
   = Prelude'.error "hprotoc generated code: pred failure for type ProtocolProto.HttpProtocolOptions.HeadersWithUnderscoresAction"

instance P'.Wire HeadersWithUnderscoresAction where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB HeadersWithUnderscoresAction

instance P'.MessageAPI msg' (msg' -> HeadersWithUnderscoresAction) HeadersWithUnderscoresAction where
  getVal m' f' = f' m'

instance P'.ReflectEnum HeadersWithUnderscoresAction where
  reflectEnum = [(0, "ALLOW", ALLOW), (1, "REJECT_REQUEST", REJECT_REQUEST), (2, "DROP_HEADER", DROP_HEADER)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".envoy.config.core.v3.HttpProtocolOptions.HeadersWithUnderscoresAction") []
        ["ProtocolProto", "HttpProtocolOptions"]
        "HeadersWithUnderscoresAction")
      ["ProtocolProto", "HttpProtocolOptions", "HeadersWithUnderscoresAction.hs"]
      [(0, "ALLOW"), (1, "REJECT_REQUEST"), (2, "DROP_HEADER")]
      Prelude'.False

instance P'.TextType HeadersWithUnderscoresAction where
  tellT = P'.tellShow
  getT = P'.getRead