{- This file was auto-generated from envoy/service/metrics/v3/metrics_service.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Service.Metrics.V3.MetricsService (
        MetricsService(..), StreamMetricsMessage(),
        StreamMetricsMessage'Identifier(), StreamMetricsResponse()
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
import qualified Proto.Io.Prometheus.Client.Metrics
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Service.Metrics.V3.MetricsService_Fields.identifier' @:: Lens' StreamMetricsMessage StreamMetricsMessage'Identifier@
         * 'Proto.Envoy.Service.Metrics.V3.MetricsService_Fields.maybe'identifier' @:: Lens' StreamMetricsMessage (Prelude.Maybe StreamMetricsMessage'Identifier)@
         * 'Proto.Envoy.Service.Metrics.V3.MetricsService_Fields.envoyMetrics' @:: Lens' StreamMetricsMessage [Proto.Io.Prometheus.Client.Metrics.MetricFamily]@
         * 'Proto.Envoy.Service.Metrics.V3.MetricsService_Fields.vec'envoyMetrics' @:: Lens' StreamMetricsMessage (Data.Vector.Vector Proto.Io.Prometheus.Client.Metrics.MetricFamily)@ -}
data StreamMetricsMessage
  = StreamMetricsMessage'_constructor {_StreamMetricsMessage'identifier :: !(Prelude.Maybe StreamMetricsMessage'Identifier),
                                       _StreamMetricsMessage'envoyMetrics :: !(Data.Vector.Vector Proto.Io.Prometheus.Client.Metrics.MetricFamily),
                                       _StreamMetricsMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamMetricsMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamMetricsMessage "identifier" StreamMetricsMessage'Identifier where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamMetricsMessage'identifier
           (\ x__ y__ -> x__ {_StreamMetricsMessage'identifier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamMetricsMessage "maybe'identifier" (Prelude.Maybe StreamMetricsMessage'Identifier) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamMetricsMessage'identifier
           (\ x__ y__ -> x__ {_StreamMetricsMessage'identifier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamMetricsMessage "envoyMetrics" [Proto.Io.Prometheus.Client.Metrics.MetricFamily] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamMetricsMessage'envoyMetrics
           (\ x__ y__ -> x__ {_StreamMetricsMessage'envoyMetrics = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamMetricsMessage "vec'envoyMetrics" (Data.Vector.Vector Proto.Io.Prometheus.Client.Metrics.MetricFamily) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamMetricsMessage'envoyMetrics
           (\ x__ y__ -> x__ {_StreamMetricsMessage'envoyMetrics = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamMetricsMessage where
  messageName _
    = Data.Text.pack "envoy.service.metrics.v3.StreamMetricsMessage"
  packedMessageDescriptor _
    = "\n\
      \\DC4StreamMetricsMessage\DC2Y\n\
      \\n\
      \identifier\CAN\SOH \SOH(\v29.envoy.service.metrics.v3.StreamMetricsMessage.IdentifierR\n\
      \identifier\DC2G\n\
      \\renvoy_metrics\CAN\STX \ETX(\v2\".io.prometheus.client.MetricFamilyR\fenvoyMetrics\SUB\135\SOH\n\
      \\n\
      \Identifier\DC28\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH:?\154\197\136\RS:\n\
      \8envoy.service.metrics.v2.StreamMetricsMessage.Identifier:4\154\197\136\RS/\n\
      \-envoy.service.metrics.v2.StreamMetricsMessage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        identifier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "identifier"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor StreamMetricsMessage'Identifier)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'identifier")) ::
              Data.ProtoLens.FieldDescriptor StreamMetricsMessage
        envoyMetrics__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "envoy_metrics"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Io.Prometheus.Client.Metrics.MetricFamily)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"envoyMetrics")) ::
              Data.ProtoLens.FieldDescriptor StreamMetricsMessage
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, identifier__field_descriptor),
           (Data.ProtoLens.Tag 2, envoyMetrics__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamMetricsMessage'_unknownFields
        (\ x__ y__ -> x__ {_StreamMetricsMessage'_unknownFields = y__})
  defMessage
    = StreamMetricsMessage'_constructor
        {_StreamMetricsMessage'identifier = Prelude.Nothing,
         _StreamMetricsMessage'envoyMetrics = Data.Vector.Generic.empty,
         _StreamMetricsMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamMetricsMessage
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Io.Prometheus.Client.Metrics.MetricFamily
             -> Data.ProtoLens.Encoding.Bytes.Parser StreamMetricsMessage
        loop x mutable'envoyMetrics
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'envoyMetrics <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'envoyMetrics)
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
                              (Data.ProtoLens.Field.field @"vec'envoyMetrics")
                              frozen'envoyMetrics
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "identifier"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"identifier") y x)
                                  mutable'envoyMetrics
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "envoy_metrics"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'envoyMetrics y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'envoyMetrics
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'envoyMetrics <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'envoyMetrics)
          "StreamMetricsMessage"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'identifier") _x
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
                              Data.ProtoLens.encodeMessage
                              _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'envoyMetrics") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData StreamMetricsMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamMetricsMessage'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamMetricsMessage'identifier x__)
                (Control.DeepSeq.deepseq
                   (_StreamMetricsMessage'envoyMetrics x__) ()))
{- | Fields :
     
         * 'Proto.Envoy.Service.Metrics.V3.MetricsService_Fields.node' @:: Lens' StreamMetricsMessage'Identifier Proto.Envoy.Config.Core.V3.Base.Node@
         * 'Proto.Envoy.Service.Metrics.V3.MetricsService_Fields.maybe'node' @:: Lens' StreamMetricsMessage'Identifier (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node)@ -}
data StreamMetricsMessage'Identifier
  = StreamMetricsMessage'Identifier'_constructor {_StreamMetricsMessage'Identifier'node :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node),
                                                  _StreamMetricsMessage'Identifier'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamMetricsMessage'Identifier where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamMetricsMessage'Identifier "node" Proto.Envoy.Config.Core.V3.Base.Node where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamMetricsMessage'Identifier'node
           (\ x__ y__ -> x__ {_StreamMetricsMessage'Identifier'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField StreamMetricsMessage'Identifier "maybe'node" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.Node) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamMetricsMessage'Identifier'node
           (\ x__ y__ -> x__ {_StreamMetricsMessage'Identifier'node = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamMetricsMessage'Identifier where
  messageName _
    = Data.Text.pack
        "envoy.service.metrics.v3.StreamMetricsMessage.Identifier"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Identifier\DC28\n\
      \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH:?\154\197\136\RS:\n\
      \8envoy.service.metrics.v2.StreamMetricsMessage.Identifier"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.Node)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor StreamMetricsMessage'Identifier
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, node__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamMetricsMessage'Identifier'_unknownFields
        (\ x__ y__
           -> x__ {_StreamMetricsMessage'Identifier'_unknownFields = y__})
  defMessage
    = StreamMetricsMessage'Identifier'_constructor
        {_StreamMetricsMessage'Identifier'node = Prelude.Nothing,
         _StreamMetricsMessage'Identifier'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamMetricsMessage'Identifier
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamMetricsMessage'Identifier
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
                                       "node"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Identifier"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
instance Control.DeepSeq.NFData StreamMetricsMessage'Identifier where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamMetricsMessage'Identifier'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamMetricsMessage'Identifier'node x__) ())
{- | Fields :
      -}
data StreamMetricsResponse
  = StreamMetricsResponse'_constructor {_StreamMetricsResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamMetricsResponse where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message StreamMetricsResponse where
  messageName _
    = Data.Text.pack "envoy.service.metrics.v3.StreamMetricsResponse"
  packedMessageDescriptor _
    = "\n\
      \\NAKStreamMetricsResponse:5\154\197\136\RS0\n\
      \.envoy.service.metrics.v2.StreamMetricsResponse"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamMetricsResponse'_unknownFields
        (\ x__ y__ -> x__ {_StreamMetricsResponse'_unknownFields = y__})
  defMessage
    = StreamMetricsResponse'_constructor
        {_StreamMetricsResponse'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamMetricsResponse
          -> Data.ProtoLens.Encoding.Bytes.Parser StreamMetricsResponse
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
          (do loop Data.ProtoLens.defMessage) "StreamMetricsResponse"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData StreamMetricsResponse where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamMetricsResponse'_unknownFields x__) ()
data MetricsService = MetricsService {}
instance Data.ProtoLens.Service.Types.Service MetricsService where
  type ServiceName MetricsService = "MetricsService"
  type ServicePackage MetricsService = "envoy.service.metrics.v3"
  type ServiceMethods MetricsService = '["streamMetrics"]
instance Data.ProtoLens.Service.Types.HasMethodImpl MetricsService "streamMetrics" where
  type MethodName MetricsService "streamMetrics" = "StreamMetrics"
  type MethodInput MetricsService "streamMetrics" = StreamMetricsMessage
  type MethodOutput MetricsService "streamMetrics" = StreamMetricsResponse
  type MethodStreamingType MetricsService "streamMetrics" = 'Data.ProtoLens.Service.Types.ClientStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \.envoy/service/metrics/v3/metrics_service.proto\DC2\CANenvoy.service.metrics.v3\SUB\USenvoy/config/core/v3/base.proto\SUB\"io/prometheus/client/metrics.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"N\n\
    \\NAKStreamMetricsResponse:5\154\197\136\RS0\n\
    \.envoy.service.metrics.v2.StreamMetricsResponse\"\250\STX\n\
    \\DC4StreamMetricsMessage\DC2Y\n\
    \\n\
    \identifier\CAN\SOH \SOH(\v29.envoy.service.metrics.v3.StreamMetricsMessage.IdentifierR\n\
    \identifier\DC2G\n\
    \\renvoy_metrics\CAN\STX \ETX(\v2\".io.prometheus.client.MetricFamilyR\fenvoyMetrics\SUB\135\SOH\n\
    \\n\
    \Identifier\DC28\n\
    \\EOTnode\CAN\SOH \SOH(\v2\SUB.envoy.config.core.v3.NodeR\EOTnodeB\b\250B\ENQ\138\SOH\STX\DLE\SOH:?\154\197\136\RS:\n\
    \8envoy.service.metrics.v2.StreamMetricsMessage.Identifier:4\154\197\136\RS/\n\
    \-envoy.service.metrics.v2.StreamMetricsMessage2\134\SOH\n\
    \\SOMetricsService\DC2t\n\
    \\rStreamMetrics\DC2..envoy.service.metrics.v3.StreamMetricsMessage\SUB/.envoy.service.metrics.v3.StreamMetricsResponse\"\NUL(\SOHBJ\n\
    \&io.envoyproxy.envoy.service.metrics.v3B\DC3MetricsServiceProtoP\SOH\136\SOH\SOH\186\128\200\209\ACK\STX\DLE\STXJ\245\t\n\
    \\ACK\DC2\EOT\NUL\NUL4\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL!\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL)\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL,\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL?\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL?\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL4\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL4\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL$\n\
    \\t\n\
    \\STX\b\DC1\DC2\ETX\SI\NUL$\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\210\SOH\n\
    \\STX\ACK\NUL\DC2\EOT\SYN\NUL\ESC\SOH\SUB\159\SOH Service for streaming metrics to server that consumes the metrics data. It uses Prometheus metric\n\
    \ data model as a standard to represent metrics information.\n\
    \2$ [#protodoc-title: Metrics service]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\SYN\b\SYN\n\
    \\176\SOH\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\EOT\EM\STX\SUB\ETX\SUB\161\SOH Envoy will connect and send StreamMetricsMessage messages forever. It does not expect any\n\
    \ response to be sent as nothing would be done in the case of failure.\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\EM\ACK\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ENQ\DC2\ETX\EM\DC4\SUB\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\EM\ESC/\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\EM:O\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\GS\NUL \SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\GS\b\GS\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\RS\STX\US7\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\RS\STX\US7\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\"\NUL4\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\"\b\FS\n\
    \\v\n\
    \\ETX\EOT\SOH\a\DC2\EOT#\STX$6\n\
    \\DLE\n\
    \\b\EOT\SOH\a\211\136\225\ETX\SOH\DC2\EOT#\STX$6\n\
    \\f\n\
    \\EOT\EOT\SOH\ETX\NUL\DC2\EOT&\STX,\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\ETX\NUL\SOH\DC2\ETX&\n\
    \\DC4\n\
    \\r\n\
    \\ENQ\EOT\SOH\ETX\NUL\a\DC2\EOT'\EOT(C\n\
    \\DC2\n\
    \\n\
    \\EOT\SOH\ETX\NUL\a\211\136\225\ETX\SOH\DC2\EOT'\EOT(C\n\
    \:\n\
    \\ACK\EOT\SOH\ETX\NUL\STX\NUL\DC2\ETX+\EOTO\SUB+ The node sending metrics over the stream.\n\
    \\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ACK\DC2\ETX+\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETX+\CAN\FS\n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETX+\US \n\
    \\SO\n\
    \\a\EOT\SOH\ETX\NUL\STX\NUL\b\DC2\ETX+!N\n\
    \\DC1\n\
    \\n\
    \\EOT\SOH\ETX\NUL\STX\NUL\b\175\b\DC1\DC2\ETX+\"M\n\
    \\159\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX0\STX\FS\SUB\145\SOH Identifier data effectively is a structured metadata. As a performance optimization this will\n\
    \ only be sent in the first message on the stream.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETX0\STX\f\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX0\r\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX0\SUB\ESC\n\
    \'\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX3\STX?\SUB\SUB A list of metric entries\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETX3\v,\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX3-:\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX3=>b\ACKproto3"