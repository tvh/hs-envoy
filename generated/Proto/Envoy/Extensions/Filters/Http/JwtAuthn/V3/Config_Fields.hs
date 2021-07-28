{- This file was auto-generated from envoy/extensions/filters/http/jwt_authn/v3/config.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.Filters.Http.JwtAuthn.V3.Config_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Envoy.Config.Core.V3.HttpUri
import qualified Proto.Envoy.Config.Route.V3.RouteComponents
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Empty
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
allowMissing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowMissing" a) =>
  Lens.Family2.LensLike' f s a
allowMissing = Data.ProtoLens.Field.field @"allowMissing"
allowMissingOrFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowMissingOrFailed" a) =>
  Lens.Family2.LensLike' f s a
allowMissingOrFailed
  = Data.ProtoLens.Field.field @"allowMissingOrFailed"
asyncFetch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "asyncFetch" a) =>
  Lens.Family2.LensLike' f s a
asyncFetch = Data.ProtoLens.Field.field @"asyncFetch"
audiences ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "audiences" a) =>
  Lens.Family2.LensLike' f s a
audiences = Data.ProtoLens.Field.field @"audiences"
bypassCorsPreflight ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bypassCorsPreflight" a) =>
  Lens.Family2.LensLike' f s a
bypassCorsPreflight
  = Data.ProtoLens.Field.field @"bypassCorsPreflight"
cacheDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cacheDuration" a) =>
  Lens.Family2.LensLike' f s a
cacheDuration = Data.ProtoLens.Field.field @"cacheDuration"
clockSkewSeconds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clockSkewSeconds" a) =>
  Lens.Family2.LensLike' f s a
clockSkewSeconds = Data.ProtoLens.Field.field @"clockSkewSeconds"
disabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disabled" a) =>
  Lens.Family2.LensLike' f s a
disabled = Data.ProtoLens.Field.field @"disabled"
fastListener ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fastListener" a) =>
  Lens.Family2.LensLike' f s a
fastListener = Data.ProtoLens.Field.field @"fastListener"
filterStateRules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterStateRules" a) =>
  Lens.Family2.LensLike' f s a
filterStateRules = Data.ProtoLens.Field.field @"filterStateRules"
forward ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "forward" a) =>
  Lens.Family2.LensLike' f s a
forward = Data.ProtoLens.Field.field @"forward"
forwardPayloadHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "forwardPayloadHeader" a) =>
  Lens.Family2.LensLike' f s a
forwardPayloadHeader
  = Data.ProtoLens.Field.field @"forwardPayloadHeader"
fromHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fromHeaders" a) =>
  Lens.Family2.LensLike' f s a
fromHeaders = Data.ProtoLens.Field.field @"fromHeaders"
fromParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fromParams" a) =>
  Lens.Family2.LensLike' f s a
fromParams = Data.ProtoLens.Field.field @"fromParams"
httpUri ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "httpUri" a) =>
  Lens.Family2.LensLike' f s a
httpUri = Data.ProtoLens.Field.field @"httpUri"
issuer ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "issuer" a) =>
  Lens.Family2.LensLike' f s a
issuer = Data.ProtoLens.Field.field @"issuer"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
localJwks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "localJwks" a) =>
  Lens.Family2.LensLike' f s a
localJwks = Data.ProtoLens.Field.field @"localJwks"
match ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "match" a) =>
  Lens.Family2.LensLike' f s a
match = Data.ProtoLens.Field.field @"match"
maybe'allowMissing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allowMissing" a) =>
  Lens.Family2.LensLike' f s a
maybe'allowMissing
  = Data.ProtoLens.Field.field @"maybe'allowMissing"
maybe'allowMissingOrFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allowMissingOrFailed" a) =>
  Lens.Family2.LensLike' f s a
maybe'allowMissingOrFailed
  = Data.ProtoLens.Field.field @"maybe'allowMissingOrFailed"
maybe'asyncFetch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'asyncFetch" a) =>
  Lens.Family2.LensLike' f s a
maybe'asyncFetch = Data.ProtoLens.Field.field @"maybe'asyncFetch"
maybe'cacheDuration ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cacheDuration" a) =>
  Lens.Family2.LensLike' f s a
maybe'cacheDuration
  = Data.ProtoLens.Field.field @"maybe'cacheDuration"
maybe'disabled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'disabled" a) =>
  Lens.Family2.LensLike' f s a
maybe'disabled = Data.ProtoLens.Field.field @"maybe'disabled"
maybe'filterStateRules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterStateRules" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterStateRules
  = Data.ProtoLens.Field.field @"maybe'filterStateRules"
maybe'httpUri ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'httpUri" a) =>
  Lens.Family2.LensLike' f s a
maybe'httpUri = Data.ProtoLens.Field.field @"maybe'httpUri"
maybe'jwksSourceSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'jwksSourceSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'jwksSourceSpecifier
  = Data.ProtoLens.Field.field @"maybe'jwksSourceSpecifier"
maybe'localJwks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localJwks" a) =>
  Lens.Family2.LensLike' f s a
maybe'localJwks = Data.ProtoLens.Field.field @"maybe'localJwks"
maybe'match ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'match" a) =>
  Lens.Family2.LensLike' f s a
maybe'match = Data.ProtoLens.Field.field @"maybe'match"
maybe'providerAndAudiences ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'providerAndAudiences" a) =>
  Lens.Family2.LensLike' f s a
maybe'providerAndAudiences
  = Data.ProtoLens.Field.field @"maybe'providerAndAudiences"
maybe'providerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'providerName" a) =>
  Lens.Family2.LensLike' f s a
maybe'providerName
  = Data.ProtoLens.Field.field @"maybe'providerName"
maybe'remoteJwks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'remoteJwks" a) =>
  Lens.Family2.LensLike' f s a
maybe'remoteJwks = Data.ProtoLens.Field.field @"maybe'remoteJwks"
maybe'requirementName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requirementName" a) =>
  Lens.Family2.LensLike' f s a
maybe'requirementName
  = Data.ProtoLens.Field.field @"maybe'requirementName"
maybe'requirementSpecifier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requirementSpecifier" a) =>
  Lens.Family2.LensLike' f s a
maybe'requirementSpecifier
  = Data.ProtoLens.Field.field @"maybe'requirementSpecifier"
maybe'requirementType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requirementType" a) =>
  Lens.Family2.LensLike' f s a
maybe'requirementType
  = Data.ProtoLens.Field.field @"maybe'requirementType"
maybe'requires ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requires" a) =>
  Lens.Family2.LensLike' f s a
maybe'requires = Data.ProtoLens.Field.field @"maybe'requires"
maybe'requiresAll ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requiresAll" a) =>
  Lens.Family2.LensLike' f s a
maybe'requiresAll = Data.ProtoLens.Field.field @"maybe'requiresAll"
maybe'requiresAny ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requiresAny" a) =>
  Lens.Family2.LensLike' f s a
maybe'requiresAny = Data.ProtoLens.Field.field @"maybe'requiresAny"
maybe'requiresType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requiresType" a) =>
  Lens.Family2.LensLike' f s a
maybe'requiresType
  = Data.ProtoLens.Field.field @"maybe'requiresType"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
padForwardPayloadHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "padForwardPayloadHeader" a) =>
  Lens.Family2.LensLike' f s a
padForwardPayloadHeader
  = Data.ProtoLens.Field.field @"padForwardPayloadHeader"
payloadInMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "payloadInMetadata" a) =>
  Lens.Family2.LensLike' f s a
payloadInMetadata = Data.ProtoLens.Field.field @"payloadInMetadata"
providerAndAudiences ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "providerAndAudiences" a) =>
  Lens.Family2.LensLike' f s a
providerAndAudiences
  = Data.ProtoLens.Field.field @"providerAndAudiences"
providerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "providerName" a) =>
  Lens.Family2.LensLike' f s a
providerName = Data.ProtoLens.Field.field @"providerName"
providers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "providers" a) =>
  Lens.Family2.LensLike' f s a
providers = Data.ProtoLens.Field.field @"providers"
remoteJwks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "remoteJwks" a) =>
  Lens.Family2.LensLike' f s a
remoteJwks = Data.ProtoLens.Field.field @"remoteJwks"
requirementMap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requirementMap" a) =>
  Lens.Family2.LensLike' f s a
requirementMap = Data.ProtoLens.Field.field @"requirementMap"
requirementName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requirementName" a) =>
  Lens.Family2.LensLike' f s a
requirementName = Data.ProtoLens.Field.field @"requirementName"
requirements ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requirements" a) =>
  Lens.Family2.LensLike' f s a
requirements = Data.ProtoLens.Field.field @"requirements"
requires ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requires" a) =>
  Lens.Family2.LensLike' f s a
requires = Data.ProtoLens.Field.field @"requires"
requiresAll ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requiresAll" a) =>
  Lens.Family2.LensLike' f s a
requiresAll = Data.ProtoLens.Field.field @"requiresAll"
requiresAny ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requiresAny" a) =>
  Lens.Family2.LensLike' f s a
requiresAny = Data.ProtoLens.Field.field @"requiresAny"
rules ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rules" a) =>
  Lens.Family2.LensLike' f s a
rules = Data.ProtoLens.Field.field @"rules"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
valuePrefix ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "valuePrefix" a) =>
  Lens.Family2.LensLike' f s a
valuePrefix = Data.ProtoLens.Field.field @"valuePrefix"
vec'audiences ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'audiences" a) =>
  Lens.Family2.LensLike' f s a
vec'audiences = Data.ProtoLens.Field.field @"vec'audiences"
vec'fromHeaders ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fromHeaders" a) =>
  Lens.Family2.LensLike' f s a
vec'fromHeaders = Data.ProtoLens.Field.field @"vec'fromHeaders"
vec'fromParams ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fromParams" a) =>
  Lens.Family2.LensLike' f s a
vec'fromParams = Data.ProtoLens.Field.field @"vec'fromParams"
vec'requirements ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'requirements" a) =>
  Lens.Family2.LensLike' f s a
vec'requirements = Data.ProtoLens.Field.field @"vec'requirements"
vec'rules ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'rules" a) =>
  Lens.Family2.LensLike' f s a
vec'rules = Data.ProtoLens.Field.field @"vec'rules"