{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module AccesslogProto.HTTPAccessLogEntry.HTTPVersion (HTTPVersion(..)) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'

data HTTPVersion = PROTOCOL_UNSPECIFIED
                 | HTTP10
                 | HTTP11
                 | HTTP2
                 | HTTP3
                   deriving (Prelude'.Read, Prelude'.Show, Prelude'.Eq, Prelude'.Ord, Prelude'.Typeable, Prelude'.Data,
                             Prelude'.Generic)

instance P'.Mergeable HTTPVersion

instance Prelude'.Bounded HTTPVersion where
  minBound = PROTOCOL_UNSPECIFIED
  maxBound = HTTP3

instance P'.Default HTTPVersion where
  defaultValue = PROTOCOL_UNSPECIFIED

toMaybe'Enum :: Prelude'.Int -> P'.Maybe HTTPVersion
toMaybe'Enum 0 = Prelude'.Just PROTOCOL_UNSPECIFIED
toMaybe'Enum 1 = Prelude'.Just HTTP10
toMaybe'Enum 2 = Prelude'.Just HTTP11
toMaybe'Enum 3 = Prelude'.Just HTTP2
toMaybe'Enum 4 = Prelude'.Just HTTP3
toMaybe'Enum _ = Prelude'.Nothing

instance Prelude'.Enum HTTPVersion where
  fromEnum PROTOCOL_UNSPECIFIED = 0
  fromEnum HTTP10 = 1
  fromEnum HTTP11 = 2
  fromEnum HTTP2 = 3
  fromEnum HTTP3 = 4
  toEnum
   = P'.fromMaybe (Prelude'.error "hprotoc generated code: toEnum failure for type AccesslogProto.HTTPAccessLogEntry.HTTPVersion") .
      toMaybe'Enum
  succ PROTOCOL_UNSPECIFIED = HTTP10
  succ HTTP10 = HTTP11
  succ HTTP11 = HTTP2
  succ HTTP2 = HTTP3
  succ _ = Prelude'.error "hprotoc generated code: succ failure for type AccesslogProto.HTTPAccessLogEntry.HTTPVersion"
  pred HTTP10 = PROTOCOL_UNSPECIFIED
  pred HTTP11 = HTTP10
  pred HTTP2 = HTTP11
  pred HTTP3 = HTTP2
  pred _ = Prelude'.error "hprotoc generated code: pred failure for type AccesslogProto.HTTPAccessLogEntry.HTTPVersion"

instance P'.Wire HTTPVersion where
  wireSize ft' enum = P'.wireSize ft' (Prelude'.fromEnum enum)
  wirePut ft' enum = P'.wirePut ft' (Prelude'.fromEnum enum)
  wireGet 14 = P'.wireGetEnum toMaybe'Enum
  wireGet ft' = P'.wireGetErr ft'
  wireGetPacked 14 = P'.wireGetPackedEnum toMaybe'Enum
  wireGetPacked ft' = P'.wireGetErr ft'

instance P'.GPB HTTPVersion

instance P'.MessageAPI msg' (msg' -> HTTPVersion) HTTPVersion where
  getVal m' f' = f' m'

instance P'.ReflectEnum HTTPVersion where
  reflectEnum
   = [(0, "PROTOCOL_UNSPECIFIED", PROTOCOL_UNSPECIFIED), (1, "HTTP10", HTTP10), (2, "HTTP11", HTTP11), (3, "HTTP2", HTTP2),
      (4, "HTTP3", HTTP3)]
  reflectEnumInfo _
   = P'.EnumInfo
      (P'.makePNF (P'.pack ".envoy.data.accesslog.v3.HTTPAccessLogEntry.HTTPVersion") [] ["AccesslogProto", "HTTPAccessLogEntry"]
        "HTTPVersion")
      ["AccesslogProto", "HTTPAccessLogEntry", "HTTPVersion.hs"]
      [(0, "PROTOCOL_UNSPECIFIED"), (1, "HTTP10"), (2, "HTTP11"), (3, "HTTP2"), (4, "HTTP3")]
      Prelude'.False

instance P'.TextType HTTPVersion where
  tellT = P'.tellShow
  getT = P'.getRead