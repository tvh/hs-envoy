{- This file was auto-generated from envoy/config/rbac/v3/rbac.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Rbac.V3.Rbac_Fields where
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Envoy.Annotations.Deprecation
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Envoy.Type.Matcher.V3.Metadata
import qualified Proto.Envoy.Type.Matcher.V3.Path
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Google.Api.Expr.V1alpha1.Checked
import qualified Proto.Google.Api.Expr.V1alpha1.Syntax
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
action ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "action" a) =>
  Lens.Family2.LensLike' f s a
action = Data.ProtoLens.Field.field @"action"
andIds ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "andIds" a) =>
  Lens.Family2.LensLike' f s a
andIds = Data.ProtoLens.Field.field @"andIds"
andRules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "andRules" a) =>
  Lens.Family2.LensLike' f s a
andRules = Data.ProtoLens.Field.field @"andRules"
any ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "any" a) =>
  Lens.Family2.LensLike' f s a
any = Data.ProtoLens.Field.field @"any"
authenticated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "authenticated" a) =>
  Lens.Family2.LensLike' f s a
authenticated = Data.ProtoLens.Field.field @"authenticated"
checkedCondition ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "checkedCondition" a) =>
  Lens.Family2.LensLike' f s a
checkedCondition = Data.ProtoLens.Field.field @"checkedCondition"
condition ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "condition" a) =>
  Lens.Family2.LensLike' f s a
condition = Data.ProtoLens.Field.field @"condition"
destinationIp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "destinationIp" a) =>
  Lens.Family2.LensLike' f s a
destinationIp = Data.ProtoLens.Field.field @"destinationIp"
destinationPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "destinationPort" a) =>
  Lens.Family2.LensLike' f s a
destinationPort = Data.ProtoLens.Field.field @"destinationPort"
directRemoteIp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "directRemoteIp" a) =>
  Lens.Family2.LensLike' f s a
directRemoteIp = Data.ProtoLens.Field.field @"directRemoteIp"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
ids ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ids" a) =>
  Lens.Family2.LensLike' f s a
ids = Data.ProtoLens.Field.field @"ids"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maybe'andIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'andIds" a) =>
  Lens.Family2.LensLike' f s a
maybe'andIds = Data.ProtoLens.Field.field @"maybe'andIds"
maybe'andRules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'andRules" a) =>
  Lens.Family2.LensLike' f s a
maybe'andRules = Data.ProtoLens.Field.field @"maybe'andRules"
maybe'any ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'any" a) =>
  Lens.Family2.LensLike' f s a
maybe'any = Data.ProtoLens.Field.field @"maybe'any"
maybe'authenticated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'authenticated" a) =>
  Lens.Family2.LensLike' f s a
maybe'authenticated
  = Data.ProtoLens.Field.field @"maybe'authenticated"
maybe'checkedCondition ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'checkedCondition" a) =>
  Lens.Family2.LensLike' f s a
maybe'checkedCondition
  = Data.ProtoLens.Field.field @"maybe'checkedCondition"
maybe'condition ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'condition" a) =>
  Lens.Family2.LensLike' f s a
maybe'condition = Data.ProtoLens.Field.field @"maybe'condition"
maybe'destinationIp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'destinationIp" a) =>
  Lens.Family2.LensLike' f s a
maybe'destinationIp
  = Data.ProtoLens.Field.field @"maybe'destinationIp"
maybe'destinationPort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'destinationPort" a) =>
  Lens.Family2.LensLike' f s a
maybe'destinationPort
  = Data.ProtoLens.Field.field @"maybe'destinationPort"
maybe'directRemoteIp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'directRemoteIp" a) =>
  Lens.Family2.LensLike' f s a
maybe'directRemoteIp
  = Data.ProtoLens.Field.field @"maybe'directRemoteIp"
maybe'header ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'header" a) =>
  Lens.Family2.LensLike' f s a
maybe'header = Data.ProtoLens.Field.field @"maybe'header"
maybe'identifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'identifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'identifier = Data.ProtoLens.Field.field @"maybe'identifier"
maybe'metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'metadata = Data.ProtoLens.Field.field @"maybe'metadata"
maybe'notId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'notId" a) =>
  Lens.Family2.LensLike' f s a
maybe'notId = Data.ProtoLens.Field.field @"maybe'notId"
maybe'notRule ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'notRule" a) =>
  Lens.Family2.LensLike' f s a
maybe'notRule = Data.ProtoLens.Field.field @"maybe'notRule"
maybe'orIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'orIds" a) =>
  Lens.Family2.LensLike' f s a
maybe'orIds = Data.ProtoLens.Field.field @"maybe'orIds"
maybe'orRules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'orRules" a) =>
  Lens.Family2.LensLike' f s a
maybe'orRules = Data.ProtoLens.Field.field @"maybe'orRules"
maybe'principalName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'principalName" a) =>
  Lens.Family2.LensLike' f s a
maybe'principalName
  = Data.ProtoLens.Field.field @"maybe'principalName"
maybe'remoteIp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'remoteIp" a) =>
  Lens.Family2.LensLike' f s a
maybe'remoteIp = Data.ProtoLens.Field.field @"maybe'remoteIp"
maybe'requestedServerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requestedServerName" a) =>
  Lens.Family2.LensLike' f s a
maybe'requestedServerName
  = Data.ProtoLens.Field.field @"maybe'requestedServerName"
maybe'rule ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rule" a) =>
  Lens.Family2.LensLike' f s a
maybe'rule = Data.ProtoLens.Field.field @"maybe'rule"
maybe'sourceIp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceIp" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceIp = Data.ProtoLens.Field.field @"maybe'sourceIp"
maybe'urlPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'urlPath" a) =>
  Lens.Family2.LensLike' f s a
maybe'urlPath = Data.ProtoLens.Field.field @"maybe'urlPath"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
metadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metadata" a) =>
  Lens.Family2.LensLike' f s a
metadata = Data.ProtoLens.Field.field @"metadata"
notId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "notId" a) =>
  Lens.Family2.LensLike' f s a
notId = Data.ProtoLens.Field.field @"notId"
notRule ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "notRule" a) =>
  Lens.Family2.LensLike' f s a
notRule = Data.ProtoLens.Field.field @"notRule"
orIds ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "orIds" a) =>
  Lens.Family2.LensLike' f s a
orIds = Data.ProtoLens.Field.field @"orIds"
orRules ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "orRules" a) =>
  Lens.Family2.LensLike' f s a
orRules = Data.ProtoLens.Field.field @"orRules"
permissions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "permissions" a) =>
  Lens.Family2.LensLike' f s a
permissions = Data.ProtoLens.Field.field @"permissions"
policies ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "policies" a) =>
  Lens.Family2.LensLike' f s a
policies = Data.ProtoLens.Field.field @"policies"
principalName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "principalName" a) =>
  Lens.Family2.LensLike' f s a
principalName = Data.ProtoLens.Field.field @"principalName"
principals ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "principals" a) =>
  Lens.Family2.LensLike' f s a
principals = Data.ProtoLens.Field.field @"principals"
remoteIp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "remoteIp" a) =>
  Lens.Family2.LensLike' f s a
remoteIp = Data.ProtoLens.Field.field @"remoteIp"
requestedServerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requestedServerName" a) =>
  Lens.Family2.LensLike' f s a
requestedServerName
  = Data.ProtoLens.Field.field @"requestedServerName"
rules ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rules" a) =>
  Lens.Family2.LensLike' f s a
rules = Data.ProtoLens.Field.field @"rules"
sourceIp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceIp" a) =>
  Lens.Family2.LensLike' f s a
sourceIp = Data.ProtoLens.Field.field @"sourceIp"
urlPath ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "urlPath" a) =>
  Lens.Family2.LensLike' f s a
urlPath = Data.ProtoLens.Field.field @"urlPath"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'ids ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'ids" a) =>
  Lens.Family2.LensLike' f s a
vec'ids = Data.ProtoLens.Field.field @"vec'ids"
vec'permissions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'permissions" a) =>
  Lens.Family2.LensLike' f s a
vec'permissions = Data.ProtoLens.Field.field @"vec'permissions"
vec'principals ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'principals" a) =>
  Lens.Family2.LensLike' f s a
vec'principals = Data.ProtoLens.Field.field @"vec'principals"
vec'rules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'rules" a) =>
  Lens.Family2.LensLike' f s a
vec'rules = Data.ProtoLens.Field.field @"vec'rules"