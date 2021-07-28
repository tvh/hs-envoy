{- This file was auto-generated from envoy/config/trace/v3/datadog.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.Datadog (
        DatadogConfig()
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
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.Datadog_Fields.collectorCluster' @:: Lens' DatadogConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Datadog_Fields.serviceName' @:: Lens' DatadogConfig Data.Text.Text@ -}
data DatadogConfig
  = DatadogConfig'_constructor {_DatadogConfig'collectorCluster :: !Data.Text.Text,
                                _DatadogConfig'serviceName :: !Data.Text.Text,
                                _DatadogConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show DatadogConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField DatadogConfig "collectorCluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DatadogConfig'collectorCluster
           (\ x__ y__ -> x__ {_DatadogConfig'collectorCluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField DatadogConfig "serviceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _DatadogConfig'serviceName
           (\ x__ y__ -> x__ {_DatadogConfig'serviceName = y__}))
        Prelude.id
instance Data.ProtoLens.Message DatadogConfig where
  messageName _
    = Data.Text.pack "envoy.config.trace.v3.DatadogConfig"
  packedMessageDescriptor _
    = "\n\
      \\rDatadogConfig\DC24\n\
      \\DC1collector_cluster\CAN\SOH \SOH(\tR\DLEcollectorClusterB\a\250B\EOTr\STX\DLE\SOH\DC2*\n\
      \\fservice_name\CAN\STX \SOH(\tR\vserviceNameB\a\250B\EOTr\STX\DLE\SOH:*\154\197\136\RS%\n\
      \#envoy.config.trace.v2.DatadogConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        collectorCluster__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collector_cluster"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"collectorCluster")) ::
              Data.ProtoLens.FieldDescriptor DatadogConfig
        serviceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"serviceName")) ::
              Data.ProtoLens.FieldDescriptor DatadogConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, collectorCluster__field_descriptor),
           (Data.ProtoLens.Tag 2, serviceName__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _DatadogConfig'_unknownFields
        (\ x__ y__ -> x__ {_DatadogConfig'_unknownFields = y__})
  defMessage
    = DatadogConfig'_constructor
        {_DatadogConfig'collectorCluster = Data.ProtoLens.fieldDefault,
         _DatadogConfig'serviceName = Data.ProtoLens.fieldDefault,
         _DatadogConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          DatadogConfig -> Data.ProtoLens.Encoding.Bytes.Parser DatadogConfig
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
                                       "collector_cluster"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"collectorCluster") y x)
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
                                       "service_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"serviceName") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DatadogConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v
                  = Lens.Family2.view
                      (Data.ProtoLens.Field.field @"collectorCluster") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"serviceName") _x
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
instance Control.DeepSeq.NFData DatadogConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_DatadogConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_DatadogConfig'collectorCluster x__)
                (Control.DeepSeq.deepseq (_DatadogConfig'serviceName x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \#envoy/config/trace/v3/datadog.proto\DC2\NAKenvoy.config.trace.v3\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\157\SOH\n\
    \\rDatadogConfig\DC24\n\
    \\DC1collector_cluster\CAN\SOH \SOH(\tR\DLEcollectorClusterB\a\250B\EOTr\STX\DLE\SOH\DC2*\n\
    \\fservice_name\CAN\STX \SOH(\tR\vserviceNameB\a\250B\EOTr\STX\DLE\SOH:*\154\197\136\RS%\n\
    \#envoy.config.trace.v2.DatadogConfigBm\n\
    \#io.envoyproxy.envoy.config.trace.v3B\fDatadogProtoP\SOH\242\152\254\143\ENQ*\DC2(envoy.extensions.tracers.datadog.v4alpha\186\128\200\209\ACK\STX\DLE\STXJ\150\ENQ\n\
    \\ACK\DC2\EOT\NUL\NUL\FS\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL'\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ACK\NUL+\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\a\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\t\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\t\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\n\
    \\NUL-\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\n\
    \\NUL-\n\
    \\b\n\
    \\SOH\b\DC2\ETX\v\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\v\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NULd\n\
    \\r\n\
    \\ACK\b\142\227\255Q\STX\DC2\ETX\f\NULd\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\r\NULF\n\
    \}\n\
    \\STX\EOT\NUL\DC2\EOT\DC3\NUL\FS\SOH\SUBL Configuration for the Datadog tracer.\n\
    \ [#extension: envoy.tracers.datadog]\n\
    \2# [#protodoc-title: Datadog tracer]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC3\b\NAK\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\DC4\STX\NAK,\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\DC4\STX\NAK,\n\
    \M\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STXH\SUB@ The cluster to use for submitting traces to the Datadog agent.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\CAN\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX\CAN\USG\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX\CAN F\n\
    \P\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ESC\STXC\SUBC The name used for the service when traces are generated by envoy.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\ESC\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ESC\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ESC\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX\ESC\SUBB\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX\ESC\ESCAb\ACKproto3"