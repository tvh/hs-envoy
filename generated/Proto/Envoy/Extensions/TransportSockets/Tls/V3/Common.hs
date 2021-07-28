{- This file was auto-generated from envoy/extensions/transport_sockets/tls/v3/common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common (
        CertificateValidationContext(),
        CertificateValidationContext'TrustChainVerification(..),
        CertificateValidationContext'TrustChainVerification(),
        CertificateValidationContext'TrustChainVerification'UnrecognizedValue,
        PrivateKeyProvider(), PrivateKeyProvider'ConfigType(..),
        _PrivateKeyProvider'TypedConfig, TlsCertificate(), TlsParameters(),
        TlsParameters'TlsProtocol(..), TlsParameters'TlsProtocol(),
        TlsParameters'TlsProtocol'UnrecognizedValue, TlsSessionTicketKeys()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
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
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.trustedCa' @:: Lens' CertificateValidationContext Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'trustedCa' @:: Lens' CertificateValidationContext (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.watchedDirectory' @:: Lens' CertificateValidationContext Proto.Envoy.Config.Core.V3.Base.WatchedDirectory@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'watchedDirectory' @:: Lens' CertificateValidationContext (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.WatchedDirectory)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.verifyCertificateSpki' @:: Lens' CertificateValidationContext [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.vec'verifyCertificateSpki' @:: Lens' CertificateValidationContext (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.verifyCertificateHash' @:: Lens' CertificateValidationContext [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.vec'verifyCertificateHash' @:: Lens' CertificateValidationContext (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.matchSubjectAltNames' @:: Lens' CertificateValidationContext [Proto.Envoy.Type.Matcher.V3.String.StringMatcher]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.vec'matchSubjectAltNames' @:: Lens' CertificateValidationContext (Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.requireSignedCertificateTimestamp' @:: Lens' CertificateValidationContext Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'requireSignedCertificateTimestamp' @:: Lens' CertificateValidationContext (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.crl' @:: Lens' CertificateValidationContext Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'crl' @:: Lens' CertificateValidationContext (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.allowExpiredCertificate' @:: Lens' CertificateValidationContext Prelude.Bool@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.trustChainVerification' @:: Lens' CertificateValidationContext CertificateValidationContext'TrustChainVerification@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.customValidatorConfig' @:: Lens' CertificateValidationContext Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'customValidatorConfig' @:: Lens' CertificateValidationContext (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)@ -}
data CertificateValidationContext
  = CertificateValidationContext'_constructor {_CertificateValidationContext'trustedCa :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                               _CertificateValidationContext'watchedDirectory :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.WatchedDirectory),
                                               _CertificateValidationContext'verifyCertificateSpki :: !(Data.Vector.Vector Data.Text.Text),
                                               _CertificateValidationContext'verifyCertificateHash :: !(Data.Vector.Vector Data.Text.Text),
                                               _CertificateValidationContext'matchSubjectAltNames :: !(Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher),
                                               _CertificateValidationContext'requireSignedCertificateTimestamp :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                               _CertificateValidationContext'crl :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                               _CertificateValidationContext'allowExpiredCertificate :: !Prelude.Bool,
                                               _CertificateValidationContext'trustChainVerification :: !CertificateValidationContext'TrustChainVerification,
                                               _CertificateValidationContext'customValidatorConfig :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig),
                                               _CertificateValidationContext'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CertificateValidationContext where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CertificateValidationContext "trustedCa" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'trustedCa
           (\ x__ y__ -> x__ {_CertificateValidationContext'trustedCa = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CertificateValidationContext "maybe'trustedCa" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'trustedCa
           (\ x__ y__ -> x__ {_CertificateValidationContext'trustedCa = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateValidationContext "watchedDirectory" Proto.Envoy.Config.Core.V3.Base.WatchedDirectory where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'watchedDirectory
           (\ x__ y__
              -> x__ {_CertificateValidationContext'watchedDirectory = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CertificateValidationContext "maybe'watchedDirectory" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.WatchedDirectory) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'watchedDirectory
           (\ x__ y__
              -> x__ {_CertificateValidationContext'watchedDirectory = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateValidationContext "verifyCertificateSpki" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'verifyCertificateSpki
           (\ x__ y__
              -> x__
                   {_CertificateValidationContext'verifyCertificateSpki = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CertificateValidationContext "vec'verifyCertificateSpki" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'verifyCertificateSpki
           (\ x__ y__
              -> x__
                   {_CertificateValidationContext'verifyCertificateSpki = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateValidationContext "verifyCertificateHash" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'verifyCertificateHash
           (\ x__ y__
              -> x__
                   {_CertificateValidationContext'verifyCertificateHash = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CertificateValidationContext "vec'verifyCertificateHash" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'verifyCertificateHash
           (\ x__ y__
              -> x__
                   {_CertificateValidationContext'verifyCertificateHash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateValidationContext "matchSubjectAltNames" [Proto.Envoy.Type.Matcher.V3.String.StringMatcher] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'matchSubjectAltNames
           (\ x__ y__
              -> x__ {_CertificateValidationContext'matchSubjectAltNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CertificateValidationContext "vec'matchSubjectAltNames" (Data.Vector.Vector Proto.Envoy.Type.Matcher.V3.String.StringMatcher) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'matchSubjectAltNames
           (\ x__ y__
              -> x__ {_CertificateValidationContext'matchSubjectAltNames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateValidationContext "requireSignedCertificateTimestamp" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'requireSignedCertificateTimestamp
           (\ x__ y__
              -> x__
                   {_CertificateValidationContext'requireSignedCertificateTimestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CertificateValidationContext "maybe'requireSignedCertificateTimestamp" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'requireSignedCertificateTimestamp
           (\ x__ y__
              -> x__
                   {_CertificateValidationContext'requireSignedCertificateTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateValidationContext "crl" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'crl
           (\ x__ y__ -> x__ {_CertificateValidationContext'crl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CertificateValidationContext "maybe'crl" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'crl
           (\ x__ y__ -> x__ {_CertificateValidationContext'crl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateValidationContext "allowExpiredCertificate" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'allowExpiredCertificate
           (\ x__ y__
              -> x__
                   {_CertificateValidationContext'allowExpiredCertificate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateValidationContext "trustChainVerification" CertificateValidationContext'TrustChainVerification where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'trustChainVerification
           (\ x__ y__
              -> x__
                   {_CertificateValidationContext'trustChainVerification = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CertificateValidationContext "customValidatorConfig" Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'customValidatorConfig
           (\ x__ y__
              -> x__
                   {_CertificateValidationContext'customValidatorConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CertificateValidationContext "maybe'customValidatorConfig" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CertificateValidationContext'customValidatorConfig
           (\ x__ y__
              -> x__
                   {_CertificateValidationContext'customValidatorConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message CertificateValidationContext where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext"
  packedMessageDescriptor _
    = "\n\
      \\FSCertificateValidationContext\DC2?\n\
      \\n\
      \trusted_ca\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\ttrustedCa\DC2S\n\
      \\DC1watched_directory\CAN\v \SOH(\v2&.envoy.config.core.v3.WatchedDirectoryR\DLEwatchedDirectory\DC2F\n\
      \\ETBverify_certificate_spki\CAN\ETX \ETX(\tR\NAKverifyCertificateSpkiB\SO\250B\v\146\SOH\b\"\ACKr\EOT\DLE,(,\DC2F\n\
      \\ETBverify_certificate_hash\CAN\STX \ETX(\tR\NAKverifyCertificateHashB\SO\250B\v\146\SOH\b\"\ACKr\EOT\DLE@(_\DC2[\n\
      \\ETBmatch_subject_alt_names\CAN\t \ETX(\v2$.envoy.type.matcher.v3.StringMatcherR\DC4matchSubjectAltNames\DC2k\n\
      \$require_signed_certificate_timestamp\CAN\ACK \SOH(\v2\SUB.google.protobuf.BoolValueR!requireSignedCertificateTimestamp\DC22\n\
      \\ETXcrl\CAN\a \SOH(\v2 .envoy.config.core.v3.DataSourceR\ETXcrl\DC2:\n\
      \\EMallow_expired_certificate\CAN\b \SOH(\bR\ETBallowExpiredCertificate\DC2\162\SOH\n\
      \\CANtrust_chain_verification\CAN\n\
      \ \SOH(\SO2^.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext.TrustChainVerificationR\SYNtrustChainVerificationB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2b\n\
      \\ETBcustom_validator_config\CAN\f \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\NAKcustomValidatorConfig\"F\n\
      \\SYNTrustChainVerification\DC2\SYN\n\
      \\DC2VERIFY_TRUST_CHAIN\DLE\NUL\DC2\DC4\n\
      \\DLEACCEPT_UNTRUSTED\DLE\SOH:5\154\197\136\RS0\n\
      \.envoy.api.v2.auth.CertificateValidationContextJ\EOT\b\EOT\DLE\ENQJ\EOT\b\ENQ\DLE\ACKR\ETBverify_subject_alt_name"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        trustedCa__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trusted_ca"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trustedCa")) ::
              Data.ProtoLens.FieldDescriptor CertificateValidationContext
        watchedDirectory__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "watched_directory"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.WatchedDirectory)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'watchedDirectory")) ::
              Data.ProtoLens.FieldDescriptor CertificateValidationContext
        verifyCertificateSpki__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "verify_certificate_spki"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"verifyCertificateSpki")) ::
              Data.ProtoLens.FieldDescriptor CertificateValidationContext
        verifyCertificateHash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "verify_certificate_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"verifyCertificateHash")) ::
              Data.ProtoLens.FieldDescriptor CertificateValidationContext
        matchSubjectAltNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "match_subject_alt_names"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Type.Matcher.V3.String.StringMatcher)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"matchSubjectAltNames")) ::
              Data.ProtoLens.FieldDescriptor CertificateValidationContext
        requireSignedCertificateTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "require_signed_certificate_timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'requireSignedCertificateTimestamp")) ::
              Data.ProtoLens.FieldDescriptor CertificateValidationContext
        crl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crl"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'crl")) ::
              Data.ProtoLens.FieldDescriptor CertificateValidationContext
        allowExpiredCertificate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "allow_expired_certificate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"allowExpiredCertificate")) ::
              Data.ProtoLens.FieldDescriptor CertificateValidationContext
        trustChainVerification__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trust_chain_verification"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor CertificateValidationContext'TrustChainVerification)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"trustChainVerification")) ::
              Data.ProtoLens.FieldDescriptor CertificateValidationContext
        customValidatorConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "custom_validator_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Extension.TypedExtensionConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'customValidatorConfig")) ::
              Data.ProtoLens.FieldDescriptor CertificateValidationContext
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, trustedCa__field_descriptor),
           (Data.ProtoLens.Tag 11, watchedDirectory__field_descriptor),
           (Data.ProtoLens.Tag 3, verifyCertificateSpki__field_descriptor),
           (Data.ProtoLens.Tag 2, verifyCertificateHash__field_descriptor),
           (Data.ProtoLens.Tag 9, matchSubjectAltNames__field_descriptor),
           (Data.ProtoLens.Tag 6, 
            requireSignedCertificateTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 7, crl__field_descriptor),
           (Data.ProtoLens.Tag 8, allowExpiredCertificate__field_descriptor),
           (Data.ProtoLens.Tag 10, trustChainVerification__field_descriptor),
           (Data.ProtoLens.Tag 12, customValidatorConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CertificateValidationContext'_unknownFields
        (\ x__ y__
           -> x__ {_CertificateValidationContext'_unknownFields = y__})
  defMessage
    = CertificateValidationContext'_constructor
        {_CertificateValidationContext'trustedCa = Prelude.Nothing,
         _CertificateValidationContext'watchedDirectory = Prelude.Nothing,
         _CertificateValidationContext'verifyCertificateSpki = Data.Vector.Generic.empty,
         _CertificateValidationContext'verifyCertificateHash = Data.Vector.Generic.empty,
         _CertificateValidationContext'matchSubjectAltNames = Data.Vector.Generic.empty,
         _CertificateValidationContext'requireSignedCertificateTimestamp = Prelude.Nothing,
         _CertificateValidationContext'crl = Prelude.Nothing,
         _CertificateValidationContext'allowExpiredCertificate = Data.ProtoLens.fieldDefault,
         _CertificateValidationContext'trustChainVerification = Data.ProtoLens.fieldDefault,
         _CertificateValidationContext'customValidatorConfig = Prelude.Nothing,
         _CertificateValidationContext'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CertificateValidationContext
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Type.Matcher.V3.String.StringMatcher
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                   -> Data.ProtoLens.Encoding.Bytes.Parser CertificateValidationContext
        loop
          x
          mutable'matchSubjectAltNames
          mutable'verifyCertificateHash
          mutable'verifyCertificateSpki
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'matchSubjectAltNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'matchSubjectAltNames)
                      frozen'verifyCertificateHash <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'verifyCertificateHash)
                      frozen'verifyCertificateSpki <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                           mutable'verifyCertificateSpki)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'matchSubjectAltNames")
                              frozen'matchSubjectAltNames
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'verifyCertificateHash")
                                 frozen'verifyCertificateHash
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'verifyCertificateSpki")
                                    frozen'verifyCertificateSpki
                                    x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "trusted_ca"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"trustedCa") y x)
                                  mutable'matchSubjectAltNames
                                  mutable'verifyCertificateHash
                                  mutable'verifyCertificateSpki
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "watched_directory"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"watchedDirectory") y x)
                                  mutable'matchSubjectAltNames
                                  mutable'verifyCertificateHash
                                  mutable'verifyCertificateSpki
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "verify_certificate_spki"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'verifyCertificateSpki y)
                                loop x mutable'matchSubjectAltNames mutable'verifyCertificateHash v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "verify_certificate_hash"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'verifyCertificateHash y)
                                loop x mutable'matchSubjectAltNames v mutable'verifyCertificateSpki
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "match_subject_alt_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'matchSubjectAltNames y)
                                loop
                                  x v mutable'verifyCertificateHash mutable'verifyCertificateSpki
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "require_signed_certificate_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field
                                        @"requireSignedCertificateTimestamp")
                                     y
                                     x)
                                  mutable'matchSubjectAltNames
                                  mutable'verifyCertificateHash
                                  mutable'verifyCertificateSpki
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "crl"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"crl") y x)
                                  mutable'matchSubjectAltNames
                                  mutable'verifyCertificateHash
                                  mutable'verifyCertificateSpki
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "allow_expired_certificate"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"allowExpiredCertificate") y x)
                                  mutable'matchSubjectAltNames
                                  mutable'verifyCertificateHash
                                  mutable'verifyCertificateSpki
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "trust_chain_verification"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"trustChainVerification") y x)
                                  mutable'matchSubjectAltNames
                                  mutable'verifyCertificateHash
                                  mutable'verifyCertificateSpki
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "custom_validator_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"customValidatorConfig") y x)
                                  mutable'matchSubjectAltNames
                                  mutable'verifyCertificateHash
                                  mutable'verifyCertificateSpki
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'matchSubjectAltNames
                                  mutable'verifyCertificateHash
                                  mutable'verifyCertificateSpki
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'matchSubjectAltNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'verifyCertificateHash <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              mutable'verifyCertificateSpki <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'matchSubjectAltNames
                mutable'verifyCertificateHash
                mutable'verifyCertificateSpki)
          "CertificateValidationContext"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'trustedCa") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'watchedDirectory") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'verifyCertificateSpki") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.Text.Encoding.encodeUtf8
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'verifyCertificateHash") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'matchSubjectAltNames") _x))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field
                                      @"maybe'requireSignedCertificateTimestamp")
                                   _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'crl") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage
                                            _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"allowExpiredCertificate")
                                           _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (\ b -> if b then 1 else 0)
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"trustChainVerification")
                                              _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                              ((Prelude..)
                                                 ((Prelude..)
                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    Prelude.fromIntegral)
                                                 Prelude.fromEnum
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'customValidatorConfig")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage
                                                     _v))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData CertificateValidationContext where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CertificateValidationContext'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CertificateValidationContext'trustedCa x__)
                (Control.DeepSeq.deepseq
                   (_CertificateValidationContext'watchedDirectory x__)
                   (Control.DeepSeq.deepseq
                      (_CertificateValidationContext'verifyCertificateSpki x__)
                      (Control.DeepSeq.deepseq
                         (_CertificateValidationContext'verifyCertificateHash x__)
                         (Control.DeepSeq.deepseq
                            (_CertificateValidationContext'matchSubjectAltNames x__)
                            (Control.DeepSeq.deepseq
                               (_CertificateValidationContext'requireSignedCertificateTimestamp
                                  x__)
                               (Control.DeepSeq.deepseq
                                  (_CertificateValidationContext'crl x__)
                                  (Control.DeepSeq.deepseq
                                     (_CertificateValidationContext'allowExpiredCertificate x__)
                                     (Control.DeepSeq.deepseq
                                        (_CertificateValidationContext'trustChainVerification x__)
                                        (Control.DeepSeq.deepseq
                                           (_CertificateValidationContext'customValidatorConfig x__)
                                           ()))))))))))
newtype CertificateValidationContext'TrustChainVerification'UnrecognizedValue
  = CertificateValidationContext'TrustChainVerification'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data CertificateValidationContext'TrustChainVerification
  = CertificateValidationContext'VERIFY_TRUST_CHAIN |
    CertificateValidationContext'ACCEPT_UNTRUSTED |
    CertificateValidationContext'TrustChainVerification'Unrecognized !CertificateValidationContext'TrustChainVerification'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CertificateValidationContext'TrustChainVerification where
  maybeToEnum 0
    = Prelude.Just CertificateValidationContext'VERIFY_TRUST_CHAIN
  maybeToEnum 1
    = Prelude.Just CertificateValidationContext'ACCEPT_UNTRUSTED
  maybeToEnum k
    = Prelude.Just
        (CertificateValidationContext'TrustChainVerification'Unrecognized
           (CertificateValidationContext'TrustChainVerification'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum CertificateValidationContext'VERIFY_TRUST_CHAIN
    = "VERIFY_TRUST_CHAIN"
  showEnum CertificateValidationContext'ACCEPT_UNTRUSTED
    = "ACCEPT_UNTRUSTED"
  showEnum
    (CertificateValidationContext'TrustChainVerification'Unrecognized (CertificateValidationContext'TrustChainVerification'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "VERIFY_TRUST_CHAIN"
    = Prelude.Just CertificateValidationContext'VERIFY_TRUST_CHAIN
    | (Prelude.==) k "ACCEPT_UNTRUSTED"
    = Prelude.Just CertificateValidationContext'ACCEPT_UNTRUSTED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CertificateValidationContext'TrustChainVerification where
  minBound = CertificateValidationContext'VERIFY_TRUST_CHAIN
  maxBound = CertificateValidationContext'ACCEPT_UNTRUSTED
instance Prelude.Enum CertificateValidationContext'TrustChainVerification where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TrustChainVerification: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum CertificateValidationContext'VERIFY_TRUST_CHAIN = 0
  fromEnum CertificateValidationContext'ACCEPT_UNTRUSTED = 1
  fromEnum
    (CertificateValidationContext'TrustChainVerification'Unrecognized (CertificateValidationContext'TrustChainVerification'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ CertificateValidationContext'ACCEPT_UNTRUSTED
    = Prelude.error
        "CertificateValidationContext'TrustChainVerification.succ: bad argument CertificateValidationContext'ACCEPT_UNTRUSTED. This value would be out of bounds."
  succ CertificateValidationContext'VERIFY_TRUST_CHAIN
    = CertificateValidationContext'ACCEPT_UNTRUSTED
  succ
    (CertificateValidationContext'TrustChainVerification'Unrecognized _)
    = Prelude.error
        "CertificateValidationContext'TrustChainVerification.succ: bad argument: unrecognized value"
  pred CertificateValidationContext'VERIFY_TRUST_CHAIN
    = Prelude.error
        "CertificateValidationContext'TrustChainVerification.pred: bad argument CertificateValidationContext'VERIFY_TRUST_CHAIN. This value would be out of bounds."
  pred CertificateValidationContext'ACCEPT_UNTRUSTED
    = CertificateValidationContext'VERIFY_TRUST_CHAIN
  pred
    (CertificateValidationContext'TrustChainVerification'Unrecognized _)
    = Prelude.error
        "CertificateValidationContext'TrustChainVerification.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CertificateValidationContext'TrustChainVerification where
  fieldDefault = CertificateValidationContext'VERIFY_TRUST_CHAIN
instance Control.DeepSeq.NFData CertificateValidationContext'TrustChainVerification where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.providerName' @:: Lens' PrivateKeyProvider Data.Text.Text@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'configType' @:: Lens' PrivateKeyProvider (Prelude.Maybe PrivateKeyProvider'ConfigType)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'typedConfig' @:: Lens' PrivateKeyProvider (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.typedConfig' @:: Lens' PrivateKeyProvider Proto.Google.Protobuf.Any.Any@ -}
data PrivateKeyProvider
  = PrivateKeyProvider'_constructor {_PrivateKeyProvider'providerName :: !Data.Text.Text,
                                     _PrivateKeyProvider'configType :: !(Prelude.Maybe PrivateKeyProvider'ConfigType),
                                     _PrivateKeyProvider'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PrivateKeyProvider where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PrivateKeyProvider'ConfigType
  = PrivateKeyProvider'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PrivateKeyProvider "providerName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrivateKeyProvider'providerName
           (\ x__ y__ -> x__ {_PrivateKeyProvider'providerName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PrivateKeyProvider "maybe'configType" (Prelude.Maybe PrivateKeyProvider'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrivateKeyProvider'configType
           (\ x__ y__ -> x__ {_PrivateKeyProvider'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PrivateKeyProvider "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrivateKeyProvider'configType
           (\ x__ y__ -> x__ {_PrivateKeyProvider'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PrivateKeyProvider'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PrivateKeyProvider'TypedConfig y__))
instance Data.ProtoLens.Field.HasField PrivateKeyProvider "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PrivateKeyProvider'configType
           (\ x__ y__ -> x__ {_PrivateKeyProvider'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PrivateKeyProvider'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PrivateKeyProvider'TypedConfig y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message PrivateKeyProvider where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.PrivateKeyProvider"
  packedMessageDescriptor _
    = "\n\
      \\DC2PrivateKeyProvider\DC2,\n\
      \\rprovider_name\CAN\SOH \SOH(\tR\fproviderNameB\a\250B\EOTr\STX\DLE\SOH\DC2A\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\ACK\184\183\139\164\STX\SOHB\r\n\
      \\vconfig_type:+\154\197\136\RS&\n\
      \$envoy.api.v2.auth.PrivateKeyProviderJ\EOT\b\STX\DLE\ETXR\ACKconfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        providerName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "provider_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"providerName")) ::
              Data.ProtoLens.FieldDescriptor PrivateKeyProvider
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor PrivateKeyProvider
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, providerName__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PrivateKeyProvider'_unknownFields
        (\ x__ y__ -> x__ {_PrivateKeyProvider'_unknownFields = y__})
  defMessage
    = PrivateKeyProvider'_constructor
        {_PrivateKeyProvider'providerName = Data.ProtoLens.fieldDefault,
         _PrivateKeyProvider'configType = Prelude.Nothing,
         _PrivateKeyProvider'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PrivateKeyProvider
          -> Data.ProtoLens.Encoding.Bytes.Parser PrivateKeyProvider
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "provider_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"providerName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "typed_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"typedConfig") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PrivateKeyProvider"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"providerName") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8
                         _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'configType") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (PrivateKeyProvider'TypedConfig v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PrivateKeyProvider where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PrivateKeyProvider'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PrivateKeyProvider'providerName x__)
                (Control.DeepSeq.deepseq (_PrivateKeyProvider'configType x__) ()))
instance Control.DeepSeq.NFData PrivateKeyProvider'ConfigType where
  rnf (PrivateKeyProvider'TypedConfig x__) = Control.DeepSeq.rnf x__
_PrivateKeyProvider'TypedConfig ::
  Data.ProtoLens.Prism.Prism' PrivateKeyProvider'ConfigType Proto.Google.Protobuf.Any.Any
_PrivateKeyProvider'TypedConfig
  = Data.ProtoLens.Prism.prism'
      PrivateKeyProvider'TypedConfig
      (\ p__
         -> case p__ of {
              (PrivateKeyProvider'TypedConfig p__val) -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.certificateChain' @:: Lens' TlsCertificate Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'certificateChain' @:: Lens' TlsCertificate (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.privateKey' @:: Lens' TlsCertificate Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'privateKey' @:: Lens' TlsCertificate (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.watchedDirectory' @:: Lens' TlsCertificate Proto.Envoy.Config.Core.V3.Base.WatchedDirectory@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'watchedDirectory' @:: Lens' TlsCertificate (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.WatchedDirectory)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.privateKeyProvider' @:: Lens' TlsCertificate PrivateKeyProvider@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'privateKeyProvider' @:: Lens' TlsCertificate (Prelude.Maybe PrivateKeyProvider)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.password' @:: Lens' TlsCertificate Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'password' @:: Lens' TlsCertificate (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.ocspStaple' @:: Lens' TlsCertificate Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.maybe'ocspStaple' @:: Lens' TlsCertificate (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.signedCertificateTimestamp' @:: Lens' TlsCertificate [Proto.Envoy.Config.Core.V3.Base.DataSource]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.vec'signedCertificateTimestamp' @:: Lens' TlsCertificate (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.DataSource)@ -}
data TlsCertificate
  = TlsCertificate'_constructor {_TlsCertificate'certificateChain :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                 _TlsCertificate'privateKey :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                 _TlsCertificate'watchedDirectory :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.WatchedDirectory),
                                 _TlsCertificate'privateKeyProvider :: !(Prelude.Maybe PrivateKeyProvider),
                                 _TlsCertificate'password :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                 _TlsCertificate'ocspStaple :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                 _TlsCertificate'signedCertificateTimestamp :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.DataSource),
                                 _TlsCertificate'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TlsCertificate where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TlsCertificate "certificateChain" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'certificateChain
           (\ x__ y__ -> x__ {_TlsCertificate'certificateChain = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TlsCertificate "maybe'certificateChain" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'certificateChain
           (\ x__ y__ -> x__ {_TlsCertificate'certificateChain = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TlsCertificate "privateKey" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'privateKey
           (\ x__ y__ -> x__ {_TlsCertificate'privateKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TlsCertificate "maybe'privateKey" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'privateKey
           (\ x__ y__ -> x__ {_TlsCertificate'privateKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TlsCertificate "watchedDirectory" Proto.Envoy.Config.Core.V3.Base.WatchedDirectory where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'watchedDirectory
           (\ x__ y__ -> x__ {_TlsCertificate'watchedDirectory = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TlsCertificate "maybe'watchedDirectory" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.WatchedDirectory) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'watchedDirectory
           (\ x__ y__ -> x__ {_TlsCertificate'watchedDirectory = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TlsCertificate "privateKeyProvider" PrivateKeyProvider where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'privateKeyProvider
           (\ x__ y__ -> x__ {_TlsCertificate'privateKeyProvider = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TlsCertificate "maybe'privateKeyProvider" (Prelude.Maybe PrivateKeyProvider) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'privateKeyProvider
           (\ x__ y__ -> x__ {_TlsCertificate'privateKeyProvider = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TlsCertificate "password" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'password
           (\ x__ y__ -> x__ {_TlsCertificate'password = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TlsCertificate "maybe'password" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'password
           (\ x__ y__ -> x__ {_TlsCertificate'password = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TlsCertificate "ocspStaple" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'ocspStaple
           (\ x__ y__ -> x__ {_TlsCertificate'ocspStaple = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TlsCertificate "maybe'ocspStaple" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'ocspStaple
           (\ x__ y__ -> x__ {_TlsCertificate'ocspStaple = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TlsCertificate "signedCertificateTimestamp" [Proto.Envoy.Config.Core.V3.Base.DataSource] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'signedCertificateTimestamp
           (\ x__ y__
              -> x__ {_TlsCertificate'signedCertificateTimestamp = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TlsCertificate "vec'signedCertificateTimestamp" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsCertificate'signedCertificateTimestamp
           (\ x__ y__
              -> x__ {_TlsCertificate'signedCertificateTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message TlsCertificate where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.TlsCertificate"
  packedMessageDescriptor _
    = "\n\
      \\SOTlsCertificate\DC2M\n\
      \\DC1certificate_chain\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\DLEcertificateChain\DC2I\n\
      \\vprivate_key\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\n\
      \privateKeyB\ACK\184\183\139\164\STX\SOH\DC2S\n\
      \\DC1watched_directory\CAN\a \SOH(\v2&.envoy.config.core.v3.WatchedDirectoryR\DLEwatchedDirectory\DC2o\n\
      \\DC4private_key_provider\CAN\ACK \SOH(\v2=.envoy.extensions.transport_sockets.tls.v3.PrivateKeyProviderR\DC2privateKeyProvider\DC2D\n\
      \\bpassword\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceR\bpasswordB\ACK\184\183\139\164\STX\SOH\DC2A\n\
      \\vocsp_staple\CAN\EOT \SOH(\v2 .envoy.config.core.v3.DataSourceR\n\
      \ocspStaple\DC2b\n\
      \\FSsigned_certificate_timestamp\CAN\ENQ \ETX(\v2 .envoy.config.core.v3.DataSourceR\SUBsignedCertificateTimestamp:'\154\197\136\RS\"\n\
      \ envoy.api.v2.auth.TlsCertificate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        certificateChain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "certificate_chain"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'certificateChain")) ::
              Data.ProtoLens.FieldDescriptor TlsCertificate
        privateKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "private_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'privateKey")) ::
              Data.ProtoLens.FieldDescriptor TlsCertificate
        watchedDirectory__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "watched_directory"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.WatchedDirectory)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'watchedDirectory")) ::
              Data.ProtoLens.FieldDescriptor TlsCertificate
        privateKeyProvider__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "private_key_provider"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PrivateKeyProvider)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'privateKeyProvider")) ::
              Data.ProtoLens.FieldDescriptor TlsCertificate
        password__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "password"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'password")) ::
              Data.ProtoLens.FieldDescriptor TlsCertificate
        ocspStaple__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ocsp_staple"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ocspStaple")) ::
              Data.ProtoLens.FieldDescriptor TlsCertificate
        signedCertificateTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "signed_certificate_timestamp"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"signedCertificateTimestamp")) ::
              Data.ProtoLens.FieldDescriptor TlsCertificate
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, certificateChain__field_descriptor),
           (Data.ProtoLens.Tag 2, privateKey__field_descriptor),
           (Data.ProtoLens.Tag 7, watchedDirectory__field_descriptor),
           (Data.ProtoLens.Tag 6, privateKeyProvider__field_descriptor),
           (Data.ProtoLens.Tag 3, password__field_descriptor),
           (Data.ProtoLens.Tag 4, ocspStaple__field_descriptor),
           (Data.ProtoLens.Tag 5, 
            signedCertificateTimestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TlsCertificate'_unknownFields
        (\ x__ y__ -> x__ {_TlsCertificate'_unknownFields = y__})
  defMessage
    = TlsCertificate'_constructor
        {_TlsCertificate'certificateChain = Prelude.Nothing,
         _TlsCertificate'privateKey = Prelude.Nothing,
         _TlsCertificate'watchedDirectory = Prelude.Nothing,
         _TlsCertificate'privateKeyProvider = Prelude.Nothing,
         _TlsCertificate'password = Prelude.Nothing,
         _TlsCertificate'ocspStaple = Prelude.Nothing,
         _TlsCertificate'signedCertificateTimestamp = Data.Vector.Generic.empty,
         _TlsCertificate'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TlsCertificate
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.DataSource
             -> Data.ProtoLens.Encoding.Bytes.Parser TlsCertificate
        loop x mutable'signedCertificateTimestamp
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'signedCertificateTimestamp <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                mutable'signedCertificateTimestamp)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'signedCertificateTimestamp")
                              frozen'signedCertificateTimestamp
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "certificate_chain"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"certificateChain") y x)
                                  mutable'signedCertificateTimestamp
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "private_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"privateKey") y x)
                                  mutable'signedCertificateTimestamp
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "watched_directory"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"watchedDirectory") y x)
                                  mutable'signedCertificateTimestamp
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "private_key_provider"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"privateKeyProvider") y x)
                                  mutable'signedCertificateTimestamp
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "password"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"password") y x)
                                  mutable'signedCertificateTimestamp
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ocsp_staple"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ocspStaple") y x)
                                  mutable'signedCertificateTimestamp
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "signed_certificate_timestamp"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'signedCertificateTimestamp y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'signedCertificateTimestamp
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'signedCertificateTimestamp <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'signedCertificateTimestamp)
          "TlsCertificate"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'certificateChain") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'privateKey") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'watchedDirectory") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'privateKeyProvider") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'password") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.ProtoLens.encodeMessage
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'ocspStaple") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                      ((Prelude..)
                                         (\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                         Data.ProtoLens.encodeMessage
                                         _v))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage
                                             _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'signedCertificateTimestamp")
                                     _x))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData TlsCertificate where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TlsCertificate'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TlsCertificate'certificateChain x__)
                (Control.DeepSeq.deepseq
                   (_TlsCertificate'privateKey x__)
                   (Control.DeepSeq.deepseq
                      (_TlsCertificate'watchedDirectory x__)
                      (Control.DeepSeq.deepseq
                         (_TlsCertificate'privateKeyProvider x__)
                         (Control.DeepSeq.deepseq
                            (_TlsCertificate'password x__)
                            (Control.DeepSeq.deepseq
                               (_TlsCertificate'ocspStaple x__)
                               (Control.DeepSeq.deepseq
                                  (_TlsCertificate'signedCertificateTimestamp x__) ())))))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.tlsMinimumProtocolVersion' @:: Lens' TlsParameters TlsParameters'TlsProtocol@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.tlsMaximumProtocolVersion' @:: Lens' TlsParameters TlsParameters'TlsProtocol@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.cipherSuites' @:: Lens' TlsParameters [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.vec'cipherSuites' @:: Lens' TlsParameters (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.ecdhCurves' @:: Lens' TlsParameters [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.vec'ecdhCurves' @:: Lens' TlsParameters (Data.Vector.Vector Data.Text.Text)@ -}
data TlsParameters
  = TlsParameters'_constructor {_TlsParameters'tlsMinimumProtocolVersion :: !TlsParameters'TlsProtocol,
                                _TlsParameters'tlsMaximumProtocolVersion :: !TlsParameters'TlsProtocol,
                                _TlsParameters'cipherSuites :: !(Data.Vector.Vector Data.Text.Text),
                                _TlsParameters'ecdhCurves :: !(Data.Vector.Vector Data.Text.Text),
                                _TlsParameters'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TlsParameters where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TlsParameters "tlsMinimumProtocolVersion" TlsParameters'TlsProtocol where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsParameters'tlsMinimumProtocolVersion
           (\ x__ y__
              -> x__ {_TlsParameters'tlsMinimumProtocolVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TlsParameters "tlsMaximumProtocolVersion" TlsParameters'TlsProtocol where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsParameters'tlsMaximumProtocolVersion
           (\ x__ y__
              -> x__ {_TlsParameters'tlsMaximumProtocolVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TlsParameters "cipherSuites" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsParameters'cipherSuites
           (\ x__ y__ -> x__ {_TlsParameters'cipherSuites = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TlsParameters "vec'cipherSuites" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsParameters'cipherSuites
           (\ x__ y__ -> x__ {_TlsParameters'cipherSuites = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TlsParameters "ecdhCurves" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsParameters'ecdhCurves
           (\ x__ y__ -> x__ {_TlsParameters'ecdhCurves = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TlsParameters "vec'ecdhCurves" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsParameters'ecdhCurves
           (\ x__ y__ -> x__ {_TlsParameters'ecdhCurves = y__}))
        Prelude.id
instance Data.ProtoLens.Message TlsParameters where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.TlsParameters"
  packedMessageDescriptor _
    = "\n\
      \\rTlsParameters\DC2\143\SOH\n\
      \\FStls_minimum_protocol_version\CAN\SOH \SOH(\SO2D.envoy.extensions.transport_sockets.tls.v3.TlsParameters.TlsProtocolR\EMtlsMinimumProtocolVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\143\SOH\n\
      \\FStls_maximum_protocol_version\CAN\STX \SOH(\SO2D.envoy.extensions.transport_sockets.tls.v3.TlsParameters.TlsProtocolR\EMtlsMaximumProtocolVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2#\n\
      \\rcipher_suites\CAN\ETX \ETX(\tR\fcipherSuites\DC2\US\n\
      \\vecdh_curves\CAN\EOT \ETX(\tR\n\
      \ecdhCurves\"O\n\
      \\vTlsProtocol\DC2\f\n\
      \\bTLS_AUTO\DLE\NUL\DC2\v\n\
      \\aTLSv1_0\DLE\SOH\DC2\v\n\
      \\aTLSv1_1\DLE\STX\DC2\v\n\
      \\aTLSv1_2\DLE\ETX\DC2\v\n\
      \\aTLSv1_3\DLE\EOT:&\154\197\136\RS!\n\
      \\USenvoy.api.v2.auth.TlsParameters"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tlsMinimumProtocolVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_minimum_protocol_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor TlsParameters'TlsProtocol)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"tlsMinimumProtocolVersion")) ::
              Data.ProtoLens.FieldDescriptor TlsParameters
        tlsMaximumProtocolVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tls_maximum_protocol_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor TlsParameters'TlsProtocol)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"tlsMaximumProtocolVersion")) ::
              Data.ProtoLens.FieldDescriptor TlsParameters
        cipherSuites__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cipher_suites"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"cipherSuites")) ::
              Data.ProtoLens.FieldDescriptor TlsParameters
        ecdhCurves__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ecdh_curves"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"ecdhCurves")) ::
              Data.ProtoLens.FieldDescriptor TlsParameters
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, 
            tlsMinimumProtocolVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            tlsMaximumProtocolVersion__field_descriptor),
           (Data.ProtoLens.Tag 3, cipherSuites__field_descriptor),
           (Data.ProtoLens.Tag 4, ecdhCurves__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TlsParameters'_unknownFields
        (\ x__ y__ -> x__ {_TlsParameters'_unknownFields = y__})
  defMessage
    = TlsParameters'_constructor
        {_TlsParameters'tlsMinimumProtocolVersion = Data.ProtoLens.fieldDefault,
         _TlsParameters'tlsMaximumProtocolVersion = Data.ProtoLens.fieldDefault,
         _TlsParameters'cipherSuites = Data.Vector.Generic.empty,
         _TlsParameters'ecdhCurves = Data.Vector.Generic.empty,
         _TlsParameters'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TlsParameters
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser TlsParameters
        loop x mutable'cipherSuites mutable'ecdhCurves
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'cipherSuites <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'cipherSuites)
                      frozen'ecdhCurves <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'ecdhCurves)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'cipherSuites")
                              frozen'cipherSuites
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'ecdhCurves")
                                 frozen'ecdhCurves
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "tls_minimum_protocol_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tlsMinimumProtocolVersion") y x)
                                  mutable'cipherSuites
                                  mutable'ecdhCurves
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "tls_maximum_protocol_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tlsMaximumProtocolVersion") y x)
                                  mutable'cipherSuites
                                  mutable'ecdhCurves
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "cipher_suites"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'cipherSuites y)
                                loop x v mutable'ecdhCurves
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "ecdh_curves"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'ecdhCurves y)
                                loop x mutable'cipherSuites v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'cipherSuites
                                  mutable'ecdhCurves
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'cipherSuites <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'ecdhCurves <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'cipherSuites mutable'ecdhCurves)
          "TlsParameters"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"tlsMinimumProtocolVersion") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                         Prelude.fromEnum
                         _v))
             ((Data.Monoid.<>)
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"tlsMaximumProtocolVersion") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.Text.Encoding.encodeUtf8
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'cipherSuites") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.Text.Encoding.encodeUtf8
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'ecdhCurves") _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData TlsParameters where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TlsParameters'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TlsParameters'tlsMinimumProtocolVersion x__)
                (Control.DeepSeq.deepseq
                   (_TlsParameters'tlsMaximumProtocolVersion x__)
                   (Control.DeepSeq.deepseq
                      (_TlsParameters'cipherSuites x__)
                      (Control.DeepSeq.deepseq (_TlsParameters'ecdhCurves x__) ()))))
newtype TlsParameters'TlsProtocol'UnrecognizedValue
  = TlsParameters'TlsProtocol'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data TlsParameters'TlsProtocol
  = TlsParameters'TLS_AUTO |
    TlsParameters'TLSv1_0 |
    TlsParameters'TLSv1_1 |
    TlsParameters'TLSv1_2 |
    TlsParameters'TLSv1_3 |
    TlsParameters'TlsProtocol'Unrecognized !TlsParameters'TlsProtocol'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TlsParameters'TlsProtocol where
  maybeToEnum 0 = Prelude.Just TlsParameters'TLS_AUTO
  maybeToEnum 1 = Prelude.Just TlsParameters'TLSv1_0
  maybeToEnum 2 = Prelude.Just TlsParameters'TLSv1_1
  maybeToEnum 3 = Prelude.Just TlsParameters'TLSv1_2
  maybeToEnum 4 = Prelude.Just TlsParameters'TLSv1_3
  maybeToEnum k
    = Prelude.Just
        (TlsParameters'TlsProtocol'Unrecognized
           (TlsParameters'TlsProtocol'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum TlsParameters'TLS_AUTO = "TLS_AUTO"
  showEnum TlsParameters'TLSv1_0 = "TLSv1_0"
  showEnum TlsParameters'TLSv1_1 = "TLSv1_1"
  showEnum TlsParameters'TLSv1_2 = "TLSv1_2"
  showEnum TlsParameters'TLSv1_3 = "TLSv1_3"
  showEnum
    (TlsParameters'TlsProtocol'Unrecognized (TlsParameters'TlsProtocol'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "TLS_AUTO" = Prelude.Just TlsParameters'TLS_AUTO
    | (Prelude.==) k "TLSv1_0" = Prelude.Just TlsParameters'TLSv1_0
    | (Prelude.==) k "TLSv1_1" = Prelude.Just TlsParameters'TLSv1_1
    | (Prelude.==) k "TLSv1_2" = Prelude.Just TlsParameters'TLSv1_2
    | (Prelude.==) k "TLSv1_3" = Prelude.Just TlsParameters'TLSv1_3
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TlsParameters'TlsProtocol where
  minBound = TlsParameters'TLS_AUTO
  maxBound = TlsParameters'TLSv1_3
instance Prelude.Enum TlsParameters'TlsProtocol where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TlsProtocol: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum TlsParameters'TLS_AUTO = 0
  fromEnum TlsParameters'TLSv1_0 = 1
  fromEnum TlsParameters'TLSv1_1 = 2
  fromEnum TlsParameters'TLSv1_2 = 3
  fromEnum TlsParameters'TLSv1_3 = 4
  fromEnum
    (TlsParameters'TlsProtocol'Unrecognized (TlsParameters'TlsProtocol'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ TlsParameters'TLSv1_3
    = Prelude.error
        "TlsParameters'TlsProtocol.succ: bad argument TlsParameters'TLSv1_3. This value would be out of bounds."
  succ TlsParameters'TLS_AUTO = TlsParameters'TLSv1_0
  succ TlsParameters'TLSv1_0 = TlsParameters'TLSv1_1
  succ TlsParameters'TLSv1_1 = TlsParameters'TLSv1_2
  succ TlsParameters'TLSv1_2 = TlsParameters'TLSv1_3
  succ (TlsParameters'TlsProtocol'Unrecognized _)
    = Prelude.error
        "TlsParameters'TlsProtocol.succ: bad argument: unrecognized value"
  pred TlsParameters'TLS_AUTO
    = Prelude.error
        "TlsParameters'TlsProtocol.pred: bad argument TlsParameters'TLS_AUTO. This value would be out of bounds."
  pred TlsParameters'TLSv1_0 = TlsParameters'TLS_AUTO
  pred TlsParameters'TLSv1_1 = TlsParameters'TLSv1_0
  pred TlsParameters'TLSv1_2 = TlsParameters'TLSv1_1
  pred TlsParameters'TLSv1_3 = TlsParameters'TLSv1_2
  pred (TlsParameters'TlsProtocol'Unrecognized _)
    = Prelude.error
        "TlsParameters'TlsProtocol.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TlsParameters'TlsProtocol where
  fieldDefault = TlsParameters'TLS_AUTO
instance Control.DeepSeq.NFData TlsParameters'TlsProtocol where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.keys' @:: Lens' TlsSessionTicketKeys [Proto.Envoy.Config.Core.V3.Base.DataSource]@
         * 'Proto.Envoy.Extensions.TransportSockets.Tls.V3.Common_Fields.vec'keys' @:: Lens' TlsSessionTicketKeys (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.DataSource)@ -}
data TlsSessionTicketKeys
  = TlsSessionTicketKeys'_constructor {_TlsSessionTicketKeys'keys :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.DataSource),
                                       _TlsSessionTicketKeys'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TlsSessionTicketKeys where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TlsSessionTicketKeys "keys" [Proto.Envoy.Config.Core.V3.Base.DataSource] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsSessionTicketKeys'keys
           (\ x__ y__ -> x__ {_TlsSessionTicketKeys'keys = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TlsSessionTicketKeys "vec'keys" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TlsSessionTicketKeys'keys
           (\ x__ y__ -> x__ {_TlsSessionTicketKeys'keys = y__}))
        Prelude.id
instance Data.ProtoLens.Message TlsSessionTicketKeys where
  messageName _
    = Data.Text.pack
        "envoy.extensions.transport_sockets.tls.v3.TlsSessionTicketKeys"
  packedMessageDescriptor _
    = "\n\
      \\DC4TlsSessionTicketKeys\DC2D\n\
      \\EOTkeys\CAN\SOH \ETX(\v2 .envoy.config.core.v3.DataSourceR\EOTkeysB\SO\250B\ENQ\146\SOH\STX\b\SOH\184\183\139\164\STX\SOH:-\154\197\136\RS(\n\
      \&envoy.api.v2.auth.TlsSessionTicketKeys"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        keys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "keys"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"keys")) ::
              Data.ProtoLens.FieldDescriptor TlsSessionTicketKeys
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, keys__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TlsSessionTicketKeys'_unknownFields
        (\ x__ y__ -> x__ {_TlsSessionTicketKeys'_unknownFields = y__})
  defMessage
    = TlsSessionTicketKeys'_constructor
        {_TlsSessionTicketKeys'keys = Data.Vector.Generic.empty,
         _TlsSessionTicketKeys'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TlsSessionTicketKeys
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.DataSource
             -> Data.ProtoLens.Encoding.Bytes.Parser TlsSessionTicketKeys
        loop x mutable'keys
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'keys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'keys)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields
                           (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'keys") frozen'keys x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "keys"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'keys y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'keys
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'keys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'keys)
          "TlsSessionTicketKeys"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage
                           _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'keys") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TlsSessionTicketKeys where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TlsSessionTicketKeys'_unknownFields x__)
             (Control.DeepSeq.deepseq (_TlsSessionTicketKeys'keys x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \6envoy/extensions/transport_sockets/tls/v3/common.proto\DC2)envoy.extensions.transport_sockets.tls.v3\SUB\USenvoy/config/core/v3/base.proto\SUB$envoy/config/core/v3/extension.proto\SUB\"envoy/type/matcher/v3/string.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB udpa/annotations/sensitive.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\242\ETX\n\
    \\rTlsParameters\DC2\143\SOH\n\
    \\FStls_minimum_protocol_version\CAN\SOH \SOH(\SO2D.envoy.extensions.transport_sockets.tls.v3.TlsParameters.TlsProtocolR\EMtlsMinimumProtocolVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2\143\SOH\n\
    \\FStls_maximum_protocol_version\CAN\STX \SOH(\SO2D.envoy.extensions.transport_sockets.tls.v3.TlsParameters.TlsProtocolR\EMtlsMaximumProtocolVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2#\n\
    \\rcipher_suites\CAN\ETX \ETX(\tR\fcipherSuites\DC2\US\n\
    \\vecdh_curves\CAN\EOT \ETX(\tR\n\
    \ecdhCurves\"O\n\
    \\vTlsProtocol\DC2\f\n\
    \\bTLS_AUTO\DLE\NUL\DC2\v\n\
    \\aTLSv1_0\DLE\SOH\DC2\v\n\
    \\aTLSv1_1\DLE\STX\DC2\v\n\
    \\aTLSv1_2\DLE\ETX\DC2\v\n\
    \\aTLSv1_3\DLE\EOT:&\154\197\136\RS!\n\
    \\USenvoy.api.v2.auth.TlsParameters\"\207\SOH\n\
    \\DC2PrivateKeyProvider\DC2,\n\
    \\rprovider_name\CAN\SOH \SOH(\tR\fproviderNameB\a\250B\EOTr\STX\DLE\SOH\DC2A\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\ACK\184\183\139\164\STX\SOHB\r\n\
    \\vconfig_type:+\154\197\136\RS&\n\
    \$envoy.api.v2.auth.PrivateKeyProviderJ\EOT\b\STX\DLE\ETXR\ACKconfig\"\134\ENQ\n\
    \\SOTlsCertificate\DC2M\n\
    \\DC1certificate_chain\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\DLEcertificateChain\DC2I\n\
    \\vprivate_key\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\n\
    \privateKeyB\ACK\184\183\139\164\STX\SOH\DC2S\n\
    \\DC1watched_directory\CAN\a \SOH(\v2&.envoy.config.core.v3.WatchedDirectoryR\DLEwatchedDirectory\DC2o\n\
    \\DC4private_key_provider\CAN\ACK \SOH(\v2=.envoy.extensions.transport_sockets.tls.v3.PrivateKeyProviderR\DC2privateKeyProvider\DC2D\n\
    \\bpassword\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceR\bpasswordB\ACK\184\183\139\164\STX\SOH\DC2A\n\
    \\vocsp_staple\CAN\EOT \SOH(\v2 .envoy.config.core.v3.DataSourceR\n\
    \ocspStaple\DC2b\n\
    \\FSsigned_certificate_timestamp\CAN\ENQ \ETX(\v2 .envoy.config.core.v3.DataSourceR\SUBsignedCertificateTimestamp:'\154\197\136\RS\"\n\
    \ envoy.api.v2.auth.TlsCertificate\"\139\SOH\n\
    \\DC4TlsSessionTicketKeys\DC2D\n\
    \\EOTkeys\CAN\SOH \ETX(\v2 .envoy.config.core.v3.DataSourceR\EOTkeysB\SO\250B\ENQ\146\SOH\STX\b\SOH\184\183\139\164\STX\SOH:-\154\197\136\RS(\n\
    \&envoy.api.v2.auth.TlsSessionTicketKeys\"\171\b\n\
    \\FSCertificateValidationContext\DC2?\n\
    \\n\
    \trusted_ca\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\ttrustedCa\DC2S\n\
    \\DC1watched_directory\CAN\v \SOH(\v2&.envoy.config.core.v3.WatchedDirectoryR\DLEwatchedDirectory\DC2F\n\
    \\ETBverify_certificate_spki\CAN\ETX \ETX(\tR\NAKverifyCertificateSpkiB\SO\250B\v\146\SOH\b\"\ACKr\EOT\DLE,(,\DC2F\n\
    \\ETBverify_certificate_hash\CAN\STX \ETX(\tR\NAKverifyCertificateHashB\SO\250B\v\146\SOH\b\"\ACKr\EOT\DLE@(_\DC2[\n\
    \\ETBmatch_subject_alt_names\CAN\t \ETX(\v2$.envoy.type.matcher.v3.StringMatcherR\DC4matchSubjectAltNames\DC2k\n\
    \$require_signed_certificate_timestamp\CAN\ACK \SOH(\v2\SUB.google.protobuf.BoolValueR!requireSignedCertificateTimestamp\DC22\n\
    \\ETXcrl\CAN\a \SOH(\v2 .envoy.config.core.v3.DataSourceR\ETXcrl\DC2:\n\
    \\EMallow_expired_certificate\CAN\b \SOH(\bR\ETBallowExpiredCertificate\DC2\162\SOH\n\
    \\CANtrust_chain_verification\CAN\n\
    \ \SOH(\SO2^.envoy.extensions.transport_sockets.tls.v3.CertificateValidationContext.TrustChainVerificationR\SYNtrustChainVerificationB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2b\n\
    \\ETBcustom_validator_config\CAN\f \SOH(\v2*.envoy.config.core.v3.TypedExtensionConfigR\NAKcustomValidatorConfig\"F\n\
    \\SYNTrustChainVerification\DC2\SYN\n\
    \\DC2VERIFY_TRUST_CHAIN\DLE\NUL\DC2\DC4\n\
    \\DLEACCEPT_UNTRUSTED\DLE\SOH:5\154\197\136\RS0\n\
    \.envoy.api.v2.auth.CertificateValidationContextJ\EOT\b\EOT\DLE\ENQJ\EOT\b\ENQ\DLE\ACKR\ETBverify_subject_alt_nameBP\n\
    \7io.envoyproxy.envoy.extensions.transport_sockets.tls.v3B\vCommonProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\216\131\SOH\n\
    \\a\DC2\ENQ\NUL\NUL\145\ETX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL2\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL.\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL,\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL#\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL*\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL'\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULP\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NULP\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC2\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC3\NULF\n\
    \9\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL\DEL\SOH2- [#protodoc-title: Common TLS configuration]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\NAK\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\CAN\STXa\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\CAN\STXa\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\SUB\STX)\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\SUB\a\DC2\n\
    \;\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\FS\EOT\DC1\SUB, Envoy will choose the optimal TLS version.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\FS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\FS\SI\DLE\n\
    \\CAN\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\US\EOT\DLE\SUB\t TLS 1.0\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\US\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\US\SO\SI\n\
    \\CAN\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX\"\EOT\DLE\SUB\t TLS 1.1\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\"\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\"\SO\SI\n\
    \\CAN\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX%\EOT\DLE\SUB\t TLS 1.2\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX%\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX%\SO\SI\n\
    \\CAN\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\EOT\DC2\ETX(\EOT\DLE\SUB\t TLS 1.3\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETX(\EOT\v\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\STX\DC2\ETX(\SO\SI\n\
    \s\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX-\STX^\SUBf Minimum TLS protocol version. By default, it's ``TLSv1_2`` for clients and ``TLSv1_0`` for\n\
    \ servers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX-\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX-\SO*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX--.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX-/]\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\ETX-0\\\n\
    \s\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX1\STX^\SUBf Maximum TLS protocol version. By default, it's ``TLSv1_2`` for clients and ``TLSv1_3`` for\n\
    \ servers.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX1\STX\r\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX1\SO*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX1-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX1/]\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETX10\\\n\
    \\147\SO\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXm\STX$\SUB\133\SO If specified, the TLS listener will only support the specified `cipher list\n\
    \ <https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration>`_\n\
    \ when negotiating TLS 1.0-1.2 (this setting has no effect when negotiating TLS 1.3).\n\
    \\n\
    \ If not specified, a default list will be used. Defaults are different for server (downstream) and\n\
    \ client (upstream) TLS configurations.\n\
    \\n\
    \ In non-FIPS builds, the default server cipher list is:\n\
    \\n\
    \ .. code-block:: none\n\
    \\n\
    \   [ECDHE-ECDSA-AES128-GCM-SHA256|ECDHE-ECDSA-CHACHA20-POLY1305]\n\
    \   [ECDHE-RSA-AES128-GCM-SHA256|ECDHE-RSA-CHACHA20-POLY1305]\n\
    \   ECDHE-ECDSA-AES128-SHA\n\
    \   ECDHE-RSA-AES128-SHA\n\
    \   AES128-GCM-SHA256\n\
    \   AES128-SHA\n\
    \   ECDHE-ECDSA-AES256-GCM-SHA384\n\
    \   ECDHE-RSA-AES256-GCM-SHA384\n\
    \   ECDHE-ECDSA-AES256-SHA\n\
    \   ECDHE-RSA-AES256-SHA\n\
    \   AES256-GCM-SHA384\n\
    \   AES256-SHA\n\
    \\n\
    \ In builds using :ref:`BoringSSL FIPS <arch_overview_ssl_fips>`, the default server cipher list is:\n\
    \\n\
    \ .. code-block:: none\n\
    \\n\
    \   ECDHE-ECDSA-AES128-GCM-SHA256\n\
    \   ECDHE-RSA-AES128-GCM-SHA256\n\
    \   ECDHE-ECDSA-AES128-SHA\n\
    \   ECDHE-RSA-AES128-SHA\n\
    \   AES128-GCM-SHA256\n\
    \   AES128-SHA\n\
    \   ECDHE-ECDSA-AES256-GCM-SHA384\n\
    \   ECDHE-RSA-AES256-GCM-SHA384\n\
    \   ECDHE-ECDSA-AES256-SHA\n\
    \   ECDHE-RSA-AES256-SHA\n\
    \   AES256-GCM-SHA384\n\
    \   AES256-SHA\n\
    \\n\
    \ In non-FIPS builds, the default client cipher list is:\n\
    \\n\
    \ .. code-block:: none\n\
    \\n\
    \   [ECDHE-ECDSA-AES128-GCM-SHA256|ECDHE-ECDSA-CHACHA20-POLY1305]\n\
    \   [ECDHE-RSA-AES128-GCM-SHA256|ECDHE-RSA-CHACHA20-POLY1305]\n\
    \   ECDHE-ECDSA-AES256-GCM-SHA384\n\
    \   ECDHE-RSA-AES256-GCM-SHA384\n\
    \\n\
    \ In builds using :ref:`BoringSSL FIPS <arch_overview_ssl_fips>`, the default client cipher list is:\n\
    \\n\
    \ .. code-block:: none\n\
    \\n\
    \   ECDHE-ECDSA-AES128-GCM-SHA256\n\
    \   ECDHE-RSA-AES128-GCM-SHA256\n\
    \   ECDHE-ECDSA-AES256-GCM-SHA384\n\
    \   ECDHE-RSA-AES256-GCM-SHA384\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETXm\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXm\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXm\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXm\"#\n\
    \\227\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX~\STX\"\SUB\213\STX If specified, the TLS connection will only support the specified ECDH\n\
    \ curves. If not specified, the default curves will be used.\n\
    \\n\
    \ In non-FIPS builds, the default curves are:\n\
    \\n\
    \ .. code-block:: none\n\
    \\n\
    \   X25519\n\
    \   P-256\n\
    \\n\
    \ In builds using :ref:`BoringSSL FIPS <arch_overview_ssl_fips>`, the default curve is:\n\
    \\n\
    \ .. code-block:: none\n\
    \\n\
    \   P-256\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX~\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX~\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX~\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX~ !\n\
    \\252\SOH\n\
    \\STX\EOT\SOH\DC2\ACK\132\SOH\NUL\148\SOH\SOH\SUB\237\SOH BoringSSL private key method configuration. The private key methods are used for external\n\
    \ (potentially asynchronous) signing and decryption operations. Some use cases for private key\n\
    \ methods would be TPM support and TLS acceleration.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\132\SOH\b\SUB\n\
    \\r\n\
    \\ETX\EOT\SOH\a\DC2\ACK\133\SOH\STX\134\SOH-\n\
    \\DC2\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\ACK\133\SOH\STX\134\SOH-\n\
    \\v\n\
    \\ETX\EOT\SOH\t\DC2\EOT\136\SOH\STX\r\n\
    \\f\n\
    \\EOT\EOT\SOH\t\NUL\DC2\EOT\136\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\NUL\SOH\DC2\EOT\136\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\SOH\t\NUL\STX\DC2\EOT\136\SOH\v\f\n\
    \\v\n\
    \\ETX\EOT\SOH\n\
    \\DC2\EOT\138\SOH\STX\DC4\n\
    \\f\n\
    \\EOT\EOT\SOH\n\
    \\NUL\DC2\EOT\138\SOH\v\DC3\n\
    \t\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\142\SOH\STXD\SUBf Private key method provider name. The name must match a\n\
    \ supported private key method provider type.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\EOT\142\SOH\STX\b\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\142\SOH\t\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\142\SOH\EM\SUB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\EOT\142\SOH\ESCC\n\
    \\DLE\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\SO\DC2\EOT\142\SOH\FSB\n\
    \E\n\
    \\EOT\EOT\SOH\b\NUL\DC2\ACK\145\SOH\STX\147\SOH\ETX\SUB5 Private key method provider specific configuration.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\b\NUL\SOH\DC2\EOT\145\SOH\b\DC3\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\146\SOH\EOTO\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\EOT\146\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\146\SOH\CAN$\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\146\SOH'(\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\b\DC2\EOT\146\SOH)N\n\
    \\DC1\n\
    \\t\EOT\SOH\STX\SOH\b\247\182\193$\DC2\EOT\146\SOH*M\n\
    \%\n\
    \\STX\EOT\STX\DC2\ACK\151\SOH\NUL\201\SOH\SOH\SUB\ETB [#next-free-field: 8]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\151\SOH\b\SYN\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT\152\SOH\STXb\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT\152\SOH\STXb\n\
    \\147\STX\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\160\SOH\STX2\SUB\132\STX The TLS certificate chain.\n\
    \\n\
    \ If *certificate_chain* is a filesystem path, a watch will be added to the\n\
    \ parent directory for any file moves to support rotation. This currently\n\
    \ only applies to dynamic secrets, when the *TlsCertificate* is delivered via\n\
    \ SDS.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\EOT\160\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\160\SOH\FS-\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\160\SOH01\n\
    \\134\STX\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\167\SOH\STXR\SUB\247\SOH The TLS private key.\n\
    \\n\
    \ If *private_key* is a filesystem path, a watch will be added to the parent\n\
    \ directory for any file moves to support rotation. This currently only\n\
    \ applies to dynamic secrets, when the *TlsCertificate* is delivered via SDS.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\EOT\167\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\167\SOH\FS'\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\167\SOH*+\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\EOT\167\SOH,Q\n\
    \\DC1\n\
    \\t\EOT\STX\STX\SOH\b\247\182\193$\DC2\EOT\167\SOH-P\n\
    \\199\ENQ\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\179\SOH\STX8\SUB\184\ENQ If specified, updates of file-based *certificate_chain* and *private_key*\n\
    \ sources will be triggered by this watch. The certificate/key pair will be\n\
    \ read together and validated for atomic read consistency (i.e. no\n\
    \ intervening modification occurred between cert/key read, verified by file\n\
    \ hash comparisons). This allows explicit control over the path watched, by\n\
    \ default the parent directories of the filesystem paths in\n\
    \ *certificate_chain* and *private_key* are watched if this field is not\n\
    \ specified. This only applies when a *TlsCertificate* is delivered by SDS\n\
    \ with references to filesystem paths. See the :ref:`SDS key rotation\n\
    \ <sds_key_rotation>` documentation for further details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\EOT\179\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\179\SOH\"3\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\179\SOH67\n\
    \\154\EOT\n\
    \\EOT\EOT\STX\STX\ETX\DC2\EOT\188\SOH\STX.\SUB\139\EOT BoringSSL private key method provider. This is an alternative to :ref:`private_key\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.TlsCertificate.private_key>` field. This can't be\n\
    \ marked as ``oneof`` due to API compatibility reasons. Setting both :ref:`private_key\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.TlsCertificate.private_key>` and\n\
    \ :ref:`private_key_provider\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.TlsCertificate.private_key_provider>` fields will result in an\n\
    \ error.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\EOT\188\SOH\STX\DC4\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\EOT\188\SOH\NAK)\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\EOT\188\SOH,-\n\
    \\154\SOH\n\
    \\EOT\EOT\STX\STX\EOT\DC2\EOT\192\SOH\STXO\SUB\139\SOH The password to decrypt the TLS private key. If this field is not set, it is assumed that the\n\
    \ TLS private key is not password encrypted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\EOT\192\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\EOT\192\SOH\FS$\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\EOT\192\SOH'(\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\EOT\b\DC2\EOT\192\SOH)N\n\
    \\DC1\n\
    \\t\EOT\STX\STX\EOT\b\247\182\193$\DC2\EOT\192\SOH*M\n\
    \\241\SOH\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\EOT\197\SOH\STX,\SUB\226\SOH The OCSP response to be stapled with this certificate during the handshake.\n\
    \ The response must be DER-encoded and may only be  provided via ``filename`` or\n\
    \ ``inline_bytes``. The response may pertain to only one certificate.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ACK\DC2\EOT\197\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\EOT\197\SOH\FS'\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\EOT\197\SOH*+\n\
    \(\n\
    \\EOT\EOT\STX\STX\ACK\DC2\EOT\200\SOH\STXF\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\EOT\200\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ACK\DC2\EOT\200\SOH\v$\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\EOT\200\SOH%A\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\EOT\200\SOHDE\n\
    \\f\n\
    \\STX\EOT\ETX\DC2\ACK\203\SOH\NUL\232\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\203\SOH\b\FS\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\204\SOH\STX\205\SOH/\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\204\SOH\STX\205\SOH/\n\
    \\252\n\
    \\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ACK\230\SOH\STX\231\SOHX\SUB\235\n\
    \ Keys for encrypting and decrypting TLS session tickets. The\n\
    \ first key in the array contains the key to encrypt all new sessions created by this context.\n\
    \ All keys are candidates for decrypting received tickets. This allows for easy rotation of keys\n\
    \ by, for example, putting the new key first, and the previous key second.\n\
    \\n\
    \ If :ref:`session_ticket_keys <envoy_v3_api_field_extensions.transport_sockets.tls.v3.DownstreamTlsContext.session_ticket_keys>`\n\
    \ is not specified, the TLS library will still support resuming sessions via tickets, but it will\n\
    \ use an internally-generated and managed key, so sessions cannot be resumed across hot restarts\n\
    \ or on different hosts.\n\
    \\n\
    \ Each key must contain exactly 80 bytes of cryptographically-secure random data. For\n\
    \ example, the output of ``openssl rand 80``.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   Using this feature has serious security considerations and risks. Improper handling of keys\n\
    \   may result in loss of secrecy in connections, even if ciphers supporting perfect forward\n\
    \   secrecy are used. See https://www.imperialviolet.org/2013/06/27/botchingpfs.html for some\n\
    \   discussion. To minimize the risk, you must:\n\
    \\n\
    \   * Keep the session ticket keys at least as secure as your TLS certificate private keys\n\
    \   * Rotate session ticket keys at least daily, and preferably hourly\n\
    \   * Always generate keys using a cryptographically-secure random data source\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\EOT\230\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\230\SOH\v$\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\230\SOH%)\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\230\SOH,-\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\b\DC2\EOT\231\SOH\ACKW\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\NUL\b\175\b\DC2\DC2\EOT\231\SOH\a1\n\
    \\DC1\n\
    \\t\EOT\ETX\STX\NUL\b\247\182\193$\DC2\EOT\231\SOH3V\n\
    \&\n\
    \\STX\EOT\EOT\DC2\ACK\235\SOH\NUL\145\ETX\SOH\SUB\CAN [#next-free-field: 13]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\235\SOH\b$\n\
    \\r\n\
    \\ETX\EOT\EOT\a\DC2\ACK\236\SOH\STX\237\SOH7\n\
    \\DC2\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\ACK\236\SOH\STX\237\SOH7\n\
    \5\n\
    \\EOT\EOT\EOT\EOT\NUL\DC2\ACK\240\SOH\STX\248\SOH\ETX\SUB% Peer certificate verification mode.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\EOT\NUL\SOH\DC2\EOT\240\SOH\a\GS\n\
    \b\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\NUL\DC2\EOT\242\SOH\EOT\ESC\SUBR Perform default certificate verification (e.g., against CA / verification lists)\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\NUL\SOH\DC2\EOT\242\SOH\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\NUL\STX\DC2\EOT\242\SOH\EM\SUB\n\
    \\163\STX\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\SOH\DC2\EOT\247\SOH\EOT\EM\SUB\146\STX Connections where the certificate fails verification will be permitted.\n\
    \ For HTTP connections, the result of certificate verification can be used in route matching. (\n\
    \ see :ref:`validated <envoy_v3_api_field_config.route.v3.RouteMatch.TlsContextMatchOptions.validated>` ).\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\SOH\SOH\DC2\EOT\247\SOH\EOT\DC4\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\SOH\STX\DC2\EOT\247\SOH\ETB\CAN\n\
    \\v\n\
    \\ETX\EOT\EOT\t\DC2\EOT\250\SOH\STX\DLE\n\
    \\f\n\
    \\EOT\EOT\EOT\t\NUL\DC2\EOT\250\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\t\NUL\SOH\DC2\EOT\250\SOH\v\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\t\NUL\STX\DC2\EOT\250\SOH\v\f\n\
    \\f\n\
    \\EOT\EOT\EOT\t\SOH\DC2\EOT\250\SOH\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\EOT\t\SOH\SOH\DC2\EOT\250\SOH\SO\SI\n\
    \\r\n\
    \\ENQ\EOT\EOT\t\SOH\STX\DC2\EOT\250\SOH\SO\SI\n\
    \\v\n\
    \\ETX\EOT\EOT\n\
    \\DC2\EOT\252\SOH\STX%\n\
    \\f\n\
    \\EOT\EOT\EOT\n\
    \\NUL\DC2\EOT\252\SOH\v$\n\
    \\231\r\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\153\STX\STX+\SUB\216\r TLS certificate data containing certificate authority certificates to use in verifying\n\
    \ a presented peer certificate (e.g. server certificate for clusters or client certificate\n\
    \ for listeners). If not specified and a peer certificate is presented it will not be\n\
    \ verified. By default, a client certificate is optional, unless one of the additional\n\
    \ options (:ref:`require_client_certificate\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.DownstreamTlsContext.require_client_certificate>`,\n\
    \ :ref:`verify_certificate_spki\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.verify_certificate_spki>`,\n\
    \ :ref:`verify_certificate_hash\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.verify_certificate_hash>`, or\n\
    \ :ref:`match_subject_alt_names\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.match_subject_alt_names>`) is also\n\
    \ specified.\n\
    \\n\
    \ It can optionally contain certificate revocation lists, in which case Envoy will verify\n\
    \ that the presented peer certificate has not been revoked by one of the included CRLs. Note\n\
    \ that if a CRL is provided for any certificate authority in a trust chain, a CRL must be\n\
    \ provided for all certificate authorities in that chain. Failure to do so will result in\n\
    \ verification failure for both revoked and unrevoked certificates from that chain.\n\
    \\n\
    \ See :ref:`the TLS overview <arch_overview_ssl_enabling_verification>` for a list of common\n\
    \ system CA locations.\n\
    \\n\
    \ If *trusted_ca* is a filesystem path, a watch will be added to the parent\n\
    \ directory for any file moves to support rotation. This currently only\n\
    \ applies to dynamic secrets, when the *CertificateValidationContext* is\n\
    \ delivered via SDS.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\153\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\153\STX\FS&\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\153\STX)*\n\
    \\222\ETX\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\162\STX\STX9\SUB\207\ETX If specified, updates of a file-based *trusted_ca* source will be triggered\n\
    \ by this watch. This allows explicit control over the path watched, by\n\
    \ default the parent directory of the filesystem path in *trusted_ca* is\n\
    \ watched if this field is not specified. This only applies when a\n\
    \ *CertificateValidationContext* is delivered by SDS with references to\n\
    \ filesystem paths. See the :ref:`SDS key rotation <sds_key_rotation>`\n\
    \ documentation for further details.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ACK\DC2\EOT\162\STX\STX!\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\162\STX\"3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\162\STX68\n\
    \\248\n\
    \\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ACK\194\STX\STX\195\STXQ\SUB\231\n\
    \ An optional list of base64-encoded SHA-256 hashes. If specified, Envoy will verify that the\n\
    \ SHA-256 of the DER-encoded Subject Public Key Information (SPKI) of the presented certificate\n\
    \ matches one of the specified values.\n\
    \\n\
    \ A base64-encoded SHA-256 of the Subject Public Key Information (SPKI) of the certificate\n\
    \ can be generated with the following command:\n\
    \\n\
    \ .. code-block:: bash\n\
    \\n\
    \   $ openssl x509 -in path/to/client.crt -noout -pubkey\n\
    \     | openssl pkey -pubin -outform DER\n\
    \     | openssl dgst -sha256 -binary\n\
    \     | openssl enc -base64\n\
    \   NvqYIYSbgK2vCJpQhObf77vv+bQWtc5ek5RIOwPiC9A=\n\
    \\n\
    \ This is the format used in HTTP Public Key Pinning.\n\
    \\n\
    \ When both:\n\
    \ :ref:`verify_certificate_hash\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.verify_certificate_hash>` and\n\
    \ :ref:`verify_certificate_spki\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.verify_certificate_spki>` are specified,\n\
    \ a hash matching value from either of the lists will result in the certificate being accepted.\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   This option is preferred over :ref:`verify_certificate_hash\n\
    \   <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.verify_certificate_hash>`,\n\
    \   because SPKI is tied to a private key, so it doesn't change when the certificate\n\
    \   is renewed using the same private key.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\EOT\194\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\EOT\194\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\194\STX\DC2)\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\194\STX,-\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\b\DC2\EOT\195\STX\ACKP\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\STX\b\175\b\DC2\DC2\EOT\195\STX\aO\n\
    \\241\t\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ACK\223\STX\STX\224\STXQ\SUB\224\t An optional list of hex-encoded SHA-256 hashes. If specified, Envoy will verify that\n\
    \ the SHA-256 of the DER-encoded presented certificate matches one of the specified values.\n\
    \\n\
    \ A hex-encoded SHA-256 of the certificate can be generated with the following command:\n\
    \\n\
    \ .. code-block:: bash\n\
    \\n\
    \   $ openssl x509 -in path/to/client.crt -outform DER | openssl dgst -sha256 | cut -d\" \" -f2\n\
    \   df6ff72fe9116521268f6f2dd4966f51df479883fe7037b39f75916ac3049d1a\n\
    \\n\
    \ A long hex-encoded and colon-separated SHA-256 (a.k.a. \"fingerprint\") of the certificate\n\
    \ can be generated with the following command:\n\
    \\n\
    \ .. code-block:: bash\n\
    \\n\
    \   $ openssl x509 -in path/to/client.crt -noout -fingerprint -sha256 | cut -d\"=\" -f2\n\
    \   DF:6F:F7:2F:E9:11:65:21:26:8F:6F:2D:D4:96:6F:51:DF:47:98:83:FE:70:37:B3:9F:75:91:6A:C3:04:9D:1A\n\
    \\n\
    \ Both of those formats are acceptable.\n\
    \\n\
    \ When both:\n\
    \ :ref:`verify_certificate_hash\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.verify_certificate_hash>` and\n\
    \ :ref:`verify_certificate_spki\n\
    \ <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.verify_certificate_spki>` are specified,\n\
    \ a hash matching value from either of the lists will result in the certificate being accepted.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\EOT\223\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\EOT\223\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\223\STX\DC2)\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\223\STX,-\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\b\DC2\EOT\224\STX\ACKP\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\ETX\b\175\b\DC2\DC2\EOT\224\STX\aO\n\
    \\144\a\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOT\244\STX\STXE\SUB\129\a An optional list of Subject Alternative name matchers. If specified, Envoy will verify that the\n\
    \ Subject Alternative Name of the presented certificate matches one of the specified matchers.\n\
    \\n\
    \ When a certificate has wildcard DNS SAN entries, to match a specific client, it should be\n\
    \ configured with exact match type in the :ref:`string matcher <envoy_v3_api_msg_type.matcher.v3.StringMatcher>`.\n\
    \ For example if the certificate has \"\\*.example.com\" as DNS SAN entry, to allow only \"api.example.com\",\n\
    \ it should be configured as shown below.\n\
    \\n\
    \ .. code-block:: yaml\n\
    \\n\
    \  match_subject_alt_names:\n\
    \    exact: \"api.example.com\"\n\
    \\n\
    \ .. attention::\n\
    \\n\
    \   Subject Alternative Names are easily spoofable and verifying only them is insecure,\n\
    \   therefore this option must be used together with :ref:`trusted_ca\n\
    \   <envoy_v3_api_field_extensions.transport_sockets.tls.v3.CertificateValidationContext.trusted_ca>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\EOT\244\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ACK\DC2\EOT\244\STX\v(\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\EOT\244\STX)@\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\EOT\244\STXCD\n\
    \T\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\EOT\247\STX\STXE\SUBF [#not-implemented-hide:] Must present signed certificate time-stamp.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ACK\DC2\EOT\247\STX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\EOT\247\STX\FS@\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\EOT\247\STXCD\n\
    \\194\EOT\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\EOT\130\ETX\STX$\SUB\179\EOT An optional `certificate revocation list\n\
    \ <https://en.wikipedia.org/wiki/Certificate_revocation_list>`_\n\
    \ (in PEM format). If specified, Envoy will verify that the presented peer\n\
    \ certificate has not been revoked by this CRL. If this DataSource contains\n\
    \ multiple CRLs, all of them will be used. Note that if a CRL is provided\n\
    \ for any certificate authority in a trust chain, a CRL must be provided\n\
    \ for all certificate authorities in that chain. Failure to do so will\n\
    \ result in verification failure for both revoked and unrevoked certificates\n\
    \ from that chain.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ACK\DC2\EOT\130\ETX\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\EOT\130\ETX\FS\US\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\EOT\130\ETX\"#\n\
    \I\n\
    \\EOT\EOT\EOT\STX\a\DC2\EOT\133\ETX\STX%\SUB; If specified, Envoy will not reject expired certificates.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ENQ\DC2\EOT\133\ETX\STX\ACK\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\EOT\133\ETX\a \n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\EOT\133\ETX#$\n\
    \<\n\
    \\EOT\EOT\EOT\STX\b\DC2\ACK\136\ETX\STX\137\ETX5\SUB, Certificate trust chain verification mode.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\ACK\DC2\EOT\136\ETX\STX\CAN\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\SOH\DC2\EOT\136\ETX\EM1\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\ETX\DC2\EOT\136\ETX46\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\b\b\DC2\EOT\137\ETX\ACK4\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\b\b\175\b\DLE\DC2\EOT\137\ETX\a3\n\
    \\216\ETX\n\
    \\EOT\EOT\EOT\STX\t\DC2\EOT\144\ETX\STXC\SUB\201\ETX The configuration of an extension specific certificate validator.\n\
    \ If specified, all validation is done by the specified validator,\n\
    \ and the behavior of all other validation settings is defined by the specified validator (and may be entirely ignored, unused, and unvalidated).\n\
    \ Refer to the documentation for the specified validator. If you do not want a custom validation algorithm, do not set this field.\n\
    \ [#extension-category: envoy.tls.cert_validator]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\ACK\DC2\EOT\144\ETX\STX%\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\SOH\DC2\EOT\144\ETX&=\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\t\ETX\DC2\EOT\144\ETX@Bb\ACKproto3"