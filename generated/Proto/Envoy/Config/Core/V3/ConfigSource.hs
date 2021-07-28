{- This file was auto-generated from envoy/config/core/v3/config_source.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Core.V3.ConfigSource (
        AggregatedConfigSource(), ApiConfigSource(),
        ApiConfigSource'ApiType(..), ApiConfigSource'ApiType(),
        ApiConfigSource'ApiType'UnrecognizedValue, ApiVersion(..),
        ApiVersion(), ApiVersion'UnrecognizedValue, ConfigSource(),
        ConfigSource'ConfigSourceSpecifier(..), _ConfigSource'Path,
        _ConfigSource'ApiConfigSource, _ConfigSource'Ads,
        _ConfigSource'Self, RateLimitSettings(), SelfConfigSource()
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
import qualified Proto.Envoy.Annotations.Deprecation
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
import qualified Proto.Xds.Core.V3.Authority
{- | Fields :
      -}
data AggregatedConfigSource
  = AggregatedConfigSource'_constructor {_AggregatedConfigSource'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AggregatedConfigSource where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message AggregatedConfigSource where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.AggregatedConfigSource"
  packedMessageDescriptor _
    = "\n\
      \\SYNAggregatedConfigSource:/\154\197\136\RS*\n\
      \(envoy.api.v2.core.AggregatedConfigSource"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AggregatedConfigSource'_unknownFields
        (\ x__ y__ -> x__ {_AggregatedConfigSource'_unknownFields = y__})
  defMessage
    = AggregatedConfigSource'_constructor
        {_AggregatedConfigSource'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AggregatedConfigSource
          -> Data.ProtoLens.Encoding.Bytes.Parser AggregatedConfigSource
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
          (do loop Data.ProtoLens.defMessage) "AggregatedConfigSource"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData AggregatedConfigSource where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AggregatedConfigSource'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.apiType' @:: Lens' ApiConfigSource ApiConfigSource'ApiType@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.transportApiVersion' @:: Lens' ApiConfigSource ApiVersion@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.clusterNames' @:: Lens' ApiConfigSource [Data.Text.Text]@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.vec'clusterNames' @:: Lens' ApiConfigSource (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.grpcServices' @:: Lens' ApiConfigSource [Proto.Envoy.Config.Core.V3.GrpcService.GrpcService]@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.vec'grpcServices' @:: Lens' ApiConfigSource (Data.Vector.Vector Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.refreshDelay' @:: Lens' ApiConfigSource Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'refreshDelay' @:: Lens' ApiConfigSource (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.requestTimeout' @:: Lens' ApiConfigSource Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'requestTimeout' @:: Lens' ApiConfigSource (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.rateLimitSettings' @:: Lens' ApiConfigSource RateLimitSettings@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'rateLimitSettings' @:: Lens' ApiConfigSource (Prelude.Maybe RateLimitSettings)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.setNodeOnFirstMessageOnly' @:: Lens' ApiConfigSource Prelude.Bool@ -}
data ApiConfigSource
  = ApiConfigSource'_constructor {_ApiConfigSource'apiType :: !ApiConfigSource'ApiType,
                                  _ApiConfigSource'transportApiVersion :: !ApiVersion,
                                  _ApiConfigSource'clusterNames :: !(Data.Vector.Vector Data.Text.Text),
                                  _ApiConfigSource'grpcServices :: !(Data.Vector.Vector Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                                  _ApiConfigSource'refreshDelay :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ApiConfigSource'requestTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                  _ApiConfigSource'rateLimitSettings :: !(Prelude.Maybe RateLimitSettings),
                                  _ApiConfigSource'setNodeOnFirstMessageOnly :: !Prelude.Bool,
                                  _ApiConfigSource'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ApiConfigSource where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ApiConfigSource "apiType" ApiConfigSource'ApiType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'apiType
           (\ x__ y__ -> x__ {_ApiConfigSource'apiType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApiConfigSource "transportApiVersion" ApiVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'transportApiVersion
           (\ x__ y__ -> x__ {_ApiConfigSource'transportApiVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApiConfigSource "clusterNames" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'clusterNames
           (\ x__ y__ -> x__ {_ApiConfigSource'clusterNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ApiConfigSource "vec'clusterNames" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'clusterNames
           (\ x__ y__ -> x__ {_ApiConfigSource'clusterNames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApiConfigSource "grpcServices" [Proto.Envoy.Config.Core.V3.GrpcService.GrpcService] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'grpcServices
           (\ x__ y__ -> x__ {_ApiConfigSource'grpcServices = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ApiConfigSource "vec'grpcServices" (Data.Vector.Vector Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'grpcServices
           (\ x__ y__ -> x__ {_ApiConfigSource'grpcServices = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApiConfigSource "refreshDelay" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'refreshDelay
           (\ x__ y__ -> x__ {_ApiConfigSource'refreshDelay = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ApiConfigSource "maybe'refreshDelay" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'refreshDelay
           (\ x__ y__ -> x__ {_ApiConfigSource'refreshDelay = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApiConfigSource "requestTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'requestTimeout
           (\ x__ y__ -> x__ {_ApiConfigSource'requestTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ApiConfigSource "maybe'requestTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'requestTimeout
           (\ x__ y__ -> x__ {_ApiConfigSource'requestTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApiConfigSource "rateLimitSettings" RateLimitSettings where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'rateLimitSettings
           (\ x__ y__ -> x__ {_ApiConfigSource'rateLimitSettings = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ApiConfigSource "maybe'rateLimitSettings" (Prelude.Maybe RateLimitSettings) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'rateLimitSettings
           (\ x__ y__ -> x__ {_ApiConfigSource'rateLimitSettings = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ApiConfigSource "setNodeOnFirstMessageOnly" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ApiConfigSource'setNodeOnFirstMessageOnly
           (\ x__ y__
              -> x__ {_ApiConfigSource'setNodeOnFirstMessageOnly = y__}))
        Prelude.id
instance Data.ProtoLens.Message ApiConfigSource where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.ApiConfigSource"
  packedMessageDescriptor _
    = "\n\
      \\SIApiConfigSource\DC2R\n\
      \\bapi_type\CAN\SOH \SOH(\SO2-.envoy.config.core.v3.ApiConfigSource.ApiTypeR\aapiTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2^\n\
      \\NAKtransport_api_version\CAN\b \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2#\n\
      \\rcluster_names\CAN\STX \ETX(\tR\fclusterNames\DC2F\n\
      \\rgrpc_services\CAN\EOT \ETX(\v2!.envoy.config.core.v3.GrpcServiceR\fgrpcServices\DC2>\n\
      \\rrefresh_delay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\frefreshDelay\DC2L\n\
      \\SIrequest_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\SOrequestTimeoutB\b\250B\ENQ\170\SOH\STX*\NUL\DC2W\n\
      \\DC3rate_limit_settings\CAN\ACK \SOH(\v2'.envoy.config.core.v3.RateLimitSettingsR\DC1rateLimitSettings\DC2A\n\
      \\RSset_node_on_first_message_only\CAN\a \SOH(\bR\EMsetNodeOnFirstMessageOnly\"\146\SOH\n\
      \\aApiType\DC23\n\
      \%DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE\DLE\NUL\SUB\b\b\SOH\168\247\180\139\STX\SOH\DC2\b\n\
      \\EOTREST\DLE\SOH\DC2\b\n\
      \\EOTGRPC\DLE\STX\DC2\SO\n\
      \\n\
      \DELTA_GRPC\DLE\ETX\DC2\DC3\n\
      \\SIAGGREGATED_GRPC\DLE\ENQ\DC2\EM\n\
      \\NAKAGGREGATED_DELTA_GRPC\DLE\ACK:(\154\197\136\RS#\n\
      \!envoy.api.v2.core.ApiConfigSource"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        apiType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "api_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ApiConfigSource'ApiType)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"apiType")) ::
              Data.ProtoLens.FieldDescriptor ApiConfigSource
        transportApiVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_api_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ApiVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transportApiVersion")) ::
              Data.ProtoLens.FieldDescriptor ApiConfigSource
        clusterNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cluster_names"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clusterNames")) ::
              Data.ProtoLens.FieldDescriptor ApiConfigSource
        grpcServices__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_services"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"grpcServices")) ::
              Data.ProtoLens.FieldDescriptor ApiConfigSource
        refreshDelay__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "refresh_delay"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'refreshDelay")) ::
              Data.ProtoLens.FieldDescriptor ApiConfigSource
        requestTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "request_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'requestTimeout")) ::
              Data.ProtoLens.FieldDescriptor ApiConfigSource
        rateLimitSettings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rate_limit_settings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor RateLimitSettings)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rateLimitSettings")) ::
              Data.ProtoLens.FieldDescriptor ApiConfigSource
        setNodeOnFirstMessageOnly__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "set_node_on_first_message_only"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"setNodeOnFirstMessageOnly")) ::
              Data.ProtoLens.FieldDescriptor ApiConfigSource
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, apiType__field_descriptor),
           (Data.ProtoLens.Tag 8, transportApiVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, clusterNames__field_descriptor),
           (Data.ProtoLens.Tag 4, grpcServices__field_descriptor),
           (Data.ProtoLens.Tag 3, refreshDelay__field_descriptor),
           (Data.ProtoLens.Tag 5, requestTimeout__field_descriptor),
           (Data.ProtoLens.Tag 6, rateLimitSettings__field_descriptor),
           (Data.ProtoLens.Tag 7, 
            setNodeOnFirstMessageOnly__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ApiConfigSource'_unknownFields
        (\ x__ y__ -> x__ {_ApiConfigSource'_unknownFields = y__})
  defMessage
    = ApiConfigSource'_constructor
        {_ApiConfigSource'apiType = Data.ProtoLens.fieldDefault,
         _ApiConfigSource'transportApiVersion = Data.ProtoLens.fieldDefault,
         _ApiConfigSource'clusterNames = Data.Vector.Generic.empty,
         _ApiConfigSource'grpcServices = Data.Vector.Generic.empty,
         _ApiConfigSource'refreshDelay = Prelude.Nothing,
         _ApiConfigSource'requestTimeout = Prelude.Nothing,
         _ApiConfigSource'rateLimitSettings = Prelude.Nothing,
         _ApiConfigSource'setNodeOnFirstMessageOnly = Data.ProtoLens.fieldDefault,
         _ApiConfigSource'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ApiConfigSource
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Envoy.Config.Core.V3.GrpcService.GrpcService
                -> Data.ProtoLens.Encoding.Bytes.Parser ApiConfigSource
        loop x mutable'clusterNames mutable'grpcServices
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'clusterNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'clusterNames)
                      frozen'grpcServices <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'grpcServices)
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
                              (Data.ProtoLens.Field.field @"vec'clusterNames")
                              frozen'clusterNames
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'grpcServices")
                                 frozen'grpcServices
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
                                       "api_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"apiType") y x)
                                  mutable'clusterNames
                                  mutable'grpcServices
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "transport_api_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportApiVersion") y x)
                                  mutable'clusterNames
                                  mutable'grpcServices
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
                                        "cluster_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'clusterNames y)
                                loop x v mutable'grpcServices
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "grpc_services"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'grpcServices y)
                                loop x mutable'clusterNames v
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "refresh_delay"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"refreshDelay") y x)
                                  mutable'clusterNames
                                  mutable'grpcServices
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "request_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"requestTimeout") y x)
                                  mutable'clusterNames
                                  mutable'grpcServices
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "rate_limit_settings"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rateLimitSettings") y x)
                                  mutable'clusterNames
                                  mutable'grpcServices
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "set_node_on_first_message_only"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"setNodeOnFirstMessageOnly") y x)
                                  mutable'clusterNames
                                  mutable'grpcServices
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'clusterNames
                                  mutable'grpcServices
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'clusterNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'grpcServices <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'clusterNames
                mutable'grpcServices)
          "ApiConfigSource"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"apiType") _x
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
                         (Data.ProtoLens.Field.field @"transportApiVersion") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
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
                         (Data.ProtoLens.Field.field @"vec'clusterNames") _x))
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
                                    Data.ProtoLens.encodeMessage
                                    _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'grpcServices") _x))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'refreshDelay") _x
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
                                   (Data.ProtoLens.Field.field @"maybe'requestTimeout") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
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
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'rateLimitSettings") _x
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
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"setNodeOnFirstMessageOnly")
                                           _x
                                   in
                                     if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                           ((Prelude..)
                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (\ b -> if b then 1 else 0)
                                              _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData ApiConfigSource where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ApiConfigSource'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ApiConfigSource'apiType x__)
                (Control.DeepSeq.deepseq
                   (_ApiConfigSource'transportApiVersion x__)
                   (Control.DeepSeq.deepseq
                      (_ApiConfigSource'clusterNames x__)
                      (Control.DeepSeq.deepseq
                         (_ApiConfigSource'grpcServices x__)
                         (Control.DeepSeq.deepseq
                            (_ApiConfigSource'refreshDelay x__)
                            (Control.DeepSeq.deepseq
                               (_ApiConfigSource'requestTimeout x__)
                               (Control.DeepSeq.deepseq
                                  (_ApiConfigSource'rateLimitSettings x__)
                                  (Control.DeepSeq.deepseq
                                     (_ApiConfigSource'setNodeOnFirstMessageOnly x__) ()))))))))
newtype ApiConfigSource'ApiType'UnrecognizedValue
  = ApiConfigSource'ApiType'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ApiConfigSource'ApiType
  = ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE |
    ApiConfigSource'REST |
    ApiConfigSource'GRPC |
    ApiConfigSource'DELTA_GRPC |
    ApiConfigSource'AGGREGATED_GRPC |
    ApiConfigSource'AGGREGATED_DELTA_GRPC |
    ApiConfigSource'ApiType'Unrecognized !ApiConfigSource'ApiType'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ApiConfigSource'ApiType where
  maybeToEnum 0
    = Prelude.Just
        ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
  maybeToEnum 1 = Prelude.Just ApiConfigSource'REST
  maybeToEnum 2 = Prelude.Just ApiConfigSource'GRPC
  maybeToEnum 3 = Prelude.Just ApiConfigSource'DELTA_GRPC
  maybeToEnum 5 = Prelude.Just ApiConfigSource'AGGREGATED_GRPC
  maybeToEnum 6 = Prelude.Just ApiConfigSource'AGGREGATED_DELTA_GRPC
  maybeToEnum k
    = Prelude.Just
        (ApiConfigSource'ApiType'Unrecognized
           (ApiConfigSource'ApiType'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
    = "DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE"
  showEnum ApiConfigSource'REST = "REST"
  showEnum ApiConfigSource'GRPC = "GRPC"
  showEnum ApiConfigSource'DELTA_GRPC = "DELTA_GRPC"
  showEnum ApiConfigSource'AGGREGATED_GRPC = "AGGREGATED_GRPC"
  showEnum ApiConfigSource'AGGREGATED_DELTA_GRPC
    = "AGGREGATED_DELTA_GRPC"
  showEnum
    (ApiConfigSource'ApiType'Unrecognized (ApiConfigSource'ApiType'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE"
    = Prelude.Just
        ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
    | (Prelude.==) k "REST" = Prelude.Just ApiConfigSource'REST
    | (Prelude.==) k "GRPC" = Prelude.Just ApiConfigSource'GRPC
    | (Prelude.==) k "DELTA_GRPC"
    = Prelude.Just ApiConfigSource'DELTA_GRPC
    | (Prelude.==) k "AGGREGATED_GRPC"
    = Prelude.Just ApiConfigSource'AGGREGATED_GRPC
    | (Prelude.==) k "AGGREGATED_DELTA_GRPC"
    = Prelude.Just ApiConfigSource'AGGREGATED_DELTA_GRPC
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ApiConfigSource'ApiType where
  minBound = ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
  maxBound = ApiConfigSource'AGGREGATED_DELTA_GRPC
instance Prelude.Enum ApiConfigSource'ApiType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ApiType: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE = 0
  fromEnum ApiConfigSource'REST = 1
  fromEnum ApiConfigSource'GRPC = 2
  fromEnum ApiConfigSource'DELTA_GRPC = 3
  fromEnum ApiConfigSource'AGGREGATED_GRPC = 5
  fromEnum ApiConfigSource'AGGREGATED_DELTA_GRPC = 6
  fromEnum
    (ApiConfigSource'ApiType'Unrecognized (ApiConfigSource'ApiType'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ApiConfigSource'AGGREGATED_DELTA_GRPC
    = Prelude.error
        "ApiConfigSource'ApiType.succ: bad argument ApiConfigSource'AGGREGATED_DELTA_GRPC. This value would be out of bounds."
  succ ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
    = ApiConfigSource'REST
  succ ApiConfigSource'REST = ApiConfigSource'GRPC
  succ ApiConfigSource'GRPC = ApiConfigSource'DELTA_GRPC
  succ ApiConfigSource'DELTA_GRPC = ApiConfigSource'AGGREGATED_GRPC
  succ ApiConfigSource'AGGREGATED_GRPC
    = ApiConfigSource'AGGREGATED_DELTA_GRPC
  succ (ApiConfigSource'ApiType'Unrecognized _)
    = Prelude.error
        "ApiConfigSource'ApiType.succ: bad argument: unrecognized value"
  pred ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
    = Prelude.error
        "ApiConfigSource'ApiType.pred: bad argument ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE. This value would be out of bounds."
  pred ApiConfigSource'REST
    = ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
  pred ApiConfigSource'GRPC = ApiConfigSource'REST
  pred ApiConfigSource'DELTA_GRPC = ApiConfigSource'GRPC
  pred ApiConfigSource'AGGREGATED_GRPC = ApiConfigSource'DELTA_GRPC
  pred ApiConfigSource'AGGREGATED_DELTA_GRPC
    = ApiConfigSource'AGGREGATED_GRPC
  pred (ApiConfigSource'ApiType'Unrecognized _)
    = Prelude.error
        "ApiConfigSource'ApiType.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ApiConfigSource'ApiType where
  fieldDefault
    = ApiConfigSource'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
instance Control.DeepSeq.NFData ApiConfigSource'ApiType where
  rnf x__ = Prelude.seq x__ ()
newtype ApiVersion'UnrecognizedValue
  = ApiVersion'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ApiVersion
  = AUTO |
    V2 |
    V3 |
    ApiVersion'Unrecognized !ApiVersion'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ApiVersion where
  maybeToEnum 0 = Prelude.Just AUTO
  maybeToEnum 1 = Prelude.Just V2
  maybeToEnum 2 = Prelude.Just V3
  maybeToEnum k
    = Prelude.Just
        (ApiVersion'Unrecognized
           (ApiVersion'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum AUTO = "AUTO"
  showEnum V2 = "V2"
  showEnum V3 = "V3"
  showEnum (ApiVersion'Unrecognized (ApiVersion'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "AUTO" = Prelude.Just AUTO
    | (Prelude.==) k "V2" = Prelude.Just V2
    | (Prelude.==) k "V3" = Prelude.Just V3
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ApiVersion where
  minBound = AUTO
  maxBound = V3
instance Prelude.Enum ApiVersion where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ApiVersion: " (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum AUTO = 0
  fromEnum V2 = 1
  fromEnum V3 = 2
  fromEnum (ApiVersion'Unrecognized (ApiVersion'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ V3
    = Prelude.error
        "ApiVersion.succ: bad argument V3. This value would be out of bounds."
  succ AUTO = V2
  succ V2 = V3
  succ (ApiVersion'Unrecognized _)
    = Prelude.error "ApiVersion.succ: bad argument: unrecognized value"
  pred AUTO
    = Prelude.error
        "ApiVersion.pred: bad argument AUTO. This value would be out of bounds."
  pred V2 = AUTO
  pred V3 = V2
  pred (ApiVersion'Unrecognized _)
    = Prelude.error "ApiVersion.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ApiVersion where
  fieldDefault = AUTO
instance Control.DeepSeq.NFData ApiVersion where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.authorities' @:: Lens' ConfigSource [Proto.Xds.Core.V3.Authority.Authority]@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.vec'authorities' @:: Lens' ConfigSource (Data.Vector.Vector Proto.Xds.Core.V3.Authority.Authority)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.initialFetchTimeout' @:: Lens' ConfigSource Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'initialFetchTimeout' @:: Lens' ConfigSource (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.resourceApiVersion' @:: Lens' ConfigSource ApiVersion@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'configSourceSpecifier' @:: Lens' ConfigSource (Prelude.Maybe ConfigSource'ConfigSourceSpecifier)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'path' @:: Lens' ConfigSource (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.path' @:: Lens' ConfigSource Data.Text.Text@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'apiConfigSource' @:: Lens' ConfigSource (Prelude.Maybe ApiConfigSource)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.apiConfigSource' @:: Lens' ConfigSource ApiConfigSource@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'ads' @:: Lens' ConfigSource (Prelude.Maybe AggregatedConfigSource)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.ads' @:: Lens' ConfigSource AggregatedConfigSource@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'self' @:: Lens' ConfigSource (Prelude.Maybe SelfConfigSource)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.self' @:: Lens' ConfigSource SelfConfigSource@ -}
data ConfigSource
  = ConfigSource'_constructor {_ConfigSource'authorities :: !(Data.Vector.Vector Proto.Xds.Core.V3.Authority.Authority),
                               _ConfigSource'initialFetchTimeout :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                               _ConfigSource'resourceApiVersion :: !ApiVersion,
                               _ConfigSource'configSourceSpecifier :: !(Prelude.Maybe ConfigSource'ConfigSourceSpecifier),
                               _ConfigSource'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfigSource where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data ConfigSource'ConfigSourceSpecifier
  = ConfigSource'Path !Data.Text.Text |
    ConfigSource'ApiConfigSource !ApiConfigSource |
    ConfigSource'Ads !AggregatedConfigSource |
    ConfigSource'Self !SelfConfigSource
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ConfigSource "authorities" [Proto.Xds.Core.V3.Authority.Authority] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'authorities
           (\ x__ y__ -> x__ {_ConfigSource'authorities = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ConfigSource "vec'authorities" (Data.Vector.Vector Proto.Xds.Core.V3.Authority.Authority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'authorities
           (\ x__ y__ -> x__ {_ConfigSource'authorities = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigSource "initialFetchTimeout" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'initialFetchTimeout
           (\ x__ y__ -> x__ {_ConfigSource'initialFetchTimeout = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ConfigSource "maybe'initialFetchTimeout" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'initialFetchTimeout
           (\ x__ y__ -> x__ {_ConfigSource'initialFetchTimeout = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigSource "resourceApiVersion" ApiVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'resourceApiVersion
           (\ x__ y__ -> x__ {_ConfigSource'resourceApiVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigSource "maybe'configSourceSpecifier" (Prelude.Maybe ConfigSource'ConfigSourceSpecifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'configSourceSpecifier
           (\ x__ y__ -> x__ {_ConfigSource'configSourceSpecifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ConfigSource "maybe'path" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'configSourceSpecifier
           (\ x__ y__ -> x__ {_ConfigSource'configSourceSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigSource'Path x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigSource'Path y__))
instance Data.ProtoLens.Field.HasField ConfigSource "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'configSourceSpecifier
           (\ x__ y__ -> x__ {_ConfigSource'configSourceSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigSource'Path x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigSource'Path y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField ConfigSource "maybe'apiConfigSource" (Prelude.Maybe ApiConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'configSourceSpecifier
           (\ x__ y__ -> x__ {_ConfigSource'configSourceSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigSource'ApiConfigSource x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigSource'ApiConfigSource y__))
instance Data.ProtoLens.Field.HasField ConfigSource "apiConfigSource" ApiConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'configSourceSpecifier
           (\ x__ y__ -> x__ {_ConfigSource'configSourceSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigSource'ApiConfigSource x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigSource'ApiConfigSource y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ConfigSource "maybe'ads" (Prelude.Maybe AggregatedConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'configSourceSpecifier
           (\ x__ y__ -> x__ {_ConfigSource'configSourceSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigSource'Ads x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigSource'Ads y__))
instance Data.ProtoLens.Field.HasField ConfigSource "ads" AggregatedConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'configSourceSpecifier
           (\ x__ y__ -> x__ {_ConfigSource'configSourceSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigSource'Ads x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigSource'Ads y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField ConfigSource "maybe'self" (Prelude.Maybe SelfConfigSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'configSourceSpecifier
           (\ x__ y__ -> x__ {_ConfigSource'configSourceSpecifier = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (ConfigSource'Self x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap ConfigSource'Self y__))
instance Data.ProtoLens.Field.HasField ConfigSource "self" SelfConfigSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ConfigSource'configSourceSpecifier
           (\ x__ y__ -> x__ {_ConfigSource'configSourceSpecifier = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (ConfigSource'Self x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap ConfigSource'Self y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message ConfigSource where
  messageName _ = Data.Text.pack "envoy.config.core.v3.ConfigSource"
  packedMessageDescriptor _
    = "\n\
      \\fConfigSource\DC28\n\
      \\vauthorities\CAN\a \ETX(\v2\SYN.xds.core.v3.AuthorityR\vauthorities\DC2\DC4\n\
      \\EOTpath\CAN\SOH \SOH(\tH\NULR\EOTpath\DC2S\n\
      \\DC1api_config_source\CAN\STX \SOH(\v2%.envoy.config.core.v3.ApiConfigSourceH\NULR\SIapiConfigSource\DC2@\n\
      \\ETXads\CAN\ETX \SOH(\v2,.envoy.config.core.v3.AggregatedConfigSourceH\NULR\ETXads\DC2<\n\
      \\EOTself\CAN\ENQ \SOH(\v2&.envoy.config.core.v3.SelfConfigSourceH\NULR\EOTself\DC2M\n\
      \\NAKinitial_fetch_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC3initialFetchTimeout\DC2\\\n\
      \\DC4resource_api_version\CAN\ACK \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC2resourceApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOHB\RS\n\
      \\ETBconfig_source_specifier\DC2\ETX\248B\SOH:%\154\197\136\RS \n\
      \\RSenvoy.api.v2.core.ConfigSource"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        authorities__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "authorities"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Xds.Core.V3.Authority.Authority)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"authorities")) ::
              Data.ProtoLens.FieldDescriptor ConfigSource
        initialFetchTimeout__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "initial_fetch_timeout"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'initialFetchTimeout")) ::
              Data.ProtoLens.FieldDescriptor ConfigSource
        resourceApiVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "resource_api_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ApiVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"resourceApiVersion")) ::
              Data.ProtoLens.FieldDescriptor ConfigSource
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor ConfigSource
        apiConfigSource__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "api_config_source"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ApiConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'apiConfigSource")) ::
              Data.ProtoLens.FieldDescriptor ConfigSource
        ads__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ads"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AggregatedConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ads")) ::
              Data.ProtoLens.FieldDescriptor ConfigSource
        self__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "self"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SelfConfigSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'self")) ::
              Data.ProtoLens.FieldDescriptor ConfigSource
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 7, authorities__field_descriptor),
           (Data.ProtoLens.Tag 4, initialFetchTimeout__field_descriptor),
           (Data.ProtoLens.Tag 6, resourceApiVersion__field_descriptor),
           (Data.ProtoLens.Tag 1, path__field_descriptor),
           (Data.ProtoLens.Tag 2, apiConfigSource__field_descriptor),
           (Data.ProtoLens.Tag 3, ads__field_descriptor),
           (Data.ProtoLens.Tag 5, self__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ConfigSource'_unknownFields
        (\ x__ y__ -> x__ {_ConfigSource'_unknownFields = y__})
  defMessage
    = ConfigSource'_constructor
        {_ConfigSource'authorities = Data.Vector.Generic.empty,
         _ConfigSource'initialFetchTimeout = Prelude.Nothing,
         _ConfigSource'resourceApiVersion = Data.ProtoLens.fieldDefault,
         _ConfigSource'configSourceSpecifier = Prelude.Nothing,
         _ConfigSource'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ConfigSource
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Xds.Core.V3.Authority.Authority
             -> Data.ProtoLens.Encoding.Bytes.Parser ConfigSource
        loop x mutable'authorities
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'authorities <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'authorities)
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
                              (Data.ProtoLens.Field.field @"vec'authorities")
                              frozen'authorities
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "authorities"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'authorities y)
                                loop x v
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "initial_fetch_timeout"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"initialFetchTimeout") y x)
                                  mutable'authorities
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "resource_api_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"resourceApiVersion") y x)
                                  mutable'authorities
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
                                       "path"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                                  mutable'authorities
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "api_config_source"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"apiConfigSource") y x)
                                  mutable'authorities
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ads"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ads") y x)
                                  mutable'authorities
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "self"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"self") y x)
                                  mutable'authorities
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'authorities
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'authorities <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'authorities)
          "ConfigSource"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'authorities") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'initialFetchTimeout") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.ProtoLens.encodeMessage
                             _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"resourceApiVersion") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                            ((Prelude..)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               Prelude.fromEnum
                               _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'configSourceSpecifier") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (ConfigSource'Path v))
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
                         (Prelude.Just (ConfigSource'ApiConfigSource v))
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
                         (Prelude.Just (ConfigSource'Ads v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   v)
                         (Prelude.Just (ConfigSource'Self v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage
                                   v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ConfigSource where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ConfigSource'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ConfigSource'authorities x__)
                (Control.DeepSeq.deepseq
                   (_ConfigSource'initialFetchTimeout x__)
                   (Control.DeepSeq.deepseq
                      (_ConfigSource'resourceApiVersion x__)
                      (Control.DeepSeq.deepseq
                         (_ConfigSource'configSourceSpecifier x__) ()))))
instance Control.DeepSeq.NFData ConfigSource'ConfigSourceSpecifier where
  rnf (ConfigSource'Path x__) = Control.DeepSeq.rnf x__
  rnf (ConfigSource'ApiConfigSource x__) = Control.DeepSeq.rnf x__
  rnf (ConfigSource'Ads x__) = Control.DeepSeq.rnf x__
  rnf (ConfigSource'Self x__) = Control.DeepSeq.rnf x__
_ConfigSource'Path ::
  Data.ProtoLens.Prism.Prism' ConfigSource'ConfigSourceSpecifier Data.Text.Text
_ConfigSource'Path
  = Data.ProtoLens.Prism.prism'
      ConfigSource'Path
      (\ p__
         -> case p__ of
              (ConfigSource'Path p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigSource'ApiConfigSource ::
  Data.ProtoLens.Prism.Prism' ConfigSource'ConfigSourceSpecifier ApiConfigSource
_ConfigSource'ApiConfigSource
  = Data.ProtoLens.Prism.prism'
      ConfigSource'ApiConfigSource
      (\ p__
         -> case p__ of
              (ConfigSource'ApiConfigSource p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigSource'Ads ::
  Data.ProtoLens.Prism.Prism' ConfigSource'ConfigSourceSpecifier AggregatedConfigSource
_ConfigSource'Ads
  = Data.ProtoLens.Prism.prism'
      ConfigSource'Ads
      (\ p__
         -> case p__ of
              (ConfigSource'Ads p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_ConfigSource'Self ::
  Data.ProtoLens.Prism.Prism' ConfigSource'ConfigSourceSpecifier SelfConfigSource
_ConfigSource'Self
  = Data.ProtoLens.Prism.prism'
      ConfigSource'Self
      (\ p__
         -> case p__ of
              (ConfigSource'Self p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maxTokens' @:: Lens' RateLimitSettings Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'maxTokens' @:: Lens' RateLimitSettings (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.fillRate' @:: Lens' RateLimitSettings Proto.Google.Protobuf.Wrappers.DoubleValue@
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.maybe'fillRate' @:: Lens' RateLimitSettings (Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue)@ -}
data RateLimitSettings
  = RateLimitSettings'_constructor {_RateLimitSettings'maxTokens :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                    _RateLimitSettings'fillRate :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue),
                                    _RateLimitSettings'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RateLimitSettings where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RateLimitSettings "maxTokens" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitSettings'maxTokens
           (\ x__ y__ -> x__ {_RateLimitSettings'maxTokens = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimitSettings "maybe'maxTokens" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitSettings'maxTokens
           (\ x__ y__ -> x__ {_RateLimitSettings'maxTokens = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RateLimitSettings "fillRate" Proto.Google.Protobuf.Wrappers.DoubleValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitSettings'fillRate
           (\ x__ y__ -> x__ {_RateLimitSettings'fillRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField RateLimitSettings "maybe'fillRate" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.DoubleValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RateLimitSettings'fillRate
           (\ x__ y__ -> x__ {_RateLimitSettings'fillRate = y__}))
        Prelude.id
instance Data.ProtoLens.Message RateLimitSettings where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.RateLimitSettings"
  packedMessageDescriptor _
    = "\n\
      \\DC1RateLimitSettings\DC2;\n\
      \\n\
      \max_tokens\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\tmaxTokens\DC2I\n\
      \\tfill_rate\CAN\STX \SOH(\v2\FS.google.protobuf.DoubleValueR\bfillRateB\SO\250B\v\DC2\t!\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL:*\154\197\136\RS%\n\
      \#envoy.api.v2.core.RateLimitSettings"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        maxTokens__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_tokens"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxTokens")) ::
              Data.ProtoLens.FieldDescriptor RateLimitSettings
        fillRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fill_rate"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.DoubleValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fillRate")) ::
              Data.ProtoLens.FieldDescriptor RateLimitSettings
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, maxTokens__field_descriptor),
           (Data.ProtoLens.Tag 2, fillRate__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RateLimitSettings'_unknownFields
        (\ x__ y__ -> x__ {_RateLimitSettings'_unknownFields = y__})
  defMessage
    = RateLimitSettings'_constructor
        {_RateLimitSettings'maxTokens = Prelude.Nothing,
         _RateLimitSettings'fillRate = Prelude.Nothing,
         _RateLimitSettings'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RateLimitSettings
          -> Data.ProtoLens.Encoding.Bytes.Parser RateLimitSettings
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
                                       "max_tokens"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxTokens") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "fill_rate"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fillRate") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RateLimitSettings"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'maxTokens") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fillRate") _x
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
instance Control.DeepSeq.NFData RateLimitSettings where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RateLimitSettings'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RateLimitSettings'maxTokens x__)
                (Control.DeepSeq.deepseq (_RateLimitSettings'fillRate x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Config.Core.V3.ConfigSource_Fields.transportApiVersion' @:: Lens' SelfConfigSource ApiVersion@ -}
data SelfConfigSource
  = SelfConfigSource'_constructor {_SelfConfigSource'transportApiVersion :: !ApiVersion,
                                   _SelfConfigSource'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SelfConfigSource where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SelfConfigSource "transportApiVersion" ApiVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SelfConfigSource'transportApiVersion
           (\ x__ y__ -> x__ {_SelfConfigSource'transportApiVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Message SelfConfigSource where
  messageName _
    = Data.Text.pack "envoy.config.core.v3.SelfConfigSource"
  packedMessageDescriptor _
    = "\n\
      \\DLESelfConfigSource\DC2^\n\
      \\NAKtransport_api_version\CAN\SOH \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH:)\154\197\136\RS$\n\
      \\"envoy.api.v2.core.SelfConfigSource"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        transportApiVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_api_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ApiVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transportApiVersion")) ::
              Data.ProtoLens.FieldDescriptor SelfConfigSource
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, transportApiVersion__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SelfConfigSource'_unknownFields
        (\ x__ y__ -> x__ {_SelfConfigSource'_unknownFields = y__})
  defMessage
    = SelfConfigSource'_constructor
        {_SelfConfigSource'transportApiVersion = Data.ProtoLens.fieldDefault,
         _SelfConfigSource'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SelfConfigSource
          -> Data.ProtoLens.Encoding.Bytes.Parser SelfConfigSource
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "transport_api_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"transportApiVersion") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SelfConfigSource"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"transportApiVersion") _x
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SelfConfigSource where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SelfConfigSource'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SelfConfigSource'transportApiVersion x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(envoy/config/core/v3/config_source.proto\DC2\DC4envoy.config.core.v3\SUB'envoy/config/core/v3/grpc_service.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\ESCxds/core/v3/authority.proto\SUB#envoy/annotations/deprecation.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\155\ACK\n\
    \\SIApiConfigSource\DC2R\n\
    \\bapi_type\CAN\SOH \SOH(\SO2-.envoy.config.core.v3.ApiConfigSource.ApiTypeR\aapiTypeB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2^\n\
    \\NAKtransport_api_version\CAN\b \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2#\n\
    \\rcluster_names\CAN\STX \ETX(\tR\fclusterNames\DC2F\n\
    \\rgrpc_services\CAN\EOT \ETX(\v2!.envoy.config.core.v3.GrpcServiceR\fgrpcServices\DC2>\n\
    \\rrefresh_delay\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\frefreshDelay\DC2L\n\
    \\SIrequest_timeout\CAN\ENQ \SOH(\v2\EM.google.protobuf.DurationR\SOrequestTimeoutB\b\250B\ENQ\170\SOH\STX*\NUL\DC2W\n\
    \\DC3rate_limit_settings\CAN\ACK \SOH(\v2'.envoy.config.core.v3.RateLimitSettingsR\DC1rateLimitSettings\DC2A\n\
    \\RSset_node_on_first_message_only\CAN\a \SOH(\bR\EMsetNodeOnFirstMessageOnly\"\146\SOH\n\
    \\aApiType\DC23\n\
    \%DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE\DLE\NUL\SUB\b\b\SOH\168\247\180\139\STX\SOH\DC2\b\n\
    \\EOTREST\DLE\SOH\DC2\b\n\
    \\EOTGRPC\DLE\STX\DC2\SO\n\
    \\n\
    \DELTA_GRPC\DLE\ETX\DC2\DC3\n\
    \\SIAGGREGATED_GRPC\DLE\ENQ\DC2\EM\n\
    \\NAKAGGREGATED_DELTA_GRPC\DLE\ACK:(\154\197\136\RS#\n\
    \!envoy.api.v2.core.ApiConfigSource\"I\n\
    \\SYNAggregatedConfigSource:/\154\197\136\RS*\n\
    \(envoy.api.v2.core.AggregatedConfigSource\"\157\SOH\n\
    \\DLESelfConfigSource\DC2^\n\
    \\NAKtransport_api_version\CAN\SOH \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH:)\154\197\136\RS$\n\
    \\"envoy.api.v2.core.SelfConfigSource\"\199\SOH\n\
    \\DC1RateLimitSettings\DC2;\n\
    \\n\
    \max_tokens\CAN\SOH \SOH(\v2\FS.google.protobuf.UInt32ValueR\tmaxTokens\DC2I\n\
    \\tfill_rate\CAN\STX \SOH(\v2\FS.google.protobuf.DoubleValueR\bfillRateB\SO\250B\v\DC2\t!\NUL\NUL\NUL\NUL\NUL\NUL\NUL\NUL:*\154\197\136\RS%\n\
    \#envoy.api.v2.core.RateLimitSettings\"\167\EOT\n\
    \\fConfigSource\DC28\n\
    \\vauthorities\CAN\a \ETX(\v2\SYN.xds.core.v3.AuthorityR\vauthorities\DC2\DC4\n\
    \\EOTpath\CAN\SOH \SOH(\tH\NULR\EOTpath\DC2S\n\
    \\DC1api_config_source\CAN\STX \SOH(\v2%.envoy.config.core.v3.ApiConfigSourceH\NULR\SIapiConfigSource\DC2@\n\
    \\ETXads\CAN\ETX \SOH(\v2,.envoy.config.core.v3.AggregatedConfigSourceH\NULR\ETXads\DC2<\n\
    \\EOTself\CAN\ENQ \SOH(\v2&.envoy.config.core.v3.SelfConfigSourceH\NULR\EOTself\DC2M\n\
    \\NAKinitial_fetch_timeout\CAN\EOT \SOH(\v2\EM.google.protobuf.DurationR\DC3initialFetchTimeout\DC2\\\n\
    \\DC4resource_api_version\CAN\ACK \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC2resourceApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOHB\RS\n\
    \\ETBconfig_source_specifier\DC2\ETX\248B\SOH:%\154\197\136\RS \n\
    \\RSenvoy.api.v2.core.ConfigSource*@\n\
    \\n\
    \ApiVersion\DC2\NAK\n\
    \\EOTAUTO\DLE\NUL\SUB\v\b\SOH\138\244\155\179\ENQ\ETX3.0\DC2\DC3\n\
    \\STXV2\DLE\SOH\SUB\v\b\SOH\138\244\155\179\ENQ\ETX3.0\DC2\ACK\n\
    \\STXV3\DLE\STXBA\n\
    \\"io.envoyproxy.envoy.config.core.v3B\DC1ConfigSourceProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\217D\n\
    \\a\DC2\ENQ\NUL\NUL\212\SOH\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\GS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL1\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL(\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL%\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\v\NUL-\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\f\NUL'\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\r\NUL+\n\
    \\t\n\
    \\STX\ETX\a\DC2\ETX\SO\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL;\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\DLE\NUL;\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NUL2\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\DC1\NUL2\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DC2\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC3\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC3\NULF\n\
    \\204\SOH\n\
    \\STX\ENQ\NUL\DC2\EOT\EM\NUL$\SOH\SUB\147\SOH xDS API and non-xDS services version. This is used to describe both resource and transport\n\
    \ protocol versions (in distinct configuration fields).\n\
    \2* [#protodoc-title: Configuration sources]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETX\EM\ENQ\SI\n\
    \\188\SOH\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETX\GS\STX]\SUB\174\SOH When not specified, we assume v2, to ease migration to Envoy's stable API\n\
    \ versioning. If a client does not support v2 (e.g. due to deprecation), this\n\
    \ is an invalid value.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETX\GS\STX\ACK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETX\GS\t\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\ETX\DC2\ETX\GS\v\\\n\
    \\r\n\
    \\ACK\ENQ\NUL\STX\NUL\ETX\SOH\DC2\ETX\GS\f\GS\n\
    \\DLE\n\
    \\t\ENQ\NUL\STX\NUL\ETX\193\190\179V\DC2\ETX\GS\US[\n\
    \\RS\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETX \STX[\SUB\DC1 Use xDS v2 API.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETX \STX\EOT\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETX \a\b\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\ETX\DC2\ETX \tZ\n\
    \\r\n\
    \\ACK\ENQ\NUL\STX\SOH\ETX\SOH\DC2\ETX \n\
    \\ESC\n\
    \\DLE\n\
    \\t\ENQ\NUL\STX\SOH\ETX\193\190\179V\DC2\ETX \GSY\n\
    \\RS\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETX#\STX\t\SUB\DC1 Use xDS v3 API.\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETX#\STX\EOT\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETX#\a\b\n\
    \\146\SOH\n\
    \\STX\EOT\NUL\DC2\EOT)\NULl\SOH\SUB\133\SOH API configuration source. This identifies the API type and cluster that Envoy\n\
    \ will use to fetch an xDS API.\n\
    \ [#next-free-field: 9]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX)\b\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX*\STXc\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX*\STXc\n\
    \<\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT-\STXI\ETX\SUB. APIs may be fetched via either REST or gRPC.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX-\a\SO\n\
    \\147\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\EOT0\EOT1S\SUB\130\SOH Ideally this would be 'reserved 0' but one can't reserve the default\n\
    \ value. Instead we throw an exception if this is ever used.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX0\EOT)\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX0,-\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\ETX\DC2\ETX1\bR\n\
    \\SI\n\
    \\b\EOT\NUL\EOT\NUL\STX\NUL\ETX\SOH\DC2\ETX1\t\SUB\n\
    \\DC2\n\
    \\v\EOT\NUL\EOT\NUL\STX\NUL\ETX\245\206\182!\DC2\ETX1\FSQ\n\
    \\161\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX6\EOT\r\SUB\145\SOH REST-JSON v2 API. The `canonical JSON encoding\n\
    \ <https://developers.google.com/protocol-buffers/docs/proto3#json>`_ for\n\
    \ the v2 protos is used.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX6\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX6\v\f\n\
    \#\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX9\EOT\r\SUB\DC4 SotW gRPC service.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX9\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX9\v\f\n\
    \\132\STX\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX>\EOT\DC3\SUB\244\SOH Using the delta xDS gRPC service, i.e. DeltaDiscovery{Request,Response}\n\
    \ rather than Discovery{Request,Response}. Rather than sending Envoy the entire state\n\
    \ with every update, the xDS server only sends what has changed since the last update.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX>\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX>\DC1\DC2\n\
    \\188\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\EOT\DC2\ETXC\EOT\CAN\SUB\172\SOH SotW xDS gRPC with ADS. All resources which resolve to this configuration source will be\n\
    \ multiplexed on a single connection to an ADS endpoint.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETXC\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\STX\DC2\ETXC\SYN\ETB\n\
    \\189\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ENQ\DC2\ETXH\EOT\RS\SUB\173\SOH Delta xDS gRPC with ADS. All resources which resolve to this configuration source will be\n\
    \ multiplexed on a single connection to an ADS endpoint.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ENQ\SOH\DC2\ETXH\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ENQ\STX\DC2\ETXH\FS\GS\n\
    \0\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXL\STXF\SUB# API type (gRPC, REST, delta gRPC)\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXL\STX\t\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXL\n\
    \\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXL\NAK\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETXL\ETBE\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DLE\DC2\ETXL\CAND\n\
    \\164\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXP\STXV\SUB\150\SOH API version for xDS transport protocol. This describes the xDS gRPC/REST\n\
    \ endpoint and version of [Delta]DiscoveryRequest/Response used on the wire.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXP\STX\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXP\r\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXP%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETXP'U\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETXP(T\n\
    \\141\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXZ\STX$\SUB\255\SOH Cluster names should be used only with REST. If > 1\n\
    \ cluster is defined, clusters will be cycled through if any kind of failure\n\
    \ occurs.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \  The cluster with name ``cluster_name`` must be statically defined and its\n\
    \  type must not be ``EDS``.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETXZ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXZ\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXZ\"#\n\
    \\151\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX^\STX)\SUB\137\SOH Multiple gRPC services be provided for GRPC. If > 1 cluster is defined,\n\
    \ services will be cycled through if any kind of failure occurs.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX^\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX^\ETB$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX^'(\n\
    \A\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXa\STX-\SUB4 For REST APIs, the delay between successive polls.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXa\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXa\ESC(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXa+,\n\
    \b\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXd\STXU\SUBU For REST APIs, the request timeout. If not set, a default value of 1s will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXd\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXd\ESC*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXd-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\b\DC2\ETXd/T\n\
    \\SI\n\
    \\b\EOT\NUL\STX\ENQ\b\175\b\NAK\DC2\ETXd0S\n\
    \z\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXh\STX,\SUBm For GRPC APIs, the rate limit settings. If present, discovery requests made by Envoy will be\n\
    \ rate limited.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXh\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXh\DC4'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXh*+\n\
    \i\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETXk\STX*\SUB\\ Skip the node identifier in subsequent discovery requests for streaming gRPC config types.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETXk\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXk\a%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXk()\n\
    \\215\SOH\n\
    \\STX\EOT\SOH\DC2\EOTq\NULt\SOH\SUB\202\SOH Aggregated Discovery Service (ADS) options. This is currently empty, but when\n\
    \ set in :ref:`ConfigSource <envoy_v3_api_msg_config.core.v3.ConfigSource>` can be used to\n\
    \ specify that ADS is to be used.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETXq\b\RS\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOTr\STXs1\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOTr\STXs1\n\
    \\140\STX\n\
    \\STX\EOT\STX\DC2\ENQz\NUL\128\SOH\SOH\SUB\254\SOH [#not-implemented-hide:]\n\
    \ Self-referencing config source options. This is currently empty, but when\n\
    \ set in :ref:`ConfigSource <envoy_v3_api_msg_config.core.v3.ConfigSource>` can be used to\n\
    \ specify that other data can be obtained from the same server.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETXz\b\CAN\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\a\DC2\ETX{\STXd\n\
    \\SI\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\ETX{\STXd\n\
    \\164\SOH\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DEL\STXV\SUB\150\SOH API version for xDS transport protocol. This describes the xDS gRPC/REST\n\
    \ endpoint and version of [Delta]DiscoveryRequest/Response used on the wire.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX\DEL\STX\f\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DEL\r\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DEL%&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX\DEL'U\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\175\b\DLE\DC2\ETX\DEL(T\n\
    \W\n\
    \\STX\EOT\ETX\DC2\ACK\131\SOH\NUL\142\SOH\SOH\SUBI Rate Limit settings to be applied for discovery requests made by Envoy.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\131\SOH\b\EM\n\
    \\r\n\
    \\ETX\EOT\ETX\a\DC2\ACK\132\SOH\STX\133\SOH,\n\
    \\DC2\n\
    \\b\EOT\ETX\a\211\136\225\ETX\SOH\DC2\ACK\132\SOH\STX\133\SOH,\n\
    \\145\SOH\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\137\SOH\STX-\SUB\130\SOH Maximum number of tokens to be used for rate limiting discovery request calls. If not set, a\n\
    \ default value of 100 will be used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ACK\DC2\EOT\137\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\137\SOH\RS(\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\137\SOH+,\n\
    \\134\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\141\SOH\STXR\SUBx Rate at which tokens will be filled per second. If not set, a default fill rate of 10 tokens\n\
    \ per second will be used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\EOT\141\SOH\STX\GS\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\141\SOH\RS'\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\141\SOH*+\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\b\DC2\EOT\141\SOH,Q\n\
    \\DLE\n\
    \\b\EOT\ETX\STX\SOH\b\175\b\STX\DC2\EOT\141\SOH-P\n\
    \\136\ETX\n\
    \\STX\EOT\EOT\DC2\ACK\151\SOH\NUL\212\SOH\SOH\SUB\249\STX Configuration for :ref:`listeners <config_listeners>`, :ref:`clusters\n\
    \ <config_cluster_manager>`, :ref:`routes\n\
    \ <envoy_v3_api_msg_config.route.v3.RouteConfiguration>`, :ref:`endpoints\n\
    \ <arch_overview_service_discovery>` etc. may either be sourced from the\n\
    \ filesystem or from an xDS API source. Filesystem configs are watched with\n\
    \ inotify for updates.\n\
    \ [#next-free-field: 8]\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\151\SOH\b\DC4\n\
    \\v\n\
    \\ETX\EOT\EOT\a\DC2\EOT\152\SOH\STX`\n\
    \\DLE\n\
    \\b\EOT\EOT\a\211\136\225\ETX\SOH\DC2\EOT\152\SOH\STX`\n\
    \\157\STX\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\EOT\158\SOH\STX1\SUB\142\STX Authorities that this config source may be used for. An authority specified in a xdstp:// URL\n\
    \ is resolved to a *ConfigSource* prior to configuration fetch. This field provides the\n\
    \ association between authority name and configuration source.\n\
    \ [#not-implemented-hide:]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\EOT\158\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ACK\DC2\EOT\158\SOH\v \n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\EOT\158\SOH!,\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\EOT\158\SOH/0\n\
    \\SO\n\
    \\EOT\EOT\EOT\b\NUL\DC2\ACK\160\SOH\STX\197\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\EOT\b\NUL\SOH\DC2\EOT\160\SOH\b\US\n\
    \\r\n\
    \\ENQ\EOT\EOT\b\NUL\STX\DC2\EOT\161\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\EOT\b\NUL\STX\175\b\DC2\EOT\161\SOH\EOT&\n\
    \\212\EOT\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\EOT\176\SOH\EOT\DC4\SUB\197\EOT Path on the filesystem to source and watch for configuration updates.\n\
    \ When sourcing configuration for :ref:`secret <envoy_v3_api_msg_extensions.transport_sockets.tls.v3.Secret>`,\n\
    \ the certificate and key files are also watched for updates.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \  The path to the source must exist at config load time.\n\
    \\n\
    \ .. note::\n\
    \\n\
    \   Envoy will only watch the file path for *moves.* This is because in general only moves\n\
    \   are atomic. The same method of swapping files as is demonstrated in the\n\
    \   :ref:`runtime documentation <config_runtime_symbolic_link_swap>` can be used here also.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\EOT\176\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\EOT\176\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\EOT\176\SOH\DC2\DC3\n\
    \)\n\
    \\EOT\EOT\EOT\STX\STX\DC2\EOT\179\SOH\EOT*\SUB\ESC API configuration source.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ACK\DC2\EOT\179\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\EOT\179\SOH\DC4%\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\EOT\179\SOH()\n\
    \\136\SOH\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\EOT\183\SOH\EOT#\SUBz When set, ADS will be used to fetch resources. The ADS API configuration\n\
    \ source in the bootstrap configuration is used.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ACK\DC2\EOT\183\SOH\EOT\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\EOT\183\SOH\ESC\RS\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\EOT\183\SOH!\"\n\
    \\200\ACK\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\EOT\196\SOH\EOT\RS\SUB\185\ACK [#not-implemented-hide:]\n\
    \ When set, the client will access the resources from the same server it got the\n\
    \ ConfigSource from, although not necessarily from the same stream. This is similar to the\n\
    \ :ref:`ads<envoy_v3_api_field.ConfigSource.ads>` field, except that the client may use a\n\
    \ different stream to the same server. As a result, this field can be used for things\n\
    \ like LRS that cannot be sent on an ADS stream. It can also be used to link from (e.g.)\n\
    \ LDS to RDS on the same server without requiring the management server to know its name\n\
    \ or required credentials.\n\
    \ [#next-major-version: In xDS v3, consider replacing the ads field with this one, since\n\
    \ this field can implicitly mean to use the same stream in the case where the ConfigSource\n\
    \ is provided via ADS and the specified data can also be obtained via ADS.]\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ACK\DC2\EOT\196\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\EOT\196\SOH\NAK\EM\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\EOT\196\SOH\FS\GS\n\
    \\211\EOT\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\EOT\206\SOH\STX5\SUB\196\EOT When this timeout is specified, Envoy will wait no longer than the specified time for first\n\
    \ config response on this xDS subscription during the :ref:`initialization process\n\
    \ <arch_overview_initialization>`. After reaching the timeout, Envoy will move to the next\n\
    \ initialization phase, even if the first config is not delivered yet. The timer is activated\n\
    \ when the xDS API subscription starts, and is disarmed on first config update or on error. 0\n\
    \ means no timeout - Envoy will wait indefinitely for the first xDS config (unless another\n\
    \ timeout applies). The default is 15s.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ACK\DC2\EOT\206\SOH\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\EOT\206\SOH\ESC0\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\EOT\206\SOH34\n\
    \\194\SOH\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\EOT\211\SOH\STXU\SUB\179\SOH API version for xDS resources. This implies the type URLs that the client\n\
    \ will request for resources and the resource type that the client will in\n\
    \ turn expect to be delivered.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ACK\DC2\EOT\211\SOH\STX\f\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\EOT\211\SOH\r!\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\EOT\211\SOH$%\n\
    \\r\n\
    \\ENQ\EOT\EOT\STX\ACK\b\DC2\EOT\211\SOH&T\n\
    \\DLE\n\
    \\b\EOT\EOT\STX\ACK\b\175\b\DLE\DC2\EOT\211\SOH'Sb\ACKproto3"