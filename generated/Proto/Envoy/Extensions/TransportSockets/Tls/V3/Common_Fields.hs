{- This file was auto-generated from envoy/extensions/transport_sockets/tls/v3/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields where
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
import qualified Proto.Envoy.Config.Core.V3.Extension
import qualified Proto.Envoy.Type.Matcher.V3.String
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Sensitive
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
allowExpiredCertificate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allowExpiredCertificate" a) =>
  Lens.Family2.LensLike' f s a
allowExpiredCertificate
  = Data.ProtoLens.Field.field @"allowExpiredCertificate"
certificateChain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "certificateChain" a) =>
  Lens.Family2.LensLike' f s a
certificateChain = Data.ProtoLens.Field.field @"certificateChain"
cipherSuites ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cipherSuites" a) =>
  Lens.Family2.LensLike' f s a
cipherSuites = Data.ProtoLens.Field.field @"cipherSuites"
crl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "crl" a) =>
  Lens.Family2.LensLike' f s a
crl = Data.ProtoLens.Field.field @"crl"
customValidatorConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "customValidatorConfig" a) =>
  Lens.Family2.LensLike' f s a
customValidatorConfig
  = Data.ProtoLens.Field.field @"customValidatorConfig"
ecdhCurves ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ecdhCurves" a) =>
  Lens.Family2.LensLike' f s a
ecdhCurves = Data.ProtoLens.Field.field @"ecdhCurves"
keys ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "keys" a) =>
  Lens.Family2.LensLike' f s a
keys = Data.ProtoLens.Field.field @"keys"
matchSubjectAltNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "matchSubjectAltNames" a) =>
  Lens.Family2.LensLike' f s a
matchSubjectAltNames
  = Data.ProtoLens.Field.field @"matchSubjectAltNames"
maybe'certificateChain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'certificateChain" a) =>
  Lens.Family2.LensLike' f s a
maybe'certificateChain
  = Data.ProtoLens.Field.field @"maybe'certificateChain"
maybe'configType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'configType" a) =>
  Lens.Family2.LensLike' f s a
maybe'configType = Data.ProtoLens.Field.field @"maybe'configType"
maybe'crl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'crl" a) =>
  Lens.Family2.LensLike' f s a
maybe'crl = Data.ProtoLens.Field.field @"maybe'crl"
maybe'customValidatorConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'customValidatorConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'customValidatorConfig
  = Data.ProtoLens.Field.field @"maybe'customValidatorConfig"
maybe'ocspStaple ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ocspStaple" a) =>
  Lens.Family2.LensLike' f s a
maybe'ocspStaple = Data.ProtoLens.Field.field @"maybe'ocspStaple"
maybe'password ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'password" a) =>
  Lens.Family2.LensLike' f s a
maybe'password = Data.ProtoLens.Field.field @"maybe'password"
maybe'privateKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'privateKey" a) =>
  Lens.Family2.LensLike' f s a
maybe'privateKey = Data.ProtoLens.Field.field @"maybe'privateKey"
maybe'privateKeyProvider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'privateKeyProvider" a) =>
  Lens.Family2.LensLike' f s a
maybe'privateKeyProvider
  = Data.ProtoLens.Field.field @"maybe'privateKeyProvider"
maybe'requireSignedCertificateTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'requireSignedCertificateTimestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'requireSignedCertificateTimestamp
  = Data.ProtoLens.Field.field
      @"maybe'requireSignedCertificateTimestamp"
maybe'trustedCa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustedCa" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustedCa = Data.ProtoLens.Field.field @"maybe'trustedCa"
maybe'typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'typedConfig" a) =>
  Lens.Family2.LensLike' f s a
maybe'typedConfig = Data.ProtoLens.Field.field @"maybe'typedConfig"
maybe'watchedDirectory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'watchedDirectory" a) =>
  Lens.Family2.LensLike' f s a
maybe'watchedDirectory
  = Data.ProtoLens.Field.field @"maybe'watchedDirectory"
ocspStaple ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ocspStaple" a) =>
  Lens.Family2.LensLike' f s a
ocspStaple = Data.ProtoLens.Field.field @"ocspStaple"
password ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "password" a) =>
  Lens.Family2.LensLike' f s a
password = Data.ProtoLens.Field.field @"password"
privateKey ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "privateKey" a) =>
  Lens.Family2.LensLike' f s a
privateKey = Data.ProtoLens.Field.field @"privateKey"
privateKeyProvider ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "privateKeyProvider" a) =>
  Lens.Family2.LensLike' f s a
privateKeyProvider
  = Data.ProtoLens.Field.field @"privateKeyProvider"
providerName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "providerName" a) =>
  Lens.Family2.LensLike' f s a
providerName = Data.ProtoLens.Field.field @"providerName"
requireSignedCertificateTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "requireSignedCertificateTimestamp" a) =>
  Lens.Family2.LensLike' f s a
requireSignedCertificateTimestamp
  = Data.ProtoLens.Field.field @"requireSignedCertificateTimestamp"
signedCertificateTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signedCertificateTimestamp" a) =>
  Lens.Family2.LensLike' f s a
signedCertificateTimestamp
  = Data.ProtoLens.Field.field @"signedCertificateTimestamp"
tlsMaximumProtocolVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsMaximumProtocolVersion" a) =>
  Lens.Family2.LensLike' f s a
tlsMaximumProtocolVersion
  = Data.ProtoLens.Field.field @"tlsMaximumProtocolVersion"
tlsMinimumProtocolVersion ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tlsMinimumProtocolVersion" a) =>
  Lens.Family2.LensLike' f s a
tlsMinimumProtocolVersion
  = Data.ProtoLens.Field.field @"tlsMinimumProtocolVersion"
trustChainVerification ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustChainVerification" a) =>
  Lens.Family2.LensLike' f s a
trustChainVerification
  = Data.ProtoLens.Field.field @"trustChainVerification"
trustedCa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustedCa" a) =>
  Lens.Family2.LensLike' f s a
trustedCa = Data.ProtoLens.Field.field @"trustedCa"
typedConfig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "typedConfig" a) =>
  Lens.Family2.LensLike' f s a
typedConfig = Data.ProtoLens.Field.field @"typedConfig"
vec'cipherSuites ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'cipherSuites" a) =>
  Lens.Family2.LensLike' f s a
vec'cipherSuites = Data.ProtoLens.Field.field @"vec'cipherSuites"
vec'ecdhCurves ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'ecdhCurves" a) =>
  Lens.Family2.LensLike' f s a
vec'ecdhCurves = Data.ProtoLens.Field.field @"vec'ecdhCurves"
vec'keys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'keys" a) =>
  Lens.Family2.LensLike' f s a
vec'keys = Data.ProtoLens.Field.field @"vec'keys"
vec'matchSubjectAltNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'matchSubjectAltNames" a) =>
  Lens.Family2.LensLike' f s a
vec'matchSubjectAltNames
  = Data.ProtoLens.Field.field @"vec'matchSubjectAltNames"
vec'signedCertificateTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'signedCertificateTimestamp" a) =>
  Lens.Family2.LensLike' f s a
vec'signedCertificateTimestamp
  = Data.ProtoLens.Field.field @"vec'signedCertificateTimestamp"
vec'verifyCertificateHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'verifyCertificateHash" a) =>
  Lens.Family2.LensLike' f s a
vec'verifyCertificateHash
  = Data.ProtoLens.Field.field @"vec'verifyCertificateHash"
vec'verifyCertificateSpki ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'verifyCertificateSpki" a) =>
  Lens.Family2.LensLike' f s a
vec'verifyCertificateSpki
  = Data.ProtoLens.Field.field @"vec'verifyCertificateSpki"
verifyCertificateHash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "verifyCertificateHash" a) =>
  Lens.Family2.LensLike' f s a
verifyCertificateHash
  = Data.ProtoLens.Field.field @"verifyCertificateHash"
verifyCertificateSpki ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "verifyCertificateSpki" a) =>
  Lens.Family2.LensLike' f s a
verifyCertificateSpki
  = Data.ProtoLens.Field.field @"verifyCertificateSpki"
watchedDirectory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "watchedDirectory" a) =>
  Lens.Family2.LensLike' f s a
watchedDirectory = Data.ProtoLens.Field.field @"watchedDirectory"