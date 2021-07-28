{- This file was auto-generated from envoy/extensions/access_loggers/grpc/v3/als.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als (
        CommonGrpcAccessLogConfig(), HttpGrpcAccessLogConfig(),
        TcpGrpcAccessLogConfig()
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
import qualified Proto.Google.Protobuf.Duration
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.logName' @:: Lens' CommonGrpcAccessLogConfig Data.Text.Text@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.grpcService' @:: Lens' CommonGrpcAccessLogConfig Proto.Envoy.Config.Core.V3.GrpcService.GrpcService@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.maybe'grpcService' @:: Lens' CommonGrpcAccessLogConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.transportApiVersion' @:: Lens' CommonGrpcAccessLogConfig Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.bufferFlushInterval' @:: Lens' CommonGrpcAccessLogConfig Proto.Google.Protobuf.Duration.Duration@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.maybe'bufferFlushInterval' @:: Lens' CommonGrpcAccessLogConfig (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration)@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.bufferSizeBytes' @:: Lens' CommonGrpcAccessLogConfig Proto.Google.Protobuf.Wrappers.UInt32Value@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.maybe'bufferSizeBytes' @:: Lens' CommonGrpcAccessLogConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value)@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.filterStateObjectsToLog' @:: Lens' CommonGrpcAccessLogConfig [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.vec'filterStateObjectsToLog' @:: Lens' CommonGrpcAccessLogConfig (Data.Vector.Vector Data.Text.Text)@ -}
data CommonGrpcAccessLogConfig
  = CommonGrpcAccessLogConfig'_constructor {_CommonGrpcAccessLogConfig'logName :: !Data.Text.Text,
                                            _CommonGrpcAccessLogConfig'grpcService :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService),
                                            _CommonGrpcAccessLogConfig'transportApiVersion :: !Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion,
                                            _CommonGrpcAccessLogConfig'bufferFlushInterval :: !(Prelude.Maybe Proto.Google.Protobuf.Duration.Duration),
                                            _CommonGrpcAccessLogConfig'bufferSizeBytes :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value),
                                            _CommonGrpcAccessLogConfig'filterStateObjectsToLog :: !(Data.Vector.Vector Data.Text.Text),
                                            _CommonGrpcAccessLogConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CommonGrpcAccessLogConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CommonGrpcAccessLogConfig "logName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonGrpcAccessLogConfig'logName
           (\ x__ y__ -> x__ {_CommonGrpcAccessLogConfig'logName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonGrpcAccessLogConfig "grpcService" Proto.Envoy.Config.Core.V3.GrpcService.GrpcService where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonGrpcAccessLogConfig'grpcService
           (\ x__ y__ -> x__ {_CommonGrpcAccessLogConfig'grpcService = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonGrpcAccessLogConfig "maybe'grpcService" (Prelude.Maybe Proto.Envoy.Config.Core.V3.GrpcService.GrpcService) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonGrpcAccessLogConfig'grpcService
           (\ x__ y__ -> x__ {_CommonGrpcAccessLogConfig'grpcService = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonGrpcAccessLogConfig "transportApiVersion" Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonGrpcAccessLogConfig'transportApiVersion
           (\ x__ y__
              -> x__ {_CommonGrpcAccessLogConfig'transportApiVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonGrpcAccessLogConfig "bufferFlushInterval" Proto.Google.Protobuf.Duration.Duration where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonGrpcAccessLogConfig'bufferFlushInterval
           (\ x__ y__
              -> x__ {_CommonGrpcAccessLogConfig'bufferFlushInterval = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonGrpcAccessLogConfig "maybe'bufferFlushInterval" (Prelude.Maybe Proto.Google.Protobuf.Duration.Duration) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonGrpcAccessLogConfig'bufferFlushInterval
           (\ x__ y__
              -> x__ {_CommonGrpcAccessLogConfig'bufferFlushInterval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonGrpcAccessLogConfig "bufferSizeBytes" Proto.Google.Protobuf.Wrappers.UInt32Value where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonGrpcAccessLogConfig'bufferSizeBytes
           (\ x__ y__
              -> x__ {_CommonGrpcAccessLogConfig'bufferSizeBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField CommonGrpcAccessLogConfig "maybe'bufferSizeBytes" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.UInt32Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonGrpcAccessLogConfig'bufferSizeBytes
           (\ x__ y__
              -> x__ {_CommonGrpcAccessLogConfig'bufferSizeBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CommonGrpcAccessLogConfig "filterStateObjectsToLog" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonGrpcAccessLogConfig'filterStateObjectsToLog
           (\ x__ y__
              -> x__ {_CommonGrpcAccessLogConfig'filterStateObjectsToLog = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CommonGrpcAccessLogConfig "vec'filterStateObjectsToLog" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CommonGrpcAccessLogConfig'filterStateObjectsToLog
           (\ x__ y__
              -> x__ {_CommonGrpcAccessLogConfig'filterStateObjectsToLog = y__}))
        Prelude.id
instance Data.ProtoLens.Message CommonGrpcAccessLogConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.access_loggers.grpc.v3.CommonGrpcAccessLogConfig"
  packedMessageDescriptor _
    = "\n\
      \\EMCommonGrpcAccessLogConfig\DC2\"\n\
      \\blog_name\CAN\SOH \SOH(\tR\alogNameB\a\250B\EOTr\STX\DLE\SOH\DC2N\n\
      \\fgrpc_service\CAN\STX \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2^\n\
      \\NAKtransport_api_version\CAN\ACK \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2W\n\
      \\NAKbuffer_flush_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\DC3bufferFlushIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2H\n\
      \\DC1buffer_size_bytes\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\SIbufferSizeBytes\DC2<\n\
      \\ESCfilter_state_objects_to_log\CAN\ENQ \ETX(\tR\ETBfilterStateObjectsToLog::\154\197\136\RS5\n\
      \3envoy.config.accesslog.v2.CommonGrpcAccessLogConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        logName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"logName")) ::
              Data.ProtoLens.FieldDescriptor CommonGrpcAccessLogConfig
        grpcService__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "grpc_service"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.GrpcService.GrpcService)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'grpcService")) ::
              Data.ProtoLens.FieldDescriptor CommonGrpcAccessLogConfig
        transportApiVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "transport_api_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.ConfigSource.ApiVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"transportApiVersion")) ::
              Data.ProtoLens.FieldDescriptor CommonGrpcAccessLogConfig
        bufferFlushInterval__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_flush_interval"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Duration.Duration)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bufferFlushInterval")) ::
              Data.ProtoLens.FieldDescriptor CommonGrpcAccessLogConfig
        bufferSizeBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_size_bytes"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.UInt32Value)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bufferSizeBytes")) ::
              Data.ProtoLens.FieldDescriptor CommonGrpcAccessLogConfig
        filterStateObjectsToLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_state_objects_to_log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"filterStateObjectsToLog")) ::
              Data.ProtoLens.FieldDescriptor CommonGrpcAccessLogConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, logName__field_descriptor),
           (Data.ProtoLens.Tag 2, grpcService__field_descriptor),
           (Data.ProtoLens.Tag 6, transportApiVersion__field_descriptor),
           (Data.ProtoLens.Tag 3, bufferFlushInterval__field_descriptor),
           (Data.ProtoLens.Tag 4, bufferSizeBytes__field_descriptor),
           (Data.ProtoLens.Tag 5, filterStateObjectsToLog__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CommonGrpcAccessLogConfig'_unknownFields
        (\ x__ y__
           -> x__ {_CommonGrpcAccessLogConfig'_unknownFields = y__})
  defMessage
    = CommonGrpcAccessLogConfig'_constructor
        {_CommonGrpcAccessLogConfig'logName = Data.ProtoLens.fieldDefault,
         _CommonGrpcAccessLogConfig'grpcService = Prelude.Nothing,
         _CommonGrpcAccessLogConfig'transportApiVersion = Data.ProtoLens.fieldDefault,
         _CommonGrpcAccessLogConfig'bufferFlushInterval = Prelude.Nothing,
         _CommonGrpcAccessLogConfig'bufferSizeBytes = Prelude.Nothing,
         _CommonGrpcAccessLogConfig'filterStateObjectsToLog = Data.Vector.Generic.empty,
         _CommonGrpcAccessLogConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CommonGrpcAccessLogConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser CommonGrpcAccessLogConfig
        loop x mutable'filterStateObjectsToLog
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'filterStateObjectsToLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                             mutable'filterStateObjectsToLog)
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
                              (Data.ProtoLens.Field.field @"vec'filterStateObjectsToLog")
                              frozen'filterStateObjectsToLog
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
                                       "log_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"logName") y x)
                                  mutable'filterStateObjectsToLog
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "grpc_service"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"grpcService") y x)
                                  mutable'filterStateObjectsToLog
                        48
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
                                  mutable'filterStateObjectsToLog
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "buffer_flush_interval"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bufferFlushInterval") y x)
                                  mutable'filterStateObjectsToLog
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "buffer_size_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bufferSizeBytes") y x)
                                  mutable'filterStateObjectsToLog
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "filter_state_objects_to_log"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'filterStateObjectsToLog y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'filterStateObjectsToLog
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'filterStateObjectsToLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'filterStateObjectsToLog)
          "CommonGrpcAccessLogConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"logName") _x
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
                       (Data.ProtoLens.Field.field @"maybe'grpcService") _x
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
                            (Data.ProtoLens.Field.field @"transportApiVersion") _x
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
                             (Data.ProtoLens.Field.field @"maybe'bufferFlushInterval") _x
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
                                (Data.ProtoLens.Field.field @"maybe'bufferSizeBytes") _x
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
                                          Data.Text.Encoding.encodeUtf8
                                          _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'filterStateObjectsToLog") _x))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData CommonGrpcAccessLogConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CommonGrpcAccessLogConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CommonGrpcAccessLogConfig'logName x__)
                (Control.DeepSeq.deepseq
                   (_CommonGrpcAccessLogConfig'grpcService x__)
                   (Control.DeepSeq.deepseq
                      (_CommonGrpcAccessLogConfig'transportApiVersion x__)
                      (Control.DeepSeq.deepseq
                         (_CommonGrpcAccessLogConfig'bufferFlushInterval x__)
                         (Control.DeepSeq.deepseq
                            (_CommonGrpcAccessLogConfig'bufferSizeBytes x__)
                            (Control.DeepSeq.deepseq
                               (_CommonGrpcAccessLogConfig'filterStateObjectsToLog x__) ()))))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.commonConfig' @:: Lens' HttpGrpcAccessLogConfig CommonGrpcAccessLogConfig@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.maybe'commonConfig' @:: Lens' HttpGrpcAccessLogConfig (Prelude.Maybe CommonGrpcAccessLogConfig)@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.additionalRequestHeadersToLog' @:: Lens' HttpGrpcAccessLogConfig [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.vec'additionalRequestHeadersToLog' @:: Lens' HttpGrpcAccessLogConfig (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.additionalResponseHeadersToLog' @:: Lens' HttpGrpcAccessLogConfig [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.vec'additionalResponseHeadersToLog' @:: Lens' HttpGrpcAccessLogConfig (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.additionalResponseTrailersToLog' @:: Lens' HttpGrpcAccessLogConfig [Data.Text.Text]@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.vec'additionalResponseTrailersToLog' @:: Lens' HttpGrpcAccessLogConfig (Data.Vector.Vector Data.Text.Text)@ -}
data HttpGrpcAccessLogConfig
  = HttpGrpcAccessLogConfig'_constructor {_HttpGrpcAccessLogConfig'commonConfig :: !(Prelude.Maybe CommonGrpcAccessLogConfig),
                                          _HttpGrpcAccessLogConfig'additionalRequestHeadersToLog :: !(Data.Vector.Vector Data.Text.Text),
                                          _HttpGrpcAccessLogConfig'additionalResponseHeadersToLog :: !(Data.Vector.Vector Data.Text.Text),
                                          _HttpGrpcAccessLogConfig'additionalResponseTrailersToLog :: !(Data.Vector.Vector Data.Text.Text),
                                          _HttpGrpcAccessLogConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpGrpcAccessLogConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpGrpcAccessLogConfig "commonConfig" CommonGrpcAccessLogConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGrpcAccessLogConfig'commonConfig
           (\ x__ y__ -> x__ {_HttpGrpcAccessLogConfig'commonConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField HttpGrpcAccessLogConfig "maybe'commonConfig" (Prelude.Maybe CommonGrpcAccessLogConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGrpcAccessLogConfig'commonConfig
           (\ x__ y__ -> x__ {_HttpGrpcAccessLogConfig'commonConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpGrpcAccessLogConfig "additionalRequestHeadersToLog" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGrpcAccessLogConfig'additionalRequestHeadersToLog
           (\ x__ y__
              -> x__
                   {_HttpGrpcAccessLogConfig'additionalRequestHeadersToLog = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpGrpcAccessLogConfig "vec'additionalRequestHeadersToLog" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGrpcAccessLogConfig'additionalRequestHeadersToLog
           (\ x__ y__
              -> x__
                   {_HttpGrpcAccessLogConfig'additionalRequestHeadersToLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpGrpcAccessLogConfig "additionalResponseHeadersToLog" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGrpcAccessLogConfig'additionalResponseHeadersToLog
           (\ x__ y__
              -> x__
                   {_HttpGrpcAccessLogConfig'additionalResponseHeadersToLog = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpGrpcAccessLogConfig "vec'additionalResponseHeadersToLog" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGrpcAccessLogConfig'additionalResponseHeadersToLog
           (\ x__ y__
              -> x__
                   {_HttpGrpcAccessLogConfig'additionalResponseHeadersToLog = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HttpGrpcAccessLogConfig "additionalResponseTrailersToLog" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGrpcAccessLogConfig'additionalResponseTrailersToLog
           (\ x__ y__
              -> x__
                   {_HttpGrpcAccessLogConfig'additionalResponseTrailersToLog = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField HttpGrpcAccessLogConfig "vec'additionalResponseTrailersToLog" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HttpGrpcAccessLogConfig'additionalResponseTrailersToLog
           (\ x__ y__
              -> x__
                   {_HttpGrpcAccessLogConfig'additionalResponseTrailersToLog = y__}))
        Prelude.id
instance Data.ProtoLens.Message HttpGrpcAccessLogConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.access_loggers.grpc.v3.HttpGrpcAccessLogConfig"
  packedMessageDescriptor _
    = "\n\
      \\ETBHttpGrpcAccessLogConfig\DC2q\n\
      \\rcommon_config\CAN\SOH \SOH(\v2B.envoy.extensions.access_loggers.grpc.v3.CommonGrpcAccessLogConfigR\fcommonConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2H\n\
      \!additional_request_headers_to_log\CAN\STX \ETX(\tR\GSadditionalRequestHeadersToLog\DC2J\n\
      \\"additional_response_headers_to_log\CAN\ETX \ETX(\tR\RSadditionalResponseHeadersToLog\DC2L\n\
      \#additional_response_trailers_to_log\CAN\EOT \ETX(\tR\USadditionalResponseTrailersToLog:8\154\197\136\RS3\n\
      \1envoy.config.accesslog.v2.HttpGrpcAccessLogConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonGrpcAccessLogConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonConfig")) ::
              Data.ProtoLens.FieldDescriptor HttpGrpcAccessLogConfig
        additionalRequestHeadersToLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "additional_request_headers_to_log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"additionalRequestHeadersToLog")) ::
              Data.ProtoLens.FieldDescriptor HttpGrpcAccessLogConfig
        additionalResponseHeadersToLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "additional_response_headers_to_log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"additionalResponseHeadersToLog")) ::
              Data.ProtoLens.FieldDescriptor HttpGrpcAccessLogConfig
        additionalResponseTrailersToLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "additional_response_trailers_to_log"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"additionalResponseTrailersToLog")) ::
              Data.ProtoLens.FieldDescriptor HttpGrpcAccessLogConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonConfig__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            additionalRequestHeadersToLog__field_descriptor),
           (Data.ProtoLens.Tag 3, 
            additionalResponseHeadersToLog__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            additionalResponseTrailersToLog__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HttpGrpcAccessLogConfig'_unknownFields
        (\ x__ y__ -> x__ {_HttpGrpcAccessLogConfig'_unknownFields = y__})
  defMessage
    = HttpGrpcAccessLogConfig'_constructor
        {_HttpGrpcAccessLogConfig'commonConfig = Prelude.Nothing,
         _HttpGrpcAccessLogConfig'additionalRequestHeadersToLog = Data.Vector.Generic.empty,
         _HttpGrpcAccessLogConfig'additionalResponseHeadersToLog = Data.Vector.Generic.empty,
         _HttpGrpcAccessLogConfig'additionalResponseTrailersToLog = Data.Vector.Generic.empty,
         _HttpGrpcAccessLogConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HttpGrpcAccessLogConfig
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                   -> Data.ProtoLens.Encoding.Bytes.Parser HttpGrpcAccessLogConfig
        loop
          x
          mutable'additionalRequestHeadersToLog
          mutable'additionalResponseHeadersToLog
          mutable'additionalResponseTrailersToLog
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'additionalRequestHeadersToLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                   mutable'additionalRequestHeadersToLog)
                      frozen'additionalResponseHeadersToLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                    mutable'additionalResponseHeadersToLog)
                      frozen'additionalResponseTrailersToLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                     mutable'additionalResponseTrailersToLog)
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
                              (Data.ProtoLens.Field.field @"vec'additionalRequestHeadersToLog")
                              frozen'additionalRequestHeadersToLog
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'additionalResponseHeadersToLog")
                                 frozen'additionalResponseHeadersToLog
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field
                                       @"vec'additionalResponseTrailersToLog")
                                    frozen'additionalResponseTrailersToLog
                                    x))))
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
                                  mutable'additionalRequestHeadersToLog
                                  mutable'additionalResponseHeadersToLog
                                  mutable'additionalResponseTrailersToLog
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
                                        "additional_request_headers_to_log"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'additionalRequestHeadersToLog y)
                                loop
                                  x
                                  v
                                  mutable'additionalResponseHeadersToLog
                                  mutable'additionalResponseTrailersToLog
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
                                        "additional_response_headers_to_log"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'additionalResponseHeadersToLog y)
                                loop
                                  x
                                  mutable'additionalRequestHeadersToLog
                                  v
                                  mutable'additionalResponseTrailersToLog
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
                                        "additional_response_trailers_to_log"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'additionalResponseTrailersToLog y)
                                loop
                                  x
                                  mutable'additionalRequestHeadersToLog
                                  mutable'additionalResponseHeadersToLog
                                  v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'additionalRequestHeadersToLog
                                  mutable'additionalResponseHeadersToLog
                                  mutable'additionalResponseTrailersToLog
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'additionalRequestHeadersToLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         Data.ProtoLens.Encoding.Growing.new
              mutable'additionalResponseHeadersToLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                          Data.ProtoLens.Encoding.Growing.new
              mutable'additionalResponseTrailersToLog <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage
                mutable'additionalRequestHeadersToLog
                mutable'additionalResponseHeadersToLog
                mutable'additionalResponseTrailersToLog)
          "HttpGrpcAccessLogConfig"
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
                      (Data.ProtoLens.Field.field @"vec'additionalRequestHeadersToLog")
                      _x))
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
                         (Data.ProtoLens.Field.field @"vec'additionalResponseHeadersToLog")
                         _x))
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
                            (Data.ProtoLens.Field.field @"vec'additionalResponseTrailersToLog")
                            _x))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData HttpGrpcAccessLogConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HttpGrpcAccessLogConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HttpGrpcAccessLogConfig'commonConfig x__)
                (Control.DeepSeq.deepseq
                   (_HttpGrpcAccessLogConfig'additionalRequestHeadersToLog x__)
                   (Control.DeepSeq.deepseq
                      (_HttpGrpcAccessLogConfig'additionalResponseHeadersToLog x__)
                      (Control.DeepSeq.deepseq
                         (_HttpGrpcAccessLogConfig'additionalResponseTrailersToLog x__)
                         ()))))
{- | Fields :
     
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.commonConfig' @:: Lens' TcpGrpcAccessLogConfig CommonGrpcAccessLogConfig@
         * 'Proto.Envoy.Extensions.AccessLoggers.Grpc.V3.Als_Fields.maybe'commonConfig' @:: Lens' TcpGrpcAccessLogConfig (Prelude.Maybe CommonGrpcAccessLogConfig)@ -}
data TcpGrpcAccessLogConfig
  = TcpGrpcAccessLogConfig'_constructor {_TcpGrpcAccessLogConfig'commonConfig :: !(Prelude.Maybe CommonGrpcAccessLogConfig),
                                         _TcpGrpcAccessLogConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TcpGrpcAccessLogConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TcpGrpcAccessLogConfig "commonConfig" CommonGrpcAccessLogConfig where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpGrpcAccessLogConfig'commonConfig
           (\ x__ y__ -> x__ {_TcpGrpcAccessLogConfig'commonConfig = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TcpGrpcAccessLogConfig "maybe'commonConfig" (Prelude.Maybe CommonGrpcAccessLogConfig) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TcpGrpcAccessLogConfig'commonConfig
           (\ x__ y__ -> x__ {_TcpGrpcAccessLogConfig'commonConfig = y__}))
        Prelude.id
instance Data.ProtoLens.Message TcpGrpcAccessLogConfig where
  messageName _
    = Data.Text.pack
        "envoy.extensions.access_loggers.grpc.v3.TcpGrpcAccessLogConfig"
  packedMessageDescriptor _
    = "\n\
      \\SYNTcpGrpcAccessLogConfig\DC2q\n\
      \\rcommon_config\CAN\SOH \SOH(\v2B.envoy.extensions.access_loggers.grpc.v3.CommonGrpcAccessLogConfigR\fcommonConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH:7\154\197\136\RS2\n\
      \0envoy.config.accesslog.v2.TcpGrpcAccessLogConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        commonConfig__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "common_config"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor CommonGrpcAccessLogConfig)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commonConfig")) ::
              Data.ProtoLens.FieldDescriptor TcpGrpcAccessLogConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, commonConfig__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TcpGrpcAccessLogConfig'_unknownFields
        (\ x__ y__ -> x__ {_TcpGrpcAccessLogConfig'_unknownFields = y__})
  defMessage
    = TcpGrpcAccessLogConfig'_constructor
        {_TcpGrpcAccessLogConfig'commonConfig = Prelude.Nothing,
         _TcpGrpcAccessLogConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TcpGrpcAccessLogConfig
          -> Data.ProtoLens.Encoding.Bytes.Parser TcpGrpcAccessLogConfig
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TcpGrpcAccessLogConfig"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TcpGrpcAccessLogConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TcpGrpcAccessLogConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TcpGrpcAccessLogConfig'commonConfig x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \1envoy/extensions/access_loggers/grpc/v3/als.proto\DC2'envoy.extensions.access_loggers.grpc.v3\SUB(envoy/config/core/v3/config_source.proto\SUB'envoy/config/core/v3/grpc_service.proto\SUB\RSgoogle/protobuf/duration.proto\SUB\RSgoogle/protobuf/wrappers.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\170\ETX\n\
    \\ETBHttpGrpcAccessLogConfig\DC2q\n\
    \\rcommon_config\CAN\SOH \SOH(\v2B.envoy.extensions.access_loggers.grpc.v3.CommonGrpcAccessLogConfigR\fcommonConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2H\n\
    \!additional_request_headers_to_log\CAN\STX \ETX(\tR\GSadditionalRequestHeadersToLog\DC2J\n\
    \\"additional_response_headers_to_log\CAN\ETX \ETX(\tR\RSadditionalResponseHeadersToLog\DC2L\n\
    \#additional_response_trailers_to_log\CAN\EOT \ETX(\tR\USadditionalResponseTrailersToLog:8\154\197\136\RS3\n\
    \1envoy.config.accesslog.v2.HttpGrpcAccessLogConfig\"\196\SOH\n\
    \\SYNTcpGrpcAccessLogConfig\DC2q\n\
    \\rcommon_config\CAN\SOH \SOH(\v2B.envoy.extensions.access_loggers.grpc.v3.CommonGrpcAccessLogConfigR\fcommonConfigB\b\250B\ENQ\138\SOH\STX\DLE\SOH:7\154\197\136\RS2\n\
    \0envoy.config.accesslog.v2.TcpGrpcAccessLogConfig\"\140\EOT\n\
    \\EMCommonGrpcAccessLogConfig\DC2\"\n\
    \\blog_name\CAN\SOH \SOH(\tR\alogNameB\a\250B\EOTr\STX\DLE\SOH\DC2N\n\
    \\fgrpc_service\CAN\STX \SOH(\v2!.envoy.config.core.v3.GrpcServiceR\vgrpcServiceB\b\250B\ENQ\138\SOH\STX\DLE\SOH\DC2^\n\
    \\NAKtransport_api_version\CAN\ACK \SOH(\SO2 .envoy.config.core.v3.ApiVersionR\DC3transportApiVersionB\b\250B\ENQ\130\SOH\STX\DLE\SOH\DC2W\n\
    \\NAKbuffer_flush_interval\CAN\ETX \SOH(\v2\EM.google.protobuf.DurationR\DC3bufferFlushIntervalB\b\250B\ENQ\170\SOH\STX*\NUL\DC2H\n\
    \\DC1buffer_size_bytes\CAN\EOT \SOH(\v2\FS.google.protobuf.UInt32ValueR\SIbufferSizeBytes\DC2<\n\
    \\ESCfilter_state_objects_to_log\CAN\ENQ \ETX(\tR\ETBfilterStateObjectsToLog::\154\197\136\RS5\n\
    \3envoy.config.accesslog.v2.CommonGrpcAccessLogConfigBK\n\
    \5io.envoyproxy.envoy.extensions.access_loggers.grpc.v3B\bAlsProtoP\SOH\186\128\200\209\ACK\STX\DLE\STXJ\233\ESC\n\
    \\ACK\DC2\EOT\NUL\NULX\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL0\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL2\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL1\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NULN\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NULN\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL)\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL)\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC1\NULF\n\
    \\141\ETX\n\
    \\STX\EOT\NUL\DC2\EOT\SUB\NUL+\SOH\SUB\204\STX Configuration for the built-in *envoy.access_loggers.http_grpc*\n\
    \ :ref:`AccessLog <envoy_v3_api_msg_config.accesslog.v3.AccessLog>`. This configuration will\n\
    \ populate :ref:`StreamAccessLogsMessage.http_logs\n\
    \ <envoy_v3_api_field_service.accesslog.v3.StreamAccessLogsMessage.http_logs>`.\n\
    \ [#extension: envoy.access_loggers.http_grpc]\n\
    \22 [#protodoc-title: gRPC Access Log Service (ALS)]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SUB\b\US\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\ESC\STX\FS:\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\ESC\STX\FS:\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\RS\STX\\\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\RS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\RS\FS)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\RS,-\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\RS.[\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\DC1\DC2\ETX\RS/Z\n\
    \\176\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\"\STX8\SUB\162\SOH Additional request headers to log in :ref:`HTTPRequestProperties.request_headers\n\
    \ <envoy_v3_api_field_data.accesslog.v3.HTTPRequestProperties.request_headers>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\"\DC23\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\"67\n\
    \\181\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX&\STX9\SUB\167\SOH Additional response headers to log in :ref:`HTTPResponseProperties.response_headers\n\
    \ <envoy_v3_api_field_data.accesslog.v3.HTTPResponseProperties.response_headers>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX&\DC24\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX&78\n\
    \\184\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX*\STX:\SUB\170\SOH Additional response trailers to log in :ref:`HTTPResponseProperties.response_trailers\n\
    \ <envoy_v3_api_field_data.accesslog.v3.HTTPResponseProperties.response_trailers>`.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX*\DC25\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX*89\n\
    \\198\SOH\n\
    \\STX\EOT\SOH\DC2\EOT0\NUL5\SOH\SUB\185\SOH Configuration for the built-in *envoy.access_loggers.tcp_grpc* type. This configuration will\n\
    \ populate *StreamAccessLogsMessage.tcp_logs*.\n\
    \ [#extension: envoy.access_loggers.tcp_grpc]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX0\b\RS\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT1\STX29\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT1\STX29\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX4\STX\\\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX4\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX4\FS)\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX4,-\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\b\DC2\ETX4.[\n\
    \\SI\n\
    \\b\EOT\SOH\STX\NUL\b\175\b\DC1\DC2\ETX4/Z\n\
    \O\n\
    \\STX\EOT\STX\DC2\EOT9\NULX\SOH\SUBC Common configuration for gRPC access logs.\n\
    \ [#next-free-field: 7]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX9\b!\n\
    \\v\n\
    \\ETX\EOT\STX\a\DC2\EOT:\STX;<\n\
    \\DLE\n\
    \\b\EOT\STX\a\211\136\225\ETX\SOH\DC2\EOT:\STX;<\n\
    \\170\STX\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX@\STX?\SUB\156\STX The friendly name of the access log to be returned in :ref:`StreamAccessLogsMessage.Identifier\n\
    \ <envoy_v3_api_msg_service.accesslog.v3.StreamAccessLogsMessage.Identifier>`. This allows the\n\
    \ access log server to differentiate between different access logs coming from the same Envoy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX@\STX\b\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX@\t\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX@\DC4\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\b\DC2\ETX@\SYN>\n\
    \\SI\n\
    \\b\EOT\STX\STX\NUL\b\175\b\SO\DC2\ETX@\ETB=\n\
    \;\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETXC\STX\\\SUB. The gRPC service for the access log service.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETXC\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETXC\GS)\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETXC,-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\b\DC2\ETXC.[\n\
    \\SI\n\
    \\b\EOT\STX\STX\SOH\b\175\b\DC1\DC2\ETXC/Z\n\
    \\168\SOH\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOTG\STXH5\SUB\153\SOH API version for access logs service transport protocol. This describes the access logs service\n\
    \ gRPC endpoint and version of messages used on the wire.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ACK\DC2\ETXG\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETXG\FS1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETXG45\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\b\DC2\ETXH\ACK4\n\
    \\SI\n\
    \\b\EOT\STX\STX\STX\b\175\b\DLE\DC2\ETXH\a3\n\
    \\213\SOH\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETXM\STX[\SUB\199\SOH Interval for flushing access logs to the gRPC stream. Logger will flush requests every time\n\
    \ this interval is elapsed, or when batch size limit is hit, whichever comes first. Defaults to\n\
    \ 1 second.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ACK\DC2\ETXM\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETXM\ESC0\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETXM34\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\b\DC2\ETXM5Z\n\
    \\SI\n\
    \\b\EOT\STX\STX\ETX\b\175\b\NAK\DC2\ETXM6Y\n\
    \\135\STX\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETXR\STX4\SUB\249\SOH Soft size limit in bytes for access log entries buffer. Logger will buffer requests until\n\
    \ this limit it hit, or every time flush interval is elapsed, whichever comes first. Setting it\n\
    \ to zero effectively disables the batching. Defaults to 16384.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ACK\DC2\ETXR\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETXR\RS/\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETXR23\n\
    \\131\STX\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETXW\STX2\SUB\245\SOH Additional filter state objects to log in :ref:`filter_state_objects\n\
    \ <envoy_v3_api_field_data.accesslog.v3.AccessLogCommon.filter_state_objects>`.\n\
    \ Logger will call `FilterState::Object::serializeAsProto` to serialize the filter state object.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETXW\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETXW\DC2-\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETXW01b\ACKproto3"