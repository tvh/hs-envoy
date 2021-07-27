{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module BaseProto.RequestMethod (RequestMethod(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data RequestMethod = METHOD_UNSPECIFIED
                   | GET
                   | HEAD
                   | POST
                   | PUT
                   | DELETE
                   | CONNECT
                   | OPTIONS
                   | TRACE
                   | PATCH
                     deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                               Prelude'.Generic)

instance P'.Mergeable RequestMethod

instance Prelude'.Bounded RequestMethod where
  minBound = METHOD_UNSPECIFIED
  maxBound = PATCH

instance P'.Default RequestMethod where
  defaultValue = METHOD_UNSPECIFIED

toMaybe'Enum :: Prelude'.Int -> P'.Maybe RequestMethod
toMaybe'Enum 0 = Prelude'.Just METHOD_UNSPECIFIED
toMaybe'Enum 1 = Prelude'.Just GET
toMaybe'Enum 2 = Prelude'.Just HEAD
toMaybe'Enum 3 = Prelude'.Just POST
toMaybe'Enum 4 = Prelude'.Just PUT
toMaybe'Enum 5 = Prelude'.Just DELETE
toMaybe'Enum 6 = Prelude'.Just CONNECT
toMaybe'Enum 7 = Prelude'.Just OPTIONS
toMaybe'Enum 8 = Prelude'.Just TRACE
toMaybe'Enum 9 = Prelude'.Just PATCH
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum RequestMethod where
  fromEnum METHOD_UNSPECIFIED = 0
  fromEnum GET = 1
  fromEnum HEAD = 2
  fromEnum POST = 3
  fromEnum PUT = 4
  fromEnum DELETE = 5
  fromEnum CONNECT = 6
  fromEnum OPTIONS = 7
  fromEnum TRACE = 8
  fromEnum PATCH = 9
  toEnum = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type BaseProto.RequestMethod") . toMaybe'Enum
  succ METHOD_UNSPECIFIED = GET
  succ GET = HEAD
  succ HEAD = POST
  succ POST = PUT
  succ PUT = DELETE
  succ DELETE = CONNECT
  succ CONNECT = OPTIONS
  succ OPTIONS = TRACE
  succ TRACE = PATCH
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type BaseProto.RequestMethod"
  pred GET = METHOD_UNSPECIFIED
  pred HEAD = GET
  pred POST = HEAD
  pred PUT = POST
  pred DELETE = PUT
  pred CONNECT = DELETE
  pred OPTIONS = CONNECT
  pred TRACE = OPTIONS
  pred PATCH = TRACE
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type BaseProto.RequestMethod"

instance P'.Wire RequestMethod where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB RequestMethod

instance P'.MessageAPI msg' (msg' -> RequestMethod) RequestMethod where
  getVal m' f' = f' m'

instance P'.ReflectEnum RequestMethod where
  reflectEnum
   = [(0, "METHOD_UNSPECIFIED", METHOD_UNSPECIFIED), (1, "GET", GET), (2, "HEAD", HEAD), (3, "POST", POST), (4, "PUT", PUT),
      (5, "DELETE", DELETE), (6, "CONNECT", CONNECT), (7, "OPTIONS", OPTIONS), (8, "TRACE", TRACE), (9, "PATCH", PATCH)]
  reflectEnumInfo _
   = P'.EnumInfo (P'.makePNF (P'.pack ".envoy.config.core.v3.RequestMethod") [] ["BaseProto"] "RequestMethod")
      ["BaseProto", "RequestMethod.hs"]
      [(0, "METHOD_UNSPECIFIED"), (1, "GET"), (2, "HEAD"), (3, "POST"), (4, "PUT"), (5, "DELETE"), (6, "CONNECT"), (7, "OPTIONS"),
       (8, "TRACE"), (9, "PATCH")]
      Prelude'.False

instance P'.TextType RequestMethod where
  tellT = P'.tellShow
  getT = P'.getRead