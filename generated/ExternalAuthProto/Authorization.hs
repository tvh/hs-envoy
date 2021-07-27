{-# LANGUAGE BangPatterns, DataKinds, DeriveDataTypeable, DeriveGeneric, FlexibleInstances, MultiParamTypeClasses, OverloadedStrings
 #-}
{-# OPTIONS_GHC  -w #-}
module ExternalAuthProto.Authorization (Authorization, authorization, Check, check) where
import Prelude ((+), (/), (.))
import qualified Prelude as Prelude'
import qualified Data.List as Prelude'
import qualified Data.Typeable as Prelude'
import qualified GHC.Generics as Prelude'
import qualified Data.Data as Prelude'
import qualified Text.ProtocolBuffers.Header as P'
import qualified ExternalAuthProto.CheckRequest as ExternalAuthProto
import qualified ExternalAuthProto.CheckResponse as ExternalAuthProto

type Authorization = P'.Service "envoy.service.auth.v3.Authorization" '[Check]

authorization :: Authorization
authorization = P'.Service

type Check = P'.Method "Check" (P'.Single ExternalAuthProto.CheckRequest) (P'.Single ExternalAuthProto.CheckResponse)

check :: Check
check = P'.Method