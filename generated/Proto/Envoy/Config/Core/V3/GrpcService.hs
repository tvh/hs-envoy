{- This file was auto-generated from envoy/config/core/v3/grpc_service.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.GrpcService (
        GrpcService(), GrpcService'TargetSpecifier(..),
        _GrpcService'EnvoyGrpc', _GrpcService'GoogleGrpc',
        GrpcService'EnvoyGrpc(), GrpcService'GoogleGrpc(),
        GrpcService'GoogleGrpc'CallCredentials(),
        GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier(..),
        _GrpcService'GoogleGrpc'CallCredentials'AccessToken,
        _GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine,
        _GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken,
        _GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess,
        _GrpcService'GoogleGrpc'CallCredentials'GoogleIam,
        _GrpcService'GoogleGrpc'CallCredentials'FromPlugin,
        _GrpcService'GoogleGrpc'CallCredentials'StsService',
        GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials(),
        GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin(),
        GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'ConfigType(..),
        _GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig,
        GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials(),
        GrpcService'GoogleGrpc'CallCredentials'StsService(),
        GrpcService'GoogleGrpc'ChannelArgs(),
        GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry(),
        GrpcService'GoogleGrpc'ChannelArgs'Value(),
        GrpcService'GoogleGrpc'ChannelArgs'Value'ValueSpecifier(..),
        _GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue,
        _GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue,
        GrpcService'GoogleGrpc'ChannelCredentials(),
        GrpcService'GoogleGrpc'ChannelCredentials'CredentialSpecifier(..),
        _GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials,
        _GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault,
        _GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials,
        GrpcService'GoogleGrpc'GoogleLocalCredentials(),
        GrpcService'GoogleGrpc'SslCredentials()
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
import qualified Proto.Google.Protobuf.Any
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Empty
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Sensitive
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.timeout' @:: Lens' GrpcService Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'timeout' @:: Lens' GrpcService (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.initialMetadata' @:: Lens' GrpcService [Proto.Envoy.Config.Core.V3.Base.HeaderValue]@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.vec'initialMetadata' @:: Lens' GrpcService (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'targetSpecifier' @:: Lens' GrpcService (Prelude.Maybe GrpcService'TargetSpecifier)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'envoyGrpc' @:: Lens' GrpcService (Prelude.Maybe GrpcService'EnvoyGrpc)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.envoyGrpc' @:: Lens' GrpcService GrpcService'EnvoyGrpc@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'googleGrpc' @:: Lens' GrpcService (Prelude.Maybe GrpcService'GoogleGrpc)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.googleGrpc' @:: Lens' GrpcService GrpcService'GoogleGrpc@ -}
data GrpcService
  = GrpcService'_constructor {_GrpcService'timeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                              _GrpcService'initialMetadata :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue),
                              _GrpcService'targetSpecifier :: !(Prelude.Maybe GrpcService'TargetSpecifier),
                              _GrpcService'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data GrpcService'TargetSpecifier
  = GrpcService'EnvoyGrpc' !GrpcService'EnvoyGrpc |
    GrpcService'GoogleGrpc' !GrpcService'GoogleGrpc
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField GrpcService "timeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'timeout
           (\ x__ y__ -> x__ {_GrpcService'timeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcService "maybe'timeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'timeout
           (\ x__ y__ -> x__ {_GrpcService'timeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService "initialMetadata" [Proto.Envoy.Config.Core.V3.Base.HeaderValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'initialMetadata
           (\ x__ y__ -> x__ {_GrpcService'initialMetadata = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GrpcService "vec'initialMetadata" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.Base.HeaderValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'initialMetadata
           (\ x__ y__ -> x__ {_GrpcService'initialMetadata = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService "maybe'targetSpecifier" (Prelude.Maybe GrpcService'TargetSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'targetSpecifier
           (\ x__ y__ -> x__ {_GrpcService'targetSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService "maybe'envoyGrpc" (Prelude.Maybe GrpcService'EnvoyGrpc) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'targetSpecifier
           (\ x__ y__ -> x__ {_GrpcService'targetSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'EnvoyGrpc' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap GrpcService'EnvoyGrpc' y__))
instance Data.ProtoLens.Field.HasField GrpcService "envoyGrpc" GrpcService'EnvoyGrpc where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'targetSpecifier
           (\ x__ y__ -> x__ {_GrpcService'targetSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'EnvoyGrpc' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap GrpcService'EnvoyGrpc' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField GrpcService "maybe'googleGrpc" (Prelude.Maybe GrpcService'GoogleGrpc) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'targetSpecifier
           (\ x__ y__ -> x__ {_GrpcService'targetSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap GrpcService'GoogleGrpc' y__))
instance Data.ProtoLens.Field.HasField GrpcService "googleGrpc" GrpcService'GoogleGrpc where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'targetSpecifier
           (\ x__ y__ -> x__ {_GrpcService'targetSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap GrpcService'GoogleGrpc' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message GrpcService where
  messageName _ = Data.Text.pack "envoy.config.core.v3.GrpcService"
  packedMessageDescriptor _
    = "\n\
      \\vGrpcService\DC2L\n\
      \\n\
      \envoy_grpc\CAN\SOH \SOH(\v2+.envoy.config.core.v3.GrpcService.EnvoyGrpcH\NULR\tenvoyGrpc\DC2O\n\
      \\vgoogle_grpc\CAN\STX \SOH(\v2,.envoy.config.core.v3.GrpcService.GoogleGrpcH\NULR\n\
      \googleGrpc\DC23\n\
      \\atimeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\atimeout\DC2L\n\
      \\DLEinitial_metadata\CAN\ENQ \ETX(\v2!.envoy.config.core.v3.HeaderValueR\SIinitialMetadata\SUB\152\SOH\n\
      \\tEnvoyGrpc\DC2*\n\
      \\fcluster_name\CAN\SOH \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC2/\n\
      \\tauthority\CAN\STX \SOH(\tR\tauthorityB\DC1\250B\SOr\f\DLE\NUL(\128\128\SOH\192\SOH\STX\200\SOH\NUL:.\154\197\136\RS)\n\
      \'envoy.api.v2.core.GrpcService.EnvoyGrpc\SUB\250\FS\n\
      \\n\
      \GoogleGrpc\DC2&\n\
      \\n\
      \target_uri\CAN\SOH \SOH(\tR\ttargetUriB\a\250B\EOTr\STX\DLE\SOH\DC2p\n\
      \\DC3channel_credentials\CAN\STX \SOH(\v2?.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentialsR\DC2channelCredentials\DC2g\n\
      \\DLEcall_credentials\CAN\ETX \ETX(\v2<.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentialsR\SIcallCredentials\DC2(\n\
      \\vstat_prefix\CAN\EOT \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC28\n\
      \\CANcredentials_factory_name\CAN\ENQ \SOH(\tR\SYNcredentialsFactoryName\DC2/\n\
      \\ACKconfig\CAN\ACK \SOH(\v2\ETB.google.protobuf.StructR\ACKconfig\DC2^\n\
      \\GSper_stream_buffer_limit_bytes\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\EMperStreamBufferLimitBytes\DC2[\n\
      \\fchannel_args\CAN\b \SOH(\v28.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgsR\vchannelArgs\SUB\157\STX\n\
      \\SOSslCredentials\DC2?\n\
      \\n\
      \root_certs\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\trootCerts\DC2I\n\
      \\vprivate_key\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\n\
      \privateKeyB\ACK\184\183\139\164\STX\SOH\DC2?\n\
      \\n\
      \cert_chain\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceR\tcertChain:>\154\197\136\RS9\n\
      \7envoy.api.v2.core.GrpcService.GoogleGrpc.SslCredentials\SUB`\n\
      \\SYNGoogleLocalCredentials:F\154\197\136\RSA\n\
      \?envoy.api.v2.core.GrpcService.GoogleGrpc.GoogleLocalCredentials\SUB\146\ETX\n\
      \\DC2ChannelCredentials\DC2f\n\
      \\SIssl_credentials\CAN\SOH \SOH(\v2;.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentialsH\NULR\SOsslCredentials\DC2?\n\
      \\SOgoogle_default\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\rgoogleDefault\DC2r\n\
      \\DC1local_credentials\CAN\ETX \SOH(\v2C.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentialsH\NULR\DLElocalCredentialsB\ESC\n\
      \\DC4credential_specifier\DC2\ETX\248B\SOH:B\154\197\136\RS=\n\
      \;envoy.api.v2.core.GrpcService.GoogleGrpc.ChannelCredentials\SUB\136\SI\n\
      \\SICallCredentials\DC2#\n\
      \\faccess_token\CAN\SOH \SOH(\tH\NULR\vaccessToken\DC2L\n\
      \\NAKgoogle_compute_engine\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\DC3googleComputeEngine\DC22\n\
      \\DC4google_refresh_token\CAN\ETX \SOH(\tH\NULR\DC2googleRefreshToken\DC2\158\SOH\n\
      \\SUBservice_account_jwt_access\CAN\EOT \SOH(\v2_.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentialsH\NULR\ETBserviceAccountJwtAccess\DC2r\n\
      \\n\
      \google_iam\CAN\ENQ \SOH(\v2Q.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentialsH\NULR\tgoogleIam\DC2}\n\
      \\vfrom_plugin\CAN\ACK \SOH(\v2Z.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginH\NULR\n\
      \fromPlugin\DC2j\n\
      \\vsts_service\CAN\a \SOH(\v2G.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsServiceH\NULR\n\
      \stsService\SUB\217\SOH\n\
      \\"ServiceAccountJWTAccessCredentials\DC2\EM\n\
      \\bjson_key\CAN\SOH \SOH(\tR\ajsonKey\DC24\n\
      \\SYNtoken_lifetime_seconds\CAN\STX \SOH(\EOTR\DC4tokenLifetimeSeconds:b\154\197\136\RS]\n\
      \[envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials\SUB\204\SOH\n\
      \\DC4GoogleIAMCredentials\DC2/\n\
      \\DC3authorization_token\CAN\SOH \SOH(\tR\DC2authorizationToken\DC2-\n\
      \\DC2authority_selector\CAN\STX \SOH(\tR\DC1authoritySelector:T\154\197\136\RSO\n\
      \Menvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials\SUB\234\SOH\n\
      \\GSMetadataCredentialsFromPlugin\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:]\154\197\136\RSX\n\
      \Venvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginJ\EOT\b\STX\DLE\ETXR\ACKconfig\SUB\215\ETX\n\
      \\n\
      \StsService\DC2;\n\
      \\SUBtoken_exchange_service_uri\CAN\SOH \SOH(\tR\ETBtokenExchangeServiceUri\DC2\SUB\n\
      \\bresource\CAN\STX \SOH(\tR\bresource\DC2\SUB\n\
      \\baudience\CAN\ETX \SOH(\tR\baudience\DC2\DC4\n\
      \\ENQscope\CAN\EOT \SOH(\tR\ENQscope\DC20\n\
      \\DC4requested_token_type\CAN\ENQ \SOH(\tR\DC2requestedTokenType\DC25\n\
      \\DC2subject_token_path\CAN\ACK \SOH(\tR\DLEsubjectTokenPathB\a\250B\EOTr\STX\DLE\SOH\DC25\n\
      \\DC2subject_token_type\CAN\a \SOH(\tR\DLEsubjectTokenTypeB\a\250B\EOTr\STX\DLE\SOH\DC2(\n\
      \\DLEactor_token_path\CAN\b \SOH(\tR\SOactorTokenPath\DC2(\n\
      \\DLEactor_token_type\CAN\t \SOH(\tR\SOactorTokenType:J\154\197\136\RSE\n\
      \Cenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.StsServiceB\ESC\n\
      \\DC4credential_specifier\DC2\ETX\248B\SOH:?\154\197\136\RS:\n\
      \8envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials\SUB\195\STX\n\
      \\vChannelArgs\DC2V\n\
      \\EOTargs\CAN\SOH \ETX(\v2B.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ArgsEntryR\EOTargs\SUBc\n\
      \\ENQValue\DC2#\n\
      \\fstring_value\CAN\SOH \SOH(\tH\NULR\vstringValue\DC2\GS\n\
      \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValueB\SYN\n\
      \\SIvalue_specifier\DC2\ETX\248B\SOH\SUBw\n\
      \\tArgsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2T\n\
      \\ENQvalue\CAN\STX \SOH(\v2>.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ValueR\ENQvalue:\STX8\SOH:/\154\197\136\RS*\n\
      \(envoy.api.v2.core.GrpcService.GoogleGrpcB\ETB\n\
      \\DLEtarget_specifier\DC2\ETX\248B\SOH:$\154\197\136\RS\US\n\
      \\GSenvoy.api.v2.core.GrpcServiceJ\EOT\b\EOT\DLE\ENQ"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeout")) ::
              Data.ProtoLens.FieldDescriptor GrpcService
        initialMetadata__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_metadata"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.HeaderValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"initialMetadata")) ::
              Data.ProtoLens.FieldDescriptor GrpcService
        envoyGrpc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "envoy_grpc"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'EnvoyGrpc)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'envoyGrpc")) ::
              Data.ProtoLens.FieldDescriptor GrpcService
        googleGrpc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "google_grpc"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'googleGrpc")) ::
              Data.ProtoLens.FieldDescriptor GrpcService
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, timeout__field_descriptor),
           (Data.ProtoLens.Tag 5, initialMetadata__field_descriptor),
           (Data.ProtoLens.Tag 1, envoyGrpc__field_descriptor),
           (Data.ProtoLens.Tag 2, googleGrpc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'_unknownFields
        (\ x__ y__ -> x__ {_GrpcService'_unknownFields = y__})
  defMessage
    = GrpcService'_constructor
        {_GrpcService'timeout = Prelude.Nothing,
         _GrpcService'initialMetadata = Data.Vector.Generic.empty,
         _GrpcService'targetSpecifier = Prelude.Nothing,
         _GrpcService'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.Base.HeaderValue
             -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService
        loop x mutable'initialMetadata
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'initialMetadata <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'initialMetadata)
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
                              (Data.ProtoLens.Field.field @"vec'initialMetadata")
                              frozen'initialMetadata
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timeout"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeout") y x)
                                  mutable'initialMetadata
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "initial_metadata"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'initialMetadata y)
                                loop x v
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "envoy_grpc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"envoyGrpc") y x)
                                  mutable'initialMetadata
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "google_grpc"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"googleGrpc") y x)
                                  mutable'initialMetadata
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'initialMetadata
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'initialMetadata <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'initialMetadata)
          "GrpcService"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timeout") _x
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'initialMetadata") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'targetSpecifier") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (GrpcService'EnvoyGrpc' v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v)
                      (Prelude.Just (GrpcService'GoogleGrpc' v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.ProtoLens.encodeMessage
                                v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData GrpcService where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'timeout x__)
                (Control.DeepSeq.deepseq
                   (_GrpcService'initialMetadata x__)
                   (Control.DeepSeq.deepseq (_GrpcService'targetSpecifier x__) ())))
instance Control.DeepSeq.NFData GrpcService'TargetSpecifier where
  rnf (GrpcService'EnvoyGrpc' x__) = Control.DeepSeq.rnf x__
  rnf (GrpcService'GoogleGrpc' x__) = Control.DeepSeq.rnf x__
_GrpcService'EnvoyGrpc' ::
  Data.ProtoLens.Prism.Prism' GrpcService'TargetSpecifier GrpcService'EnvoyGrpc
_GrpcService'EnvoyGrpc'
  = Data.ProtoLens.Prism.prism'
      GrpcService'EnvoyGrpc'
      (\ p__
         -> case p__ of
              (GrpcService'EnvoyGrpc' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcService'GoogleGrpc' ::
  Data.ProtoLens.Prism.Prism' GrpcService'TargetSpecifier GrpcService'GoogleGrpc
_GrpcService'GoogleGrpc'
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc' p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.clusterName' @:: Lens' GrpcService'EnvoyGrpc Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.authority' @:: Lens' GrpcService'EnvoyGrpc Data.Text.Text@ -}
data GrpcService'EnvoyGrpc
  = GrpcService'EnvoyGrpc'_constructor {_GrpcService'EnvoyGrpc'clusterName :: !Data.Text.Text,
                                        _GrpcService'EnvoyGrpc'authority :: !Data.Text.Text,
                                        _GrpcService'EnvoyGrpc'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'EnvoyGrpc where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcService'EnvoyGrpc "clusterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'EnvoyGrpc'clusterName
           (\ x__ y__ -> x__ {_GrpcService'EnvoyGrpc'clusterName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'EnvoyGrpc "authority" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'EnvoyGrpc'authority
           (\ x__ y__ -> x__ {_GrpcService'EnvoyGrpc'authority = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcService'EnvoyGrpc where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.GrpcService.EnvoyGrpc"
  packedMessageDescriptor _
    = "\n\
      \\tEnvoyGrpc\DC2*\n\
      \\fcluster_name\CAN\SOH \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC2/\n\
      \\tauthority\CAN\STX \SOH(\tR\tauthorityB\DC1\250B\SOr\f\DLE\NUL(\128\128\SOH\192\SOH\STX\200\SOH\NUL:.\154\197\136\RS)\n\
      \'envoy.api.v2.core.GrpcService.EnvoyGrpc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clusterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"clusterName")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'EnvoyGrpc
        authority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authority")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'EnvoyGrpc
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clusterName__field_descriptor),
           (Data.ProtoLens.Tag 2, authority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'EnvoyGrpc'_unknownFields
        (\ x__ y__ -> x__ {_GrpcService'EnvoyGrpc'_unknownFields = y__})
  defMessage
    = GrpcService'EnvoyGrpc'_constructor
        {_GrpcService'EnvoyGrpc'clusterName = Data.ProtoLens.fieldDefault,
         _GrpcService'EnvoyGrpc'authority = Data.ProtoLens.fieldDefault,
         _GrpcService'EnvoyGrpc'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'EnvoyGrpc
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'EnvoyGrpc
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
                                       "cluster_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clusterName") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "authority"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"authority") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EnvoyGrpc"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view (Data.ProtoLens.Field.field @"clusterName") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"authority") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GrpcService'EnvoyGrpc where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'EnvoyGrpc'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'EnvoyGrpc'clusterName x__)
                (Control.DeepSeq.deepseq
                   (_GrpcService'EnvoyGrpc'authority x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.targetUri' @:: Lens' GrpcService'GoogleGrpc Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.channelCredentials' @:: Lens' GrpcService'GoogleGrpc GrpcService'GoogleGrpc'ChannelCredentials@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'channelCredentials' @:: Lens' GrpcService'GoogleGrpc (Prelude.Maybe GrpcService'GoogleGrpc'ChannelCredentials)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.callCredentials' @:: Lens' GrpcService'GoogleGrpc [GrpcService'GoogleGrpc'CallCredentials]@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.vec'callCredentials' @:: Lens' GrpcService'GoogleGrpc (Data.Vector.Vector GrpcService'GoogleGrpc'CallCredentials)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.statPrefix' @:: Lens' GrpcService'GoogleGrpc Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.credentialsFactoryName' @:: Lens' GrpcService'GoogleGrpc Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.config' @:: Lens' GrpcService'GoogleGrpc Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'config' @:: Lens' GrpcService'GoogleGrpc (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.perStreamBufferLimitBytes' @:: Lens' GrpcService'GoogleGrpc Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'perStreamBufferLimitBytes' @:: Lens' GrpcService'GoogleGrpc (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.channelArgs' @:: Lens' GrpcService'GoogleGrpc GrpcService'GoogleGrpc'ChannelArgs@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'channelArgs' @:: Lens' GrpcService'GoogleGrpc (Prelude.Maybe GrpcService'GoogleGrpc'ChannelArgs)@ -}
data GrpcService'GoogleGrpc
  = GrpcService'GoogleGrpc'_constructor {_GrpcService'GoogleGrpc'targetUri :: !Data.Text.Text,
                                         _GrpcService'GoogleGrpc'channelCredentials :: !(Prelude.Maybe GrpcService'GoogleGrpc'ChannelCredentials),
                                         _GrpcService'GoogleGrpc'callCredentials :: !(Data.Vector.Vector GrpcService'GoogleGrpc'CallCredentials),
                                         _GrpcService'GoogleGrpc'statPrefix :: !Data.Text.Text,
                                         _GrpcService'GoogleGrpc'credentialsFactoryName :: !Data.Text.Text,
                                         _GrpcService'GoogleGrpc'config :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                         _GrpcService'GoogleGrpc'perStreamBufferLimitBytes :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                         _GrpcService'GoogleGrpc'channelArgs :: !(Prelude.Maybe GrpcService'GoogleGrpc'ChannelArgs),
                                         _GrpcService'GoogleGrpc'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "targetUri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'targetUri
           (\ x__ y__ -> x__ {_GrpcService'GoogleGrpc'targetUri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "channelCredentials" GrpcService'GoogleGrpc'ChannelCredentials where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'channelCredentials
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'channelCredentials = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "maybe'channelCredentials" (Prelude.Maybe GrpcService'GoogleGrpc'ChannelCredentials) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'channelCredentials
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'channelCredentials = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "callCredentials" [GrpcService'GoogleGrpc'CallCredentials] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'callCredentials
           (\ x__ y__ -> x__ {_GrpcService'GoogleGrpc'callCredentials = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "vec'callCredentials" (Data.Vector.Vector GrpcService'GoogleGrpc'CallCredentials) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'callCredentials
           (\ x__ y__ -> x__ {_GrpcService'GoogleGrpc'callCredentials = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "statPrefix" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'statPrefix
           (\ x__ y__ -> x__ {_GrpcService'GoogleGrpc'statPrefix = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "credentialsFactoryName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'credentialsFactoryName
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'credentialsFactoryName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "config" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'config
           (\ x__ y__ -> x__ {_GrpcService'GoogleGrpc'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "maybe'config" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'config
           (\ x__ y__ -> x__ {_GrpcService'GoogleGrpc'config = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "perStreamBufferLimitBytes" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'perStreamBufferLimitBytes
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'perStreamBufferLimitBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "maybe'perStreamBufferLimitBytes" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'perStreamBufferLimitBytes
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'perStreamBufferLimitBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "channelArgs" GrpcService'GoogleGrpc'ChannelArgs where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'channelArgs
           (\ x__ y__ -> x__ {_GrpcService'GoogleGrpc'channelArgs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc "maybe'channelArgs" (Prelude.Maybe GrpcService'GoogleGrpc'ChannelArgs) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'channelArgs
           (\ x__ y__ -> x__ {_GrpcService'GoogleGrpc'channelArgs = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcService'GoogleGrpc where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.GrpcService.GoogleGrpc"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \GoogleGrpc\DC2&\n\
      \\n\
      \target_uri\CAN\SOH \SOH(\tR\ttargetUriB\a\250B\EOTr\STX\DLE\SOH\DC2p\n\
      \\DC3channel_credentials\CAN\STX \SOH(\v2?.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentialsR\DC2channelCredentials\DC2g\n\
      \\DLEcall_credentials\CAN\ETX \ETX(\v2<.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentialsR\SIcallCredentials\DC2(\n\
      \\vstat_prefix\CAN\EOT \SOH(\tR\n\
      \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC28\n\
      \\CANcredentials_factory_name\CAN\ENQ \SOH(\tR\SYNcredentialsFactoryName\DC2/\n\
      \\ACKconfig\CAN\ACK \SOH(\v2\ETB.google.protobuf.StructR\ACKconfig\DC2^\n\
      \\GSper_stream_buffer_limit_bytes\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\EMperStreamBufferLimitBytes\DC2[\n\
      \\fchannel_args\CAN\b \SOH(\v28.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgsR\vchannelArgs\SUB\157\STX\n\
      \\SOSslCredentials\DC2?\n\
      \\n\
      \root_certs\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\trootCerts\DC2I\n\
      \\vprivate_key\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\n\
      \privateKeyB\ACK\184\183\139\164\STX\SOH\DC2?\n\
      \\n\
      \cert_chain\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceR\tcertChain:>\154\197\136\RS9\n\
      \7envoy.api.v2.core.GrpcService.GoogleGrpc.SslCredentials\SUB`\n\
      \\SYNGoogleLocalCredentials:F\154\197\136\RSA\n\
      \?envoy.api.v2.core.GrpcService.GoogleGrpc.GoogleLocalCredentials\SUB\146\ETX\n\
      \\DC2ChannelCredentials\DC2f\n\
      \\SIssl_credentials\CAN\SOH \SOH(\v2;.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentialsH\NULR\SOsslCredentials\DC2?\n\
      \\SOgoogle_default\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\rgoogleDefault\DC2r\n\
      \\DC1local_credentials\CAN\ETX \SOH(\v2C.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentialsH\NULR\DLElocalCredentialsB\ESC\n\
      \\DC4credential_specifier\DC2\ETX\248B\SOH:B\154\197\136\RS=\n\
      \;envoy.api.v2.core.GrpcService.GoogleGrpc.ChannelCredentials\SUB\136\SI\n\
      \\SICallCredentials\DC2#\n\
      \\faccess_token\CAN\SOH \SOH(\tH\NULR\vaccessToken\DC2L\n\
      \\NAKgoogle_compute_engine\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\DC3googleComputeEngine\DC22\n\
      \\DC4google_refresh_token\CAN\ETX \SOH(\tH\NULR\DC2googleRefreshToken\DC2\158\SOH\n\
      \\SUBservice_account_jwt_access\CAN\EOT \SOH(\v2_.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentialsH\NULR\ETBserviceAccountJwtAccess\DC2r\n\
      \\n\
      \google_iam\CAN\ENQ \SOH(\v2Q.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentialsH\NULR\tgoogleIam\DC2}\n\
      \\vfrom_plugin\CAN\ACK \SOH(\v2Z.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginH\NULR\n\
      \fromPlugin\DC2j\n\
      \\vsts_service\CAN\a \SOH(\v2G.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsServiceH\NULR\n\
      \stsService\SUB\217\SOH\n\
      \\"ServiceAccountJWTAccessCredentials\DC2\EM\n\
      \\bjson_key\CAN\SOH \SOH(\tR\ajsonKey\DC24\n\
      \\SYNtoken_lifetime_seconds\CAN\STX \SOH(\EOTR\DC4tokenLifetimeSeconds:b\154\197\136\RS]\n\
      \[envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials\SUB\204\SOH\n\
      \\DC4GoogleIAMCredentials\DC2/\n\
      \\DC3authorization_token\CAN\SOH \SOH(\tR\DC2authorizationToken\DC2-\n\
      \\DC2authority_selector\CAN\STX \SOH(\tR\DC1authoritySelector:T\154\197\136\RSO\n\
      \Menvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials\SUB\234\SOH\n\
      \\GSMetadataCredentialsFromPlugin\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:]\154\197\136\RSX\n\
      \Venvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginJ\EOT\b\STX\DLE\ETXR\ACKconfig\SUB\215\ETX\n\
      \\n\
      \StsService\DC2;\n\
      \\SUBtoken_exchange_service_uri\CAN\SOH \SOH(\tR\ETBtokenExchangeServiceUri\DC2\SUB\n\
      \\bresource\CAN\STX \SOH(\tR\bresource\DC2\SUB\n\
      \\baudience\CAN\ETX \SOH(\tR\baudience\DC2\DC4\n\
      \\ENQscope\CAN\EOT \SOH(\tR\ENQscope\DC20\n\
      \\DC4requested_token_type\CAN\ENQ \SOH(\tR\DC2requestedTokenType\DC25\n\
      \\DC2subject_token_path\CAN\ACK \SOH(\tR\DLEsubjectTokenPathB\a\250B\EOTr\STX\DLE\SOH\DC25\n\
      \\DC2subject_token_type\CAN\a \SOH(\tR\DLEsubjectTokenTypeB\a\250B\EOTr\STX\DLE\SOH\DC2(\n\
      \\DLEactor_token_path\CAN\b \SOH(\tR\SOactorTokenPath\DC2(\n\
      \\DLEactor_token_type\CAN\t \SOH(\tR\SOactorTokenType:J\154\197\136\RSE\n\
      \Cenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.StsServiceB\ESC\n\
      \\DC4credential_specifier\DC2\ETX\248B\SOH:?\154\197\136\RS:\n\
      \8envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials\SUB\195\STX\n\
      \\vChannelArgs\DC2V\n\
      \\EOTargs\CAN\SOH \ETX(\v2B.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ArgsEntryR\EOTargs\SUBc\n\
      \\ENQValue\DC2#\n\
      \\fstring_value\CAN\SOH \SOH(\tH\NULR\vstringValue\DC2\GS\n\
      \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValueB\SYN\n\
      \\SIvalue_specifier\DC2\ETX\248B\SOH\SUBw\n\
      \\tArgsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2T\n\
      \\ENQvalue\CAN\STX \SOH(\v2>.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ValueR\ENQvalue:\STX8\SOH:/\154\197\136\RS*\n\
      \(envoy.api.v2.core.GrpcService.GoogleGrpc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        targetUri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"targetUri")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc
        channelCredentials__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "channel_credentials"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'ChannelCredentials)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'channelCredentials")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc
        callCredentials__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "call_credentials"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'CallCredentials)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"callCredentials")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc
        statPrefix__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stat_prefix"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"statPrefix")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc
        credentialsFactoryName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "credentials_factory_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"credentialsFactoryName")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc
        perStreamBufferLimitBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "per_stream_buffer_limit_bytes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'perStreamBufferLimitBytes")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc
        channelArgs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "channel_args"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'ChannelArgs)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'channelArgs")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, targetUri__field_descriptor),
           (Data.ProtoLens.Tag 2, channelCredentials__field_descriptor),
           (Data.ProtoLens.Tag 3, callCredentials__field_descriptor),
           (Data.ProtoLens.Tag 4, statPrefix__field_descriptor),
           (Data.ProtoLens.Tag 5, credentialsFactoryName__field_descriptor),
           (Data.ProtoLens.Tag 6, config__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            perStreamBufferLimitBytes__field_descriptor),
           (Data.ProtoLens.Tag 8, channelArgs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'_unknownFields
        (\ x__ y__ -> x__ {_GrpcService'GoogleGrpc'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'_constructor
        {_GrpcService'GoogleGrpc'targetUri = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'channelCredentials = Prelude.Nothing,
         _GrpcService'GoogleGrpc'callCredentials = Data.Vector.Generic.empty,
         _GrpcService'GoogleGrpc'statPrefix = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'credentialsFactoryName = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'config = Prelude.Nothing,
         _GrpcService'GoogleGrpc'perStreamBufferLimitBytes = Prelude.Nothing,
         _GrpcService'GoogleGrpc'channelArgs = Prelude.Nothing,
         _GrpcService'GoogleGrpc'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld GrpcService'GoogleGrpc'CallCredentials
             -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc
        loop x mutable'callCredentials
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'callCredentials <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'callCredentials)
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
                              (Data.ProtoLens.Field.field @"vec'callCredentials")
                              frozen'callCredentials
                              x))
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
                                       "target_uri"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"targetUri") y x)
                                  mutable'callCredentials
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "channel_credentials"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"channelCredentials") y x)
                                  mutable'callCredentials
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "call_credentials"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'callCredentials y)
                                loop x v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "stat_prefix"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"statPrefix") y x)
                                  mutable'callCredentials
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "credentials_factory_name"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"credentialsFactoryName") y x)
                                  mutable'callCredentials
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                                  mutable'callCredentials
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "per_stream_buffer_limit_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"perStreamBufferLimitBytes") y x)
                                  mutable'callCredentials
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "channel_args"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"channelArgs") y x)
                                  mutable'callCredentials
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'callCredentials
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'callCredentials <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'callCredentials)
          "GoogleGrpc"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"targetUri") _x
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
                       (Data.ProtoLens.Field.field @"maybe'channelCredentials") _x
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
                                 Data.ProtoLens.encodeMessage
                                 _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'callCredentials") _x))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view (Data.ProtoLens.Field.field @"statPrefix") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8
                                  _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"credentialsFactoryName") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
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
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field
                                         @"maybe'perStreamBufferLimitBytes")
                                      _x
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
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'channelArgs") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.ProtoLens.encodeMessage
                                               _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'targetUri x__)
                (Control.DeepSeq.deepseq
                   (_GrpcService'GoogleGrpc'channelCredentials x__)
                   (Control.DeepSeq.deepseq
                      (_GrpcService'GoogleGrpc'callCredentials x__)
                      (Control.DeepSeq.deepseq
                         (_GrpcService'GoogleGrpc'statPrefix x__)
                         (Control.DeepSeq.deepseq
                            (_GrpcService'GoogleGrpc'credentialsFactoryName x__)
                            (Control.DeepSeq.deepseq
                               (_GrpcService'GoogleGrpc'config x__)
                               (Control.DeepSeq.deepseq
                                  (_GrpcService'GoogleGrpc'perStreamBufferLimitBytes x__)
                                  (Control.DeepSeq.deepseq
                                     (_GrpcService'GoogleGrpc'channelArgs x__) ()))))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'credentialSpecifier' @:: Lens' GrpcService'GoogleGrpc'CallCredentials (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'accessToken' @:: Lens' GrpcService'GoogleGrpc'CallCredentials (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.accessToken' @:: Lens' GrpcService'GoogleGrpc'CallCredentials Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'googleComputeEngine' @:: Lens' GrpcService'GoogleGrpc'CallCredentials (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.googleComputeEngine' @:: Lens' GrpcService'GoogleGrpc'CallCredentials Proto.Google.Protobuf.Empty.Empty@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'googleRefreshToken' @:: Lens' GrpcService'GoogleGrpc'CallCredentials (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.googleRefreshToken' @:: Lens' GrpcService'GoogleGrpc'CallCredentials Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'serviceAccountJwtAccess' @:: Lens' GrpcService'GoogleGrpc'CallCredentials (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.serviceAccountJwtAccess' @:: Lens' GrpcService'GoogleGrpc'CallCredentials GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'googleIam' @:: Lens' GrpcService'GoogleGrpc'CallCredentials (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.googleIam' @:: Lens' GrpcService'GoogleGrpc'CallCredentials GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'fromPlugin' @:: Lens' GrpcService'GoogleGrpc'CallCredentials (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.fromPlugin' @:: Lens' GrpcService'GoogleGrpc'CallCredentials GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'stsService' @:: Lens' GrpcService'GoogleGrpc'CallCredentials (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'StsService)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.stsService' @:: Lens' GrpcService'GoogleGrpc'CallCredentials GrpcService'GoogleGrpc'CallCredentials'StsService@ -}
data GrpcService'GoogleGrpc'CallCredentials
  = GrpcService'GoogleGrpc'CallCredentials'_constructor {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier :: !(Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier),
                                                         _GrpcService'GoogleGrpc'CallCredentials'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'CallCredentials where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier
  = GrpcService'GoogleGrpc'CallCredentials'AccessToken !Data.Text.Text |
    GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine !Proto.Google.Protobuf.Empty.Empty |
    GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken !Data.Text.Text |
    GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess !GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials |
    GrpcService'GoogleGrpc'CallCredentials'GoogleIam !GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials |
    GrpcService'GoogleGrpc'CallCredentials'FromPlugin !GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin |
    GrpcService'GoogleGrpc'CallCredentials'StsService' !GrpcService'GoogleGrpc'CallCredentials'StsService
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "maybe'credentialSpecifier" (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "maybe'accessToken" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'AccessToken x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'CallCredentials'AccessToken y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "accessToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'AccessToken x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'CallCredentials'AccessToken y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "maybe'googleComputeEngine" (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "googleComputeEngine" Proto.Google.Protobuf.Empty.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "maybe'googleRefreshToken" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "googleRefreshToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "maybe'serviceAccountJwtAccess" (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess
                   y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "serviceAccountJwtAccess" GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess
                      y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "maybe'googleIam" (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'GoogleIam x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'CallCredentials'GoogleIam y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "googleIam" GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'GoogleIam x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'CallCredentials'GoogleIam y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "maybe'fromPlugin" (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'FromPlugin x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'CallCredentials'FromPlugin y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "fromPlugin" GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'FromPlugin x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'CallCredentials'FromPlugin y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "maybe'stsService" (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'StsService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'StsService' x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'CallCredentials'StsService' y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials "stsService" GrpcService'GoogleGrpc'CallCredentials'StsService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'StsService' x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'CallCredentials'StsService' y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'CallCredentials where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials"
  packedMessageDescriptor _
    = "\n\
      \\SICallCredentials\DC2#\n\
      \\faccess_token\CAN\SOH \SOH(\tH\NULR\vaccessToken\DC2L\n\
      \\NAKgoogle_compute_engine\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\DC3googleComputeEngine\DC22\n\
      \\DC4google_refresh_token\CAN\ETX \SOH(\tH\NULR\DC2googleRefreshToken\DC2\158\SOH\n\
      \\SUBservice_account_jwt_access\CAN\EOT \SOH(\v2_.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentialsH\NULR\ETBserviceAccountJwtAccess\DC2r\n\
      \\n\
      \google_iam\CAN\ENQ \SOH(\v2Q.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentialsH\NULR\tgoogleIam\DC2}\n\
      \\vfrom_plugin\CAN\ACK \SOH(\v2Z.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginH\NULR\n\
      \fromPlugin\DC2j\n\
      \\vsts_service\CAN\a \SOH(\v2G.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsServiceH\NULR\n\
      \stsService\SUB\217\SOH\n\
      \\"ServiceAccountJWTAccessCredentials\DC2\EM\n\
      \\bjson_key\CAN\SOH \SOH(\tR\ajsonKey\DC24\n\
      \\SYNtoken_lifetime_seconds\CAN\STX \SOH(\EOTR\DC4tokenLifetimeSeconds:b\154\197\136\RS]\n\
      \[envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials\SUB\204\SOH\n\
      \\DC4GoogleIAMCredentials\DC2/\n\
      \\DC3authorization_token\CAN\SOH \SOH(\tR\DC2authorizationToken\DC2-\n\
      \\DC2authority_selector\CAN\STX \SOH(\tR\DC1authoritySelector:T\154\197\136\RSO\n\
      \Menvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials\SUB\234\SOH\n\
      \\GSMetadataCredentialsFromPlugin\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:]\154\197\136\RSX\n\
      \Venvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginJ\EOT\b\STX\DLE\ETXR\ACKconfig\SUB\215\ETX\n\
      \\n\
      \StsService\DC2;\n\
      \\SUBtoken_exchange_service_uri\CAN\SOH \SOH(\tR\ETBtokenExchangeServiceUri\DC2\SUB\n\
      \\bresource\CAN\STX \SOH(\tR\bresource\DC2\SUB\n\
      \\baudience\CAN\ETX \SOH(\tR\baudience\DC2\DC4\n\
      \\ENQscope\CAN\EOT \SOH(\tR\ENQscope\DC20\n\
      \\DC4requested_token_type\CAN\ENQ \SOH(\tR\DC2requestedTokenType\DC25\n\
      \\DC2subject_token_path\CAN\ACK \SOH(\tR\DLEsubjectTokenPathB\a\250B\EOTr\STX\DLE\SOH\DC25\n\
      \\DC2subject_token_type\CAN\a \SOH(\tR\DLEsubjectTokenTypeB\a\250B\EOTr\STX\DLE\SOH\DC2(\n\
      \\DLEactor_token_path\CAN\b \SOH(\tR\SOactorTokenPath\DC2(\n\
      \\DLEactor_token_type\CAN\t \SOH(\tR\SOactorTokenType:J\154\197\136\RSE\n\
      \Cenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.StsServiceB\ESC\n\
      \\DC4credential_specifier\DC2\ETX\248B\SOH:?\154\197\136\RS:\n\
      \8envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        accessToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "access_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'accessToken")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials
        googleComputeEngine__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "google_compute_engine"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Empty.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'googleComputeEngine")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials
        googleRefreshToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "google_refresh_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'googleRefreshToken")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials
        serviceAccountJwtAccess__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_account_jwt_access"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'serviceAccountJwtAccess")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials
        googleIam__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "google_iam"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'googleIam")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials
        fromPlugin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from_plugin"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fromPlugin")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials
        stsService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sts_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'CallCredentials'StsService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stsService")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, accessToken__field_descriptor),
           (Data.ProtoLens.Tag 2, googleComputeEngine__field_descriptor),
           (Data.ProtoLens.Tag 3, googleRefreshToken__field_descriptor),
           (Data.ProtoLens.Tag 4, serviceAccountJwtAccess__field_descriptor),
           (Data.ProtoLens.Tag 5, googleIam__field_descriptor),
           (Data.ProtoLens.Tag 6, fromPlugin__field_descriptor),
           (Data.ProtoLens.Tag 7, stsService__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'CallCredentials'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcService'GoogleGrpc'CallCredentials'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'CallCredentials'_constructor
        {_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier = Prelude.Nothing,
         _GrpcService'GoogleGrpc'CallCredentials'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'CallCredentials
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'CallCredentials
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
                                       "access_token"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"accessToken") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "google_compute_engine"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"googleComputeEngine") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "google_refresh_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"googleRefreshToken") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "service_account_jwt_access"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"serviceAccountJwtAccess") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "google_iam"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"googleIam") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "from_plugin"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fromPlugin") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sts_service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stsService") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CallCredentials"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'credentialSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'AccessToken v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'GoogleIam v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'FromPlugin v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'StsService' v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'CallCredentials where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'CallCredentials'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'CallCredentials'credentialSpecifier x__)
                ())
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier where
  rnf (GrpcService'GoogleGrpc'CallCredentials'AccessToken x__)
    = Control.DeepSeq.rnf x__
  rnf
    (GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine x__)
    = Control.DeepSeq.rnf x__
  rnf (GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken x__)
    = Control.DeepSeq.rnf x__
  rnf
    (GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess x__)
    = Control.DeepSeq.rnf x__
  rnf (GrpcService'GoogleGrpc'CallCredentials'GoogleIam x__)
    = Control.DeepSeq.rnf x__
  rnf (GrpcService'GoogleGrpc'CallCredentials'FromPlugin x__)
    = Control.DeepSeq.rnf x__
  rnf (GrpcService'GoogleGrpc'CallCredentials'StsService' x__)
    = Control.DeepSeq.rnf x__
_GrpcService'GoogleGrpc'CallCredentials'AccessToken ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier Data.Text.Text
_GrpcService'GoogleGrpc'CallCredentials'AccessToken
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'CallCredentials'AccessToken
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'CallCredentials'AccessToken p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier Proto.Google.Protobuf.Empty.Empty
_GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'CallCredentials'GoogleComputeEngine p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier Data.Text.Text
_GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'CallCredentials'GoogleRefreshToken p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials
_GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJwtAccess p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcService'GoogleGrpc'CallCredentials'GoogleIam ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials
_GrpcService'GoogleGrpc'CallCredentials'GoogleIam
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'CallCredentials'GoogleIam
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'CallCredentials'GoogleIam p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcService'GoogleGrpc'CallCredentials'FromPlugin ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin
_GrpcService'GoogleGrpc'CallCredentials'FromPlugin
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'CallCredentials'FromPlugin
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'CallCredentials'FromPlugin p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcService'GoogleGrpc'CallCredentials'StsService' ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'CallCredentials'CredentialSpecifier GrpcService'GoogleGrpc'CallCredentials'StsService
_GrpcService'GoogleGrpc'CallCredentials'StsService'
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'CallCredentials'StsService'
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'CallCredentials'StsService' p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.authorizationToken' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.authoritySelector' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials Data.Text.Text@ -}
data GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials
  = GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'_constructor {_GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'authorizationToken :: !Data.Text.Text,
                                                                              _GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'authoritySelector :: !Data.Text.Text,
                                                                              _GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials "authorizationToken" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'authorizationToken
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'authorizationToken = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials "authoritySelector" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'authoritySelector
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'authoritySelector = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials"
  packedMessageDescriptor _
    = "\n\
      \\DC4GoogleIAMCredentials\DC2/\n\
      \\DC3authorization_token\CAN\SOH \SOH(\tR\DC2authorizationToken\DC2-\n\
      \\DC2authority_selector\CAN\STX \SOH(\tR\DC1authoritySelector:T\154\197\136\RSO\n\
      \Menvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authorizationToken__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authorization_token"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authorizationToken")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials
        authoritySelector__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authority_selector"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"authoritySelector")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, authorizationToken__field_descriptor),
           (Data.ProtoLens.Tag 2, authoritySelector__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'_constructor
        {_GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'authorizationToken = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'authoritySelector = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials
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
                                       "authorization_token"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authorizationToken") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "authority_selector"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"authoritySelector") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GoogleIAMCredentials"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"authorizationToken") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"authoritySelector") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'authorizationToken
                   x__)
                (Control.DeepSeq.deepseq
                   (_GrpcService'GoogleGrpc'CallCredentials'GoogleIAMCredentials'authoritySelector
                      x__)
                   ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.name' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'configType' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'ConfigType)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'typedConfig' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin (Prelude.Maybe Proto.Google.Protobuf.Any.Any)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.typedConfig' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin Proto.Google.Protobuf.Any.Any@ -}
data GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin
  = GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'_constructor {_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'name :: !Data.Text.Text,
                                                                                       _GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'configType :: !(Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'ConfigType),
                                                                                       _GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'ConfigType
  = GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig !Proto.Google.Protobuf.Any.Any
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'name
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin "maybe'configType" (Prelude.Maybe GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'ConfigType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'configType
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'configType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin "maybe'typedConfig" (Prelude.Maybe Proto.Google.Protobuf.Any.Any) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'configType
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'configType = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig
                   y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin "typedConfig" Proto.Google.Protobuf.Any.Any where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'configType
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'configType = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig
                      y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPlugin"
  packedMessageDescriptor _
    = "\n\
      \\GSMetadataCredentialsFromPlugin\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC29\n\
      \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
      \\vconfig_type:]\154\197\136\RSX\n\
      \Venvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginJ\EOT\b\STX\DLE\ETXR\ACKconfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin
        typedConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "typed_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'typedConfig")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 3, typedConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'_constructor
        {_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'name = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'configType = Prelude.Nothing,
         _GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
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
          (do loop Data.ProtoLens.defMessage) "MetadataCredentialsFromPlugin"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
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
                   (Prelude.Just (GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig v))
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
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'name
                   x__)
                (Control.DeepSeq.deepseq
                   (_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'configType
                      x__)
                   ()))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'ConfigType where
  rnf
    (GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig x__)
    = Control.DeepSeq.rnf x__
_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'ConfigType Proto.Google.Protobuf.Any.Any
_GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig
      (\ p__
         -> case p__ of {
              (GrpcService'GoogleGrpc'CallCredentials'MetadataCredentialsFromPlugin'TypedConfig p__val)
                -> Prelude.Just p__val })
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.jsonKey' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.tokenLifetimeSeconds' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials Data.Word.Word64@ -}
data GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials
  = GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'_constructor {_GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'jsonKey :: !Data.Text.Text,
                                                                                            _GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'tokenLifetimeSeconds :: !Data.Word.Word64,
                                                                                            _GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials "jsonKey" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'jsonKey
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'jsonKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials "tokenLifetimeSeconds" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'tokenLifetimeSeconds
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'tokenLifetimeSeconds = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials"
  packedMessageDescriptor _
    = "\n\
      \\"ServiceAccountJWTAccessCredentials\DC2\EM\n\
      \\bjson_key\CAN\SOH \SOH(\tR\ajsonKey\DC24\n\
      \\SYNtoken_lifetime_seconds\CAN\STX \SOH(\EOTR\DC4tokenLifetimeSeconds:b\154\197\136\RS]\n\
      \[envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        jsonKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "json_key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"jsonKey")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials
        tokenLifetimeSeconds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "token_lifetime_seconds"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"tokenLifetimeSeconds")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, jsonKey__field_descriptor),
           (Data.ProtoLens.Tag 2, tokenLifetimeSeconds__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'_constructor
        {_GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'jsonKey = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'tokenLifetimeSeconds = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials
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
                                       "json_key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"jsonKey") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "token_lifetime_seconds"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tokenLifetimeSeconds") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "ServiceAccountJWTAccessCredentials"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"jsonKey") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"tokenLifetimeSeconds") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'jsonKey
                   x__)
                (Control.DeepSeq.deepseq
                   (_GrpcService'GoogleGrpc'CallCredentials'ServiceAccountJWTAccessCredentials'tokenLifetimeSeconds
                      x__)
                   ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.tokenExchangeServiceUri' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'StsService Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.resource' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'StsService Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.audience' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'StsService Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.scope' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'StsService Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.requestedTokenType' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'StsService Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.subjectTokenPath' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'StsService Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.subjectTokenType' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'StsService Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.actorTokenPath' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'StsService Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.actorTokenType' @:: Lens' GrpcService'GoogleGrpc'CallCredentials'StsService Data.Text.Text@ -}
data GrpcService'GoogleGrpc'CallCredentials'StsService
  = GrpcService'GoogleGrpc'CallCredentials'StsService'_constructor {_GrpcService'GoogleGrpc'CallCredentials'StsService'tokenExchangeServiceUri :: !Data.Text.Text,
                                                                    _GrpcService'GoogleGrpc'CallCredentials'StsService'resource :: !Data.Text.Text,
                                                                    _GrpcService'GoogleGrpc'CallCredentials'StsService'audience :: !Data.Text.Text,
                                                                    _GrpcService'GoogleGrpc'CallCredentials'StsService'scope :: !Data.Text.Text,
                                                                    _GrpcService'GoogleGrpc'CallCredentials'StsService'requestedTokenType :: !Data.Text.Text,
                                                                    _GrpcService'GoogleGrpc'CallCredentials'StsService'subjectTokenPath :: !Data.Text.Text,
                                                                    _GrpcService'GoogleGrpc'CallCredentials'StsService'subjectTokenType :: !Data.Text.Text,
                                                                    _GrpcService'GoogleGrpc'CallCredentials'StsService'actorTokenPath :: !Data.Text.Text,
                                                                    _GrpcService'GoogleGrpc'CallCredentials'StsService'actorTokenType :: !Data.Text.Text,
                                                                    _GrpcService'GoogleGrpc'CallCredentials'StsService'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'CallCredentials'StsService where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'StsService "tokenExchangeServiceUri" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'StsService'tokenExchangeServiceUri
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'StsService'tokenExchangeServiceUri = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'StsService "resource" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'StsService'resource
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'StsService'resource = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'StsService "audience" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'StsService'audience
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'StsService'audience = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'StsService "scope" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'StsService'scope
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'StsService'scope = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'StsService "requestedTokenType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'StsService'requestedTokenType
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'StsService'requestedTokenType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'StsService "subjectTokenPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'StsService'subjectTokenPath
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'StsService'subjectTokenPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'StsService "subjectTokenType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'StsService'subjectTokenType
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'StsService'subjectTokenType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'StsService "actorTokenPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'StsService'actorTokenPath
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'StsService'actorTokenPath = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'CallCredentials'StsService "actorTokenType" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'CallCredentials'StsService'actorTokenType
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'CallCredentials'StsService'actorTokenType = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'CallCredentials'StsService where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsService"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \StsService\DC2;\n\
      \\SUBtoken_exchange_service_uri\CAN\SOH \SOH(\tR\ETBtokenExchangeServiceUri\DC2\SUB\n\
      \\bresource\CAN\STX \SOH(\tR\bresource\DC2\SUB\n\
      \\baudience\CAN\ETX \SOH(\tR\baudience\DC2\DC4\n\
      \\ENQscope\CAN\EOT \SOH(\tR\ENQscope\DC20\n\
      \\DC4requested_token_type\CAN\ENQ \SOH(\tR\DC2requestedTokenType\DC25\n\
      \\DC2subject_token_path\CAN\ACK \SOH(\tR\DLEsubjectTokenPathB\a\250B\EOTr\STX\DLE\SOH\DC25\n\
      \\DC2subject_token_type\CAN\a \SOH(\tR\DLEsubjectTokenTypeB\a\250B\EOTr\STX\DLE\SOH\DC2(\n\
      \\DLEactor_token_path\CAN\b \SOH(\tR\SOactorTokenPath\DC2(\n\
      \\DLEactor_token_type\CAN\t \SOH(\tR\SOactorTokenType:J\154\197\136\RSE\n\
      \Cenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.StsService"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tokenExchangeServiceUri__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "token_exchange_service_uri"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"tokenExchangeServiceUri")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'StsService
        resource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resource")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'StsService
        audience__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "audience"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"audience")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'StsService
        scope__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "scope"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"scope")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'StsService
        requestedTokenType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "requested_token_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"requestedTokenType")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'StsService
        subjectTokenPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subject_token_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"subjectTokenPath")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'StsService
        subjectTokenType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "subject_token_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"subjectTokenType")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'StsService
        actorTokenPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "actor_token_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"actorTokenPath")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'StsService
        actorTokenType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "actor_token_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"actorTokenType")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'CallCredentials'StsService
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, tokenExchangeServiceUri__field_descriptor),
           (Data.ProtoLens.Tag 2, resource__field_descriptor),
           (Data.ProtoLens.Tag 3, audience__field_descriptor),
           (Data.ProtoLens.Tag 4, scope__field_descriptor),
           (Data.ProtoLens.Tag 5, requestedTokenType__field_descriptor),
           (Data.ProtoLens.Tag 6, subjectTokenPath__field_descriptor),
           (Data.ProtoLens.Tag 7, subjectTokenType__field_descriptor),
           (Data.ProtoLens.Tag 8, actorTokenPath__field_descriptor),
           (Data.ProtoLens.Tag 9, actorTokenType__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'CallCredentials'StsService'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcService'GoogleGrpc'CallCredentials'StsService'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'CallCredentials'StsService'_constructor
        {_GrpcService'GoogleGrpc'CallCredentials'StsService'tokenExchangeServiceUri = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'StsService'resource = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'StsService'audience = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'StsService'scope = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'StsService'requestedTokenType = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'StsService'subjectTokenPath = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'StsService'subjectTokenType = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'StsService'actorTokenPath = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'StsService'actorTokenType = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'CallCredentials'StsService'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'CallCredentials'StsService
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'CallCredentials'StsService
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
                                       "token_exchange_service_uri"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tokenExchangeServiceUri") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "resource"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"resource") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "audience"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"audience") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "scope"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"scope") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "requested_token_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestedTokenType") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "subject_token_path"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"subjectTokenPath") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "subject_token_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"subjectTokenType") y x)
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "actor_token_path"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"actorTokenPath") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "actor_token_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"actorTokenType") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "StsService"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"tokenExchangeServiceUri") _x
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
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"resource") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v = Lens.Family2.view (Data.ProtoLens.Field.field @"audience") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"scope") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8
                                  _v))
                      ((Data.Monoid.<>)
                         (let
                            _v
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"requestedTokenType") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                  ((Prelude..)
                                     (\ bs
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                                             (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                     Data.Text.Encoding.encodeUtf8
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"subjectTokenPath") _x
                             in
                               if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                     ((Prelude..)
                                        (\ bs
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                        Data.Text.Encoding.encodeUtf8
                                        _v))
                            ((Data.Monoid.<>)
                               (let
                                  _v
                                    = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"subjectTokenType") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((Prelude..)
                                           (\ bs
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           Data.Text.Encoding.encodeUtf8
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"actorTokenPath") _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((Prelude..)
                                              (\ bs
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Data.Text.Encoding.encodeUtf8
                                              _v))
                                  ((Data.Monoid.<>)
                                     (let
                                        _v
                                          = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"actorTokenType") _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                              ((Prelude..)
                                                 (\ bs
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            (Prelude.fromIntegral
                                                               (Data.ByteString.length bs)))
                                                         (Data.ProtoLens.Encoding.Bytes.putBytes
                                                            bs))
                                                 Data.Text.Encoding.encodeUtf8
                                                 _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'CallCredentials'StsService where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'CallCredentials'StsService'_unknownFields
                x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'CallCredentials'StsService'tokenExchangeServiceUri
                   x__)
                (Control.DeepSeq.deepseq
                   (_GrpcService'GoogleGrpc'CallCredentials'StsService'resource x__)
                   (Control.DeepSeq.deepseq
                      (_GrpcService'GoogleGrpc'CallCredentials'StsService'audience x__)
                      (Control.DeepSeq.deepseq
                         (_GrpcService'GoogleGrpc'CallCredentials'StsService'scope x__)
                         (Control.DeepSeq.deepseq
                            (_GrpcService'GoogleGrpc'CallCredentials'StsService'requestedTokenType
                               x__)
                            (Control.DeepSeq.deepseq
                               (_GrpcService'GoogleGrpc'CallCredentials'StsService'subjectTokenPath
                                  x__)
                               (Control.DeepSeq.deepseq
                                  (_GrpcService'GoogleGrpc'CallCredentials'StsService'subjectTokenType
                                     x__)
                                  (Control.DeepSeq.deepseq
                                     (_GrpcService'GoogleGrpc'CallCredentials'StsService'actorTokenPath
                                        x__)
                                     (Control.DeepSeq.deepseq
                                        (_GrpcService'GoogleGrpc'CallCredentials'StsService'actorTokenType
                                           x__)
                                        ())))))))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.args' @:: Lens' GrpcService'GoogleGrpc'ChannelArgs (Data.Map.Map Data.Text.Text GrpcService'GoogleGrpc'ChannelArgs'Value)@ -}
data GrpcService'GoogleGrpc'ChannelArgs
  = GrpcService'GoogleGrpc'ChannelArgs'_constructor {_GrpcService'GoogleGrpc'ChannelArgs'args :: !(Data.Map.Map Data.Text.Text GrpcService'GoogleGrpc'ChannelArgs'Value),
                                                     _GrpcService'GoogleGrpc'ChannelArgs'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'ChannelArgs where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelArgs "args" (Data.Map.Map Data.Text.Text GrpcService'GoogleGrpc'ChannelArgs'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelArgs'args
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'ChannelArgs'args = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'ChannelArgs where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs"
  packedMessageDescriptor _
    = "\n\
      \\vChannelArgs\DC2V\n\
      \\EOTargs\CAN\SOH \ETX(\v2B.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ArgsEntryR\EOTargs\SUBc\n\
      \\ENQValue\DC2#\n\
      \\fstring_value\CAN\SOH \SOH(\tH\NULR\vstringValue\DC2\GS\n\
      \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValueB\SYN\n\
      \\SIvalue_specifier\DC2\ETX\248B\SOH\SUBw\n\
      \\tArgsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2T\n\
      \\ENQvalue\CAN\STX \SOH(\v2>.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ValueR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        args__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "args"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry)
              (Data.ProtoLens.MapField
                 (Data.ProtoLens.Field.field @"key")
                 (Data.ProtoLens.Field.field @"value")
                 (Data.ProtoLens.Field.field @"args")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'ChannelArgs
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, args__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'ChannelArgs'_unknownFields
        (\ x__ y__
           -> x__ {_GrpcService'GoogleGrpc'ChannelArgs'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'ChannelArgs'_constructor
        {_GrpcService'GoogleGrpc'ChannelArgs'args = Data.Map.empty,
         _GrpcService'GoogleGrpc'ChannelArgs'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'ChannelArgs
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'ChannelArgs
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
                          -> do !(entry :: GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry) <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                                              (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                    (Prelude.fromIntegral
                                                                                                       len)
                                                                                                    Data.ProtoLens.parseMessage)
                                                                                              "args"
                                (let
                                   key = Lens.Family2.view (Data.ProtoLens.Field.field @"key") entry
                                   value
                                     = Lens.Family2.view (Data.ProtoLens.Field.field @"value") entry
                                 in
                                   loop
                                     (Lens.Family2.over
                                        (Data.ProtoLens.Field.field @"args")
                                        (\ !t -> Data.Map.insert key value t)
                                        x))
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ChannelArgs"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.Monoid.mconcat
                (Prelude.map
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
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"key")
                                 (Prelude.fst _v)
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"value")
                                    (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage ::
                                       GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry)))))
                   (Data.Map.toList
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"args") _x))))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'ChannelArgs where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'ChannelArgs'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'ChannelArgs'args x__) ())
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.key' @:: Lens' GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.value' @:: Lens' GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry GrpcService'GoogleGrpc'ChannelArgs'Value@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'value' @:: Lens' GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry (Prelude.Maybe GrpcService'GoogleGrpc'ChannelArgs'Value)@ -}
data GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry
  = GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'_constructor {_GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'key :: !Data.Text.Text,
                                                               _GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'value :: !(Prelude.Maybe GrpcService'GoogleGrpc'ChannelArgs'Value),
                                                               _GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'key
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry "value" GrpcService'GoogleGrpc'ChannelArgs'Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'value
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry "maybe'value" (Prelude.Maybe GrpcService'GoogleGrpc'ChannelArgs'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'value
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ArgsEntry"
  packedMessageDescriptor _
    = "\n\
      \\tArgsEntry\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2T\n\
      \\ENQvalue\CAN\STX \SOH(\v2>.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ValueR\ENQvalue:\STX8\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"key")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'ChannelArgs'Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'_constructor
        {_GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'key = Data.ProtoLens.fieldDefault,
         _GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'value = Prelude.Nothing,
         _GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ArgsEntry"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'key x__)
                (Control.DeepSeq.deepseq
                   (_GrpcService'GoogleGrpc'ChannelArgs'ArgsEntry'value x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'valueSpecifier' @:: Lens' GrpcService'GoogleGrpc'ChannelArgs'Value (Prelude.Maybe GrpcService'GoogleGrpc'ChannelArgs'Value'ValueSpecifier)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'stringValue' @:: Lens' GrpcService'GoogleGrpc'ChannelArgs'Value (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.stringValue' @:: Lens' GrpcService'GoogleGrpc'ChannelArgs'Value Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'intValue' @:: Lens' GrpcService'GoogleGrpc'ChannelArgs'Value (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.intValue' @:: Lens' GrpcService'GoogleGrpc'ChannelArgs'Value Data.Int.Int64@ -}
data GrpcService'GoogleGrpc'ChannelArgs'Value
  = GrpcService'GoogleGrpc'ChannelArgs'Value'_constructor {_GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier :: !(Prelude.Maybe GrpcService'GoogleGrpc'ChannelArgs'Value'ValueSpecifier),
                                                           _GrpcService'GoogleGrpc'ChannelArgs'Value'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'ChannelArgs'Value where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data GrpcService'GoogleGrpc'ChannelArgs'Value'ValueSpecifier
  = GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue !Data.Text.Text |
    GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue !Data.Int.Int64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelArgs'Value "maybe'valueSpecifier" (Prelude.Maybe GrpcService'GoogleGrpc'ChannelArgs'Value'ValueSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelArgs'Value "maybe'stringValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelArgs'Value "stringValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelArgs'Value "maybe'intValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelArgs'Value "intValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'ChannelArgs'Value where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.Value"
  packedMessageDescriptor _
    = "\n\
      \\ENQValue\DC2#\n\
      \\fstring_value\CAN\SOH \SOH(\tH\NULR\vstringValue\DC2\GS\n\
      \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValueB\SYN\n\
      \\SIvalue_specifier\DC2\ETX\248B\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        stringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringValue")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'ChannelArgs'Value
        intValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intValue")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'ChannelArgs'Value
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, stringValue__field_descriptor),
           (Data.ProtoLens.Tag 2, intValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'ChannelArgs'Value'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcService'GoogleGrpc'ChannelArgs'Value'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'ChannelArgs'Value'_constructor
        {_GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier = Prelude.Nothing,
         _GrpcService'GoogleGrpc'ChannelArgs'Value'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'ChannelArgs'Value
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'ChannelArgs'Value
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
                                       "string_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringValue") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"intValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Value"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'valueSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.Text.Encoding.encodeUtf8
                          v)
                (Prelude.Just (GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'ChannelArgs'Value where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'ChannelArgs'Value'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'ChannelArgs'Value'valueSpecifier x__) ())
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'ChannelArgs'Value'ValueSpecifier where
  rnf (GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue x__)
    = Control.DeepSeq.rnf x__
  rnf (GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue x__)
    = Control.DeepSeq.rnf x__
_GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'ChannelArgs'Value'ValueSpecifier Data.Text.Text
_GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'ChannelArgs'Value'StringValue p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'ChannelArgs'Value'ValueSpecifier Data.Int.Int64
_GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'ChannelArgs'Value'IntValue p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'credentialSpecifier' @:: Lens' GrpcService'GoogleGrpc'ChannelCredentials (Prelude.Maybe GrpcService'GoogleGrpc'ChannelCredentials'CredentialSpecifier)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'sslCredentials' @:: Lens' GrpcService'GoogleGrpc'ChannelCredentials (Prelude.Maybe GrpcService'GoogleGrpc'SslCredentials)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.sslCredentials' @:: Lens' GrpcService'GoogleGrpc'ChannelCredentials GrpcService'GoogleGrpc'SslCredentials@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'googleDefault' @:: Lens' GrpcService'GoogleGrpc'ChannelCredentials (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.googleDefault' @:: Lens' GrpcService'GoogleGrpc'ChannelCredentials Proto.Google.Protobuf.Empty.Empty@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'localCredentials' @:: Lens' GrpcService'GoogleGrpc'ChannelCredentials (Prelude.Maybe GrpcService'GoogleGrpc'GoogleLocalCredentials)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.localCredentials' @:: Lens' GrpcService'GoogleGrpc'ChannelCredentials GrpcService'GoogleGrpc'GoogleLocalCredentials@ -}
data GrpcService'GoogleGrpc'ChannelCredentials
  = GrpcService'GoogleGrpc'ChannelCredentials'_constructor {_GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier :: !(Prelude.Maybe GrpcService'GoogleGrpc'ChannelCredentials'CredentialSpecifier),
                                                            _GrpcService'GoogleGrpc'ChannelCredentials'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'ChannelCredentials where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data GrpcService'GoogleGrpc'ChannelCredentials'CredentialSpecifier
  = GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials !GrpcService'GoogleGrpc'SslCredentials |
    GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault !Proto.Google.Protobuf.Empty.Empty |
    GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials !GrpcService'GoogleGrpc'GoogleLocalCredentials
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelCredentials "maybe'credentialSpecifier" (Prelude.Maybe GrpcService'GoogleGrpc'ChannelCredentials'CredentialSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelCredentials "maybe'sslCredentials" (Prelude.Maybe GrpcService'GoogleGrpc'SslCredentials) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelCredentials "sslCredentials" GrpcService'GoogleGrpc'SslCredentials where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelCredentials "maybe'googleDefault" (Prelude.Maybe Proto.Google.Protobuf.Empty.Empty) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelCredentials "googleDefault" Proto.Google.Protobuf.Empty.Empty where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelCredentials "maybe'localCredentials" (Prelude.Maybe GrpcService'GoogleGrpc'GoogleLocalCredentials) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap
                   GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials y__))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'ChannelCredentials "localCredentials" GrpcService'GoogleGrpc'GoogleLocalCredentials where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier
           (\ x__ y__
              -> x__
                   {_GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap
                      GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'ChannelCredentials where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentials"
  packedMessageDescriptor _
    = "\n\
      \\DC2ChannelCredentials\DC2f\n\
      \\SIssl_credentials\CAN\SOH \SOH(\v2;.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentialsH\NULR\SOsslCredentials\DC2?\n\
      \\SOgoogle_default\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\rgoogleDefault\DC2r\n\
      \\DC1local_credentials\CAN\ETX \SOH(\v2C.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentialsH\NULR\DLElocalCredentialsB\ESC\n\
      \\DC4credential_specifier\DC2\ETX\248B\SOH:B\154\197\136\RS=\n\
      \;envoy.api.v2.core.GrpcService.GoogleGrpc.ChannelCredentials"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sslCredentials__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ssl_credentials"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'SslCredentials)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sslCredentials")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'ChannelCredentials
        googleDefault__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "google_default"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Empty.Empty)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'googleDefault")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'ChannelCredentials
        localCredentials__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "local_credentials"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor GrpcService'GoogleGrpc'GoogleLocalCredentials)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'localCredentials")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'ChannelCredentials
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sslCredentials__field_descriptor),
           (Data.ProtoLens.Tag 2, googleDefault__field_descriptor),
           (Data.ProtoLens.Tag 3, localCredentials__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'ChannelCredentials'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcService'GoogleGrpc'ChannelCredentials'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'ChannelCredentials'_constructor
        {_GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier = Prelude.Nothing,
         _GrpcService'GoogleGrpc'ChannelCredentials'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'ChannelCredentials
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'ChannelCredentials
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ssl_credentials"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sslCredentials") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "google_default"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"googleDefault") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "local_credentials"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"localCredentials") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ChannelCredentials"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'credentialSpecifier") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage
                          v)
                (Prelude.Just (GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials v))
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
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'ChannelCredentials where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'ChannelCredentials'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'ChannelCredentials'credentialSpecifier
                   x__)
                ())
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'ChannelCredentials'CredentialSpecifier where
  rnf (GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials x__)
    = Control.DeepSeq.rnf x__
  rnf (GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault x__)
    = Control.DeepSeq.rnf x__
  rnf
    (GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials x__)
    = Control.DeepSeq.rnf x__
_GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'ChannelCredentials'CredentialSpecifier GrpcService'GoogleGrpc'SslCredentials
_GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'ChannelCredentials'SslCredentials p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'ChannelCredentials'CredentialSpecifier Proto.Google.Protobuf.Empty.Empty
_GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'ChannelCredentials'GoogleDefault p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials ::
  Data.ProtoLens.Prism.Prism' GrpcService'GoogleGrpc'ChannelCredentials'CredentialSpecifier GrpcService'GoogleGrpc'GoogleLocalCredentials
_GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials
  = Data.ProtoLens.Prism.prism'
      GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials
      (\ p__
         -> case p__ of
              (GrpcService'GoogleGrpc'ChannelCredentials'LocalCredentials p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
      -}
data GrpcService'GoogleGrpc'GoogleLocalCredentials
  = GrpcService'GoogleGrpc'GoogleLocalCredentials'_constructor {_GrpcService'GoogleGrpc'GoogleLocalCredentials'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'GoogleLocalCredentials where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'GoogleLocalCredentials where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentials"
  packedMessageDescriptor _
    = "\n\
      \\SYNGoogleLocalCredentials:F\154\197\136\RSA\n\
      \?envoy.api.v2.core.GrpcService.GoogleGrpc.GoogleLocalCredentials"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'GoogleLocalCredentials'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcService'GoogleGrpc'GoogleLocalCredentials'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'GoogleLocalCredentials'_constructor
        {_GrpcService'GoogleGrpc'GoogleLocalCredentials'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'GoogleLocalCredentials
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'GoogleLocalCredentials
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
                      case tag of {
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x) }
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "GoogleLocalCredentials"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'GoogleLocalCredentials where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'GoogleLocalCredentials'_unknownFields x__)
             ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.rootCerts' @:: Lens' GrpcService'GoogleGrpc'SslCredentials Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'rootCerts' @:: Lens' GrpcService'GoogleGrpc'SslCredentials (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.privateKey' @:: Lens' GrpcService'GoogleGrpc'SslCredentials Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'privateKey' @:: Lens' GrpcService'GoogleGrpc'SslCredentials (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.certChain' @:: Lens' GrpcService'GoogleGrpc'SslCredentials Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Config.Core.V3.GrpcService_Fields.maybe'certChain' @:: Lens' GrpcService'GoogleGrpc'SslCredentials (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@ -}
data GrpcService'GoogleGrpc'SslCredentials
  = GrpcService'GoogleGrpc'SslCredentials'_constructor {_GrpcService'GoogleGrpc'SslCredentials'rootCerts :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                                        _GrpcService'GoogleGrpc'SslCredentials'privateKey :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                                        _GrpcService'GoogleGrpc'SslCredentials'certChain :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                                                        _GrpcService'GoogleGrpc'SslCredentials'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show GrpcService'GoogleGrpc'SslCredentials where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'SslCredentials "rootCerts" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'SslCredentials'rootCerts
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'SslCredentials'rootCerts = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'SslCredentials "maybe'rootCerts" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'SslCredentials'rootCerts
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'SslCredentials'rootCerts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'SslCredentials "privateKey" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'SslCredentials'privateKey
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'SslCredentials'privateKey = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'SslCredentials "maybe'privateKey" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'SslCredentials'privateKey
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'SslCredentials'privateKey = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'SslCredentials "certChain" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'SslCredentials'certChain
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'SslCredentials'certChain = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField GrpcService'GoogleGrpc'SslCredentials "maybe'certChain" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _GrpcService'GoogleGrpc'SslCredentials'certChain
           (\ x__ y__
              -> x__ {_GrpcService'GoogleGrpc'SslCredentials'certChain = y__}))
        Prelude.id
instance Data.ProtoLens.Message GrpcService'GoogleGrpc'SslCredentials where
  messageName _
    = Data.Text.pack
        "envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentials"
  packedMessageDescriptor _
    = "\n\
      \\SOSslCredentials\DC2?\n\
      \\n\
      \root_certs\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\trootCerts\DC2I\n\
      \\vprivate_key\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\n\
      \privateKeyB\ACK\184\183\139\164\STX\SOH\DC2?\n\
      \\n\
      \cert_chain\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceR\tcertChain:>\154\197\136\RS9\n\
      \7envoy.api.v2.core.GrpcService.GoogleGrpc.SslCredentials"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        rootCerts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root_certs"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rootCerts")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'SslCredentials
        privateKey__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "private_key"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'privateKey")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'SslCredentials
        certChain__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cert_chain"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'certChain")) ::
              Data.ProtoLens.FieldDescriptor GrpcService'GoogleGrpc'SslCredentials
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, rootCerts__field_descriptor),
           (Data.ProtoLens.Tag 2, privateKey__field_descriptor),
           (Data.ProtoLens.Tag 3, certChain__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _GrpcService'GoogleGrpc'SslCredentials'_unknownFields
        (\ x__ y__
           -> x__
                {_GrpcService'GoogleGrpc'SslCredentials'_unknownFields = y__})
  defMessage
    = GrpcService'GoogleGrpc'SslCredentials'_constructor
        {_GrpcService'GoogleGrpc'SslCredentials'rootCerts = Prelude.Nothing,
         _GrpcService'GoogleGrpc'SslCredentials'privateKey = Prelude.Nothing,
         _GrpcService'GoogleGrpc'SslCredentials'certChain = Prelude.Nothing,
         _GrpcService'GoogleGrpc'SslCredentials'_unknownFields = []}
  parseMessage
    = let
        loop ::
          GrpcService'GoogleGrpc'SslCredentials
          -> Data.ProtoLens.Encoding.Bytes.Parser GrpcService'GoogleGrpc'SslCredentials
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
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "root_certs"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rootCerts") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "private_key"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"privateKey") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "cert_chain"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"certChain") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SslCredentials"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'rootCerts") _x
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
                          (Data.ProtoLens.Field.field @"maybe'certChain") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData GrpcService'GoogleGrpc'SslCredentials where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_GrpcService'GoogleGrpc'SslCredentials'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_GrpcService'GoogleGrpc'SslCredentials'rootCerts x__)
                (Control.DeepSeq.deepseq
                   (_GrpcService'GoogleGrpc'SslCredentials'privateKey x__)
                   (Control.DeepSeq.deepseq
                      (_GrpcService'GoogleGrpc'SslCredentials'certChain x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'envoy/config/core/v3/grpc_service.proto\DC2\DC4envoy.config.core.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\EMgoogle/protobuf/any.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\ESCgoogle/protobuf/empty.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB udpa/annotations/sensitive.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\140!\n\
    \\vGrpcService\DC2L\n\
    \\n\
    \envoy_grpc\CAN\SOH \SOH(\v2+.envoy.config.core.v3.GrpcService.EnvoyGrpcH\NULR\tenvoyGrpc\DC2O\n\
    \\vgoogle_grpc\CAN\STX \SOH(\v2,.envoy.config.core.v3.GrpcService.GoogleGrpcH\NULR\n\
    \googleGrpc\DC23\n\
    \\atimeout\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\atimeout\DC2L\n\
    \\DLEinitial_metadata\CAN\ENQ \ETX(\v2!.envoy.config.core.v3.HeaderValueR\SIinitialMetadata\SUB\152\SOH\n\
    \\tEnvoyGrpc\DC2*\n\
    \\fcluster_name\CAN\SOH \SOH(\tR\vclusterNameB\a\250B\EOTr\STX\DLE\SOH\DC2/\n\
    \\tauthority\CAN\STX \SOH(\tR\tauthorityB\DC1\250B\SOr\f\DLE\NUL(\128\128\SOH\192\SOH\STX\200\SOH\NUL:.\154\197\136\RS)\n\
    \'envoy.api.v2.core.GrpcService.EnvoyGrpc\SUB\250\FS\n\
    \\n\
    \GoogleGrpc\DC2&\n\
    \\n\
    \target_uri\CAN\SOH \SOH(\tR\ttargetUriB\a\250B\EOTr\STX\DLE\SOH\DC2p\n\
    \\DC3channel_credentials\CAN\STX \SOH(\v2?.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelCredentialsR\DC2channelCredentials\DC2g\n\
    \\DLEcall_credentials\CAN\ETX \ETX(\v2<.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentialsR\SIcallCredentials\DC2(\n\
    \\vstat_prefix\CAN\EOT \SOH(\tR\n\
    \statPrefixB\a\250B\EOTr\STX\DLE\SOH\DC28\n\
    \\CANcredentials_factory_name\CAN\ENQ \SOH(\tR\SYNcredentialsFactoryName\DC2/\n\
    \\ACKconfig\CAN\ACK \SOH(\v2\ETB.google.protobuf.StructR\ACKconfig\DC2^\n\
    \\GSper_stream_buffer_limit_bytes\CAN\a \SOH(\v2\FS.google.protobuf.UInt32ValueR\EMperStreamBufferLimitBytes\DC2[\n\
    \\fchannel_args\CAN\b \SOH(\v28.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgsR\vchannelArgs\SUB\157\STX\n\
    \\SOSslCredentials\DC2?\n\
    \\n\
    \root_certs\CAN\SOH \SOH(\v2 .envoy.config.core.v3.DataSourceR\trootCerts\DC2I\n\
    \\vprivate_key\CAN\STX \SOH(\v2 .envoy.config.core.v3.DataSourceR\n\
    \privateKeyB\ACK\184\183\139\164\STX\SOH\DC2?\n\
    \\n\
    \cert_chain\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceR\tcertChain:>\154\197\136\RS9\n\
    \7envoy.api.v2.core.GrpcService.GoogleGrpc.SslCredentials\SUB`\n\
    \\SYNGoogleLocalCredentials:F\154\197\136\RSA\n\
    \?envoy.api.v2.core.GrpcService.GoogleGrpc.GoogleLocalCredentials\SUB\146\ETX\n\
    \\DC2ChannelCredentials\DC2f\n\
    \\SIssl_credentials\CAN\SOH \SOH(\v2;.envoy.config.core.v3.GrpcService.GoogleGrpc.SslCredentialsH\NULR\SOsslCredentials\DC2?\n\
    \\SOgoogle_default\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\rgoogleDefault\DC2r\n\
    \\DC1local_credentials\CAN\ETX \SOH(\v2C.envoy.config.core.v3.GrpcService.GoogleGrpc.GoogleLocalCredentialsH\NULR\DLElocalCredentialsB\ESC\n\
    \\DC4credential_specifier\DC2\ETX\248B\SOH:B\154\197\136\RS=\n\
    \;envoy.api.v2.core.GrpcService.GoogleGrpc.ChannelCredentials\SUB\136\SI\n\
    \\SICallCredentials\DC2#\n\
    \\faccess_token\CAN\SOH \SOH(\tH\NULR\vaccessToken\DC2L\n\
    \\NAKgoogle_compute_engine\CAN\STX \SOH(\v2\SYN.google.protobuf.EmptyH\NULR\DC3googleComputeEngine\DC22\n\
    \\DC4google_refresh_token\CAN\ETX \SOH(\tH\NULR\DC2googleRefreshToken\DC2\158\SOH\n\
    \\SUBservice_account_jwt_access\CAN\EOT \SOH(\v2_.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentialsH\NULR\ETBserviceAccountJwtAccess\DC2r\n\
    \\n\
    \google_iam\CAN\ENQ \SOH(\v2Q.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentialsH\NULR\tgoogleIam\DC2}\n\
    \\vfrom_plugin\CAN\ACK \SOH(\v2Z.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginH\NULR\n\
    \fromPlugin\DC2j\n\
    \\vsts_service\CAN\a \SOH(\v2G.envoy.config.core.v3.GrpcService.GoogleGrpc.CallCredentials.StsServiceH\NULR\n\
    \stsService\SUB\217\SOH\n\
    \\"ServiceAccountJWTAccessCredentials\DC2\EM\n\
    \\bjson_key\CAN\SOH \SOH(\tR\ajsonKey\DC24\n\
    \\SYNtoken_lifetime_seconds\CAN\STX \SOH(\EOTR\DC4tokenLifetimeSeconds:b\154\197\136\RS]\n\
    \[envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.ServiceAccountJWTAccessCredentials\SUB\204\SOH\n\
    \\DC4GoogleIAMCredentials\DC2/\n\
    \\DC3authorization_token\CAN\SOH \SOH(\tR\DC2authorizationToken\DC2-\n\
    \\DC2authority_selector\CAN\STX \SOH(\tR\DC1authoritySelector:T\154\197\136\RSO\n\
    \Menvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.GoogleIAMCredentials\SUB\234\SOH\n\
    \\GSMetadataCredentialsFromPlugin\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC29\n\
    \\ftyped_config\CAN\ETX \SOH(\v2\DC4.google.protobuf.AnyH\NULR\vtypedConfigB\r\n\
    \\vconfig_type:]\154\197\136\RSX\n\
    \Venvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.MetadataCredentialsFromPluginJ\EOT\b\STX\DLE\ETXR\ACKconfig\SUB\215\ETX\n\
    \\n\
    \StsService\DC2;\n\
    \\SUBtoken_exchange_service_uri\CAN\SOH \SOH(\tR\ETBtokenExchangeServiceUri\DC2\SUB\n\
    \\bresource\CAN\STX \SOH(\tR\bresource\DC2\SUB\n\
    \\baudience\CAN\ETX \SOH(\tR\baudience\DC2\DC4\n\
    \\ENQscope\CAN\EOT \SOH(\tR\ENQscope\DC20\n\
    \\DC4requested_token_type\CAN\ENQ \SOH(\tR\DC2requestedTokenType\DC25\n\
    \\DC2subject_token_path\CAN\ACK \SOH(\tR\DLEsubjectTokenPathB\a\250B\EOTr\STX\DLE\SOH\DC25\n\
    \\DC2subject_token_type\CAN\a \SOH(\tR\DLEsubjectTokenTypeB\a\250B\EOTr\STX\DLE\SOH\DC2(\n\
    \\DLEactor_token_path\CAN\b \SOH(\tR\SOactorTokenPath\DC2(\n\
    \\DLEactor_token_type\CAN\t \SOH(\tR\SOactorTokenType:J\154\197\136\RSE\n\
    \Cenvoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials.StsServiceB\ESC\n\
    \\DC4credential_specifier\DC2\ETX\248B\SOH:?\154\197\136\RS:\n\
    \8envoy.api.v2.core.GrpcService.GoogleGrpc.CallCredentials\SUB\195\STX\n\
    \\vChannelArgs\DC2V\n\
    \\EOTargs\CAN\SOH \ETX(\v2B.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ArgsEntryR\EOTargs\SUBc\n\
    \\ENQValue\DC2#\n\
    \\fstring_value\CAN\SOH \SOH(\tH\NULR\vstringValue\DC2\GS\n\
    \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValueB\SYN\n\
    \\SIvalue_specifier\DC2\ETX\248B\SOH\SUBw\n\
    \\tArgsEntry\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2T\n\
    \\ENQvalue\CAN\STX \SOH(\v2>.envoy.config.core.v3.GrpcService.GoogleGrpc.ChannelArgs.ValueR\ENQvalue:\STX8\SOH:/\154\197\136\RS*\n\
    \(envoy.api.v2.core.GrpcService.GoogleGrpcB\ETB\n\
    \\DLEtarget_specifier\DC2\ETX\248B\SOH:$\154\197\136\RS\US\n\
    \\GSenvoy.api.v2.core.GrpcServiceJ\EOT\b\EOT\DLE\ENQB@\n\
    \\"io.envoyproxy.envoy.config.core.v3B\DLEGrpcServiceProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\153U\n\
    \\a\DC2\ENQ\NUL\NUL\167\STX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL#\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL%\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL&\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL(\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL*\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\r\NUL'\n\
    \\t\n\
    \\STX\ETX\b\DC2\ETX\SO\NUL+\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX\SI\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DC1\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC2\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC3\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC4\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC4\NULF\n\
    \\219\SOH\n\
    \\STX\EOT\NUL\DC2\ENQ\ESC\NUL\167\STX\SOH\SUB\169\SOH gRPC service configuration. This is used by :ref:`ApiConfigSource\n\
    \ <envoy_v3_api_msg_config.core.v3.ApiConfigSource>` and filter configurations.\n\
    \ [#next-free-field: 6]\n\
    \2\" [#protodoc-title: gRPC services]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b\DC3\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\FS\STX_\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\FS\STX_\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\RS\STX,\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\RS\n\
    \\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\NUL\a\DC2\EOT\US\EOT 2\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT\US\EOT 2\n\
    \\247\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX%\EOTE\SUB\231\SOH The name of the upstream gRPC cluster. SSL credentials will be supplied\n\
    \ in the :ref:`Cluster <envoy_v3_api_msg_config.cluster.v3.Cluster>` :ref:`transport_socket\n\
    \ <envoy_v3_api_field_config.cluster.v3.Cluster.transport_socket>`.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX%\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX%\v\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX%\SUB\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\b\DC2\ETX%\FSD\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\NUL\b\175\b\SO\DC2\ETX%\GSC\n\
    \\253\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\EOT)\EOT+^\SUB\236\SOH The `:authority` header in the grpc request. If this field is not set, the authority header value will be `cluster_name`.\n\
    \ Note that this authority does not override the SNI. The SNI is provided by the transport socket of the cluster.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX)\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX)\v\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX)\ETB\CAN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\b\DC2\EOT*\b+]\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\NUL\STX\SOH\b\175\b\SO\DC2\EOT*\t+\\\n\
    \&\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\ENQ/\STX\139\STX\ETX\SUB\ETB [#next-free-field: 9]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX/\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\SOH\a\DC2\EOT0\EOT13\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOT0\EOT13\n\
    \[\n\
    \\ACK\EOT\NUL\ETX\SOH\ETX\NUL\DC2\EOT4\EOT@\ENQ\SUBK See https://grpc.io/grpc/cpp/structgrpc_1_1_ssl_credentials_options.html.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\ETX\NUL\SOH\DC2\ETX4\f\SUB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\ETX\NUL\a\DC2\EOT5\ACK6D\n\
    \\DC4\n\
    \\f\EOT\NUL\ETX\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT5\ACK6D\n\
    \8\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\DC2\ETX9\ACK \SUB' PEM encoded server root certificates.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\ACK\DC2\ETX9\ACK\DLE\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETX9\DC1\ESC\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETX9\RS\US\n\
    \2\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\DC2\ETX<\ACKG\SUB! PEM encoded client private key.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\ACK\DC2\ETX<\ACK\DLE\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\SOH\DC2\ETX<\DC1\FS\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\ETX\DC2\ETX<\US \n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\b\DC2\ETX<!F\n\
    \\DC4\n\
    \\r\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\b\247\182\193$\DC2\ETX<\"E\n\
    \8\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\DC2\ETX?\ACK \SUB' PEM encoded client certificate chain.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\ACK\DC2\ETX?\ACK\DLE\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\SOH\DC2\ETX?\DC1\ESC\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\ETX\DC2\ETX?\RS\US\n\
    \y\n\
    \\ACK\EOT\NUL\ETX\SOH\ETX\SOH\DC2\EOTD\EOTG\ENQ\SUBi Local channel credentials. Only UDS is supported for now.\n\
    \ See https://github.com/grpc/grpc/pull/15909.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\ETX\SOH\SOH\DC2\ETXD\f\"\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\ETX\SOH\a\DC2\EOTE\ACKFL\n\
    \\DC4\n\
    \\f\EOT\NUL\ETX\SOH\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOTE\ACKFL\n\
    \~\n\
    \\ACK\EOT\NUL\ETX\SOH\ETX\STX\DC2\EOTK\EOTY\ENQ\SUBn See https://grpc.io/docs/guides/auth.html#credential-types to understand Channel and Call\n\
    \ credential types.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\ETX\STX\SOH\DC2\ETXK\f\RS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\ETX\STX\a\DC2\EOTL\ACKMH\n\
    \\DC4\n\
    \\f\EOT\NUL\ETX\SOH\ETX\STX\a\211\136\225\ETX\SOH\DC2\EOTL\ACKMH\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\SOH\ETX\STX\b\NUL\DC2\EOTO\ACKX\a\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\b\NUL\SOH\DC2\ETXO\f \n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\b\NUL\STX\DC2\ETXP\b*\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\STX\b\NUL\STX\175\b\DC2\ETXP\b*\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\SOH\ETX\STX\STX\NUL\DC2\ETXR\b+\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\STX\NUL\ACK\DC2\ETXR\b\SYN\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\STX\NUL\SOH\DC2\ETXR\ETB&\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\STX\NUL\ETX\DC2\ETXR)*\n\
    \`\n\
    \\b\EOT\NUL\ETX\SOH\ETX\STX\STX\SOH\DC2\ETXU\b1\SUBO https://grpc.io/grpc/cpp/namespacegrpc.html#a6beb3ac70ff94bd2ebbd89b8f21d1f61\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\STX\SOH\ACK\DC2\ETXU\b\GS\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\STX\SOH\SOH\DC2\ETXU\RS,\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\STX\SOH\ETX\DC2\ETXU/0\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\SOH\ETX\STX\STX\STX\DC2\ETXW\b5\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\STX\STX\ACK\DC2\ETXW\b\RS\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\STX\STX\SOH\DC2\ETXW\US0\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\STX\STX\STX\ETX\DC2\ETXW34\n\
    \(\n\
    \\ACK\EOT\NUL\ETX\SOH\ETX\ETX\DC2\ENQ\\\EOT\210\SOH\ENQ\SUB\ETB [#next-free-field: 8]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\ETX\ETX\SOH\DC2\ETX\\\f\ESC\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\ETX\ETX\a\DC2\EOT]\ACK^E\n\
    \\DC4\n\
    \\f\EOT\NUL\ETX\SOH\ETX\ETX\a\211\136\225\ETX\SOH\DC2\EOT]\ACK^E\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\DC2\EOT`\ACKh\a\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\SOH\DC2\ETX`\SO0\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\a\DC2\EOTa\bc1\n\
    \\SYN\n\
    \\SO\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOTa\bc1\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\STX\NUL\DC2\ETXe\b\FS\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\STX\NUL\ENQ\DC2\ETXe\b\SO\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\STX\NUL\SOH\DC2\ETXe\SI\ETB\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\STX\NUL\ETX\DC2\ETXe\SUB\ESC\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\STX\SOH\DC2\ETXg\b*\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\STX\SOH\ENQ\DC2\ETXg\b\SO\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\STX\SOH\SOH\DC2\ETXg\SI%\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\NUL\STX\SOH\ETX\DC2\ETXg()\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\DC2\EOTj\ACKq\a\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\SOH\DC2\ETXj\SO\"\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\a\DC2\EOTk\bl\\\n\
    \\SYN\n\
    \\SO\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\a\211\136\225\ETX\SOH\DC2\EOTk\bl\\\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\STX\NUL\DC2\ETXn\b'\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\STX\NUL\ENQ\DC2\ETXn\b\SO\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\STX\NUL\SOH\DC2\ETXn\SI\"\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\STX\NUL\ETX\DC2\ETXn%&\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\STX\SOH\DC2\ETXp\b&\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\STX\SOH\ENQ\DC2\ETXp\b\SO\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\STX\SOH\SOH\DC2\ETXp\SI!\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\SOH\STX\SOH\ETX\DC2\ETXp$%\n\
    \\DC1\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\DC2\ENQs\ACK\130\SOH\a\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\SOH\DC2\ETXs\SO+\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\a\DC2\EOTt\bv,\n\
    \\SYN\n\
    \\SO\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\a\211\136\225\ETX\SOH\DC2\EOTt\bv,\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\t\DC2\ETXx\b\DC3\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\t\NUL\DC2\ETXx\DC1\DC2\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\t\NUL\SOH\DC2\ETXx\DC1\DC2\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\t\NUL\STX\DC2\ETXx\DC1\DC2\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\n\
    \\DC2\ETXz\b\SUB\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\n\
    \\NUL\DC2\ETXz\DC1\EM\n\
    \\DC1\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\STX\NUL\DC2\ETX|\b\CAN\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\STX\NUL\ENQ\DC2\ETX|\b\SO\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\STX\NUL\SOH\DC2\ETX|\SI\DC3\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\STX\NUL\ETX\DC2\ETX|\SYN\ETB\n\
    \D\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\b\NUL\DC2\ENQ\DEL\b\129\SOH\t\SUB/ [#extension-category: envoy.grpc_credentials]\n\
    \\n\
    \\DC2\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\b\NUL\SOH\DC2\ETX\DEL\SO\EM\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\STX\SOH\DC2\EOT\128\SOH\n\
    \/\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\STX\SOH\ACK\DC2\EOT\128\SOH\n\
    \\GS\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\STX\SOH\SOH\DC2\EOT\128\SOH\RS*\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\STX\STX\SOH\ETX\DC2\EOT\128\SOH-.\n\
    \\158\STX\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\DC2\ACK\137\SOH\ACK\175\SOH\a\SUB\137\STX Security token service configuration that allows Google gRPC to\n\
    \ fetch security token from an OAuth 2.0 authorization server.\n\
    \ See https://tools.ietf.org/html/draft-ietf-oauth-token-exchange-16 and\n\
    \ https://github.com/grpc/grpc/pull/19587.\n\
    \ [#next-free-field: 10]\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\SOH\DC2\EOT\137\SOH\SO\CAN\n\
    \\DC3\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\a\DC2\ACK\138\SOH\b\139\SOHR\n\
    \\CAN\n\
    \\SO\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\a\211\136\225\ETX\SOH\DC2\ACK\138\SOH\b\139\SOHR\n\
    \\229\SOH\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\NUL\DC2\EOT\144\SOH\b.\SUB\208\SOH URI of the token exchange service that handles token exchange requests.\n\
    \ [#comment:TODO(asraa): Add URI validation when implemented. Tracked by\n\
    \ https://github.com/envoyproxy/protoc-gen-validate/issues/303]\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\NUL\ENQ\DC2\EOT\144\SOH\b\SO\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\NUL\SOH\DC2\EOT\144\SOH\SI)\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\NUL\ETX\DC2\EOT\144\SOH,-\n\
    \\DEL\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\SOH\DC2\EOT\148\SOH\b\FS\SUBk Location of the target service or resource where the client\n\
    \ intends to use the requested security token.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\SOH\ENQ\DC2\EOT\148\SOH\b\SO\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\SOH\SOH\DC2\EOT\148\SOH\SI\ETB\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\SOH\ETX\DC2\EOT\148\SOH\SUB\ESC\n\
    \w\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\STX\DC2\EOT\152\SOH\b\FS\SUBc Logical name of the target service where the client intends to\n\
    \ use the requested security token.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\STX\ENQ\DC2\EOT\152\SOH\b\SO\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\STX\SOH\DC2\EOT\152\SOH\SI\ETB\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\STX\ETX\DC2\EOT\152\SOH\SUB\ESC\n\
    \\144\SOH\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ETX\DC2\EOT\156\SOH\b\EM\SUB| The desired scope of the requested security token in the\n\
    \ context of the service or resource where the token will be used.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ETX\ENQ\DC2\EOT\156\SOH\b\SO\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ETX\SOH\DC2\EOT\156\SOH\SI\DC4\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ETX\ETX\DC2\EOT\156\SOH\ETB\CAN\n\
    \;\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\EOT\DC2\EOT\159\SOH\b(\SUB' Type of the requested security token.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\EOT\ENQ\DC2\EOT\159\SOH\b\SO\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\EOT\SOH\DC2\EOT\159\SOH\SI#\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\EOT\ETX\DC2\EOT\159\SOH&'\n\
    \\154\SOH\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ENQ\DC2\EOT\163\SOH\bO\SUB\133\SOH The path of subject token, a security token that represents the\n\
    \ identity of the party on behalf of whom the request is being made.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ENQ\ENQ\DC2\EOT\163\SOH\b\SO\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ENQ\SOH\DC2\EOT\163\SOH\SI!\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ENQ\ETX\DC2\EOT\163\SOH$%\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ENQ\b\DC2\EOT\163\SOH&N\n\
    \\SYN\n\
    \\SO\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ENQ\b\175\b\SO\DC2\EOT\163\SOH'M\n\
    \0\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ACK\DC2\EOT\166\SOH\bO\SUB\FS Type of the subject token.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ACK\ENQ\DC2\EOT\166\SOH\b\SO\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ACK\SOH\DC2\EOT\166\SOH\SI!\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ACK\ETX\DC2\EOT\166\SOH$%\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ACK\b\DC2\EOT\166\SOH&N\n\
    \\SYN\n\
    \\SO\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\ACK\b\175\b\SO\DC2\EOT\166\SOH'M\n\
    \\217\SOH\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\a\DC2\EOT\171\SOH\b$\SUB\196\SOH The path of actor token, a security token that represents the identity\n\
    \ of the acting party. The acting party is authorized to use the\n\
    \ requested security token and act on behalf of the subject.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\a\ENQ\DC2\EOT\171\SOH\b\SO\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\a\SOH\DC2\EOT\171\SOH\SI\US\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\a\ETX\DC2\EOT\171\SOH\"#\n\
    \.\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\b\DC2\EOT\174\SOH\b$\SUB\SUB Type of the actor token.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\b\ENQ\DC2\EOT\174\SOH\b\SO\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\b\SOH\DC2\EOT\174\SOH\SI\US\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\ETX\ETX\STX\b\ETX\DC2\EOT\174\SOH\"#\n\
    \\DC2\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\b\NUL\DC2\ACK\177\SOH\ACK\209\SOH\a\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\b\NUL\SOH\DC2\EOT\177\SOH\f \n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\b\NUL\STX\DC2\EOT\178\SOH\b*\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\ETX\b\NUL\STX\175\b\DC2\EOT\178\SOH\b*\n\
    \}\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\STX\NUL\DC2\EOT\182\SOH\b \SUBk Access token credentials.\n\
    \ https://grpc.io/grpc/cpp/namespacegrpc.html#ad3a80da696ffdaea943f0f858d7a360d.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\NUL\ENQ\DC2\EOT\182\SOH\b\SO\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\NUL\SOH\DC2\EOT\182\SOH\SI\ESC\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\NUL\ETX\DC2\EOT\182\SOH\RS\US\n\
    \\133\SOH\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\STX\SOH\DC2\EOT\186\SOH\b8\SUBs Google Compute Engine credentials.\n\
    \ https://grpc.io/grpc/cpp/namespacegrpc.html#a6beb3ac70ff94bd2ebbd89b8f21d1f61\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\SOH\ACK\DC2\EOT\186\SOH\b\GS\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\SOH\SOH\DC2\EOT\186\SOH\RS3\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\SOH\ETX\DC2\EOT\186\SOH67\n\
    \\133\SOH\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\STX\STX\DC2\EOT\190\SOH\b(\SUBs Google refresh token credentials.\n\
    \ https://grpc.io/grpc/cpp/namespacegrpc.html#a96901c997b91bc6513b08491e0dca37c.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\STX\ENQ\DC2\EOT\190\SOH\b\SO\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\STX\SOH\DC2\EOT\190\SOH\SI#\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\STX\ETX\DC2\EOT\190\SOH&'\n\
    \\139\SOH\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\STX\ETX\DC2\EOT\194\SOH\bJ\SUBy Service Account JWT Access credentials.\n\
    \ https://grpc.io/grpc/cpp/namespacegrpc.html#a92a9f959d6102461f66ee973d8e9d3aa.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\ETX\ACK\DC2\EOT\194\SOH\b*\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\ETX\SOH\DC2\EOT\194\SOH+E\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\ETX\ETX\DC2\EOT\194\SOHHI\n\
    \{\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\STX\EOT\DC2\EOT\198\SOH\b,\SUBi Google IAM credentials.\n\
    \ https://grpc.io/grpc/cpp/namespacegrpc.html#a9fc1fc101b41e680d47028166e76f9d0.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\EOT\ACK\DC2\EOT\198\SOH\b\FS\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\EOT\SOH\DC2\EOT\198\SOH\GS'\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\EOT\ETX\DC2\EOT\198\SOH*+\n\
    \\232\SOH\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\STX\ENQ\DC2\EOT\203\SOH\b6\SUB\213\SOH Custom authenticator credentials.\n\
    \ https://grpc.io/grpc/cpp/namespacegrpc.html#a823c6a4b19ffc71fb33e90154ee2ad07.\n\
    \ https://grpc.io/docs/guides/auth.html#extending-grpc-to-support-other-authentication-mechanisms.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\ENQ\ACK\DC2\EOT\203\SOH\b%\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\ENQ\SOH\DC2\EOT\203\SOH&1\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\ENQ\ETX\DC2\EOT\203\SOH45\n\
    \\203\SOH\n\
    \\b\EOT\NUL\ETX\SOH\ETX\ETX\STX\ACK\DC2\EOT\208\SOH\b#\SUB\184\SOH Custom security token service which implements OAuth 2.0 token exchange.\n\
    \ https://tools.ietf.org/html/draft-ietf-oauth-token-exchange-16\n\
    \ See https://github.com/grpc/grpc/pull/19587.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\ACK\ACK\DC2\EOT\208\SOH\b\DC2\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\ACK\SOH\DC2\EOT\208\SOH\DC3\RS\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\ETX\STX\ACK\ETX\DC2\EOT\208\SOH!\"\n\
    \&\n\
    \\ACK\EOT\NUL\ETX\SOH\ETX\EOT\DC2\ACK\213\SOH\EOT\228\SOH\ENQ\SUB\DC4 Channel arguments.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\ETX\EOT\SOH\DC2\EOT\213\SOH\f\ETB\n\
    \\DC2\n\
    \\b\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\DC2\ACK\214\SOH\ACK\224\SOH\a\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\SOH\DC2\EOT\214\SOH\SO\DC3\n\
    \v\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\b\NUL\DC2\ACK\217\SOH\b\223\SOH\t\SUB` Pointer values are not supported, since they don't make any sense when\n\
    \ delivered via the API.\n\
    \\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\b\NUL\SOH\DC2\EOT\217\SOH\SO\GS\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\b\NUL\STX\DC2\EOT\218\SOH\n\
    \,\n\
    \\NAK\n\
    \\r\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\b\NUL\STX\175\b\DC2\EOT\218\SOH\n\
    \,\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\STX\NUL\DC2\EOT\220\SOH\n\
    \\"\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\STX\NUL\ENQ\DC2\EOT\220\SOH\n\
    \\DLE\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\STX\NUL\SOH\DC2\EOT\220\SOH\DC1\GS\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\STX\NUL\ETX\DC2\EOT\220\SOH !\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\STX\SOH\DC2\EOT\222\SOH\n\
    \\RS\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\STX\SOH\ENQ\DC2\EOT\222\SOH\n\
    \\SI\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\STX\SOH\SOH\DC2\EOT\222\SOH\DLE\EM\n\
    \\DC3\n\
    \\v\EOT\NUL\ETX\SOH\ETX\EOT\ETX\NUL\STX\SOH\ETX\DC2\EOT\222\SOH\FS\GS\n\
    \O\n\
    \\b\EOT\NUL\ETX\SOH\ETX\EOT\STX\NUL\DC2\EOT\227\SOH\ACK\"\SUB= See grpc_types.h GRPC_ARG #defines for keys that work here.\n\
    \\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\EOT\STX\NUL\ACK\DC2\EOT\227\SOH\ACK\CAN\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\EOT\STX\NUL\SOH\DC2\EOT\227\SOH\EM\GS\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\SOH\ETX\EOT\STX\NUL\ETX\DC2\EOT\227\SOH !\n\
    \\251\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\EOT\233\SOH\EOTC\SUB\234\SOH The target URI when using the `Google C++ gRPC client\n\
    \ <https://github.com/grpc/grpc>`_. SSL credentials will be supplied in\n\
    \ :ref:`channel_credentials <envoy_v3_api_field_config.core.v3.GrpcService.GoogleGrpc.channel_credentials>`.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\EOT\233\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\EOT\233\SOH\v\NAK\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\EOT\233\SOH\CAN\EM\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\b\DC2\EOT\233\SOH\SUBB\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\NUL\b\175\b\SO\DC2\EOT\233\SOH\ESCA\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\EOT\235\SOH\EOT/\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ACK\DC2\EOT\235\SOH\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\EOT\235\SOH\ETB*\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\EOT\235\SOH-.\n\
    \\152\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\EOT\239\SOH\EOT2\SUB\135\SOH A set of call credentials that can be composed with `channel credentials\n\
    \ <https://grpc.io/docs/guides/auth.html#credential-types>`_.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\EOT\DC2\EOT\239\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ACK\DC2\EOT\239\SOH\r\FS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\EOT\239\SOH\GS-\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\EOT\239\SOH01\n\
    \\199\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ETX\DC2\EOT\250\SOH\EOTD\SUB\182\STX The human readable prefix to use when emitting statistics for the gRPC\n\
    \ service.\n\
    \\n\
    \ .. csv-table::\n\
    \    :header: Name, Type, Description\n\
    \    :widths: 1, 1, 2\n\
    \\n\
    \    streams_total, Counter, Total number of streams opened\n\
    \    streams_closed_<gRPC status code>, Counter, Total streams closed with <gRPC status code>\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ENQ\DC2\EOT\250\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\SOH\DC2\EOT\250\SOH\v\SYN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\ETX\DC2\EOT\250\SOH\EM\SUB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ETX\b\DC2\EOT\250\SOH\ESCC\n\
    \\DC2\n\
    \\n\
    \\EOT\NUL\ETX\SOH\STX\ETX\b\175\b\SO\DC2\EOT\250\SOH\FSB\n\
    \\254\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\EOT\DC2\EOT\255\SOH\EOT(\SUB\237\SOH The name of the Google gRPC credentials factory to use. This must have been registered with\n\
    \ Envoy. If this is empty, a default credentials factory will be used that sets up channel\n\
    \ credentials based on other configuration parameters.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ENQ\DC2\EOT\255\SOH\EOT\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\SOH\DC2\EOT\255\SOH\v#\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\EOT\ETX\DC2\EOT\255\SOH&'\n\
    \h\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ENQ\DC2\EOT\131\STX\EOT&\SUBX Additional configuration for site-specific customizations of the Google\n\
    \ gRPC library.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\ACK\DC2\EOT\131\STX\EOT\SUB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\SOH\DC2\EOT\131\STX\ESC!\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ENQ\ETX\DC2\EOT\131\STX$%\n\
    \\132\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\ACK\DC2\EOT\135\STX\EOTB\SUBt How many bytes each stream can buffer internally.\n\
    \ If not set an implementation defined default is applied (1MiB).\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ACK\ACK\DC2\EOT\135\STX\EOT\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ACK\SOH\DC2\EOT\135\STX =\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\ACK\ETX\DC2\EOT\135\STX@A\n\
    \'\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\a\DC2\EOT\138\STX\EOT!\SUB\ETB Custom channels args.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\a\ACK\DC2\EOT\138\STX\EOT\SI\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\a\SOH\DC2\EOT\138\STX\DLE\FS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\a\ETX\DC2\EOT\138\STX\US \n\
    \\v\n\
    \\ETX\EOT\NUL\t\DC2\EOT\141\STX\STX\r\n\
    \\f\n\
    \\EOT\EOT\NUL\t\NUL\DC2\EOT\141\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\EOT\141\STX\v\f\n\
    \\r\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\EOT\141\STX\v\f\n\
    \\SO\n\
    \\EOT\EOT\NUL\b\NUL\DC2\ACK\143\STX\STX\155\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\EOT\143\STX\b\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\NUL\STX\DC2\EOT\144\STX\EOT&\n\
    \\SI\n\
    \\a\EOT\NUL\b\NUL\STX\175\b\DC2\EOT\144\STX\EOT&\n\
    \\171\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\EOT\149\STX\EOT\GS\SUB\156\SOH Envoy's in-built gRPC client.\n\
    \ See the :ref:`gRPC services overview <arch_overview_grpc_services>`\n\
    \ documentation for discussion on gRPC client selection.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\EOT\149\STX\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\149\STX\SO\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\EOT\149\STX\ESC\FS\n\
    \\198\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\154\STX\EOT\US\SUB\183\SOH `Google C++ gRPC client <https://github.com/grpc/grpc>`_\n\
    \ See the :ref:`gRPC services overview <arch_overview_grpc_services>`\n\
    \ documentation for discussion on gRPC client selection.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\EOT\154\STX\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\154\STX\SI\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\154\STX\GS\RS\n\
    \^\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\159\STX\STX'\SUBP The timeout for the gRPC request. This is the timeout for a specific\n\
    \ request.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\EOT\159\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\159\STX\ESC\"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\EOT\159\STX%&\n\
    \\140\ETX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\166\STX\STX,\SUB\253\STX Additional metadata to include in streams initiated to the GrpcService. This can be used for\n\
    \ scenarios in which additional ad hoc authorization headers (e.g. ``x-foo-bar: baz-key``) are to\n\
    \ be injected. For more information, including details on header value syntax, see the\n\
    \ documentation on :ref:`custom request headers\n\
    \ <config_http_conn_man_headers_custom_request_headers>`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\EOT\166\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\EOT\166\STX\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\166\STX\ETB'\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\EOT\166\STX*+b\ACKproto3"