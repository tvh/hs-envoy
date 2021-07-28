{- This file was auto-generated from envoy/extensions/access_loggers/open_telemetry/v3alpha/logs_service.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.AccessLoggers.OpenTelemetry.V3alpha.LogsService (
        OpenTelemetryAccessLogConfig()
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
import qualified Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als
import qualified Proto.Opentelemetry.Proto.Common.V1.Common
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.AccessLoggers.OpenTelemetry.V3alpha.LogsService_Fields.commonConfig' @:: Lens' OpenTelemetryAccessLogConfig Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als.CommonGrpcAccessLogConfig@
         * 'Proto.Envoy.Extensions.AccessLoggers.OpenTelemetry.V3alpha.LogsService_Fields.maybe'commonConfig' @:: Lens' OpenTelemetryAccessLogConfig (Prelude.Maybe Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als.CommonGrpcAccessLogConfig)@
         * 'Proto.Envoy.Extensions.AccessLoggers.OpenTelemetry.V3alpha.LogsService_Fields.body' @:: Lens' OpenTelemetryAccessLogConfig Proto.Opentelemetry.Proto.Common.V1.Common.AnyValue@
         * 'Proto.Envoy.Extensions.AccessLoggers.OpenTelemetry.V3alpha.LogsService_Fields.maybe'body' @:: Lens' OpenTelemetryAccessLogConfig (Prelude.Maybe Proto.Opentelemetry.Proto.Common.V1.Common.AnyValue)@
         * 'Proto.Envoy.Extensions.AccessLoggers.OpenTelemetry.V3alpha.LogsService_Fields.attributes' @:: Lens' OpenTelemetryAccessLogConfig Proto.Opentelemetry.Proto.Common.V1.Common.KeyValueList@
         * 'Proto.Envoy.Extensions.AccessLoggers.OpenTelemetry.V3alpha.LogsService_Fields.maybe'attributes' @:: Lens' OpenTelemetryAccessLogConfig (Prelude.Maybe Proto.Opentelemetry.Proto.Common.V1.Common.KeyValueList)@ -}
data OpenTelemetryAccessLogConfig
  = OpenTelemetryAccessLogConfig'_constructor {_OpenTelemetryAccessLogConfig'commonConfig :: !(Prelude.Maybe Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als.CommonGrpcAccessLogConfig),
                                               _OpenTelemetryAccessLogConfig'body :: !(Prelude.Maybe Proto.Opentelemetry.Proto.Common.V1.Common.AnyValue),
                                               _OpenTelemetryAccessLogConfig'attributes :: !(Prelude.Maybe Proto.Opentelemetry.Proto.Common.V1.Common.KeyValueList),
                                               _OpenTelemetryAccessLogConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OpenTelemetryAccessLogConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OpenTelemetryAccessLogConfig "commonConfig" Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als.CommonGrpcAccessLogConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenTelemetryAccessLogConfig'commonConfig
           (\ x__ y__
              -> x__ {_OpenTelemetryAccessLogConfig'commonConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OpenTelemetryAccessLogConfig "maybe'commonConfig" (Prelude.Maybe Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als.CommonGrpcAccessLogConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenTelemetryAccessLogConfig'commonConfig
           (\ x__ y__
              -> x__ {_OpenTelemetryAccessLogConfig'commonConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenTelemetryAccessLogConfig "body" Proto.Opentelemetry.Proto.Common.V1.Common.AnyValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenTelemetryAccessLogConfig'body
           (\ x__ y__ -> x__ {_OpenTelemetryAccessLogConfig'body = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OpenTelemetryAccessLogConfig "maybe'body" (Prelude.Maybe Proto.Opentelemetry.Proto.Common.V1.Common.AnyValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenTelemetryAccessLogConfig'body
           (\ x__ y__ -> x__ {_OpenTelemetryAccessLogConfig'body = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenTelemetryAccessLogConfig "attributes" Proto.Opentelemetry.Proto.Common.V1.Common.KeyValueList where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenTelemetryAccessLogConfig'attributes
           (\ x__ y__
              -> x__ {_OpenTelemetryAccessLogConfig'attributes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OpenTelemetryAccessLogConfig "maybe'attributes" (Prelude.Maybe Proto.Opentelemetry.Proto.Common.V1.Common.KeyValueList) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenTelemetryAccessLogConfig'attributes
           (\ x__ y__
              -> x__ {_OpenTelemetryAccessLogConfig'attributes = y__}))
        Prelude.id
instance Data.ProtoLens.Message OpenTelemetryAccessLogConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.access_loggers.open_telemetry.v3alpha.OpenTelemetryAccessLogConfig"
  packedMessageDescriptor _
    = "\n\
      \\FSOpenTelemetryAccessLogConfig\DC2q\n\
      \\rcommon_config\CAN\SOH \SOH(\v2B.envoy.extensions.access_loggers.grpc.v3.CommonGrpcAccessLogConfigR\fcommonConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2;\n\
      \\EOTbody\CAN\STX \SOH(\v2'.opentelemetry.proto.common.v1.AnyValueR\EOTbody\DC2K\n\
      \\n\
      \attributes\CAN\ETX \SOH(\v2+.opentelemetry.proto.common.v1.KeyValueListR\n\
      \attributes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als.CommonGrpcAccessLogConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonConfig")) ::
              Data.ProtoLens.FieldDescriptor OpenTelemetryAccessLogConfig
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Opentelemetry.Proto.Common.V1.Common.AnyValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'body")) ::
              Data.ProtoLens.FieldDescriptor OpenTelemetryAccessLogConfig
        attributes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "attributes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Opentelemetry.Proto.Common.V1.Common.KeyValueList)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'attributes")) ::
              Data.ProtoLens.FieldDescriptor OpenTelemetryAccessLogConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, body__field_descriptor),
           (Data.ProtoLens.Tag 3, attributes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OpenTelemetryAccessLogConfig'_unknownFields
        (\ x__ y__
           -> x__ {_OpenTelemetryAccessLogConfig'_unknownFields = y__})
  defMessage
    = OpenTelemetryAccessLogConfig'_constructor
        {_OpenTelemetryAccessLogConfig'commonConfig = Prelude.Nothing,
         _OpenTelemetryAccessLogConfig'body = Prelude.Nothing,
         _OpenTelemetryAccessLogConfig'attributes = Prelude.Nothing,
         _OpenTelemetryAccessLogConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OpenTelemetryAccessLogConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser OpenTelemetryAccessLogConfig
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
                                       "common_config"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commonConfig") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "body"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "attributes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"attributes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OpenTelemetryAccessLogConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'commonConfig") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'body") _x
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
                          (Data.ProtoLens.Field.field @"maybe'attributes") _x
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
instance Control.DeepSeq.NFData OpenTelemetryAccessLogConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OpenTelemetryAccessLogConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OpenTelemetryAccessLogConfig'commonConfig x__)
                (Control.DeepSeq.deepseq
                   (_OpenTelemetryAccessLogConfig'body x__)
                   (Control.DeepSeq.deepseq
                      (_OpenTelemetryAccessLogConfig'attributes x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \Ienvoy/extensions/access_loggers/open_telemetry/v3alpha/logs_service.proto\DC26envoy.extensions.access_loggers.open_telemetry.v3alpha\SUB1envoy/extensions/access_loggers/grpc/v3/als.proto\SUB*opentelemetry/proto/common/v1/common.proto\SUB\GSudpa/annotations/status.proto\SUB\ETBvalidate/validate.proto\"\155\STX\n\
    \\FSOpenTelemetryAccessLogConfig\DC2q\n\
    \\rcommon_config\CAN\SOH \SOH(\v2B.envoy.extensions.access_loggers.grpc.v3.CommonGrpcAccessLogConfigR\fcommonConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2;\n\
    \\EOTbody\CAN\STX \SOH(\v2'.opentelemetry.proto.common.v1.AnyValueR\EOTbody\DC2K\n\
    \\n\
    \attributes\CAN\ETX \SOH(\v2+.opentelemetry.proto.common.v1.KeyValueListR\n\
    \attributesBj\n\
    \Dio.envoyproxy.envoy.extensions.access_loggers.open_telemetry.v3alphaB\DLELogsServiceProtoP\SOH\186\128\200\209\ACK\STX\b\SOH\186\128\200\209\ACK\STX\DLE\STXJ\187\SO\n\
    \\ACK\DC2\EOT\NUL\NUL)\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL?\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL;\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL4\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL]\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\v\NUL]\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL1\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\f\NUL1\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\r\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL>\n\
    \\r\n\
    \\ACK\b\135\128\153j\SOH\DC2\ETX\SO\NUL>\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\SI\NULF\n\
    \\181\ACK\n\
    \\STX\EOT\NUL\DC2\EOT\ESC\NUL)\SOH\SUB\242\ENQ Configuration for the built-in *envoy.access_loggers.open_telemetry*\n\
    \ :ref:`AccessLog <envoy_v3_api_msg_config.accesslog.v3.AccessLog>`. This configuration will\n\
    \ populate `opentelemetry.proto.collector.v1.logs.ExportLogsServiceRequest.resource_logs <https://github.com/open-telemetry/opentelemetry-proto/blob/main/opentelemetry/proto/collector/logs/v1/logs_service.proto>`_.\n\
    \ OpenTelemetry `Resource <https://github.com/open-telemetry/opentelemetry-proto/blob/main/opentelemetry/proto/resource/v1/resource.proto>`_\n\
    \ attributes are filled with Envoy node info. In addition, the request start time is set in the\n\
    \ dedicated field.\n\
    \ [#extension: envoy.access_loggers.open_telemetry]\n\
    \ [#comment:TODO(itamarkam): allow configuration for resource attributes.]\n\
    \24 [#protodoc-title: OpenTelemetry (gRPC) Access Log]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ESC\b$\n\
    \U\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\GS\STXd\SUBH [#comment:TODO(itamarkam): add 'filter_state_objects_to_log' to logs.]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\GS\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\GS$1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\GS45\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\GS6c\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\GS7b\n\
    \\146\ETX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX$\STX2\SUB\132\ETX OpenTelemetry `LogResource <https://github.com/open-telemetry/opentelemetry-proto/blob/main/opentelemetry/proto/logs/v1/logs.proto>`_\n\
    \ fields, following `Envoy access logging formatting <https://www.envoyproxy.io/docs/envoy/latest/configuration/observability/access_log/usage>`_.\n\
    \\n\
    \ See 'body' in the LogResource proto for more details.\n\
    \ Example: ``body { string_value: \"%PROTOCOL%\" }``.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX$\STX(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX$)-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX$01\n\
    \\178\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX(\STX<\SUB\164\SOH See 'attributes' in the LogResource proto for more details.\n\
    \ Example: ``attributes { values { key: \"user_agent\" value { string_value: \"%REQ(USER-AGENT)%\" } } }``.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX(\STX,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX(-7\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX(:;b\ACKproto3"