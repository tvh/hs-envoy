{- This file was auto-generated from envoy/config/trace/v3/xray.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Envoy.Config.Trace.V3.Xray (
        XRayConfig(), XRayConfig'SegmentFields()
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
import qualified Proto.Envoy.Config.Core.V3.Address
import qualified Proto.Envoy.Config.Core.V3.Base
import qualified Proto.Google.Protobuf.Struct
import qualified Proto.Udpa.Annotations.Migrate
import qualified Proto.Udpa.Annotations.Status
import qualified Proto.Udpa.Annotations.Versioning
import qualified Proto.Validate.Validate
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.Xray_Fields.daemonEndpoint' @:: Lens' XRayConfig Proto.Envoy.Config.Core.V3.Address.SocketAddress@
         * 'Proto.Envoy.Config.Trace.V3.Xray_Fields.maybe'daemonEndpoint' @:: Lens' XRayConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.SocketAddress)@
         * 'Proto.Envoy.Config.Trace.V3.Xray_Fields.segmentName' @:: Lens' XRayConfig Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Xray_Fields.samplingRuleManifest' @:: Lens' XRayConfig Proto.Envoy.Config.Core.V3.Base.DataSource@
         * 'Proto.Envoy.Config.Trace.V3.Xray_Fields.maybe'samplingRuleManifest' @:: Lens' XRayConfig (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource)@
         * 'Proto.Envoy.Config.Trace.V3.Xray_Fields.segmentFields' @:: Lens' XRayConfig XRayConfig'SegmentFields@
         * 'Proto.Envoy.Config.Trace.V3.Xray_Fields.maybe'segmentFields' @:: Lens' XRayConfig (Prelude.Maybe XRayConfig'SegmentFields)@ -}
data XRayConfig
  = XRayConfig'_constructor {_XRayConfig'daemonEndpoint :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.SocketAddress),
                             _XRayConfig'segmentName :: !Data.Text.Text,
                             _XRayConfig'samplingRuleManifest :: !(Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource),
                             _XRayConfig'segmentFields :: !(Prelude.Maybe XRayConfig'SegmentFields),
                             _XRayConfig'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show XRayConfig where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField XRayConfig "daemonEndpoint" Proto.Envoy.Config.Core.V3.Address.SocketAddress where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XRayConfig'daemonEndpoint
           (\ x__ y__ -> x__ {_XRayConfig'daemonEndpoint = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField XRayConfig "maybe'daemonEndpoint" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Address.SocketAddress) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XRayConfig'daemonEndpoint
           (\ x__ y__ -> x__ {_XRayConfig'daemonEndpoint = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField XRayConfig "segmentName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XRayConfig'segmentName
           (\ x__ y__ -> x__ {_XRayConfig'segmentName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField XRayConfig "samplingRuleManifest" Proto.Envoy.Config.Core.V3.Base.DataSource where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XRayConfig'samplingRuleManifest
           (\ x__ y__ -> x__ {_XRayConfig'samplingRuleManifest = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField XRayConfig "maybe'samplingRuleManifest" (Prelude.Maybe Proto.Envoy.Config.Core.V3.Base.DataSource) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XRayConfig'samplingRuleManifest
           (\ x__ y__ -> x__ {_XRayConfig'samplingRuleManifest = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField XRayConfig "segmentFields" XRayConfig'SegmentFields where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XRayConfig'segmentFields
           (\ x__ y__ -> x__ {_XRayConfig'segmentFields = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField XRayConfig "maybe'segmentFields" (Prelude.Maybe XRayConfig'SegmentFields) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XRayConfig'segmentFields
           (\ x__ y__ -> x__ {_XRayConfig'segmentFields = y__}))
        Prelude.id
instance Data.ProtoLens.Message XRayConfig where
  messageName _ = Data.Text.pack "envoy.config.trace.v3.XRayConfig"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \XRayConfig\DC2L\n\
      \\SIdaemon_endpoint\CAN\SOH \SOH(\v2#.envoy.config.core.v3.SocketAddressR\SOdaemonEndpoint\DC2*\n\
      \\fsegment_name\CAN\STX \SOH(\tR\vsegmentNameB\a\250B\EOTr\STX\DLE\SOH\DC2V\n\
      \\SYNsampling_rule_manifest\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceR\DC4samplingRuleManifest\DC2V\n\
      \\SOsegment_fields\CAN\EOT \SOH(\v2/.envoy.config.trace.v3.XRayConfig.SegmentFieldsR\rsegmentFields\SUBR\n\
      \\rSegmentFields\DC2\SYN\n\
      \\ACKorigin\CAN\SOH \SOH(\tR\ACKorigin\DC2)\n\
      \\ETXaws\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ETXaws:,\154\197\136\RS'\n\
      \%envoy.config.trace.v2alpha.XRayConfig"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        daemonEndpoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "daemon_endpoint"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Address.SocketAddress)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'daemonEndpoint")) ::
              Data.ProtoLens.FieldDescriptor XRayConfig
        segmentName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "segment_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"segmentName")) ::
              Data.ProtoLens.FieldDescriptor XRayConfig
        samplingRuleManifest__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sampling_rule_manifest"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Envoy.Config.Core.V3.Base.DataSource)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'samplingRuleManifest")) ::
              Data.ProtoLens.FieldDescriptor XRayConfig
        segmentFields__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "segment_fields"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor XRayConfig'SegmentFields)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'segmentFields")) ::
              Data.ProtoLens.FieldDescriptor XRayConfig
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, daemonEndpoint__field_descriptor),
           (Data.ProtoLens.Tag 2, segmentName__field_descriptor),
           (Data.ProtoLens.Tag 3, samplingRuleManifest__field_descriptor),
           (Data.ProtoLens.Tag 4, segmentFields__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _XRayConfig'_unknownFields
        (\ x__ y__ -> x__ {_XRayConfig'_unknownFields = y__})
  defMessage
    = XRayConfig'_constructor
        {_XRayConfig'daemonEndpoint = Prelude.Nothing,
         _XRayConfig'segmentName = Data.ProtoLens.fieldDefault,
         _XRayConfig'samplingRuleManifest = Prelude.Nothing,
         _XRayConfig'segmentFields = Prelude.Nothing,
         _XRayConfig'_unknownFields = []}
  parseMessage
    = let
        loop ::
          XRayConfig -> Data.ProtoLens.Encoding.Bytes.Parser XRayConfig
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
                                       "daemon_endpoint"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"daemonEndpoint") y x)
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
                                       "segment_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"segmentName") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sampling_rule_manifest"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"samplingRuleManifest") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "segment_fields"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"segmentFields") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "XRayConfig"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'daemonEndpoint") _x
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
                     = Lens.Family2.view (Data.ProtoLens.Field.field @"segmentName") _x
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
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'samplingRuleManifest") _x
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
                             (Data.ProtoLens.Field.field @"maybe'segmentFields") _x
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
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData XRayConfig where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_XRayConfig'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_XRayConfig'daemonEndpoint x__)
                (Control.DeepSeq.deepseq
                   (_XRayConfig'segmentName x__)
                   (Control.DeepSeq.deepseq
                      (_XRayConfig'samplingRuleManifest x__)
                      (Control.DeepSeq.deepseq (_XRayConfig'segmentFields x__) ()))))
{- | Fields :
     
         * 'Proto.Envoy.Config.Trace.V3.Xray_Fields.origin' @:: Lens' XRayConfig'SegmentFields Data.Text.Text@
         * 'Proto.Envoy.Config.Trace.V3.Xray_Fields.aws' @:: Lens' XRayConfig'SegmentFields Proto.Google.Protobuf.Struct.Struct@
         * 'Proto.Envoy.Config.Trace.V3.Xray_Fields.maybe'aws' @:: Lens' XRayConfig'SegmentFields (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct)@ -}
data XRayConfig'SegmentFields
  = XRayConfig'SegmentFields'_constructor {_XRayConfig'SegmentFields'origin :: !Data.Text.Text,
                                           _XRayConfig'SegmentFields'aws :: !(Prelude.Maybe Proto.Google.Protobuf.Struct.Struct),
                                           _XRayConfig'SegmentFields'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show XRayConfig'SegmentFields where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField XRayConfig'SegmentFields "origin" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XRayConfig'SegmentFields'origin
           (\ x__ y__ -> x__ {_XRayConfig'SegmentFields'origin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField XRayConfig'SegmentFields "aws" Proto.Google.Protobuf.Struct.Struct where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XRayConfig'SegmentFields'aws
           (\ x__ y__ -> x__ {_XRayConfig'SegmentFields'aws = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField XRayConfig'SegmentFields "maybe'aws" (Prelude.Maybe Proto.Google.Protobuf.Struct.Struct) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _XRayConfig'SegmentFields'aws
           (\ x__ y__ -> x__ {_XRayConfig'SegmentFields'aws = y__}))
        Prelude.id
instance Data.ProtoLens.Message XRayConfig'SegmentFields where
  messageName _
    = Data.Text.pack "envoy.config.trace.v3.XRayConfig.SegmentFields"
  packedMessageDescriptor _
    = "\n\
      \\rSegmentFields\DC2\SYN\n\
      \\ACKorigin\CAN\SOH \SOH(\tR\ACKorigin\DC2)\n\
      \\ETXaws\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ETXaws"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        origin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "origin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"origin")) ::
              Data.ProtoLens.FieldDescriptor XRayConfig'SegmentFields
        aws__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "aws"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Struct.Struct)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'aws")) ::
              Data.ProtoLens.FieldDescriptor XRayConfig'SegmentFields
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, origin__field_descriptor),
           (Data.ProtoLens.Tag 2, aws__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _XRayConfig'SegmentFields'_unknownFields
        (\ x__ y__ -> x__ {_XRayConfig'SegmentFields'_unknownFields = y__})
  defMessage
    = XRayConfig'SegmentFields'_constructor
        {_XRayConfig'SegmentFields'origin = Data.ProtoLens.fieldDefault,
         _XRayConfig'SegmentFields'aws = Prelude.Nothing,
         _XRayConfig'SegmentFields'_unknownFields = []}
  parseMessage
    = let
        loop ::
          XRayConfig'SegmentFields
          -> Data.ProtoLens.Encoding.Bytes.Parser XRayConfig'SegmentFields
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
                                       "origin"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"origin") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "aws"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"aws") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "SegmentFields"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"origin") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'aws") _x
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
instance Control.DeepSeq.NFData XRayConfig'SegmentFields where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_XRayConfig'SegmentFields'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_XRayConfig'SegmentFields'origin x__)
                (Control.DeepSeq.deepseq (_XRayConfig'SegmentFields'aws x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \ envoy/config/trace/v3/xray.proto\DC2\NAKenvoy.config.trace.v3\SUB\"envoy/config/core/v3/address.proto\SUB\USenvoy/config/core/v3/base.proto\SUB\FSgoogle/protobuf/struct.proto\SUB\RSudpa/annotations/migrate.proto\SUB\GSudpa/annotations/status.proto\SUB!udpa/annotations/versioning.proto\SUB\ETBvalidate/validate.proto\"\184\ETX\n\
    \\n\
    \XRayConfig\DC2L\n\
    \\SIdaemon_endpoint\CAN\SOH \SOH(\v2#.envoy.config.core.v3.SocketAddressR\SOdaemonEndpoint\DC2*\n\
    \\fsegment_name\CAN\STX \SOH(\tR\vsegmentNameB\a\250B\EOTr\STX\DLE\SOH\DC2V\n\
    \\SYNsampling_rule_manifest\CAN\ETX \SOH(\v2 .envoy.config.core.v3.DataSourceR\DC4samplingRuleManifest\DC2V\n\
    \\SOsegment_fields\CAN\EOT \SOH(\v2/.envoy.config.trace.v3.XRayConfig.SegmentFieldsR\rsegmentFields\SUBR\n\
    \\rSegmentFields\DC2\SYN\n\
    \\ACKorigin\CAN\SOH \SOH(\tR\ACKorigin\DC2)\n\
    \\ETXaws\CAN\STX \SOH(\v2\ETB.google.protobuf.StructR\ETXaws:,\154\197\136\RS'\n\
    \%envoy.config.trace.v2alpha.XRayConfigBg\n\
    \#io.envoyproxy.envoy.config.trace.v3B\tXrayProtoP\SOH\242\152\254\143\ENQ'\DC2%envoy.extensions.tracers.xray.v4alpha\186\128\200\209\ACK\STX\DLE\STXJ\145\r\n\
    \\ACK\DC2\EOT\NUL\NUL6\SOH\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\STX\NUL\RS\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\EOT\NUL,\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\ENQ\NUL)\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\a\NUL&\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\t\NUL(\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\n\
    \\NUL'\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX\v\NUL+\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX\f\NUL!\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SO\NUL<\n\
    \\t\n\
    \\STX\b\SOH\DC2\ETX\SO\NUL<\n\
    \\b\n\
    \\SOH\b\DC2\ETX\SI\NUL*\n\
    \\t\n\
    \\STX\b\b\DC2\ETX\SI\NUL*\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DLE\NUL\"\n\
    \\t\n\
    \\STX\b\n\
    \\DC2\ETX\DLE\NUL\"\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC1\NULa\n\
    \\r\n\
    \\ACK\b\142\227\255Q\STX\DC2\ETX\DC1\NULa\n\
    \\b\n\
    \\SOH\b\DC2\ETX\DC2\NULF\n\
    \\r\n\
    \\ACK\b\135\128\153j\STX\DC2\ETX\DC2\NULF\n\
    \\135\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL6\SOH\SUB\" [#extension: envoy.tracers.xray]\n\
    \2W [#protodoc-title: AWS X-Ray Tracer Configuration]\n\
    \ Configuration for AWS X-Ray tracer\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\DC2\n\
    \\v\n\
    \\ETX\EOT\NUL\a\DC2\EOT\EM\STX\SUB.\n\
    \\DLE\n\
    \\b\EOT\NUL\a\211\136\225\ETX\SOH\DC2\EOT\EM\STX\SUB.\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\FS\STX#\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\FS\n\
    \\ETB\n\
    \F\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\RS\EOT\SYN\SUB7 The type of AWS resource, e.g. \"AWS::AppMesh::Proxy\".\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\RS\EOT\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\RS\v\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\RS\DC4\NAK\n\
    \\205\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\"\EOT#\SUB\189\SOH AWS resource metadata dictionary.\n\
    \ See: `X-Ray Segment Document documentation <https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html#api-segmentdocuments-aws>`__\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX\"\EOT\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\"\ESC\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\"!\"\n\
    \\159\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX'\STX,\SUB\145\SOH The UDP endpoint of the X-Ray Daemon where the spans will be sent.\n\
    \ If this value is not set, the default value of 127.0.0.1:2000 will be used.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX'\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX'\CAN'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX'*+\n\
    \-\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX*\STXC\SUB  The name of the X-Ray segment.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX*\STX\b\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX*\t\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX*\CAN\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\b\DC2\ETX*\SUBB\n\
    \\SI\n\
    \\b\EOT\NUL\STX\SOH\b\175\b\SO\DC2\ETX*\ESCA\n\
    \\133\STX\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX0\STX0\SUB\247\SOH The location of a local custom sampling rules JSON file.\n\
    \ For an example of the sampling rules see:\n\
    \ `X-Ray SDK documentation\n\
    \ <https://docs.aws.amazon.com/xray/latest/devguide/xray-sdk-go-configuration.html#xray-sdk-go-configuration-sampling>`_\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX0\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX0\NAK+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX0./\n\
    \\203\SOH\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX5\STX#\SUB\189\SOH Optional custom fields to be added to each trace segment.\n\
    \ see: `X-Ray Segment Document documentation\n\
    \ <https://docs.aws.amazon.com/xray/latest/devguide/xray-api-segmentdocuments.html>`__\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX5\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX5\DLE\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX5!\"b\ACKproto3"