{- This file was auto-generated from envoy/config/metrics/v3/metrics_service.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Metrics.V3.MetricsService (
        MetricsServiceConfig()
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
import qualified Proto.Envoy.Config.Core.V3.ConfigSource
import qualified Proto.Envoy.Config.Core.V3.GrpcService
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Metrics.V3.MetricsService_Fields.grpcService' @:: Lens' MetricsServiceConfig Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Config.Metrics.V3.MetricsService_Fields.maybe'grpcService' @:: Lens' MetricsServiceConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Config.Metrics.V3.MetricsService_Fields.transportApiVersion' @:: Lens' MetricsServiceConfig Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion@
         * 'Proto.Envoy.Config.Metrics.V3.MetricsService_Fields.reportCountersAsDeltas' @:: Lens' MetricsServiceConfig Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Metrics.V3.MetricsService_Fields.maybe'reportCountersAsDeltas' @:: Lens' MetricsServiceConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Metrics.V3.MetricsService_Fields.emitTagsAsLabels' @:: Lens' MetricsServiceConfig Prelude.Bool@ -}
data MetricsServiceConfig
  = MetricsServiceConfig'_constructor {_MetricsServiceConfig'grpcService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                                       _MetricsServiceConfig'transportApiVersion :: !Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion,
                                       _MetricsServiceConfig'reportCountersAsDeltas :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                                       _MetricsServiceConfig'emitTagsAsLabels :: !Prelude.Bool,
                                       _MetricsServiceConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MetricsServiceConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MetricsServiceConfig "grpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricsServiceConfig'grpcService
           (\ x__ y__ -> x__ {_MetricsServiceConfig'grpcService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MetricsServiceConfig "maybe'grpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricsServiceConfig'grpcService
           (\ x__ y__ -> x__ {_MetricsServiceConfig'grpcService = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetricsServiceConfig "transportApiVersion" Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricsServiceConfig'transportApiVersion
           (\ x__ y__
              -> x__ {_MetricsServiceConfig'transportApiVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetricsServiceConfig "reportCountersAsDeltas" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricsServiceConfig'reportCountersAsDeltas
           (\ x__ y__
              -> x__ {_MetricsServiceConfig'reportCountersAsDeltas = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField MetricsServiceConfig "maybe'reportCountersAsDeltas" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricsServiceConfig'reportCountersAsDeltas
           (\ x__ y__
              -> x__ {_MetricsServiceConfig'reportCountersAsDeltas = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MetricsServiceConfig "emitTagsAsLabels" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MetricsServiceConfig'emitTagsAsLabels
           (\ x__ y__ -> x__ {_MetricsServiceConfig'emitTagsAsLabels = y__}))
        Prelude.id
instance Data.ProtoLens.Message MetricsServiceConfig where
  messageName _
    = Data.Text.pack "envoy.config.metrics.v3.MetricsServiceConfig"
  packedMessageDescriptor _
    = "\n\
      \\DC4MetricsServiceConfig\DC2N\n\
      \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2^\n\
      \\NAKtransport_api_version\CAN\ETX \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2U\n\
      \\EMreport_counters_as_deltas\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\SYNreportCountersAsDeltas\DC2-\n\
      \\DC3emit_tags_as_labels\CAN\EOT \SOH(\bR\DLEemitTagsAsLabels:3\154\197\136\RS.\n\
      \,envoy.config.metrics.v2.MetricsServiceConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        grpcService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcService")) ::
              Data.ProtoLens.FieldDescriptor MetricsServiceConfig
        transportApiVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_api_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transportApiVersion")) ::
              Data.ProtoLens.FieldDescriptor MetricsServiceConfig
        reportCountersAsDeltas__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "report_counters_as_deltas"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reportCountersAsDeltas")) ::
              Data.ProtoLens.FieldDescriptor MetricsServiceConfig
        emitTagsAsLabels__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "emit_tags_as_labels"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"emitTagsAsLabels")) ::
              Data.ProtoLens.FieldDescriptor MetricsServiceConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, grpcService__field_descriptor),
           (Data.ProtoLens.Tag 3, transportApiVersion__field_descriptor),
           (Data.ProtoLens.Tag 2, reportCountersAsDeltas__field_descriptor),
           (Data.ProtoLens.Tag 4, emitTagsAsLabels__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MetricsServiceConfig'_unknownFields
        (\ x__ y__ -> x__ {_MetricsServiceConfig'_unknownFields = y__})
  defMessage
    = MetricsServiceConfig'_constructor
        {_MetricsServiceConfig'grpcService = Prelude.Nothing,
         _MetricsServiceConfig'transportApiVersion = Data.ProtoLens.fieldDefault,
         _MetricsServiceConfig'reportCountersAsDeltas = Prelude.Nothing,
         _MetricsServiceConfig'emitTagsAsLabels = Data.ProtoLens.fieldDefault,
         _MetricsServiceConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MetricsServiceConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser MetricsServiceConfig
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
                                       "grpc_service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grpcService") y x)
                        24
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
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "report_counters_as_deltas"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"reportCountersAsDeltas") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "emit_tags_as_labels"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"emitTagsAsLabels") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MetricsServiceConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'grpcService") _x
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
                (let
                   _v
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"transportApiVersion") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum
                            _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'reportCountersAsDeltas") _x
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
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"emitTagsAsLabels") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (\ b -> if b then 1 else 0)
                                  _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MetricsServiceConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MetricsServiceConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MetricsServiceConfig'grpcService x__)
                (Control.DeepSeq.deepseq
                   (_MetricsServiceConfig'transportApiVersion x__)
                   (Control.DeepSeq.deepseq
                      (_MetricsServiceConfig'reportCountersAsDeltas x__)
                      (Control.DeepSeq.deepseq
                         (_MetricsServiceConfig'emitTagsAsLabels x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \-envoy/config/metrics/v3/metrics_service.proto\DC2\ETBenvoy.config.metrics.v3\SUB(envoy/config/core/v3/config_source.proto\SUB'envoy/config/core/v3/grpc_service.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\129\ETX\n\
    \\DC4MetricsServiceConfig\DC2N\n\
    \\fgrpc_service\CAN\SOH \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2^\n\
    \\NAKtransport_api_version\CAN\ETX \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2U\n\
    \\EMreport_counters_as_deltas\CAN\STX \SOH(\v2\SUB.google.protobuf.BoolValueR\SYNreportCountersAsDeltas\DC2-\n\
    \\DC3emit_tags_as_labels\CAN\EOT \SOH(\bR\DLEemitTagsAsLabels:3\154\197\136\RS.\n\
    \,envoy.config.metrics.v2.MetricsServiceConfigBF\n\
    \%io.envoyproxy.envoy.config.metrics.v3B\DC3MetricsServiceProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\130\r\n\
    \\ACK\DC2\EOT\NUL\NUL-\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL \n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL2\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL1\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL>\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL4\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\184\STX\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL-\SOH\SUB\133\STX Metrics Service is configured as a built-in *envoy.stat_sinks.metrics_service* :ref:`StatsSink\n\
    \ <envoy_v3_api_msg_config.metrics.v3.StatsSink>`. This opaque configuration will be used to create\n\
    \ Metrics Service.\n\
    \ [#extension: envoy.stat_sinks.metrics_service]\n\
    \2$ [#protodoc-title: Metrics service]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\FS\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\EM\STX\SUB5\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\EM\STX\SUB5\n\
    \H\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\GS\STXU\SUB; The upstream gRPC cluster that hosts the metrics service.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\GS\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS\SYN\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\GS%&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\GS'T\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\GS(S\n\
    \\157\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX!\STX^\SUB\143\SOH API version for metric service transport protocol. This describes the metric service gRPC\n\
    \ endpoint and version of messages used on the wire.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX!\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX!\NAK*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX!-.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX!/]\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\DLE\DC2\ETX!0\\\n\
    \\239\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX'\STX:\SUB\225\STX If true, counters are reported as the delta between flushing intervals. Otherwise, the current\n\
    \ counter value is reported. Defaults to false.\n\
    \ Eventually (https://github.com/envoyproxy/envoy/issues/10968) if this value is not set, the\n\
    \ sink will take updates from the :ref:`MetricsResponse <envoy_v3_api_msg_service.metrics.v3.StreamMetricsResponse>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX'\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX'\FS5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX'89\n\
    \\161\STX\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX,\STX\US\SUB\147\STX If true, metrics will have their tags emitted as labels on the metrics objects sent to the MetricsService,\n\
    \ and the tag extracted name will be used instead of the full name, which may contain values used by the tag\n\
    \ extractor or additional tags added during stats creation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX,\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX,\a\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX,\GS\RSb\ACKproto3"