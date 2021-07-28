{- This file was auto-generated from envoy/config/trace/v3/opencensus.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.Opencensus (
        OpenCensusConfig(), OpenCensusConfig'TraceContext(..),
        OpenCensusConfig'TraceContext(),
        OpenCensusConfig'TraceContext'UnrecognizedValue
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
import qualified Proto.Opencensus.Proto.Trace.V1.TraceConfig
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.traceConfig' @:: Lens' OpenCensusConfig Proto.Opencensus.Proto.Trace.V1.TraceConfig.TraceConfig@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.maybe'traceConfig' @:: Lens' OpenCensusConfig (Prelude.Maybe Proto.Opencensus.Proto.Trace.V1.TraceConfig.TraceConfig)@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.stdoutExporterEnabled' @:: Lens' OpenCensusConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.stackdriverExporterEnabled' @:: Lens' OpenCensusConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.stackdriverProjectId' @:: Lens' OpenCensusConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.stackdriverAddress' @:: Lens' OpenCensusConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.stackdriverGrpcService' @:: Lens' OpenCensusConfig Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.maybe'stackdriverGrpcService' @:: Lens' OpenCensusConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.zipkinExporterEnabled' @:: Lens' OpenCensusConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.zipkinUrl' @:: Lens' OpenCensusConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.ocagentExporterEnabled' @:: Lens' OpenCensusConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.ocagentAddress' @:: Lens' OpenCensusConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.ocagentGrpcService' @:: Lens' OpenCensusConfig Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.maybe'ocagentGrpcService' @:: Lens' OpenCensusConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.incomingTraceContext' @:: Lens' OpenCensusConfig [OpenCensusConfig'TraceContext]@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.vec'incomingTraceContext' @:: Lens' OpenCensusConfig (Data.Vector.Vector OpenCensusConfig'TraceContext)@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.outgoingTraceContext' @:: Lens' OpenCensusConfig [OpenCensusConfig'TraceContext]@
         * 'Proto.Envoy.Config.Trace.V3.Opencensus_Fields.vec'outgoingTraceContext' @:: Lens' OpenCensusConfig (Data.Vector.Vector OpenCensusConfig'TraceContext)@ -}
data OpenCensusConfig
  = OpenCensusConfig'_constructor {_OpenCensusConfig'traceConfig :: !(Prelude.Maybe Proto.Opencensus.Proto.Trace.V1.TraceConfig.TraceConfig),
                                   _OpenCensusConfig'stdoutExporterEnabled :: !Prelude.Bool,
                                   _OpenCensusConfig'stackdriverExporterEnabled :: !Prelude.Bool,
                                   _OpenCensusConfig'stackdriverProjectId :: !Data.Text.Text,
                                   _OpenCensusConfig'stackdriverAddress :: !Data.Text.Text,
                                   _OpenCensusConfig'stackdriverGrpcService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                                   _OpenCensusConfig'zipkinExporterEnabled :: !Prelude.Bool,
                                   _OpenCensusConfig'zipkinUrl :: !Data.Text.Text,
                                   _OpenCensusConfig'ocagentExporterEnabled :: !Prelude.Bool,
                                   _OpenCensusConfig'ocagentAddress :: !Data.Text.Text,
                                   _OpenCensusConfig'ocagentGrpcService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                                   _OpenCensusConfig'incomingTraceContext :: !(Data.Vector.Vector OpenCensusConfig'TraceContext),
                                   _OpenCensusConfig'outgoingTraceContext :: !(Data.Vector.Vector OpenCensusConfig'TraceContext),
                                   _OpenCensusConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OpenCensusConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OpenCensusConfig "traceConfig" Proto.Opencensus.Proto.Trace.V1.TraceConfig.TraceConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'traceConfig
           (\ x__ y__ -> x__ {_OpenCensusConfig'traceConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OpenCensusConfig "maybe'traceConfig" (Prelude.Maybe Proto.Opencensus.Proto.Trace.V1.TraceConfig.TraceConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'traceConfig
           (\ x__ y__ -> x__ {_OpenCensusConfig'traceConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "stdoutExporterEnabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'stdoutExporterEnabled
           (\ x__ y__ -> x__ {_OpenCensusConfig'stdoutExporterEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "stackdriverExporterEnabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'stackdriverExporterEnabled
           (\ x__ y__
              -> x__ {_OpenCensusConfig'stackdriverExporterEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "stackdriverProjectId" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'stackdriverProjectId
           (\ x__ y__ -> x__ {_OpenCensusConfig'stackdriverProjectId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "stackdriverAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'stackdriverAddress
           (\ x__ y__ -> x__ {_OpenCensusConfig'stackdriverAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "stackdriverGrpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'stackdriverGrpcService
           (\ x__ y__
              -> x__ {_OpenCensusConfig'stackdriverGrpcService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OpenCensusConfig "maybe'stackdriverGrpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'stackdriverGrpcService
           (\ x__ y__
              -> x__ {_OpenCensusConfig'stackdriverGrpcService = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "zipkinExporterEnabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'zipkinExporterEnabled
           (\ x__ y__ -> x__ {_OpenCensusConfig'zipkinExporterEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "zipkinUrl" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'zipkinUrl
           (\ x__ y__ -> x__ {_OpenCensusConfig'zipkinUrl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "ocagentExporterEnabled" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'ocagentExporterEnabled
           (\ x__ y__
              -> x__ {_OpenCensusConfig'ocagentExporterEnabled = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "ocagentAddress" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'ocagentAddress
           (\ x__ y__ -> x__ {_OpenCensusConfig'ocagentAddress = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "ocagentGrpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'ocagentGrpcService
           (\ x__ y__ -> x__ {_OpenCensusConfig'ocagentGrpcService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField OpenCensusConfig "maybe'ocagentGrpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'ocagentGrpcService
           (\ x__ y__ -> x__ {_OpenCensusConfig'ocagentGrpcService = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "incomingTraceContext" [OpenCensusConfig'TraceContext] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'incomingTraceContext
           (\ x__ y__ -> x__ {_OpenCensusConfig'incomingTraceContext = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OpenCensusConfig "vec'incomingTraceContext" (Data.Vector.Vector OpenCensusConfig'TraceContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'incomingTraceContext
           (\ x__ y__ -> x__ {_OpenCensusConfig'incomingTraceContext = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OpenCensusConfig "outgoingTraceContext" [OpenCensusConfig'TraceContext] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'outgoingTraceContext
           (\ x__ y__ -> x__ {_OpenCensusConfig'outgoingTraceContext = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField OpenCensusConfig "vec'outgoingTraceContext" (Data.Vector.Vector OpenCensusConfig'TraceContext) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OpenCensusConfig'outgoingTraceContext
           (\ x__ y__ -> x__ {_OpenCensusConfig'outgoingTraceContext = y__}))
        Prelude.id
instance Data.ProtoLens.Message OpenCensusConfig where
  messageName _
    = Data.Text.pack "envoy.config.trace.v3.OpenCensusConfig"
  packedMessageDescriptor _
    = "\n\
      \\DLEOpenCensusConfig\DC2I\n\
      \\ftrace_config\CAN\SOH \SOH(\v2&.opencensus.proto.trace.v1.TraceConfigR\vtraceConfig\DC26\n\
      \\ETBstdout_exporter_enabled\CAN\STX \SOH(\bR\NAKstdoutExporterEnabled\DC2@\n\
      \\FSstackdriver_exporter_enabled\CAN\ETX \SOH(\bR\SUBstackdriverExporterEnabled\DC24\n\
      \\SYNstackdriver_project_id\CAN\EOT \SOH(\tR\DC4stackdriverProjectId\DC2/\n\
      \\DC3stackdriver_address\CAN\n\
      \ \SOH(\tR\DC2stackdriverAddress\DC2[\n\
      \\CANstackdriver_grpc_service\CAN\r \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\SYNstackdriverGrpcService\DC2C\n\
      \\ETBzipkin_exporter_enabled\CAN\ENQ \SOH(\bR\NAKzipkinExporterEnabledB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2*\n\
      \\n\
      \zipkin_url\CAN\ACK \SOH(\tR\tzipkinUrlB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC28\n\
      \\CANocagent_exporter_enabled\CAN\v \SOH(\bR\SYNocagentExporterEnabled\DC2'\n\
      \\SIocagent_address\CAN\f \SOH(\tR\SOocagentAddress\DC2S\n\
      \\DC4ocagent_grpc_service\CAN\SO \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\DC2ocagentGrpcService\DC2j\n\
      \\SYNincoming_trace_context\CAN\b \ETX(\SO24.envoy.config.trace.v3.OpenCensusConfig.TraceContextR\DC4incomingTraceContext\DC2j\n\
      \\SYNoutgoing_trace_context\CAN\t \ETX(\SO24.envoy.config.trace.v3.OpenCensusConfig.TraceContextR\DC4outgoingTraceContext\"`\n\
      \\fTraceContext\DC2\b\n\
      \\EOTNONE\DLE\NUL\DC2\DC1\n\
      \\rTRACE_CONTEXT\DLE\SOH\DC2\DC2\n\
      \\SOGRPC_TRACE_BIN\DLE\STX\DC2\ETB\n\
      \\DC3CLOUD_TRACE_CONTEXT\DLE\ETX\DC2\ACK\n\
      \\STXB3\DLE\EOT:-\154\197\136\RS(\n\
      \&envoy.config.trace.v2.OpenCensusConfigJ\EOT\b\a\DLE\b"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        traceConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Opencensus.Proto.Trace.V1.TraceConfig.TraceConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceConfig")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        stdoutExporterEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stdout_exporter_enabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stdoutExporterEnabled")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        stackdriverExporterEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stackdriver_exporter_enabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stackdriverExporterEnabled")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        stackdriverProjectId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stackdriver_project_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stackdriverProjectId")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        stackdriverAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stackdriver_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"stackdriverAddress")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        stackdriverGrpcService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stackdriver_grpc_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stackdriverGrpcService")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        zipkinExporterEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zipkin_exporter_enabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"zipkinExporterEnabled")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        zipkinUrl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zipkin_url"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"zipkinUrl")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        ocagentExporterEnabled__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ocagent_exporter_enabled"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ocagentExporterEnabled")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        ocagentAddress__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ocagent_address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"ocagentAddress")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        ocagentGrpcService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ocagent_grpc_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ocagentGrpcService")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        incomingTraceContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "incoming_trace_context"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor OpenCensusConfig'TraceContext)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"incomingTraceContext")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
        outgoingTraceContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "outgoing_trace_context"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor OpenCensusConfig'TraceContext)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"outgoingTraceContext")) ::
              Data.ProtoLens.FieldDescriptor OpenCensusConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, traceConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, stdoutExporterEnabled__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            stackdriverExporterEnabled__field_descriptor),
           (Data.ProtoLens.Tag 4, stackdriverProjectId__field_descriptor),
           (Data.ProtoLens.Tag 10, stackdriverAddress__field_descriptor),
           (Data.ProtoLens.Tag 13, stackdriverGrpcService__field_descriptor),
           (Data.ProtoLens.Tag 5, zipkinExporterEnabled__field_descriptor),
           (Data.ProtoLens.Tag 6, zipkinUrl__field_descriptor),
           (Data.ProtoLens.Tag 11, ocagentExporterEnabled__field_descriptor),
           (Data.ProtoLens.Tag 12, ocagentAddress__field_descriptor),
           (Data.ProtoLens.Tag 14, ocagentGrpcService__field_descriptor),
           (Data.ProtoLens.Tag 8, incomingTraceContext__field_descriptor),
           (Data.ProtoLens.Tag 9, outgoingTraceContext__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OpenCensusConfig'_unknownFields
        (\ x__ y__ -> x__ {_OpenCensusConfig'_unknownFields = y__})
  defMessage
    = OpenCensusConfig'_constructor
        {_OpenCensusConfig'traceConfig = Prelude.Nothing,
         _OpenCensusConfig'stdoutExporterEnabled = Data.ProtoLens.fieldDefault,
         _OpenCensusConfig'stackdriverExporterEnabled = Data.ProtoLens.fieldDefault,
         _OpenCensusConfig'stackdriverProjectId = Data.ProtoLens.fieldDefault,
         _OpenCensusConfig'stackdriverAddress = Data.ProtoLens.fieldDefault,
         _OpenCensusConfig'stackdriverGrpcService = Prelude.Nothing,
         _OpenCensusConfig'zipkinExporterEnabled = Data.ProtoLens.fieldDefault,
         _OpenCensusConfig'zipkinUrl = Data.ProtoLens.fieldDefault,
         _OpenCensusConfig'ocagentExporterEnabled = Data.ProtoLens.fieldDefault,
         _OpenCensusConfig'ocagentAddress = Data.ProtoLens.fieldDefault,
         _OpenCensusConfig'ocagentGrpcService = Prelude.Nothing,
         _OpenCensusConfig'incomingTraceContext = Data.Vector.Generic.empty,
         _OpenCensusConfig'outgoingTraceContext = Data.Vector.Generic.empty,
         _OpenCensusConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OpenCensusConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld OpenCensusConfig'TraceContext
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld OpenCensusConfig'TraceContext
                -> Data.ProtoLens.Encoding.Bytes.Parser OpenCensusConfig
        loop x mutable'incomingTraceContext mutable'outgoingTraceContext
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'incomingTraceContext <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'incomingTraceContext)
                      frozen'outgoingTraceContext <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'outgoingTraceContext)
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
                              (Data.ProtoLens.Field.field @"vec'incomingTraceContext")
                              frozen'incomingTraceContext
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'outgoingTraceContext")
                                 frozen'outgoingTraceContext
                                 x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "trace_config"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"traceConfig") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stdout_exporter_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stdoutExporterEnabled") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stackdriver_exporter_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stackdriverExporterEnabled") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
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
                                       "stackdriver_project_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stackdriverProjectId") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "stackdriver_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stackdriverAddress") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
                        106
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stackdriver_grpc_service"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"stackdriverGrpcService") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "zipkin_exporter_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"zipkinExporterEnabled") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
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
                                       "zipkin_url"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"zipkinUrl") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ocagent_exporter_enabled"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ocagentExporterEnabled") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "ocagent_address"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ocagentAddress") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
                        114
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ocagent_grpc_service"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ocagentGrpcService") y x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
                        64
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "incoming_trace_context"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'incomingTraceContext y)
                                loop x v mutable'outgoingTraceContext
                        66
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.toEnum
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "incoming_trace_context"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'incomingTraceContext)
                                loop x y mutable'outgoingTraceContext
                        72
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.toEnum
                                           (Prelude.fmap
                                              Prelude.fromIntegral
                                              Data.ProtoLens.Encoding.Bytes.getVarInt))
                                        "outgoing_trace_context"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'outgoingTraceContext y)
                                loop x mutable'incomingTraceContext v
                        74
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.toEnum
                                                                       (Prelude.fmap
                                                                          Prelude.fromIntegral
                                                                          Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                                    "outgoing_trace_context"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'outgoingTraceContext)
                                loop x mutable'incomingTraceContext y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'incomingTraceContext
                                  mutable'outgoingTraceContext
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'incomingTraceContext <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'outgoingTraceContext <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'incomingTraceContext
                mutable'outgoingTraceContext)
          "OpenCensusConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'traceConfig") _x
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
                         (Data.ProtoLens.Field.field @"stdoutExporterEnabled") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt
                            (\ b -> if b then 1 else 0)
                            _v))
                ((Data.Monoid.<>)
                   (let
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"stackdriverExporterEnabled") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt
                               (\ b -> if b then 1 else 0)
                               _v))
                   ((Data.Monoid.<>)
                      (let
                         _v
                           = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"stackdriverProjectId") _x
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
                                  (Data.ProtoLens.Field.field @"stackdriverAddress") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
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
                                   (Data.ProtoLens.Field.field @"maybe'stackdriverGrpcService") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 106)
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
                                        (Data.ProtoLens.Field.field @"zipkinExporterEnabled") _x
                                in
                                  if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                        ((Prelude..)
                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (\ b -> if b then 1 else 0)
                                           _v))
                               ((Data.Monoid.<>)
                                  (let
                                     _v
                                       = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"zipkinUrl") _x
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
                                              (Data.ProtoLens.Field.field @"ocagentExporterEnabled")
                                              _x
                                      in
                                        if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                              ((Prelude..)
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (\ b -> if b then 1 else 0)
                                                 _v))
                                     ((Data.Monoid.<>)
                                        (let
                                           _v
                                             = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"ocagentAddress") _x
                                         in
                                           if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
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
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'ocagentGrpcService")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 114)
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
                                           ((Data.Monoid.<>)
                                              (let
                                                 p = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"vec'incomingTraceContext")
                                                       _x
                                               in
                                                 if Data.Vector.Generic.null p then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                                       ((\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                          (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                ((Prelude..)
                                                                   ((Prelude..)
                                                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      Prelude.fromIntegral)
                                                                   Prelude.fromEnum)
                                                                p))))
                                              ((Data.Monoid.<>)
                                                 (let
                                                    p = Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"vec'outgoingTraceContext")
                                                          _x
                                                  in
                                                    if Data.Vector.Generic.null p then
                                                        Data.Monoid.mempty
                                                    else
                                                        (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             74)
                                                          ((\ bs
                                                              -> (Data.Monoid.<>)
                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                      (Prelude.fromIntegral
                                                                         (Data.ByteString.length
                                                                            bs)))
                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                      bs))
                                                             (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                   ((Prelude..)
                                                                      ((Prelude..)
                                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         Prelude.fromIntegral)
                                                                      Prelude.fromEnum)
                                                                   p))))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData OpenCensusConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OpenCensusConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OpenCensusConfig'traceConfig x__)
                (Control.DeepSeq.deepseq
                   (_OpenCensusConfig'stdoutExporterEnabled x__)
                   (Control.DeepSeq.deepseq
                      (_OpenCensusConfig'stackdriverExporterEnabled x__)
                      (Control.DeepSeq.deepseq
                         (_OpenCensusConfig'stackdriverProjectId x__)
                         (Control.DeepSeq.deepseq
                            (_OpenCensusConfig'stackdriverAddress x__)
                            (Control.DeepSeq.deepseq
                               (_OpenCensusConfig'stackdriverGrpcService x__)
                               (Control.DeepSeq.deepseq
                                  (_OpenCensusConfig'zipkinExporterEnabled x__)
                                  (Control.DeepSeq.deepseq
                                     (_OpenCensusConfig'zipkinUrl x__)
                                     (Control.DeepSeq.deepseq
                                        (_OpenCensusConfig'ocagentExporterEnabled x__)
                                        (Control.DeepSeq.deepseq
                                           (_OpenCensusConfig'ocagentAddress x__)
                                           (Control.DeepSeq.deepseq
                                              (_OpenCensusConfig'ocagentGrpcService x__)
                                              (Control.DeepSeq.deepseq
                                                 (_OpenCensusConfig'incomingTraceContext x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_OpenCensusConfig'outgoingTraceContext x__)
                                                    ())))))))))))))
newtype OpenCensusConfig'TraceContext'UnrecognizedValue
  = OpenCensusConfig'TraceContext'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data OpenCensusConfig'TraceContext
  = OpenCensusConfig'NONE |
    OpenCensusConfig'TRACE_CONTEXT |
    OpenCensusConfig'GRPC_TRACE_BIN |
    OpenCensusConfig'CLOUD_TRACE_CONTEXT |
    OpenCensusConfig'B3 |
    OpenCensusConfig'TraceContext'Unrecognized !OpenCensusConfig'TraceContext'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum OpenCensusConfig'TraceContext where
  maybeToEnum 0 = Prelude.Just OpenCensusConfig'NONE
  maybeToEnum 1 = Prelude.Just OpenCensusConfig'TRACE_CONTEXT
  maybeToEnum 2 = Prelude.Just OpenCensusConfig'GRPC_TRACE_BIN
  maybeToEnum 3 = Prelude.Just OpenCensusConfig'CLOUD_TRACE_CONTEXT
  maybeToEnum 4 = Prelude.Just OpenCensusConfig'B3
  maybeToEnum k
    = Prelude.Just
        (OpenCensusConfig'TraceContext'Unrecognized
           (OpenCensusConfig'TraceContext'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum OpenCensusConfig'NONE = "NONE"
  showEnum OpenCensusConfig'TRACE_CONTEXT = "TRACE_CONTEXT"
  showEnum OpenCensusConfig'GRPC_TRACE_BIN = "GRPC_TRACE_BIN"
  showEnum OpenCensusConfig'CLOUD_TRACE_CONTEXT
    = "CLOUD_TRACE_CONTEXT"
  showEnum OpenCensusConfig'B3 = "B3"
  showEnum
    (OpenCensusConfig'TraceContext'Unrecognized (OpenCensusConfig'TraceContext'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "NONE" = Prelude.Just OpenCensusConfig'NONE
    | (Prelude.==) k "TRACE_CONTEXT"
    = Prelude.Just OpenCensusConfig'TRACE_CONTEXT
    | (Prelude.==) k "GRPC_TRACE_BIN"
    = Prelude.Just OpenCensusConfig'GRPC_TRACE_BIN
    | (Prelude.==) k "CLOUD_TRACE_CONTEXT"
    = Prelude.Just OpenCensusConfig'CLOUD_TRACE_CONTEXT
    | (Prelude.==) k "B3" = Prelude.Just OpenCensusConfig'B3
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded OpenCensusConfig'TraceContext where
  minBound = OpenCensusConfig'NONE
  maxBound = OpenCensusConfig'B3
instance Prelude.Enum OpenCensusConfig'TraceContext where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum TraceContext: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum OpenCensusConfig'NONE = 0
  fromEnum OpenCensusConfig'TRACE_CONTEXT = 1
  fromEnum OpenCensusConfig'GRPC_TRACE_BIN = 2
  fromEnum OpenCensusConfig'CLOUD_TRACE_CONTEXT = 3
  fromEnum OpenCensusConfig'B3 = 4
  fromEnum
    (OpenCensusConfig'TraceContext'Unrecognized (OpenCensusConfig'TraceContext'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ OpenCensusConfig'B3
    = Prelude.error
        "OpenCensusConfig'TraceContext.succ: bad argument OpenCensusConfig'B3. This value would be out of bounds."
  succ OpenCensusConfig'NONE = OpenCensusConfig'TRACE_CONTEXT
  succ OpenCensusConfig'TRACE_CONTEXT
    = OpenCensusConfig'GRPC_TRACE_BIN
  succ OpenCensusConfig'GRPC_TRACE_BIN
    = OpenCensusConfig'CLOUD_TRACE_CONTEXT
  succ OpenCensusConfig'CLOUD_TRACE_CONTEXT = OpenCensusConfig'B3
  succ (OpenCensusConfig'TraceContext'Unrecognized _)
    = Prelude.error
        "OpenCensusConfig'TraceContext.succ: bad argument: unrecognized value"
  pred OpenCensusConfig'NONE
    = Prelude.error
        "OpenCensusConfig'TraceContext.pred: bad argument OpenCensusConfig'NONE. This value would be out of bounds."
  pred OpenCensusConfig'TRACE_CONTEXT = OpenCensusConfig'NONE
  pred OpenCensusConfig'GRPC_TRACE_BIN
    = OpenCensusConfig'TRACE_CONTEXT
  pred OpenCensusConfig'CLOUD_TRACE_CONTEXT
    = OpenCensusConfig'GRPC_TRACE_BIN
  pred OpenCensusConfig'B3 = OpenCensusConfig'CLOUD_TRACE_CONTEXT
  pred (OpenCensusConfig'TraceContext'Unrecognized _)
    = Prelude.error
        "OpenCensusConfig'TraceContext.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault OpenCensusConfig'TraceContext where
  fieldDefault = OpenCensusConfig'NONE
instance Control.DeepSeq.NFData OpenCensusConfig'TraceContext where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&envoy/config/trace/v3/opencensus.proto\DC2\NAKenvoy.config.trace.v3\SUB'envoy/config/core/v3/grpc_service.proto\SUB,opencensus/proto/trace/v1/trace_config.proto\SUB#envoy/annotations/deprecation.proto\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\"\179\b\n\
    \\DLEOpenCensusConfig\DC2I\n\
    \\ftrace_config\CAN\SOH \SOH(\v2&.opencensus.proto.trace.v1.TraceConfigR\vtraceConfig\DC26\n\
    \\ETBstdout_exporter_enabled\CAN\STX \SOH(\bR\NAKstdoutExporterEnabled\DC2@\n\
    \\FSstackdriver_exporter_enabled\CAN\ETX \SOH(\bR\SUBstackdriverExporterEnabled\DC24\n\
    \\SYNstackdriver_project_id\CAN\EOT \SOH(\tR\DC4stackdriverProjectId\DC2/\n\
    \\DC3stackdriver_address\CAN\n\
    \ \SOH(\tR\DC2stackdriverAddress\DC2[\n\
    \\CANstackdriver_grpc_service\CAN\r \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\SYNstackdriverGrpcService\DC2C\n\
    \\ETBzipkin_exporter_enabled\CAN\ENQ \SOH(\bR\NAKzipkinExporterEnabledB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC2*\n\
    \\n\
    \zipkin_url\CAN\ACK \SOH(\tR\tzipkinUrlB\v\CAN\SOH\146\199\134\216\EOT\ETX3.0\DC28\n\
    \\CANocagent_exporter_enabled\CAN\v \SOH(\bR\SYNocagentExporterEnabled\DC2'\n\
    \\SIocagent_address\CAN\f \SOH(\tR\SOocagentAddress\DC2S\n\
    \\DC4ocagent_grpc_service\CAN\SO \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\DC2ocagentGrpcService\DC2j\n\
    \\SYNincoming_trace_context\CAN\b \ETX(\SO24.envoy.config.trace.v3.OpenCensusConfig.TraceContextR\DC4incomingTraceContext\DC2j\n\
    \\SYNoutgoing_trace_context\CAN\t \ETX(\SO24.envoy.config.trace.v3.OpenCensusConfig.TraceContextR\DC4outgoingTraceContext\"`\n\
    \\fTraceContext\DC2\b\n\
    \\EOTNONE\DLE\NUL\DC2\DC1\n\
    \\rTRACE_CONTEXT\DLE\SOH\DC2\DC2\n\
    \\SOGRPC_TRACE_BIN\DLE\STX\DC2\ETB\n\
    \\DC3CLOUD_TRACE_CONTEXT\DLE\ETX\DC2\ACK\n\
    \\STXB3\DLE\EOT:-\154\197\136\RS(\n\
    \&envoy.config.trace.v2.OpenCensusConfigJ\EOT\b\a\DLE\bBs\n\
    \#io.envoyproxy.envoy.config.trace.v3B\SIOpencensusProtoP\SOH\242\152\254\143\ENQ-\DC2+envoy.extensions.tracers.opencensus.v4alpha\186\128\200\209\ACK\STX\DLE\STXJ\129\FS\n\
    \\ACK\DC2\EOT\NUL\NULh\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL1\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL6\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL-\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\r\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL0\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SO\NUL0\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SI\NUL\"\n\
    \\t\n\
    \\SOH\b\DC2\EOT\DLE\NUL\DC12\n\
    \\SO\n\
    \\ACK\b\142\227\255Q\STX\DC2\EOT\DLE\NUL\DC12\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \\158\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NULh\SOH\SUBj Configuration for the OpenCensus tracer.\n\
    \ [#next-free-field: 15]\n\
    \ [#extension: envoy.tracers.opencensus]\n\
    \2& [#protodoc-title: OpenCensus tracer]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\CAN\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\SUB\STX\ESC/\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\SUB\STX\ESC/\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\GS\STX,\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\GS\a\DC3\n\
    \=\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\US\EOT\r\SUB. No-op default, no trace context is utilized.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\US\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\US\v\f\n\
    \@\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\"\EOT\SYN\SUB1 W3C Trace-Context format \"traceparent:\" header.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\EOT\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\"\DC4\NAK\n\
    \1\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX%\EOT\ETB\SUB\" Binary \"grpc-trace-bin:\" header.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX%\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX%\NAK\SYN\n\
    \1\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX(\EOT\FS\SUB\" \"X-Cloud-Trace-Context:\" header.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX(\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX(\SUB\ESC\n\
    \ \n\
    \\ACK\EOT\NUL\EOT\NUL\STX\EOT\DC2\ETX+\EOT\v\SUB\DC1 X-B3-* headers.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETX+\EOT\ACK\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\STX\DC2\ETX+\t\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\t\DC2\ETX.\STX\r\n\
    \\v\n\
    \\EOT\EOT\NUL\t\NUL\DC2\ETX.\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\SOH\DC2\ETX.\v\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\t\NUL\STX\DC2\ETX.\v\f\n\
    \T\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX1\STX9\SUBG Configures tracing, e.g. the sampler, max number of annotations, etc.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX1\STX'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX1(4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX178\n\
    \d\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX5\STX#\SUBW Enables the stdout exporter if set to true. This is intended for debugging\n\
    \ purposes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX5\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX5\a\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX5!\"\n\
    \a\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX9\STX(\SUBT Enables the Stackdriver exporter if set to true. The project_id must also\n\
    \ be set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX9\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX9\a#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX9&'\n\
    \C\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX<\STX$\SUB6 The Cloud project_id to use for Stackdriver tracing.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX<\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX<\t\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX<\"#\n\
    \\140\STX\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXB\STX\"\SUB\254\SOH (optional) By default, the Stackdriver exporter will connect to production\n\
    \ Stackdriver. If stackdriver_address is non-empty, it will instead connect\n\
    \ to this address, which is in the gRPC format:\n\
    \ https://github.com/grpc/grpc/blob/master/doc/naming.md\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXB\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXB\t\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXB\US!\n\
    \\152\STX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXG\STX4\SUB\138\STX (optional) The gRPC server that hosts Stackdriver tracing service. Only\n\
    \ Google gRPC is supported. If :ref:`target_uri <envoy_v3_api_field_config.core.v3.GrpcService.GoogleGrpc.target_uri>`\n\
    \ is not provided, the default production Stackdriver address will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXG\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXG\SYN.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXG13\n\
    \\224\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOTL\STXMS\SUB\209\SOH Enables the Zipkin exporter if set to true. The url and service name must\n\
    \ also be set. This is deprecated, prefer to use Envoy's :ref:`native Zipkin\n\
    \ tracer <envoy_v3_api_msg_config.trace.v3.ZipkinConfig>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETXL\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXL\a\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXL!\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\b\DC2\ETXM\ACKR\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\ACK\b\ETX\DC2\ETXM\a\CAN\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\ACK\b\242\232\128K\DC2\ETXM\SUBQ\n\
    \\199\SOH\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOTR\STXSS\SUB\184\SOH The URL to Zipkin, e.g. \"http://127.0.0.1:9411/api/v2/spans\". This is\n\
    \ deprecated, prefer to use Envoy's :ref:`native Zipkin tracer\n\
    \ <envoy_v3_api_msg_config.trace.v3.ZipkinConfig>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETXR\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXR\t\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXR\SYN\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\b\DC2\ETXS\ACKR\n\
    \\r\n\
    \\ACK\EOT\NUL\STX\a\b\ETX\DC2\ETXS\a\CAN\n\
    \\DLE\n\
    \\t\EOT\NUL\STX\a\b\242\232\128K\DC2\ETXS\SUBQ\n\
    \\131\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXW\STX%\SUBv Enables the OpenCensus Agent exporter if set to true. The ocagent_address or\n\
    \ ocagent_grpc_service must also be set.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETXW\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXW\a\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXW\"$\n\
    \\191\SOH\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX\\\STX\RS\SUB\177\SOH The address of the OpenCensus Agent, if its exporter is enabled, in gRPC\n\
    \ format: https://github.com/grpc/grpc/blob/master/doc/naming.md\n\
    \ [#comment:TODO: deprecate this field]\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\ETX\\\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX\\\t\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX\\\ESC\GS\n\
    \\162\SOH\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETX`\STX0\SUB\148\SOH (optional) The gRPC server hosted by the OpenCensus Agent. Only Google gRPC is supported.\n\
    \ This is only used if the ocagent_address is left empty.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETX`\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETX`\SYN*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETX`-/\n\
    \\\\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETXd\STX3\SUBO List of incoming trace context headers we will accept. First one found\n\
    \ wins.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\ETXd\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETXd\CAN.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETXd12\n\
    \F\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETXg\STX3\SUB9 List of outgoing trace context headers we will produce.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\EOT\DC2\ETXg\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\ETXg\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETXg\CAN.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETXg12b\ACKproto3"