{- This file was auto-generated from envoy/config/trace/v3/zipkin.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.Zipkin (
        ZipkinConfig(), ZipkinConfig'CollectorEndpointVersion(..),
        ZipkinConfig'CollectorEndpointVersion(),
        ZipkinConfig'CollectorEndpointVersion'UnrecognizedValue
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
import qualified Proto.Google.Protobuf.Wrappers
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.Zipkin_Fields.collectorCluster' @:: Lens' ZipkinConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Zipkin_Fields.collectorEndpoint' @:: Lens' ZipkinConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Zipkin_Fields.traceId128bit' @:: Lens' ZipkinConfig Prelude.Bool@
         * 'Proto.Envoy.Config.Trace.V3.Zipkin_Fields.sharedSpanContext' @:: Lens' ZipkinConfig Proto.Google.Protobuf.Wrappers.BoolValue@
         * 'Proto.Envoy.Config.Trace.V3.Zipkin_Fields.maybe'sharedSpanContext' @:: Lens' ZipkinConfig (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue)@
         * 'Proto.Envoy.Config.Trace.V3.Zipkin_Fields.collectorEndpointVersion' @:: Lens' ZipkinConfig ZipkinConfig'CollectorEndpointVersion@
         * 'Proto.Envoy.Config.Trace.V3.Zipkin_Fields.collectorHostname' @:: Lens' ZipkinConfig Data.Text.Text@ -}
data ZipkinConfig
  = ZipkinConfig'_constructor {_ZipkinConfig'collectorCluster :: !Data.Text.Text,
                               _ZipkinConfig'collectorEndpoint :: !Data.Text.Text,
                               _ZipkinConfig'traceId128bit :: !Prelude.Bool,
                               _ZipkinConfig'sharedSpanContext :: !(Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue),
                               _ZipkinConfig'collectorEndpointVersion :: !ZipkinConfig'CollectorEndpointVersion,
                               _ZipkinConfig'collectorHostname :: !Data.Text.Text,
                               _ZipkinConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ZipkinConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ZipkinConfig "collectorCluster" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZipkinConfig'collectorCluster
           (\ x__ y__ -> x__ {_ZipkinConfig'collectorCluster = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ZipkinConfig "collectorEndpoint" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZipkinConfig'collectorEndpoint
           (\ x__ y__ -> x__ {_ZipkinConfig'collectorEndpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ZipkinConfig "traceId128bit" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZipkinConfig'traceId128bit
           (\ x__ y__ -> x__ {_ZipkinConfig'traceId128bit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ZipkinConfig "sharedSpanContext" Proto.Google.Protobuf.Wrappers.BoolValue where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZipkinConfig'sharedSpanContext
           (\ x__ y__ -> x__ {_ZipkinConfig'sharedSpanContext = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ZipkinConfig "maybe'sharedSpanContext" (Prelude.Maybe Proto.Google.Protobuf.Wrappers.BoolValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZipkinConfig'sharedSpanContext
           (\ x__ y__ -> x__ {_ZipkinConfig'sharedSpanContext = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ZipkinConfig "collectorEndpointVersion" ZipkinConfig'CollectorEndpointVersion where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZipkinConfig'collectorEndpointVersion
           (\ x__ y__ -> x__ {_ZipkinConfig'collectorEndpointVersion = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ZipkinConfig "collectorHostname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ZipkinConfig'collectorHostname
           (\ x__ y__ -> x__ {_ZipkinConfig'collectorHostname = y__}))
        Prelude.id
instance Data.ProtoLens.Message ZipkinConfig where
  messageName _ = Data.Text.pack "envoy.config.trace.v3.ZipkinConfig"
  packedMessageDescriptor _
    = "\n\
      \\fZipkinConfig\DC24\n\
      \\DC1collector_cluster\CAN\SOH \SOH(\tR\DLEcollectorClusterB\a\250B\EOTr\STX\DLE\SOH\DC26\n\
      \\DC2collector_endpoint\CAN\STX \SOH(\tR\DC1collectorEndpointB\a\250B\EOTr\STX\DLE\SOH\DC2&\n\
      \\SItrace_id_128bit\CAN\ETX \SOH(\bR\rtraceId128bit\DC2J\n\
      \\DC3shared_span_context\CAN\EOT \SOH(\v2\SUB.google.protobuf.BoolValueR\DC1sharedSpanContext\DC2z\n\
      \\SUBcollector_endpoint_version\CAN\ENQ \SOH(\SO2<.envoy.config.trace.v3.ZipkinConfig.CollectorEndpointVersionR\CANcollectorEndpointVersion\DC2-\n\
      \\DC2collector_hostname\CAN\ACK \SOH(\tR\DC1collectorHostname\"x\n\
      \\CANCollectorEndpointVersion\DC23\n\
      \%DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE\DLE\NUL\SUB\b\b\SOH\168\247\180\139\STX\SOH\DC2\r\n\
      \\tHTTP_JSON\DLE\SOH\DC2\SO\n\
      \\n\
      \HTTP_PROTO\DLE\STX\DC2\b\n\
      \\EOTGRPC\DLE\ETX:)\154\197\136\RS$\n\
      \\"envoy.config.trace.v2.ZipkinConfig"
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
              Data.ProtoLens.FieldDescriptor ZipkinConfig
        collectorEndpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collector_endpoint"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"collectorEndpoint")) ::
              Data.ProtoLens.FieldDescriptor ZipkinConfig
        traceId128bit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_id_128bit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"traceId128bit")) ::
              Data.ProtoLens.FieldDescriptor ZipkinConfig
        sharedSpanContext__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "shared_span_context"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Wrappers.BoolValue)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sharedSpanContext")) ::
              Data.ProtoLens.FieldDescriptor ZipkinConfig
        collectorEndpointVersion__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collector_endpoint_version"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ZipkinConfig'CollectorEndpointVersion)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"collectorEndpointVersion")) ::
              Data.ProtoLens.FieldDescriptor ZipkinConfig
        collectorHostname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collector_hostname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"collectorHostname")) ::
              Data.ProtoLens.FieldDescriptor ZipkinConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, collectorCluster__field_descriptor),
           (Data.ProtoLens.Tag 2, collectorEndpoint__field_descriptor),
           (Data.ProtoLens.Tag 3, traceId128bit__field_descriptor),
           (Data.ProtoLens.Tag 4, sharedSpanContext__field_descriptor),
           (Data.ProtoLens.Tag 5, collectorEndpointVersion__field_descriptor),
           (Data.ProtoLens.Tag 6, collectorHostname__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ZipkinConfig'_unknownFields
        (\ x__ y__ -> x__ {_ZipkinConfig'_unknownFields = y__})
  defMessage
    = ZipkinConfig'_constructor
        {_ZipkinConfig'collectorCluster = Data.ProtoLens.fieldDefault,
         _ZipkinConfig'collectorEndpoint = Data.ProtoLens.fieldDefault,
         _ZipkinConfig'traceId128bit = Data.ProtoLens.fieldDefault,
         _ZipkinConfig'sharedSpanContext = Prelude.Nothing,
         _ZipkinConfig'collectorEndpointVersion = Data.ProtoLens.fieldDefault,
         _ZipkinConfig'collectorHostname = Data.ProtoLens.fieldDefault,
         _ZipkinConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ZipkinConfig -> Data.ProtoLens.Encoding.Bytes.Parser ZipkinConfig
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
                                       "collector_endpoint"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"collectorEndpoint") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "trace_id_128bit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"traceId128bit") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "shared_span_context"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sharedSpanContext") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "collector_endpoint_version"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"collectorEndpointVersion") y x)
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
                                       "collector_hostname"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"collectorHostname") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ZipkinConfig"
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
                     = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"collectorEndpoint") _x
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
                      _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"traceId128bit") _x
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
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'sharedSpanContext") _x
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
                                  (Data.ProtoLens.Field.field @"collectorEndpointVersion") _x
                          in
                            if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                  ((Prelude..)
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     Prelude.fromEnum
                                     _v))
                         ((Data.Monoid.<>)
                            (let
                               _v
                                 = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"collectorHostname") _x
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
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ZipkinConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ZipkinConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ZipkinConfig'collectorCluster x__)
                (Control.DeepSeq.deepseq
                   (_ZipkinConfig'collectorEndpoint x__)
                   (Control.DeepSeq.deepseq
                      (_ZipkinConfig'traceId128bit x__)
                      (Control.DeepSeq.deepseq
                         (_ZipkinConfig'sharedSpanContext x__)
                         (Control.DeepSeq.deepseq
                            (_ZipkinConfig'collectorEndpointVersion x__)
                            (Control.DeepSeq.deepseq
                               (_ZipkinConfig'collectorHostname x__) ()))))))
newtype ZipkinConfig'CollectorEndpointVersion'UnrecognizedValue
  = ZipkinConfig'CollectorEndpointVersion'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data ZipkinConfig'CollectorEndpointVersion
  = ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE |
    ZipkinConfig'HTTP_JSON |
    ZipkinConfig'HTTP_PROTO |
    ZipkinConfig'GRPC |
    ZipkinConfig'CollectorEndpointVersion'Unrecognized !ZipkinConfig'CollectorEndpointVersion'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ZipkinConfig'CollectorEndpointVersion where
  maybeToEnum 0
    = Prelude.Just ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
  maybeToEnum 1 = Prelude.Just ZipkinConfig'HTTP_JSON
  maybeToEnum 2 = Prelude.Just ZipkinConfig'HTTP_PROTO
  maybeToEnum 3 = Prelude.Just ZipkinConfig'GRPC
  maybeToEnum k
    = Prelude.Just
        (ZipkinConfig'CollectorEndpointVersion'Unrecognized
           (ZipkinConfig'CollectorEndpointVersion'UnrecognizedValue
              (Prelude.fromIntegral k)))
  showEnum ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
    = "DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE"
  showEnum ZipkinConfig'HTTP_JSON = "HTTP_JSON"
  showEnum ZipkinConfig'HTTP_PROTO = "HTTP_PROTO"
  showEnum ZipkinConfig'GRPC = "GRPC"
  showEnum
    (ZipkinConfig'CollectorEndpointVersion'Unrecognized (ZipkinConfig'CollectorEndpointVersion'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE"
    = Prelude.Just ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
    | (Prelude.==) k "HTTP_JSON" = Prelude.Just ZipkinConfig'HTTP_JSON
    | (Prelude.==) k "HTTP_PROTO"
    = Prelude.Just ZipkinConfig'HTTP_PROTO
    | (Prelude.==) k "GRPC" = Prelude.Just ZipkinConfig'GRPC
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ZipkinConfig'CollectorEndpointVersion where
  minBound = ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
  maxBound = ZipkinConfig'GRPC
instance Prelude.Enum ZipkinConfig'CollectorEndpointVersion where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum CollectorEndpointVersion: "
              (Prelude.show k__)))
        Prelude.id
        (Data.ProtoLens.maybeToEnum k__)
  fromEnum ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE = 0
  fromEnum ZipkinConfig'HTTP_JSON = 1
  fromEnum ZipkinConfig'HTTP_PROTO = 2
  fromEnum ZipkinConfig'GRPC = 3
  fromEnum
    (ZipkinConfig'CollectorEndpointVersion'Unrecognized (ZipkinConfig'CollectorEndpointVersion'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ ZipkinConfig'GRPC
    = Prelude.error
        "ZipkinConfig'CollectorEndpointVersion.succ: bad argument ZipkinConfig'GRPC. This value would be out of bounds."
  succ ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
    = ZipkinConfig'HTTP_JSON
  succ ZipkinConfig'HTTP_JSON = ZipkinConfig'HTTP_PROTO
  succ ZipkinConfig'HTTP_PROTO = ZipkinConfig'GRPC
  succ (ZipkinConfig'CollectorEndpointVersion'Unrecognized _)
    = Prelude.error
        "ZipkinConfig'CollectorEndpointVersion.succ: bad argument: unrecognized value"
  pred ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
    = Prelude.error
        "ZipkinConfig'CollectorEndpointVersion.pred: bad argument ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE. This value would be out of bounds."
  pred ZipkinConfig'HTTP_JSON
    = ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
  pred ZipkinConfig'HTTP_PROTO = ZipkinConfig'HTTP_JSON
  pred ZipkinConfig'GRPC = ZipkinConfig'HTTP_PROTO
  pred (ZipkinConfig'CollectorEndpointVersion'Unrecognized _)
    = Prelude.error
        "ZipkinConfig'CollectorEndpointVersion.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ZipkinConfig'CollectorEndpointVersion where
  fieldDefault = ZipkinConfig'DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE
instance Control.DeepSeq.NFData ZipkinConfig'CollectorEndpointVersion where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\"envoy/config/trace/v3/zipkin.proto\DC2\NAKenvoy.config.trace.v3\SUB\RSgoogle/protobuf/wrappers.proto\SUB#envoy/annotations/deprecation.proto\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\192\EOT\n\
    \\fZipkinConfig\DC24\n\
    \\DC1collector_cluster\CAN\SOH \SOH(\tR\DLEcollectorClusterB\a\250B\EOTr\STX\DLE\SOH\DC26\n\
    \\DC2collector_endpoint\CAN\STX \SOH(\tR\DC1collectorEndpointB\a\250B\EOTr\STX\DLE\SOH\DC2&\n\
    \\SItrace_id_128bit\CAN\ETX \SOH(\bR\rtraceId128bit\DC2J\n\
    \\DC3shared_span_context\CAN\EOT \SOH(\v2\SUB.google.protobuf.BoolValueR\DC1sharedSpanContext\DC2z\n\
    \\SUBcollector_endpoint_version\CAN\ENQ \SOH(\SO2<.envoy.config.trace.v3.ZipkinConfig.CollectorEndpointVersionR\CANcollectorEndpointVersion\DC2-\n\
    \\DC2collector_hostname\CAN\ACK \SOH(\tR\DC1collectorHostname\"x\n\
    \\CANCollectorEndpointVersion\DC23\n\
    \%DEPRECATED_AND_UNAVAILABLE_DO_NOT_USE\DLE\NUL\SUB\b\b\SOH\168\247\180\139\STX\SOH\DC2\r\n\
    \\tHTTP_JSON\DLE\SOH\DC2\SO\n\
    \\n\
    \HTTP_PROTO\DLE\STX\DC2\b\n\
    \\EOTGRPC\DLE\ETX:)\154\197\136\RS$\n\
    \\"envoy.config.trace.v2.ZipkinConfigBk\n\
    \#io.envoyproxy.envoy.config.trace.v3B\vZipkinProtoP\SOH\242\152\254\143\ENQ)\DC2'envoy.extensions.tracers.zipkin.v4alpha\186\128\200\209\ACK\STX\DLE\STXJ\246\DC4\n\
    \\ACK\DC2\EOT\NUL\NULG\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL(\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ACK\NUL-\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL(\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\b\NUL'\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\t\NUL+\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\n\
    \\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\f\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\f\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\r\NUL,\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\r\NUL,\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\SO\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NULc\n\
    \\r\n\
    \\ACK\b\142\227\255Q\STX\DC2\ETX\SI\NULc\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DLE\NULF\n\
    \\145\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NULG\SOH\SUBa Configuration for the Zipkin tracer.\n\
    \ [#extension: envoy.tracers.zipkin]\n\
    \ [#next-free-field: 7]\n\
    \2\" [#protodoc-title: Zipkin tracer]\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\DC4\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\a\DC2\ETX\CAN\STXd\n\
    \\SI\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\ETX\CAN\STXd\n\
    \=\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\ESC\STX.\ETX\SUB/ Available Zipkin collector endpoint versions.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\ESC\a\US\n\
    \\217\EOT\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\EOT#\EOT$S\SUB\200\EOT Zipkin API v1, JSON over HTTP.\n\
    \ [#comment: The default implementation of Zipkin client before this field is added was only v1\n\
    \ and the way user configure this was by not explicitly specifying the version. Consequently,\n\
    \ before this is added, the corresponding Zipkin collector expected to receive v1 payload.\n\
    \ Hence the motivation of adding HTTP_JSON_V1 as the default is to avoid a breaking change when\n\
    \ user upgrading Envoy with this change. Furthermore, we also immediately deprecate this field,\n\
    \ since in Zipkin realm this v1 version is considered to be not preferable anymore.]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX#\EOT)\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX#,-\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\ETX\DC2\ETX$\bR\n\
    \\SI\n\
    \\b\EOT\NUL\EOT\NUL\STX\NUL\ETX\SOH\DC2\ETX$\t\SUB\n\
    \\DC2\n\
    \\v\EOT\NUL\EOT\NUL\STX\NUL\ETX\245\206\182!\DC2\ETX$\FSQ\n\
    \/\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX'\EOT\DC2\SUB  Zipkin API v2, JSON over HTTP.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX'\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX'\DLE\DC1\n\
    \3\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX*\EOT\DC3\SUB$ Zipkin API v2, protobuf over HTTP.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX*\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX*\DC1\DC2\n\
    \)\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX-\EOT\r\SUB\SUB [#not-implemented-hide:]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX-\EOT\b\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX-\v\f\n\
    \L\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX1\STXH\SUB? The cluster manager cluster that hosts the Zipkin collectors.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX1\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX1\t\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX1\GS\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\b\DC2\ETX1\USG\n\
    \\SI\n\
    \\b\EOT\NUL\STX\NUL\b\175\b\SO\DC2\ETX1 F\n\
    \\202\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX6\STXI\SUB\188\SOH The API endpoint of the Zipkin service where the spans will be sent. When\n\
    \ using a standard Zipkin installation, the API endpoint is typically\n\
    \ /api/v1/spans, which is the default value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX6\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX6\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX6\RS\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX6 H\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX6!G\n\
    \\181\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX:\STX\ESC\SUB\167\SOH Determines whether a 128bit trace id will be used when creating a new\n\
    \ trace instance. The default value is false, which will result in a 64 bit trace id being used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX:\STX\ACK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX:\a\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX:\EM\SUB\n\
    \w\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX>\STX4\SUBj Determines whether client and server spans will share the same span context.\n\
    \ The default value is true.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX>\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX>\FS/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX>23\n\
    \r\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXB\STX:\SUBe Determines the selected collector endpoint version. By default, the ``HTTP_JSON_V1`` will be\n\
    \ used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXB\ESC5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXB89\n\
    \\254\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXF\STX \SUB\240\SOH Optional hostname to use when sending spans to the collector_cluster. Useful for collectors\n\
    \ that require a specific hostname. Defaults to :ref:`collector_cluster <envoy_v3_api_field_config.trace.v3.ZipkinConfig.collector_cluster>` above.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXF\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXF\t\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXF\RS\USb\ACKproto3"